# -*- coding: utf-8 -*-
import cv2

try:
    import matplotlib.pyplot as plt
except:
    plt = None
import numpy as np
from PIL import Image
from scipy import signal


def get_image(pic_path):
    return Image.open(pic_path)


def pic2gray(pic_path, save=False) -> np.ndarray:
    """
    图像转为灰度图像
    @param pic_path: 图片地址
    @return: np.ndarray
    """
    pic_path_rgb = cv2.imread(pic_path)
    pic_path_gray = cv2.cvtColor(pic_path_rgb, cv2.COLOR_BGR2GRAY)
    if save:
        cv2.imwrite(pic_path, pic_path_gray)
    return pic_path_gray


def img2array(image: Image) -> np.ndarray:
    """
    图片转 ndarray
    @param image:
    @return:
    """
    img_array = np.array(image)
    return img_array


def array2img(image_array: np.ndarray) -> Image:
    """
    array 转 Image
    @param image_array:
    @return: Image， 可以调用img.show()查看图片
    """
    img = Image.fromarray(image_array.astype("uint8")).convert("RGBA")
    return img


def get_slider_edge_position_by_alpha(
    image: Image, alpha=(80, 254), show=False
) -> np.ndarray:
    """
    根据边界透明度获取小滑块 边界
    @param image: 闭
    @param alpha: 透明度 开区间
    @param show: 是否画图 方便调试
    @return: numpy.ndarray 二维矩阵，缺口边界为1，其他为0。 横向为列，纵向为行。左上角为原点
    """
    pix = image.load()
    width = image.size[0]
    height = image.size[1]

    positions = []
    position_arrays = np.zeros((height, width), dtype=np.int)  # 高度为行 宽度为列

    for x in range(width):
        for y in range(height):
            r, g, b, a = pix[x, y]
            if a >= alpha[0] and a <= alpha[1]:  # 阴影为半透明 0 为全透明 255为不透明
                positions.append([x, y])
                position_arrays[y, x] = 1

    if show:
        x = [position[0] for position in positions]
        y = [height - position[1] for position in positions]

        plt.xlim(right=width, left=0)
        plt.ylim(top=height, bottom=0)
        plt.plot(x, y, "ro")
        plt.show()

    return position_arrays


def get_slider_edge_by_convolve2d(image: Image) -> np.ndarray:
    slider_fillter = get_slider_edge_position_by_alpha(
        image, show=False, alpha=(255, 255)
    )
    slider_fillter = delete_blank_edge(slider_fillter)

    slider_fillter = expand_edges(slider_fillter, count=1, axis=0, pos=0)  # 首行
    slider_fillter = expand_edges(slider_fillter, count=1, axis=1, pos=0)  # 首列
    slider_fillter = expand_edges(slider_fillter, count=1, axis=0, pos=-1)  # 末行
    slider_fillter = expand_edges(slider_fillter, count=1, axis=1, pos=-1)  # 末列

    # 做卷积 将中心为1的点去掉
    fillter = asarray([[-1, -1, -1], [-1, 8, -1], [-1, -1, -1]])

    slider_fillter = convolve2d(slider_fillter, fillter)

    # 4 周为负数，非边界，只有大于0的才是边界
    slider_fillter = cover_number(
        slider_fillter != 0, 1, 0
    )  # slider_fillter != 0 则边缘粗度为2
    # slider_fillter = delete_blank_edge(slider_fillter)

    return slider_fillter


def print_array(array: np.ndarray):
    np.set_printoptions(threshold=np.inf, linewidth=np.inf)
    print(array)


def asarray(array: list) -> np.ndarray:
    """
    数组转np.ndarray
    @param array: 二维的list
    @return:
    """
    return np.asarray(array)


def delete_blank_edge(array: np.ndarray):
    """
    删除空白的边界（整行 或 整列都为0 则删除）
    @param array:
    @return:
    """
    rows, cols = array.shape[:2]
    for row in range(rows):  # 上到下遍历, 删除水平为0的行，到不为0的行时结束
        if sum(array[0,]) == 0:
            array = np.delete(array, 0, 0)
        else:
            break

    rows, cols = array.shape[:2]
    for row in reversed(range(rows)):  # 下到上遍历, 删除水平为0的行，到不为0的行时结束
        if sum(array[-1,]) == 0:
            array = np.delete(array, -1, 0)
        else:
            break

    rows, cols = array.shape[:2]
    for col in range(cols):  # 上到下遍历, 删除垂直为0的列，到不为0的列时结束
        if sum(array[:, 0]) == 0:
            array = np.delete(array, 0, 1)
        else:
            break

    rows, cols = array.shape[:2]
    for col in reversed(range(cols)):  # 下到上遍历, 删除垂直为0的列，到不为0的列时结束
        if sum(array[:, -1]) == 0:
            array = np.delete(array, -1, 1)
        else:
            break

    return array


def cover_number(condition, x, y):
    """
    转换数组中的值为指定的值 条件为真时转换为x，为假时转为y
    eg:
        np.where(a > 0, a, 0) # 将 类型为np.ndarray的a值大于零的不动，小于零的改为0
    @return:
    """
    return np.where(condition, x, y)


def expand_edges(array: np.ndarray, *, count, axis, pos=0) -> np.ndarray:
    """
    扩大边缘
    @param array:
    @param count: 边缘数量
    @param axis: 0/1 (0 为行 1 为列)
    @param pos: 插入的位置 (0为首行或首列 -1为末行或末列)
    @return:
    """
    if axis == 0:
        zero_array = np.zeros((array.shape[1]), dtype=np.int)
    else:
        zero_array = np.zeros((array.shape[0]), dtype=np.int)

    if pos == -1:
        pos = array.shape[0] if axis == 0 else array.shape[1]

    array = np.insert(array, pos, values=zero_array, axis=axis)

    return array


def convolve2d(bg_array: np.ndarray, fillter: np.ndarray) -> np.ndarray:
    """
    same 2d卷积 参考：https://blog.csdn.net/m0_38007695/article/details/82794454
    @param bg_array: 背景二维二维矩阵
    @param fillter: 小窗口二维矩阵, 行列最好为奇数
    @return:
    """
    bg_h, bg_w = bg_array.shape[:2]
    # K的高和宽
    fillter_h, fillter_w = fillter.shape[:2]
    # 计算full卷积
    c_full = signal.convolve2d(bg_array, fillter, mode="full")
    # 指定锚点的位置
    kr, kc = fillter_h // 2, fillter_w // 2
    # 根据锚点的位置，从full卷积中截取得到same卷积
    c_same = c_full[
        fillter_h - kr - 1 : bg_h + fillter_h - kr - 1,
        fillter_w - kc - 1 : bg_w + fillter_w - kc - 1,
    ]

    return c_same


def canny_edge(image_array: np.ndarray, show=False) -> np.ndarray:
    """
    锐化边缘
    @param image_array:
    @return:
    """
    can = cv2.Canny(image_array, threshold1=200, threshold2=300)

    if show:
        cv2.imshow("candy", can)
        cv2.waitKey()
        cv2.destroyAllWindows()

    return can


def draw_pic_from_array(array: np.ndarray) -> None:
    """
    根据array 画图
    @param array:
    @return:
    """
    plt.figure()  # 打开matplotlib的可视化figure
    plt.imshow(array)
    plt.gray()  # 灰阶图
    plt.title("filter image")  # 标题
    plt.show()


def find_gap_edge_center_point(
    bg_arrays: np.ndarray, slide_arrags: np.ndarray
) -> tuple:
    """
    获取缺口中心点
    @param bg_arrays: 背景图缺口边界矩阵
    @param slide_arrags: 滑块边界矩阵
    @return: 中心点 (x,y) 横向为x， 纵向y，左上角为坐标原点
    """
    slide_window_row, slide_window_cols = slide_arrags.shape  # 滑块窗口的行列数
    bg_rows, bg_cols = bg_arrays.shape  # 背景图的行列数

    bg_vertical_center = bg_rows // 2  # 滑块缺口一般在垂直的中间位置 及 中间行
    slider_window_center_vertical_padding = slide_window_row // 2  # 滑动窗口中心点到上下边距 及 垂直边距
    slider_window_center_horizontal_padding = (
        slide_window_cols // 2
    )  # 滑动窗口中心点到左右边距 及 水平边距

    max_point_sum = 0
    center_point = None

    for col in range(
        slider_window_center_horizontal_padding,
        bg_cols - slider_window_center_horizontal_padding + 1,
    ):  # 横向移动滑块窗口，求滑块窗口内的矩阵乘积
        if (
            bg_vertical_center + slider_window_center_vertical_padding > bg_rows
            or col + slider_window_center_horizontal_padding > bg_cols
        ):
            break

        current_window = bg_arrays[
            bg_vertical_center
            - slider_window_center_vertical_padding : bg_vertical_center
            + slider_window_center_vertical_padding,
            col
            - slider_window_center_horizontal_padding : col
            + slider_window_center_horizontal_padding,
        ]  # 当前被遮罩的窗口

        try:
            point_sum = (slide_arrags * current_window).sum()
        except:
            continue

        if point_sum > max_point_sum:
            max_point_sum = point_sum
            center_point = (col, bg_vertical_center)

    return center_point


def find_max_point(arrays: np.ndarray, search_on_horizontal_center=False) -> tuple:
    """
    找二维数组中最大的点
    @param arrays:
    @param search_on_horizontal_center: 只在水平居中处找
    @return: 中心点 (x,y) 横向为x， 纵向y，左上角为坐标原点
    """
    max_point = 0
    max_point_pos = None

    array_rows, array_cols = arrays.shape

    if search_on_horizontal_center:
        for col in range(array_cols):
            if arrays[array_rows // 2, col] > max_point:
                max_point = arrays[array_rows // 2, col]
                max_point_pos = col, array_rows // 2
    else:
        for row in range(array_rows):
            for col in range(array_cols):
                if arrays[row, col] > max_point:
                    max_point = arrays[row, col]
                    max_point_pos = col, row

    return max_point_pos


def draw_pos(pic: str, pos: tuple, rect_range=None):
    """
    画点 画点时以左下角为原点
    @param pic: 图片
    @param pos: 点的位置
    @return:
    """
    img = cv2.imread(pic)
    if rect_range:
        left_top_pos = pos[0] - rect_range[1] // 2, pos[1] - rect_range[0] // 2
        right_bottom_pos = pos[0] + rect_range[1] // 2, pos[1] + rect_range[0] // 2
    else:
        left_top_pos = pos
        right_bottom_pos = pos

    cv2.rectangle(
        img, left_top_pos, right_bottom_pos, (0, 0, 255), 2
    )  # 图片 左上角位置 右下角位置 矩形框颜色 边框像素
    if rect_range:
        cv2.rectangle(img, pos, pos, (0, 0, 255), 2)  # 图片 左上角位置 右下角位置 矩形框颜色 边框像素
    cv2.imshow(pic, img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()


def get_offset_x(slide_arrags: np.ndarray, gap_edge_center_point: tuple) -> int:
    """
    获取滑块的偏移量
    @param slide_arrags: 滑块数组
    @param gap_edge_center_point: 缺口坐标
    @return:
    """

    return gap_edge_center_point[0] - slide_arrags.shape[1] // 2


def clear_white(img: str) -> np.ndarray:
    """
    清除图片的空白区域，这里主要清除滑块的空白
    Args:
        img: 图片地址

    Returns:

    """
    img = cv2.imread(img)
    rows, cols, channel = img.shape
    min_x = 255
    min_y = 255
    max_x = 0
    max_y = 0
    for x in range(1, rows):
        for y in range(1, cols):
            t = set(img[x, y])
            if len(t) >= 2:
                if x <= min_x:
                    min_x = x
                elif x >= max_x:
                    max_x = x

                if y <= min_y:
                    min_y = y
                elif y >= max_y:
                    max_y = y
    img1 = img[min_x:max_x, min_y:max_y]
    return img1


def get_gap_center_point(bg_pic, slider_pic, show=False) -> tuple:
    """
    获取缺口位置, 为上面函数的汇总调度
    @param bg_pic:
    @param slider_pic:
    @return: (x, y)
    """

    bg_array = pic2gray(bg_pic)  # 图像灰度画

    # 锐化边缘
    edge_detection_array = canny_edge(bg_array, show=show)

    slider_fillter = clear_white(slider_pic)
    slider_fillter = canny_edge(slider_fillter, show=show)

    slider_fillter = np.rot90(slider_fillter, 2)  # 逆时针旋转90度2次 即180度, 卷积的定义就是要旋转180度...

    # 用fillter 与 蜕化后的背景做卷积
    edge_filltered = convolve2d(edge_detection_array, slider_fillter)
    # 画出做完卷积后的矩阵
    # draw_pic_from_array(edge_filltered)

    center_point = find_max_point(edge_filltered)

    center_point = center_point[0], center_point[1]
    if show:
        draw_pos(bg_pic, center_point, rect_range=slider_fillter.shape)

    return center_point

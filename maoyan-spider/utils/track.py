# -*- coding: utf-8 -*-

import random

try:
    import matplotlib.pyplot as plt
except:
    plt = None
import numpy as np


def _ease_out_quad(x):
    return 1 - (1 - x) * (1 - x)


def _ease_out_quart(x):
    return 1 - pow(1 - x, 4)


def _ease_out_expo(x):
    if x == 1:
        return 1
    else:
        return 1 - pow(2, -10 * x)


def _ease_out_bounce(x):
    n1 = 7.5625
    d1 = 2.75
    if x < 1 / d1:
        return n1 * x * x
    elif x < 2 / d1:
        x -= 1.5 / d1
        return n1 * x * x + 0.75
    elif x < 2.5 / d1:
        x -= 2.25 / d1
        return n1 * x * x + 0.9375
    else:
        x -= 2.625 / d1
        return n1 * x * x + 0.984375


def _get_random(min, max):
    return random.choice(list(range(min, max)))


def get_tracks_by_ease_func(
    distance, ease_func=_ease_out_quart, seconds=None, steps=50
):
    if not seconds:
        seconds = random.random() + random.randint(2, 5)

    tracks = [0]
    offsets = [0]
    for t in np.arange(0.0, seconds, seconds / steps):
        offset = round(ease_func(t / seconds) * distance)
        tracks.append(offset - offsets[-1])
        offsets.append(offset)

    return tracks


def get_tracks_by_random(distance):
    # 移动轨迹
    tracks = []
    current = 0
    while current < distance:
        move = random.randint(-3, 5)
        current += move
        if current > 0:
            tracks.append(move)
    return tracks


def get_tracks_by_a(distance):
    """
    根据加速度获取移动轨迹
    :param distance:
    :return: 移动轨迹
    """

    _distance = distance
    _distance += random.randint(15, 25)
    v = 0
    t = 0.2
    tracks = []
    current = 0
    mid = _distance * 3 / 5  # 减速阀值

    while current < _distance:
        if current < mid:
            a = 2 + random.random()
        else:
            a = -3 + random.random()

        s = v * t + 0.5 * a * (t ** 2)
        v = v + a * t
        current += s
        tracks.append(round(s))

    back_tracks = [-3, -3, -2, -2, -2, -2, -2, -1, -1, -1 - 1]
    tracks.extend(back_tracks)

    if sum(tracks) != distance:
        tracks.append((distance - sum(tracks)))

    return tracks


def get_tracks(distance):
    tracks_funcs = [
        lambda distance: get_tracks_by_ease_func(
            distance, ease_func=_ease_out_quad, steps=_get_random(30, 50)
        ),
        lambda distance: get_tracks_by_ease_func(
            distance, ease_func=_ease_out_quart, steps=_get_random(30, 50)
        ),
        lambda distance: get_tracks_by_ease_func(
            distance, ease_func=_ease_out_expo, steps=_get_random(30, 50)
        ),
        lambda distance: get_tracks_by_ease_func(
            distance, ease_func=_ease_out_bounce, steps=_get_random(30, 50)
        ),
        lambda distance: get_tracks_by_random(distance),
        lambda distance: get_tracks_by_a(distance),
    ]

    tracks_func = random.choice(tracks_funcs)
    return tracks_func(distance)


def draw_tracks(tracks, seconds):
    distances = []
    distance = 0
    for track in tracks:
        distance += track
        distances.append(distance)

    times = []
    unit_times = seconds / len(tracks)
    time = 0
    for i in range(len(tracks)):
        time += unit_times
        times.append(time)

    print("tracks: ", tracks)
    print("times:", times)
    plt.plot(times, distances)
    plt.xlabel("time")
    plt.ylabel("distance")

    plt.show()


if __name__ == "__main__":
    x = 100
    tracks = get_tracks_by_a(x)
    print(tracks)
    print(sum(tracks))

# 安装
    
    pip install feapder

# 运行

下发任务
    
    python main.py --crawl_journal 1

抓取
    
    python main.py --crawl_journal 2

一起启动

# 配置

见setting.py

# 建表

期刊表 zx_journal_detail
```sql
CREATE TABLE `zx_journal_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `db_code` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `tablename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
```

任务表 zw_journal_task

```sql
CREATE TABLE `zw_journal_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(1000) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
```

# 其他

验证码识别：没做，等触发了 需要再做
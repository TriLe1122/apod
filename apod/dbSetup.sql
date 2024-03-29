-- Active: 1698353586802@@172.93.48.2@9005@clo7nobgn0gv1bao04ar48y0n
CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

CREATE TABLE
    IF NOT EXISTS apods(
        id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        title varchar(255) COMMENT 'Title',
        date DATETIME COMMENT 'Date',
        imgUrl varchar(500) COMMENT 'ImgURL',
        hdUrl varchar(500) COMMENT 'HDURL', 
        copyright varchar(255) COMMENT 'Copyright',
        explanation varchar(500) COMMENT 'Explanation'
    ) default charset utf8 COMMENT '';
<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/6
 * Time: 21:40
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Script extends Model
{
    protected $fillable = ['scriptTitle', 'scriptType', 'scriptTheme'];
}

/**
CREATE TABLE `scripts` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`scriptTitle` varchar(50) DEFAULT NULL COMMENT '剧本名称',
`scriptType` enum('1','2','3','4','5') DEFAULT NULL COMMENT '剧本类型',
`scriptTheme` enum('1','2','3','4','5') DEFAULT NULL COMMENT '剧本题材',
`created_at` datetime DEFAULT NULL COMMENT '创建时间',
`updated_at` datetime DEFAULT NULL COMMENT '更新时间',
PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='剧本表';

 */
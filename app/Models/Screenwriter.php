<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/1
 * Time: 14:18
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Screenwriter extends Model
{
    protected $fillable = ['id','name','rating','residence'];

    public function getRatingAttribute($value)
    {
        $rating = [
            '1' => '金牌编剧',
            '2' => '著名编剧',
            '3' => '知名编剧',
            '4' => '新锐编剧',
        ];
        return $value ? $rating[$value] : '';
    }
}

/**
CREATE TABLE `screenwriters` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(50) DEFAULT NULL COMMENT '编剧名字',
`rating` enum('1','2','3','4') DEFAULT NULL COMMENT '编剧评级',
`residence` varchar(255) DEFAULT NULL COMMENT '常住地',
`created_at` datetime DEFAULT NULL COMMENT '创建时间',
`updated_at` datetime DEFAULT NULL COMMENT '更新时间',
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='编剧表';
 */
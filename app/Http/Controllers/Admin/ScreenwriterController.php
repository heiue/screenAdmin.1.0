<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/27
 * Time: 19:48
 */

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;

class ScreenwriterController extends Controller
{
    //编剧列表页
    public function index() {
        echo 1;
    }

    //显示编剧列表
    public function screenwriter_data(Request $request) {
        $res = Attrname::paginate($request->get('limit',30))->toArray();
        $data = [
            'code' => 0,
            'msg'   => '正在请求中...',
            'count' => $res['total'],
            'data'  => $res['data']
        ];
        return response()->json($data);
    }
}
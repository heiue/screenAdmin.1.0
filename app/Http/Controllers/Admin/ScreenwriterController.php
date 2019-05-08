<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/27
 * Time: 19:48
 */

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\Screenwriter;
use Illuminate\Http\Request;

class ScreenwriterController extends Controller
{
    /**
     * @author WEIYIZHENG
     * @remark 编剧列表页
     * */
    public function index() {
        return view('admin.screenwriter.index');
    }

    /**
     * @author WEIYIZHENG
     * @remark 显示编剧列表
     * @param $request //搜索条件
     * @return object
     * */
    public function data(Request $request) {
        $res = Screenwriter::paginate($request->get('limit',30))->toArray();
        $data = [
            'code' => 0,
            'msg'   => '正在请求中...',
            'count' => $res['total'],
            'data'  => $res['data']
        ];
        return response()->json($data);
    }


    //编剧添加
    public function create() {
        $rating = [
            '1' => '金牌编剧',
            '2' => '著名编剧',
            '3' => '知名编剧',
            '4' => '新锐编剧',
        ];
        return view('admin.screenwriter.create');
    }
    //添加保存
    public function save(Request $request)
    {
        $this->validate($request,[
            'name'  => 'required|string',
            'rating'  => 'required',
            'residence'  => 'required',
        ]);
//        dump($request->all());exit;
        if (Screenwriter::create($request->all())){
            return redirect(route('admin.screen.writer'))->with(['status'=>'添加完成']);
        }
        return redirect(route('admin.screenwriter.create'))->with(['status'=>'系统错误']);
    }

    //编辑编剧
    public function edit($id) {
        $screenwriter = Screenwriter::findOrFail($id);
        return view('admin.screenwriter.edit',compact('screenwriter'));
    }
    //保存编辑的编剧
    public function update(Request $request, $id) {
        $this->validate($request,[
            'name'  => 'required|string',
            'rating'  => 'required',
            'residence'  => 'required',
        ]);
        $scr = Screenwriter::findOrFail($id);
        if ($scr->update($request->only(null))){
            return redirect(route('admin.screen.writer'))->with(['status'=>'更新成功']);
        }
        return redirect(route('admin.screen.writer'))->withErrors(['status'=>'系统错误']);
    }

}
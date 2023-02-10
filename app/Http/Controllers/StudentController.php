<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Excel;

//model use
use App\Models\student;

class StudentController extends Controller
{
    public function create(Request $request){
		student::create($request ->all());
		return redirect('/student');
	}

    public function viewStudent(){
		$mydata = student::paginate(10);
		return view('ManageStudent.student',['mydata'=>$mydata]);
	}

    public function studentDetail($id){
		$mydata  = \App\Models\student::find($id);
		return view('ManageStudent.viewStudent',['mydata'=>$mydata]);
	}

    public function studentEdit($id){
		$mydata  = \App\Models\student::find($id);
		return view('ManageStudent.updateStudent',['mydata'=>$mydata]);
	}

    public function update(Request $request, $id)
	{
		$mydata= \App\Models\student::find($id);
		$mydata-> update($request->all());
		return redirect('/student')->with('success','Donation Successfully Updated');
	}

    public function delete($id)
	{
		$mydata = \App\Models\student::find($id);
		$mydata-> delete($mydata);
		return redirect('/student')->with('success','Data Deleted');
	}

    public function searchStudent(Request $request)
    {
        if(empty($request->name)){
            $mydata=student::all();
        } else {
            if($request->name){
                $mydata = student::where('name','like','%'.$request->name.'%')->get();
            } elseif($request->email) {
                $mydata = student::where('email','like','%'.$request->email.'%')->get();
            }
        }
        return view('ManageStudent.student',['mydata'=>$mydata]);
    }

    public function exportExcel()
{
    return Excel::download(new StudentExport, 'students.xlsx');
}




}

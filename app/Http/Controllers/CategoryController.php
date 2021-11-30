<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    public function allCategory()
    {

        $categories =Category::all();

        foreach ($categories as  $category) {
            $description  = substr($category->description, 0, 25);
            $category->description = $description;
        }

        return view('admin.practice.category', compact('categories'));

    }

    public function categoryStore(Request $request)
    {
        $validator = Validator::make($request->all(), [

            'name'        => 'required|max:100',
        ]);

        if ($validator->fails()) {

            $data          = array();
            $data['error'] = $validator->errors()->all();
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        } else {

            $category = Category::create([
                'name' => $request->name,
                'description' => $request->description,
            ]);
            //dd($category);
            $data = array();
            $data['message'] = 'Category Added Successfully';
            $data['name']  = $category->name;
            $data['description']=substr($category->description, 0, 25);
            $data['id'] = $category->id;

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        }
    }

    public function categoryEdit(Request $request)
    {
        //dd($request->id);
        $category = Category::find($request->id);
        //dd($car);
        if ($category) {
            return response()->json([
                'success' => true,
                'data'    => $category,
            ]);
        } else {
            return response()->json([
                'success' => false,
                'data'    => 'No information found',
            ]);
        }
    }

    public function categoryUpdate(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'       => 'required|max:100',
        ]);
        if ($validator->fails()) {
            $data          = array();
            $data['error'] = $validator->errors()->all();
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        } else {
            $category  = Category::find($request->hidden_id);

            $category['name']       = $request->name;
            $category['description']= $request->description;
            $category->update();

            $data                = array();
            $data['message']     = 'Category updated successfully';
            $data['name']       = $category->name;
            $data['description']=substr($category->description, 0, 25);
            $data['id']          = $request->hidden_id;

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        }
    }

    public function categoryDelete(Request $request)
    {

        //dd($request->id);
        $category = Category::findOrFail($request->id);
        if ($category) {
            $category->delete();
            $data            = array();
            $data['message'] = 'Category deleted successfully';
            $data['id']      = $request->id;
            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        } else {
            $data            = array();
            $data['message'] = 'Category can not deleted!';
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        }
    }
}

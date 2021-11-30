<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use App\Models\Item;
use App\Models\Category;

use Illuminate\Support\Facades\Validator;

class ItemController extends Controller
{
    public function allItem()
    {

        //$items =Item::with('getCategory')->where('category_id', $request->category_id)->all();
        $items =Item::with('getCategory')->get();

        //$item=Item::all();
        $categories =Category::all();
        dd($items);

        foreach ($items as  $item) {
            $description  = substr($item->description, 0, 25);
            $item->description = $description;
        }

        return view('admin.practice.item', compact('items','categories'));

    }

    public function itemStore(Request $request)
    {
        //dd($request->all());
        $validator = Validator::make($request->all(), [

            'name'        => 'required|max:100',
            "category_id"    => "required|array",
            "category_id.*"  => "required",
        ]);

        if ($validator->fails()) {

            $data          = array();
            $data['error'] = $validator->errors()->all();
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        } else {

            $item = Item::create([
                'name' => $request->name,
                'description' => $request->description,
            ]);

            //dd($item);

            $category = $request->category_id;
            
            foreach ($category as $value) {
                $item->getCategory()->attach($value);
            }
            //dd($categoryvalue);
            $data = array();
            $data['message'] = 'Item Added Successfully';
            $data['name']  = $item->name;
            $data['description']=substr($item->description, 0, 25);
            $data['id'] = $item->id;

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        }
    }

    public function itemEdit(Request $request)
    {
        //dd($request->id);
        $item = Item::with('getCategory')->find($request->id);
        //dd($car);
        if ($item) {
            return response()->json([
                'success' => true,
                'data'    => $item,
            ]);
        } else {
            return response()->json([
                'success' => false,
                'data'    => 'No information found',
            ]);
        }
    }

    public function itemUpdate(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'       => 'required|max:100',
            "category_id"    => "required|array",
            "category_id.*"  => "required",
        ]);
        if ($validator->fails()) {
            $data          = array();
            $data['error'] = $validator->errors()->all();
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        } else {
            $item  = Item::find($request->hidden_id);

            $item['name']       = $request->name;
            $item['description']= $request->description;
            $item->update();

            $category = $request->category_id;
            foreach ($category as $value) {
                $categoryvalue[]=$value;
                $item->getCategory()->sync($categoryvalue);
            }

            $data                = array();
            $data['message']     = 'Item updated successfully';
            $data['name']       = $item->name;
            $data['description']=substr($item->description, 0, 25);
            $data['id']          = $request->hidden_id;

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        }
    }

    public function itemDelete(Request $request)
    {

        //dd($request->id);
        $item = Item::findOrFail($request->id);
        if ($item) {
            $item->delete();
            $data            = array();
            $data['message'] = 'Item deleted successfully';
            $data['id']      = $request->id;
            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        } else {
            $data            = array();
            $data['message'] = 'Item can not deleted!';
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        }
    }
}

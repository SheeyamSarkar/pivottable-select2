<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CategoryRelatedServices;
use App\Models\Client;
use App\Models\Count;
use App\Models\Faqs;
use App\Models\GetQuotes;
use App\Models\Infos;
use App\Models\PortfolioCategories;
use App\Models\PortfolioItem;
use App\Models\PortfolioPosition;
use App\Models\PortfolioTag;
use App\Models\Service;
use App\Models\TermsPolicies;

class AntroApiController extends Controller
{
    public function portfolio_cat(){
        return response()->json(PortfolioCategories::all(),200);
    }

    public function getCategoryById($id){
        $portfolio_categories = PortfolioCategories::find($id);
        if(is_null($portfolio_categories)){
            return response()->json(['message'=>'Portfolio Category not found'],404);
        }
        return response()->json($portfolio_categories::find($id),200);
    }
//
    public function portfolioItem(){
        $clientList = PortfolioItem::orderBy('position', 'ASC')->get();
        return response()->json($clientList,200);

    }

    public function portfolioItemById($id){
        $portfolio_items = PortfolioItem::with('getClient','getTag','getCategory')->where('level',$id)->orderBy('position','ASC')->get();
        if(count($portfolio_items)==0){
            return response()->json(['message'=>'Item not found'],404);
        }
        return response()->json($portfolio_items,200);
    }
    public function portfolioCategoryByLevel($id){
        $portfolio_items = PortfolioItem::with('getCategory')->where('level',$id)->first();
        //dd($portfolio_items);
        $portfolio_categories=$portfolio_items->getCategory;
        //dd($portfolio_categories);
        if(empty($portfolio_items)){
            return response()->json(['message'=>'Category name not found'],404);
        }
        return response()->json($portfolio_categories,200);
    }
 

    public function portfolioPosition(){
        return response()->json(PortfolioPosition::with("getPortfolioCategory","getPortfolioItem")->get(),200);
    }

    public function portfolioPositionById($id){
        $portfolio_items = PortfolioPosition::with("getPortfolioCategory","getPortfolioItem")
                                             ->where('portfolio_position_id',$id)->first();
        if(is_null($portfolio_items)){
            return response()->json(['message'=>'Portfolio Position not found'],404);
        }
        return response()->json($portfolio_items,200);
    }

    public function portfolioTags(){
        return response()->json(PortfolioTag::with("getPortfolioItem")->get(),200);
    }
    public function portfolioTagsById($id){

        $portfolio_tags = PortfolioTag::with("getPortfolioItem")
                                             ->where('id',$id)->first();

        if($portfolio_tags){
            $portfolio_tags->tag_id = json_decode($portfolio_tags->tag_id);
            return response()->json($portfolio_tags,200);
        }else{
            return response()->json(['message'=>'Portfolio Tags not found'],404);
        }
    }

    public function categoryRelatedServices(){
        $catServiceList = CategoryRelatedServices::orderBy('position', 'ASC')->get();
        return response()->json($catServiceList,200);
    }

    public function categoryRelatedServicesById($id){
        $portfolio_categories = CategoryRelatedServices::where('level',$id)->orderBy('position','ASC')->get();
        if(count($portfolio_categories) == 0){
            return response()->json(['message'=>'Category Service not found'],404);
        }
        return response()->json($portfolio_categories,200);
    }

    public function infos(){
        return response()->json(Infos::all(),200);
    }
    public function infosById($id){
        $portfolio_categories = Infos::find($id);
        if(is_null($portfolio_categories)){
            return response()->json(['message'=>'Sorry No Infos has been found'],404);
        }
        return response()->json($portfolio_categories::find($id),200);
    }

    public function clients(){
        $clientList = Client::orderBy('Position', 'ASC')->get();
        return response()->json($clientList,200);
    }

    public function clientsById($id){
        $clients = Client::where('precedence','=', $id)->orderBy('Position', 'ASC')->get();
        if(empty($clients)){
            return response()->json(['message'=>'Sorry Client Infos has not been found'],404);
        }
        return response()->json($clients,200);
    }
    public function counts(){
        $count=Count::orderBy('position', 'ASC')->get();
        return response()->json($count,200);
    }
    public function countsById($id){
        $portfolio_categories = Count::find($id);
        if(is_null($portfolio_categories)){
            return response()->json(['message'=>' Not found'],404);
        }
        return response()->json($portfolio_categories::find($id),200);
    }

    public function terms(){
        return response()->json(TermsPolicies::all(),200);
    }
    public function termsById($id){
        $portfolio_categories = TermsPolicies::find($id);
        if(is_null($portfolio_categories)){
            return response()->json(['message'=>' Not found'],404);
        }
        return response()->json($portfolio_categories::find($id),200);
    }


    public function services(){
        return response()->json(Service::all(),200);
    }
    public function servicesById($id){
        $services = Service::find($id);
        if(is_null($services)){
            return response()->json(['message'=>' Not found'],404);
        }
        return response()->json($services::find($id),200);
    }


    public function faqs(){
        return response()->json(Faqs::all(),200);
    }
    public function faqsById($id){
        $Faqs = Faqs::find($id);
        if(is_null($Faqs)){
            return response()->json(['message'=>' Not found'],404);
        }
        return response()->json($Faqs::find($id),200);
    }

    public function getQuotes(Request $request){
        $quotes = GetQuotes::create($request->all());
        return response($quotes,201);
    }

    public function quotes(){
        return response()->json(GetQuotes::all(),200);
    }


}

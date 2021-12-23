<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Model\OmzetModel;
class OmzetController extends Controller
{
    
    public function index(){
$omzet = OmzetModel::latest()->where('merchant_id',request()->route('merchants_id'))
						->where('outlet_id',request()->route('outlet_id'))->paginate(5);
        return view('omzet.index',compact('omzet'))->with('i', (request()->input('page', 1) - 1) * 5);
}

}

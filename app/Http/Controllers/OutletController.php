<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Model\OutletModel;
use Auth;
class OutletController extends Controller
{
 


	public function index(){



		$outlet = OutletModel::latest()->where('merchant_id',request()->route('merchants_id'))->paginate(5);
        return view('outlets.index',compact('outlet'))->with('i', (request()->input('page', 1) - 1) * 5);
	}
}

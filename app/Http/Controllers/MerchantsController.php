<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\MerchantsModel;
use Auth;
class MerchantsController extends Controller
{
    

	public function index(){

		$user = auth()->user();

		$merchants = MerchantsModel::latest()->where('user_id',$user->id)->paginate(5);
        return view('merchants.index',compact('merchants'))->with('i', (request()->input('page', 1) - 1) * 5);
	}

}

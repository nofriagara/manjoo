@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <H1>Outlet</H1>



    <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($outlet as $data)
        <tr>
            <td>{{ ++$i }}</td>
            <td>{{ $data->outlet_name }}</td>
            <td>
   
                    <a class="btn btn-info" href="{{route('omzet',['merchants_id'=>request()->route('merchants_id'),'outlet_id'=>$data->id])}}">Omzet</a>
    
   
    
    
            </td>
        </tr>
        @endforeach
    </table>
  
    {!! $outlet->links() !!}
 

                </div>
            </div>
        </div>
    </div>
</div>
@endsection

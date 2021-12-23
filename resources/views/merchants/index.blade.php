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

                    <H1>Merchants</H1>



    <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($merchants as $data)
        <tr>
            <td>{{ ++$i }}</td>
            <td>{{ $data->merchant_name }}</td>
            <td>
   
                    <a class="btn btn-info" href="{{route('outlet',['merchants_id'=>$data->id])}}">Outlet</a>
    
            </td>
        </tr>
        @endforeach
    </table>
  
    {!! $merchants->links() !!}
 

                </div>
            </div>
        </div>
    </div>
</div>
@endsection

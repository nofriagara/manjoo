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

                    <H1>Omzet</H1>



    <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>Merchants</th>
            <th>Outlet</th>
            <th>Total</th>
            <th>Created At</th>
            <th>Updated By</th>
        </tr>
        @foreach ($omzet as $data)
        <tr>
            <td>{{ ++$i }}</td>
            <td>{{$data->merchant_id}}</td>
            <td>{{$data->bill_total}}</td>
            <td>{{$data->bill_total}}</td>
            <td>{{ $data->created_at }}</td>
            <td>{{ $data->updated_by }}</td>
        </tr>
        @endforeach
    </table>
  
    {!! $omzet->links() !!}
 

                </div>
            </div>
        </div>
    </div>
</div>
@endsection

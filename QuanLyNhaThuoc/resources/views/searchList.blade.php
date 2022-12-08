@extends('layout')
@section('content')

@if (count($product) > 0)
    <div class="search-notice">Tìm thấy {{count($product)}} sản phẩm</div>
@else
    <div class="search-notice">Không tìm thấy sản phẩm nào</div>
@endif

<div class="product-wrap">
    @foreach($product as $item)
    <div class="product">
        <a href="{{route('productdetail', $item->ProductId)}}"><img src="images/{{$item->Img}}" height="150px" width="150px"></a>
        <br>
        <div style="height: 50px;">
            <a href="{{route('productdetail', $item->ProductId)}}">{{$item->ProductName}}</a>
        </div>
        <br>
        <div style="font-weight: 600;color:green">
            @php echo number_format($item->Price, 0)." VND"; @endphp
        </div>
    </div>
    @endforeach
</div>
@endsection
@extends('layout')
@section('content')
<div class="product-detail">
     <div class="img-detail-prod">
          <img src="images/{{$prod->Img}}" width="400px" height="400px">
     </div>
     <div class="detail-info-prod">
          <!-- Mã sản phẩm: {{$prod->ProductId}}<br> -->
          Tên sản phẩm: {{$prod->ProductName}}<br>
          Đơn vị tính: {{$prod->Unit}}<br>
          Giá: @php echo number_format($prod->Price); @endphp<br>
          Công dụng: {{$prod->Description}}
     </div>
</div>
@stop
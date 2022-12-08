@extends('layout')
@section('content')
<div class="container-fluid">

     <table class="table">
          <thead>
               <tr>
                    <th>Mã</th>
                    <th>Tên sản phẩm</th>
                    <th style="width: 80px">Đơn vị</th>
                    <th>Giá</th>
                    <th>Loại</th>
                    <th>Công dụng</th>
                    <th>Hình</th>
                    <th>Xóa</th>
                    <th>Sửa</th>
               </tr>
          </thead>
          <tbody>
               @foreach($product as $item)
               <tr>
                    <td>{{$item->ProductId}}</td>
                    <td><a href="{{route('productdetail', $item->ProductId)}}">{{$item->ProductName}}</a></td>
                    <td>{{$item->Unit}}</td>
                    <td>{{$item->Price}}</td>
                    <td>{{$item->Category->CategoryName}} </td>
                    <td>{{$item->Description}}</td>
                    <td>
                         <img src="images/{{$item->Img}}" alt="" width="50" height="50">
                    </td>
                    <td>
                         <a href="{{route('deleteProduct' , ['ProductId'=> $item->ProductId])}}" title="Xóa"><i class="fa-solid fa-trash"></i></a>
                    </td>
                    <td>
                         <a href="{{route('Update' ,  $item->ProductId)}}" title="Sửa"><i class="fa-solid fa-pen"></i></a>
                    </td>
               @endforeach
          </tbody>
     </table>
</div>

{{-- {{$product->links()}} --}}
@stop
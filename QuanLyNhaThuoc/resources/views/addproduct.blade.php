@extends('layout')
@section('content')
<div class="container-fluid">
    @if($errors->any())
    <div class = "alert alert-danger">
        <ul>
            @foreach($errors->all() as $error)
            <li>{{$error}}</li>
            @endforeach
        </ul>
    </div>
    @endif
</div>
<form action="{{route('insert')}}" method="POST" enctype="multipart/form-data">
    {{csrf_field()}}
    <div class="container-addproduct">
        <div class="form-group addproduct">
            <label for="productname">Tên sản phẩm</label>
            <input type="text" name="productname" id="productname" class="form-control">
            <div class="form-group">
                <label for="unit">Đơn vị tính</label>
                <select name="unit" id="unit" class="form-control">
                    <option value="Hộp">Hộp</option>
                    <option value="Chai">Chai</option>
                    <option value="Cái">Cái</option>
                    <option value="Tuýp">Tuýp</option>
                </select>
            </div>
            <div class="form-group">
                <label for="price">Giá</label>
                <input type="text" name="price" id="price" class="form-control">
            </div>
            <div class="form-group">
                <label for="des">Mô tả sản phẩm</label>
                <input type="text" name="des" id="des" class="form-control">
            </div>
            <div class="form-group">
                <label for="categories">Loại sản phẩm</label>
                <select name="categories" id="categories" class="form-control">
                    @foreach($category as $c)
                    <option value="{{$c->CategoryId}}">{{$c->CategoryName}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="img">Hình</label>
                <input type="file" name="fileUpLoad" id="fileUpLoad" class="form-control">
            </div>
            <div class="form-group">
                <button type="submit" class = "btn_addproduct">Thêm</button>
            </div>
        </div>
    </div>
</form>
@endsection
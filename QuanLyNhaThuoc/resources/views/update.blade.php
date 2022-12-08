@extends('layout')
@section('content')
<form action="{{route('UpdateProd' ,  $prod->ProductId)}}" method="post" enctype="multipart/form-data">
    {{csrf_field()}}
    <div class="container">
        <div class="form-group updateproduct">
            <label for="productname">Tên sản phẩm</label>
            <input type="text" name="productname" id="productname" class="form-control" value="{{$prod->ProductName}}" required>
            <div class="form-group">
                <label for="unit">Đơn vị tính</label>
                <select name="unit" id="unit" class="form-control" required>
                    <option value="Hộp">Hộp</option>
                    <option value="Chai">Chai</option>
                    <option value="Cái">Cái</option>
                    <option value="Tuýp">Tuýp</option>
                    <option value="{{$prod->Unit}}" selected  hidden>{{$prod->Unit}}</option>
                </select>
            </div>
            <div class="form-group">
                <label for="price">Giá</label>
                <input type="text" name="price" id="price" class="form-control" value="{{$prod->Price}}" required>
            </div>
            <div class="form-group">
                <label for="des">Mô tả sản phẩm</label>
                <input type="text" name="des" id="des" class="form-control" value="{{$prod->Description}}">
            </div>
            <div class="form-group">
                <label for="category">Loại sản phẩm</label>
                <select name="category" id="category" class="form-control" required>
                    <option value="TDT">Thuốc điều trị</option>
                    <option value="TPCN">Thực phẩm chức năng</option>
                    <option value="VTYT">Vật tư y tế</option>
                    <option value="{{$prod->Category->CategoryId}}" selected  hidden>{{$prod->Category->CategoryName}}</option>
                </select>
            </div>
            <div class="form-group">
                <label for="img">Hình</label>
                <input type="file" name="fileUpLoad" id="fileUpLoad" class="form-control" required>
                {{$prod->Img}}
            </div>
            <div class="form-group">
                <button type="submit" class="btn_edit">Sửa</button>
            </div>
        </div>
    </div>
</form>
@endsection
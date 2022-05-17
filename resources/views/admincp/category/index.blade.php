@extends('layouts.app')
@section('content')
    <a href="{{ route('admin.category.create') }}" class="btn btn-success mb-3">Thêm Danh Mục</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Danh Mục</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Tên Danh Mục</th>
                            <th>Trạng Thái</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $sn = 1;
                        @endphp
                        @foreach ($category as $category)
                            <tr>
                                <td>{{ $sn++ }}</td>
                                <td>{{ $category->name }}</td>
                                <td> 
                                    @if ($category->status === 1)
                                        Hiển Thị
                                    @else
                                        Không Hiển Thị
                                    @endif    
                                </td>
                                <td>
                                    <a href="{{ route('admin.category.edit', $category) }}" class="btn btn-warning">Sửa</a>
                                    <form action="{{ route('admin.category.destroy', $category) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger">Xóa</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

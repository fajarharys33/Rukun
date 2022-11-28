@extends('webmaster.webmaster')
@section('content')
  active
@endsection
@section('konten')
  <div class="container-fluid">
        <!-- Content Row -->
        <div class="row">
            <div class="col-lg-12">
                <!-- Illustrations -->
                <div class="card shadow">
                    <div class="card-body">
                        <div id="grid">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <a class="btn btn-sm btn-success" href="{{ route('employee.insert') }}"><i class="icon fa fa-plus"></i> Add New</a>   
                                </div>
                                <div id="form_grid" class="form-group">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered" id="news_table" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th width="1%">No</th>
                                                    <th width="20%">Name</th>
                                                    <th width="20%">Email</th>
                                                    <th width="10%">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($data as $item)
                                                <tr>
                                                    <td>{{ $item->rownum }}</td>
                                                    <td>{{ $item->name }}</td>
                                                    <td>{{ $item->email }}</td>
                                                    <td>
                                                        <a href="{{ url('employee/edit/'.$item->id) }}" class="btn btn-warning btn-sm"><i class="icon fa fa-edit"></i></a>
                                                        <a href="{{ url('employee/destroy/'.$item->id) }}" class="btn btn-danger btn-sm"><i class="icon fa fa-trash"></i></a>
                                                    </td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
@endsection
@section('scripts')
<script>
    $(document).ready( function () {
        $('#news_table').DataTable();
    } );
</script>
@endsection
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
                        <form method="post" action="{{ route('employee.update') }}" class="form-horizontal" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <div class="modal-body">
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Name <span class="text-danger">&nbsp;*</span></label>
                                            <div class="col-sm-10">
                                                <input class="form-control" name="name" id="name" required placeholder="Name" value="{{ $data_edit == '' ? '' : $data_edit->name }}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Email Verified </label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="email_verify" id="email_verify" value="{{ $data_edit == '' ? '' : $data_edit->email_verified_at }}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Email </label>
                                            <div class="col-sm-10">
                                                <input type="email" class="form-control" name="email" id="email" required placeholder="Email" value="{{ $data_edit == '' ? '' : $data_edit->email }}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Password <span class="text-danger">&nbsp;*</span></label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" name="password" id="password" required placeholder="Password">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="hidden" name="hdn_id" value="{{ $data_edit == '' ? '' : $data_edit->id }}">
                                <a class="btn btn-warning btn-sm" name="close" id="close" href="{{ url('employee') }}" style="color: #fff">Clear</a>
                                <button type="submit" name="submit_content" id="submit_content" class="btn btn-success btn-sm">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
@endsection
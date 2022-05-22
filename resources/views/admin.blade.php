@extends('layouts.admin')
@section('title', trans('admin.home'))
@section('content')
    <div class="right_col" role="main">
        

        <div class="row">
            <div class="col-md-12 col-sm-12 ">
                <div class="dashboard_graph">
                    <div class="row x_title">
                        <div class="col-md-6">
                            <h3>@lang('admin.chart.order_chart') </h3>
                        </div>
                    </div>
                   
                    <div class="tile_count">
                        <div class="col-md-2 col-sm-4 tile_stats_count">
                            <span class="count_top"><i class="fa fa-user"></i> Tổng số người dùng</span>
                            <div class="count">{{ $user_total }}</div>
                        </div>
                        <div class="col-md-2 col-sm-4  tile_stats_count">
                            <span class="count_top"><i class="fa fa-user"></i> Tổng số đơn hàng</span>
                            <div class="count">{{ $order_total }}</div>
                        </div>
                        <div class="col-md-2 col-sm-4  tile_stats_count">
                            <span class="count_top"><i class="fa fa-user"></i> Tổng số sản phẩm</span>
                            <div class="count">{{ $product_total }}</div>
                        </div>
                        <div class="col-md-2 col-sm-4  tile_stats_count">
                            <span class="count_top"><i class="fa fa-user"></i> Tổng số đánh giá, phản hồi</span>
                            <div class="count">{{ $review_total }}</div>
                        </div>
                        <div class="col-md-2 col-sm-4  tile_stats_count">
                            <span class="count_top"><i class="fa fa-user"></i> Tổng tiền</span>
                            <div class="count" style="font-size:16px">{{ number_format($tongtien, 0, ',', '.') }} VNĐ</div>
                        </div>
                        
                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>

        </div>
        <br />
    </div>
@endsection

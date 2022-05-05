<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Xuất hóa đơn</title>
    <!-- <link rel="shortcut icon" href="{{asset('backend/images/Logo.png')}}"/>
    <link rel="stylesheet" href="{{public_path('backend/css2/bootstrap.min.css')}}"/> -->
    <!-- <link rel="stylesheet" href="{{public_path('backend/css2/bootstrap.min.css')}}"/> -->
    <link href="{{ public_path('assets/vendors/bootstrap/dist/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- <link href="{{ public_path('assets/vendors/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet"> -->
    
    <style>
        body {
            font-family: DejaVu Sans, serif;
            font-size: 14px;
        }

        .super-center {
            display: grid !important;
            place-items: center !important;
        }


        .page-break {
            page-break-after: always;
        }

        .w-100 {
            min-width: 100%;
        }

        .w-50 {
            min-width: 50%;
        }
    </style>

</head>

<body>
<div class="x_content">
        <div class="row">
            <div class="col-sm-12">
                <div class="card-box table-responsive">
                    <div class="card-header text-center">
                        <i class="fas fa-file-invoice-dollar"></i>@lang('admin.orders.order_of') {{ $order->order_name }}
                    </div>
                    <div class="card-body">
                        <table>
                            <tr>
                                <td>@lang('admin.orders.order_phone')</td>
                                <td>: {{ $order->order_phone }}</td>
                            </tr>
                            <tr>
                                <td>@lang('admin.orders.order_city')</td>
                                <td>: {{ $order->order_city }}</td>
                            </tr>
                            <tr>
                                <td>@lang('admin.orders.order_district')</td>
                                <td>: {{ $order->order_district }}</td>
                            </tr>
                            <tr>
                                <td>@lang('admin.orders.order_ward')</td>
                                <td>: {{ $order->order_ward }}</td>
                            </tr>
                            <tr>
                                <td>@lang('admin.orders.order_address')</td>
                                <td>: {{ $order->order_address }}</td>
                            </tr>
                            <tr>
                                <td>@lang('admin.orders.ship_method.ship_method')</td>
                                <td>: @lang('admin.orders.ship_method.'.config('app.ship_method.'. $order->ship_method))</td>
                            </tr>
                            <tr>
                                <td>@lang('admin.orders.pay_method.pay_method')</td>
                                <td>: @lang('admin.orders.pay_method.'.config('app.pay_method.'. $order->pay_method))</td>
                            </tr>
                        </table> <br>
                        <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>@lang('admin.products.pro_name')</th>
                                    <th>@lang('admin.products.pro_new_price')</th>
                                    <th>@lang('admin.products.quantity')</th>
                                    <th>@lang('admin.orders.order_total')</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($order->checkouts as $checkout)
                                @if($checkout->product)
                                    <tr>
                                        <td>{{ $checkout->product->pro_name }}</td>
                                        <td>{{ $checkout->product->pro_new_price }}</td>
                                        <td>{{ $checkout->quantity }}</td>
                                        <td>{{ $checkout->product->pro_new_price * $checkout->quantity }}</td>
                                    </tr>
                                @else
                                <tr>
                                    <td>@lang('admin.orders.product_deleted')</td>
                                </tr>
                                @endif
                                @endforeach
                            </tbody>
                        </table>
                        
                        
                        <p>@lang('admin.orders.order_total'): {{ $order->order_total }}</p>

                        
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>

</html>

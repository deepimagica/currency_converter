@extends('Admin.template')
@section('main-section')
    <style>
        .json-container {
            background: #f4f4f4;
            padding: 15px;
            border-radius: 5px;
            font-size: 14px;
            font-family: monospace;
            white-space: pre-wrap;
            word-wrap: break-word;
        }
    </style>
    <div class="page-header">
        <div>
            <h2 class="main-content-title tx-24 mg-b-5">Webhook</h2>
            <ol class="breadcrumb">
                <li class="breadcrumb-item">Master</li>
                <li class="breadcrumb-item active" aria-current="page">Webhook</li>
            </ol>
        </div>
    </div>
    <div class=" row">
        <div class="col-lg-12">
            <div class="card custom-card">
                <div class="card-header-divider">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table data-table table-striped table-hover" id="table_list_data" width="100%">
                                <thead>
                                    <tr>
                                        <th style="width:10px;">#</th>
                                        <th>Chat ID</th>
                                        <th>Message</th>
                                        <th>Date</th>
                                        <th>View</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="viewModal" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="viewModalLabel">Webhook Data</h5>
                </div>
                <div class="modal-body">
                    <pre id="jsonData" class="json-container"></pre>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    @php
        $selectedParties = config('selected_parties.selected_parties');
    @endphp
    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $(document).ready(function() {
            $('.data-table').DataTable({
                processing: true,
                serverSide: true,
                ajax: "{{ route('webhook.data') }}",
                order:[[0,"DESC"]],
                columns: [{
                        data: 'id',
                        name: 'id'
                    },
                    {
                        data: 'chat_id',
                        name: 'chat_id'
                    },
                    {
                        data: 'message',
                        name: 'message'
                    },
                    {
                        data: 'created_at',
                        name: 'created_at'
                    },
                    {
                        data: 'view',
                        name: 'view',
                        orderable: false,
                        searchable: false
                    }
                ]
            });
           
        });

        function viewData(id) {
                $.ajax({
                    url: "{{ route('webhook.data.view') }}",
                    type: "GET",
                    data: {
                        id: id
                    },
                    success: function(response) {
                        // Swal.fire("success!","Success", "success");
                        let webhookData = response.data;
                        if (!webhookData) {
                            alert('No data found.');
                            return;
                        }
                        let formattedData = {
                           date: response.created_at || 'N/A', 
                            message: webhookData.message || 'N/A',
                            // data: webhookData.data || {}
                        };

                        if (typeof formattedData.data === "string") {
                            try {
                                formattedData.data = JSON.parse(formattedData.data);
                            } catch (e) {
                                console.error("Invalid JSON:", e);
                            }
                        }

                        $('#jsonData').text(JSON.stringify(formattedData, null, 4));
                        $('#viewModal').modal('show');
                    },
                    error: function() {
                        alert('Failed to fetch data');
                    }
                });
            };
    </script>
@endsection

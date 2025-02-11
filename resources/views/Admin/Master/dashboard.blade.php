@extends('Admin.template')
@section('main-section')
    <?php $types = config('global.transction_type_list'); ?>
    <div class="page-header">
        <div>
            <h2 class="main-content-title tx-24 mg-b-5">Dashboard</h2>
            <ol class="breadcrumb">
                <li class="breadcrumb-item">Master</li>
                <li class="breadcrumb-item active" aria-current="page">Balance report list</li>
            </ol>
        </div>
        <div class="btn btn-list">
            <button type="button" class="btn btn-outline-primary rounded" id="toggler" data-toggle="modal"
                data-target="#add_party_modal">Select Party
            </button>
            <div id="add_party_modal" class="modal fade" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Select Party</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="{{ url('dashboard') }}" class="ajax-form-submit" id="cform" method="POST">
                            @csrf
                            <input type="hidden" name="id" id="id" value="">
                            <div class="modal-body">
                                <div class="row" style="display: flex;justify-content: center;">
                                    <div class="col-12">
                                        <div class="">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-group">
                                                            <label class="d-flex" for="group_id">Select Party</label>
                                                            <select class="form-control select2" name="group_id"
                                                                id="group_id" multiple>
                                                                @foreach ($data['party'] as $party)
                                                                    <option value="{{ $party['id'] }}">{{ $party['text'] }}
                                                                    </option>
                                                                @endforeach
                                                            </select>
                                                            <span
                                                                class="float-left tx-danger error_text dr_party_error"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form_proccessing tx-success float-left"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-primary" id="save_data" type="submit" value="Submit">Submit
                                </button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div id="myModal" class="modal fade" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"
                data-backdrop="static" data-keyboard="false">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div id="copySuccessAlert" class="alert alert-success" style="display: none;">Table content copied
                            successfully!</div>
                        <div class="screenshot_screen">
                            <div class="d-none" id="party_name"></div>
                            <h5 class="modal-title mt-3" style="font-size: 26px" id="exampleModalLabel"></h5>
                            <div class="modal-body d-flex justify-content-center align-items-center">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="card-body">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            {{-- <button class="btn btn-primary" id="save_data" type="submit" value="Submit"
                                onclick="captureScreenshot()">Take Screenshot
                            </button> --}}
                            <button class="btn btn-primary" id="save_data" type="submit"
                                onclick="copyTableContent('tableData')">Copy
                            </button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=" row">
        <div class="col-lg-12">
            <div class="card custom-card">
                <div class="card-header-divider">
                    <div class="card-body">
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" checked="checked" name="hide_zero"
                                id="hide_zero_checkbox">
                            <label class="form-check-label mr-3" for="hide_zero_checkbox">Hide Zero</label>
                            ||
                            <a href="{{ url('group_wise_data') }}" class="ml-3">Party group wise report</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table data-table table-striped table-hover table-fw-widget" id="table_list_data"
                                width="100%">
                                <thead>
                                    <tr>
                                        <th style=width:10px;>SS</th>
                                        <th>Srn</th>
                                        <th>Party Name</th>
                                        <?php foreach ($types as $type) { ?>
                                        <th><?php echo $type; ?></th>
                                        <?php } ?>
                                    </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
                    </div>
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
            load_data($("#hide_zero_checkbox").is(':checked'));
        });

        $("#hide_zero_checkbox").change(function() {
            $('#table_list_data').DataTable().destroy();
            load_data($("#hide_zero_checkbox").is(':checked'));
        });

        function load_data(hide_zero) {
            var column = [{
                    data: 'view',
                    name: 'view',
                    orderable: false,
                    searchable: false
                },
                {
                    data: 'srn',
                    name: 'srn'
                },
                {
                    data: 'party_name',
                    name: 'party_name'
                },

            ];
            var newtype = 3;
            var newtypetarget = [];
            <?php foreach ($types as $type) { ?>
            var type = {
                data: '<?php echo $type; ?>_amount',
                name: '<?php echo $type; ?>_amount',
            }
            newtypetarget.push(newtype);
            newtype++;
            column.push(type);
            <?php } ?>
            $('.data-table').DataTable({
                aLengthMenu: [
                    [10, 25, 50, 100, -1],
                    [10, 25, 50, 100, "All"]
                ],
                iDisplayLength: -1,
                columnDefs: [{
                    className: 'dt-right',
                    targets: newtypetarget
                }, ],
                processing: true,
                serverSide: true,
                ajax: {
                    data: {
                        hide_zero: hide_zero,
                    }
                },
                columns: column,
                createdRow: function(row, data, dataIndex) {
                    var newindex = 3;
                    var redstyle = {
                        backgroundColor: "#f9aeac",
                        color: "black",
                        fontWeight: "500"
                    };
                    var greenstyle = {
                        backgroundColor: "#93f992",
                        color: "black",
                        fontWeight: "500"
                    };
                    var zerostyle = {
                        color: "black",
                        fontWeight: "500"
                    }
                    <?php foreach ($types as $type) { ?>
                    var amount_type = data.<?php echo $type; ?>_amount;
                    if (amount_type < 0) {
                        $(row).find('td:eq(' + newindex + ')').css(redstyle);
                    }
                    if (amount_type > 0) {
                        $(row).find('td:eq(' + newindex + ')').css(greenstyle);
                    }
                    if (amount_type === 0) {
                        $(row).find('td:eq(' + newindex + ')').css(zerostyle);
                    }
                    newindex++;
                    <?php } ?>
                }
            });

        }

        function view(view) {
            var srn = $(view).data('val');
            $.ajax({
                type: 'GET',
                url: "{{ url('party_report') }}",
                data: {
                    srn: srn,
                    single_party: 'single_party',
                },
                success: function(response) {
                    if (response.st === 'success') {
                        var bookName = "{{ env('BOOK_NAME') }}";
                        $('.modal-title').html(bookName);
                        $('#party_name').empty().append(response.data.party_name);

                        var tableHTML = '<table class="table table-bordered" id="tableData"><tbody>';

                        // Add the first row with party_name and date
                        tableHTML += '<tr style="font-size:17px"><td><b>' + response.data.party_name +
                            '</b></td><td><b>' + "{{ now()->format('d-m-Y') }}" + '</b></td></tr>';

                        // Iterate through dynamic currency keys and add rows to the table
                        for (var currency in response.data) {
                            if (response.data.hasOwnProperty(currency) && currency.endsWith('_amount')) {
                                var currencyCode = currency.split('_')[0].toUpperCase() + ' Balance'
                                var amount = response.data[currency];
                                var backgroundColor = '';

                                // Set background color based on the value of amount
                                if (amount < 0) {
                                    backgroundColor = 'background-color: #f9aeac;'; // Amount is negative
                                } else if (amount > 0) {
                                    backgroundColor = 'background-color: #93f992;'; // Amount is positive
                                }

                                // Add row to the table with the specified background color
                                tableHTML += '<tr><td>' + currencyCode + '</td><td style="' + backgroundColor +
                                    'text-align: right;">' + amount + '</td></tr>';
                            }
                        }

                        // Close the table body and table
                        tableHTML += '</tbody></table>';

                        // Replace the content of the modal body with the new table
                        $('#myModal .modal-body').html(tableHTML);

                        $('#myModal').modal('show');
                    } else {
                        alert('failed');
                    }
                },
                error: function(error) {
                    $('#save_data').prop('disabled', false);
                    alert('Error');
                }
            });
        }

        $(document).ready(function() {
            $("#group_id").select2({
                placeholder: "Select Party",
                allowClear: true,
                closeOnSelect: false,
                width: "100%",
                templateResult: formatOption,
                templateSelection: formatSelection
            });

            function formatOption(option) {
                if (!option.id) {
                    return option.text;
                }
                var checked = $("#group_id").val() && $("#group_id").val().includes(option.id) ? 'checked' : '';
                return $(
                    `<label><input type="checkbox" class="party-checkbox" data-id="${option.id}" ${checked}> ${option.text}</label>`
                );
            }

            function formatSelection(option) {
                return option.text;
            }

            $(document).on("change", ".party-checkbox", function() {
                var selected = $("#group_id").val() || [];
                var id = $(this).data("id");

                if ($(this).is(":checked")) {
                    if (!selected.includes(id)) {
                        selected.push(id);
                    }
                } else {
                    selected = selected.filter(value => value != id);
                }
                $("#group_id").val(selected).trigger("change");
            });
        });


        $(document).ready(function() {
            let selectedParties = {!! json_encode($data['selectedParties']) !!};

            // Set selected values in dropdown
            // $("#group_id").val(selectedParties).trigger("change");

            // Function to load the DataTable
            function loadDataTable(selectedParties) {
                if ($.fn.DataTable.isDataTable("#table_list_data")) {
                    $("#table_list_data").DataTable().clear().destroy();
                }

                $("#table_list_data").DataTable({
                    processing: true,
                    serverSide: true,
                    ajax: {
                        url: "{{ url('dashboard') }}",
                        method: "GET",
                        data: {
                            group_id: selectedParties
                        },
                    },
                    columns: [{
                            data: "view",
                            name: "view",
                            orderable: false,
                            searchable: false
                        },
                        {
                            data: "srn",
                            name: "srn"
                        },
                        {
                            data: "party_name",
                            name: "party_name"
                        },
                        <?php
                        $newtype = 3;
                        $newtypetarget = [];
                        foreach ($types as $type) {
                            echo "{ data: '{$type}_amount', name: '{$type}_amount' },";
                            $newtypetarget[] = $newtype;
                            $newtype++;
                        }
                        ?>
                    ],
                    columnDefs: [{
                        className: "dt-right",
                        targets: <?php echo json_encode($newtypetarget); ?>
                    }],
                    createdRow: function(row, data, dataIndex) {
                        var redstyle = {
                            backgroundColor: "#f9aeac",
                            color: "black",
                            fontWeight: "500"
                        };
                        var greenstyle = {
                            backgroundColor: "#93f992",
                            color: "black",
                            fontWeight: "500"
                        };
                        var zerostyle = {
                            color: "black",
                            fontWeight: "500"
                        };

                        var newindex = 3;
                        <?php foreach ($types as $type) { ?>
                        var amount_type = data.<?php echo $type; ?>_amount;
                        if (amount_type < 0) {
                            $(row).find("td:eq(" + newindex + ")").css(redstyle);
                        } else if (amount_type > 0) {
                            $(row).find("td:eq(" + newindex + ")").css(greenstyle);
                        } else {
                            $(row).find("td:eq(" + newindex + ")").css(zerostyle);
                        }
                        newindex++;
                        <?php } ?>
                    },
                });
            }

            loadDataTable(selectedParties);

            $("#cform").submit(function(e) {
                e.preventDefault();

                let selectedParties = $("#group_id").val();

                if (!selectedParties || selectedParties.length === 0) {
                    Swal.fire('Error', 'Please select any one option', 'error');
                    return;
                }

                $("#add_party_modal").modal("hide");
                $("#group_id").val(null).trigger("change");

                $.ajax({
                    url: $(this).attr("action"),
                    method: $(this).attr("method"),
                    data: {
                        _token: $("input[name=_token]").val(),
                        group_id: selectedParties,
                    },
                    success: function() {
                        loadDataTable(selectedParties);
                    },
                });
            });
        });


        function copyTableContent(tableId) {
            var table = document.getElementById(tableId);

            if (!table) {
                console.error("Table not found");
                return;
            }

            var text = "";
            var rows = table.querySelectorAll("tr");

            rows.forEach(row => {
                let rowText = [];
                row.querySelectorAll("td, th").forEach((cell, index) => {
                    let cellText = cell.innerText.trim();
                    if (index === 1) {
                        cellText = "\t" + cellText;
                    }

                    rowText.push(cellText);
                });

                text += rowText.join("\t") + "\n";
            });

            var textarea = document.createElement("textarea");
            textarea.value = text.trim();
            document.body.appendChild(textarea);
            textarea.select();

            if (navigator.clipboard) {
                navigator.clipboard.writeText(textarea.value).then(() => {
                    var alertBox = document.getElementById("copySuccessAlert");
                    alertBox.style.display = "block";

                    setTimeout(() => {
                        alertBox.style.display = "none";
                    }, 3000);
                }).catch(err => {
                    console.error("Clipboard copy failed:", err);
                });
            } else {
                document.execCommand("copy");
            }

            document.body.removeChild(textarea);
        }
    </script>
@endsection

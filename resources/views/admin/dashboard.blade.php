 @extends('layouts.master')
 @section('content')
 <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <h1 class="dashboard-title">Welcome {{Auth()->user()->name}}! <img src="{{asset('backend/assets/images/hand.png')}}" alt=""
                            height="51px" width="51px"> </h1>
                </div>
            </div>
        </div>


        <!-- Subscription Card -->
        <div class="container-fluid pt-5 pb-5 section-padding">
              
        </div>

       <!--  <div class="container-fluid section-padding">
            <div class="row row-cols-md-1 row-cols-lg-2 row-cols-xl-4 g-4">
                <div class="col">
                    <div class="card h-100 dashCard">
                        <div class="card-body d-flex justify-content-center align-items-center">
                            <div class="left-iconBox">
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="none"
                                    viewBox="0 0 40 40">
                                    <path fill="#BDBDBD"
                                        d="M20 16.464A6.232 6.232 0 1020 4a6.232 6.232 0 000 12.464zM32.607 16.464a3.94 3.94 0 100-7.88 3.94 3.94 0 000 7.88zM7.393 16.464a3.94 3.94 0 100-7.88 3.94 3.94 0 000 7.88zM11.275 20.002c-1.551-1.271-2.956-1.103-4.749-1.103-2.682 0-4.863 2.17-4.863 4.834v7.823c0 1.158.944 2.099 2.106 2.099 5.016 0 4.412.09 4.412-.216 0-5.544-.657-9.609 3.094-13.438z" />
                                    <path fill="#BDBDBD"
                                        d="M21.706 18.928c-3.133-.262-5.855.003-8.203 1.94-3.93 3.148-3.173 7.386-3.173 12.57a2.513 2.513 0 002.508 2.51c15.12 0 15.722.487 16.619-1.499.294-.671.213-.458.213-6.881 0-5.102-4.418-8.64-7.965-8.64zM33.474 18.899c-1.803 0-3.2-.166-4.749 1.102 3.723 3.8 3.094 7.589 3.094 13.438 0 .309-.502.216 4.337.216a2.18 2.18 0 002.181-2.173v-7.749c0-2.665-2.181-4.834-4.863-4.834z" />
                                </svg>
                            </div>
                            <div class="rightDesc">
                                <h1>20</h1>
                                <p>Total Users</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 dashCard">
                        <div class="card-body d-flex justify-content-center align-items-center">
                            <div class="left-iconBox">
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="none"
                                    viewBox="0 0 40 40">
                                    <path fill="#BDBDBD"
                                        d="M24.21 12.244c.11-.306.19-.612.248-.918.962-5.764-1.88-5.968-1.88-5.968s-.473-.904-1.712-1.589c-.83-.495-1.99-.874-3.512-.743a4.865 4.865 0 00-1.4.27 6.25 6.25 0 00-1.537.787 8.181 8.181 0 00-1.581 1.311c-.75.766-1.421 1.764-1.713 3.003-.24.925-.189 1.894.015 2.929.058.306.139.612.248.918-.569-.051-1.239.277-.605 2.5.444 1.632.874 2.083 1.202 2.113.3 1.938 1.793 4.393 4.248 5.26a4.61 4.61 0 003.112-.007c2.42-.874 3.957-3.322 4.256-5.253.327-.03.75-.481 1.216-2.114.627-2.23-.036-2.557-.604-2.499zM31.24 27c-3.443-.008-6.24 2.789-6.24 6.24a6.24 6.24 0 006.24 6.241 6.24 6.24 0 006.241-6.24A6.24 6.24 0 0031.241 27zm.401 7.615l-1.202 1.194-1.194-1.203-1.153-1.153 1.202-1.202 1.153 1.153 2.748-2.732 1.194 1.203-2.748 2.74z" />
                                    <path fill="#BDBDBD"
                                        d="M30.667 25.557a3.04 3.04 0 00-1.727-1.13c-3.454-.881-6.267-2.856-6.267-2.856l-2.193 6.93-.416 1.304-.007-.014-.357 1.107-1.151-3.279c2.842-3.964-.576-3.92-.765-3.92-.19-.007-3.607-.044-.765 3.92l-1.16 3.28-.356-1.108-.007.014-.416-1.304-2.193-6.93s-2.806 1.975-6.267 2.857c-2.58.655-2.703 3.628-2.594 5.1.015 0 .16 1.997.313 2.871 0 0 5.028 3.272 13.452 3.272 2.252 0 4.255-.233 5.99-.575a7.377 7.377 0 01-.277-2.019c0-4.03 3.184-7.33 7.163-7.52z" />
                                </svg>

                            </div>
                            <div class="rightDesc">
                                <h1>3</h1>
                                <p>Admins</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 dashCard">
                        <div class="card-body d-flex justify-content-center align-items-center">
                            <div class="left-iconBox">
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="none"
                                    viewBox="0 0 40 40">
                                    <path fill="#BDBDBD"
                                        d="M13.67 17.297c.323 2.106 1.95 4.786 4.623 5.728a5.067 5.067 0 003.394-.007c2.629-.95 4.308-3.623 4.639-5.721.353-.03.817-.523 1.318-2.297.685-2.423-.044-2.783-.663-2.725.118-.33.206-.67.265-.993 1.046-6.28-2.047-6.494-2.047-6.494s-.515-.987-1.862-1.73c-.906-.538-2.165-.95-3.822-.81a5.706 5.706 0 00-1.524.287 6.698 6.698 0 00-1.678.861 8.802 8.802 0 00-1.723 1.428c-.817.84-1.546 1.922-1.863 3.27-.265 1.008-.206 2.061.015 3.195.059.331.147.663.265.994-.619-.059-1.348.302-.663 2.724.508 1.767.972 2.26 1.325 2.29z" />
                                    <path fill="#BDBDBD"
                                        d="M32.142 25.536c-3.762-.957-6.817-3.107-6.817-3.107l-2.386 7.547-.45 1.42-.006-.022-.39 1.208-1.26-3.571c3.093-4.315-.625-4.27-.832-4.263-.206-.007-3.924-.052-.832 4.263l-1.259 3.57-.39-1.207-.007.023-.45-1.421-2.392-7.547s-3.056 2.15-6.818 3.107c-2.805.714-2.938 3.954-2.827 5.551 0 0 .162 2.172.323 3.13 0 0 5.478 3.556 14.652 3.563 9.174 0 14.652-3.564 14.652-3.564.162-.957.324-3.129.324-3.129.103-1.597-.03-4.837-2.834-5.551z" />
                                </svg>


                            </div>
                            <div class="rightDesc">
                                <h1>6</h1>
                                <p>Managers</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 dashCard">
                        <div class="card-body d-flex justify-content-center align-items-center">
                            <div class="left-iconBox">
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="none"
                                    viewBox="0 0 40 40">
                                    <g clip-path="url(#clip0)">
                                        <path fill="#BDBDBD"
                                            d="M28.61 21.36h.065c6.148-.065 5.25-8.27 5.25-8.27-.253-5.487-4.841-5.438-5.29-5.422-.45-.016-5.038-.065-5.292 5.421.009 0-.881 8.206 5.267 8.271zM37.077 23.973c-2.776-1.061-4.442-2.147-4.442-2.147l-2.139 6.777-.294.922-.963-2.718c2.204-3.079-.164-3.226-.58-3.226h-.033c-.408 0-2.784.147-.58 3.226l-.963 2.719-.294-.923-2.14-6.777s-.856.563-2.375 1.274c.923.71 1.551 1.657 1.919 2.865.449 1.487.465 3.234.49 5.447 0 .285.008.587.008.898v.024H40c-.057-4.727.139-7.25-2.923-8.36zM11.325 21.36h.065c6.148-.065 5.25-8.27 5.25-8.27-.253-5.487-4.842-5.438-5.29-5.422-.45-.016-5.039-.065-5.292 5.421.017 0-.873 8.206 5.267 8.271zM19.792 23.973c-2.776-1.061-4.442-2.147-4.442-2.147l-2.14 6.777-.293.922-.963-2.718c2.204-3.079-.164-3.226-.58-3.226h-.033c-.408 0-2.784.147-.58 3.226l-.963 2.719-.294-.923-2.14-6.777s-1.665 1.086-4.44 2.147c-3.055 1.11-2.859 3.634-2.924 8.353h22.723c-.057-4.72.13-7.242-2.931-8.353z" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0">
                                            <path fill="#fff" d="M0 0h40v40H0z" />
                                        </clipPath>
                                    </defs>
                                </svg>

                            </div>
                            <div class="rightDesc">
                                <h1>14</h1>
                                <p>Employees</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid section-padding">
            <div class="row">
                <div class="col-12 quotTitle">
                    <h1>Quotations</h1>
                </div>
            </div>
            <div class="row mb-5 g-4">
                <div class="col-lg-3">
                    <div class="card summary-card" style="width: 100%">
                        <div class="card-body">
                            <div class="summary-content">
                                <h3>12</h3>
                                <p>Total Quotes</p>
                            </div>
                            <div class="summary-content">
                                <h3>8</h3>
                                <p>Internally Unapproved</p>
                            </div>
                            <div class="summary-content">
                                <h3>5</h3>
                                <p>Redo Requests</p>
                            </div>
                            <div class="summary-content">
                                <h3>3</h3>
                                <p>Internally Approved</p>
                            </div>
                            <div class="summary-content">
                                <h3>6</h3>
                                <p>Approved by Clients</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-9">
                    <div class="card summary-card" style="width: 100%">
                        <div class="card-body">
                            <div class="row dashTableTitle">
                                <div class="col-6">
                                    <h3>Recent Quotes</h3>
                                </div>
                                <div class="col-6 text-end">
                                    <a href="#">View All
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none"
                                            viewBox="0 0 20 20">
                                            <path fill="#828282" fill-rule="evenodd"
                                                d="M6 10a1 1 0 011-1h11.667a1 1 0 110 2H7a1 1 0 01-1-1z"
                                                clip-rule="evenodd" />
                                            <path fill="#828282" fill-rule="evenodd"
                                                d="M12.126 3.46a1 1 0 011.414 0l5.834 5.833a1 1 0 010 1.414l-5.834 5.834a1 1 0 01-1.414-1.415L17.252 10l-5.126-5.126a1 1 0 010-1.414z"
                                                clip-rule="evenodd" />
                                        </svg>
                                    </a>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class=" ">
                                        <table class="table table-borderless align-middle text-center dashboardTable">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Client</th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Primary Approval</th>
                                                    <th scope="col">Secondary Approval</th>
                                                    <th scope="col">Grand Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Toyota Navana</td>
                                                    <td>5/7/21</td>
                                                    <td>Approved</td>
                                                    <td>Redo</td>
                                                    <td>৳ 10,000.00</td>
                                                </tr>
                                                <tr>
                                                    <td>Viral Shield</td>
                                                    <td>5/7/21</td>
                                                    <td>Approved</td>
                                                    <td>Redo</td>
                                                    <td>৳ 10,000.00</td>
                                                </tr>
                                                <tr>
                                                    <td>BASTU</td>
                                                    <td>5/7/21</td>
                                                    <td>Approved</td>
                                                    <td>Redo</td>
                                                    <td>৳ 10,000.00</td>
                                                </tr>
                                                <tr>
                                                    <td>Toyota Navana</td>
                                                    <td>5/7/21</td>
                                                    <td>Approved</td>
                                                    <td>Redo</td>
                                                    <td>৳ 10,000.00</td>
                                                </tr>
                                                <tr>
                                                    <td>Viral Shield</td>
                                                    <td>5/7/21</td>
                                                    <td>Approved</td>
                                                    <td>Redo</td>
                                                    <td>৳ 10,000.00</td>
                                                </tr>
                                                <tr>
                                                    <td>BASTU</td>
                                                    <td>5/7/21</td>
                                                    <td>Approved</td>
                                                    <td>Redo</td>
                                                    <td>৳ 10,000.00</td>
                                                </tr>
                                                <tr>
                                                    <td>Toyota Navana</td>
                                                    <td>5/7/21</td>
                                                    <td>Approved</td>
                                                    <td>Redo</td>
                                                    <td>৳ 10,000.00</td>
                                                </tr>
                                                <tr>
                                                    <td>Viral Shield</td>
                                                    <td>5/7/21</td>
                                                    <td>Approved</td>
                                                    <td>Redo</td>
                                                    <td>৳ 10,000.00</td>
                                                </tr>
                                                <tr>
                                                    <td>BASTU</td>
                                                    <td>5/7/21</td>
                                                    <td>Approved</td>
                                                    <td>Redo</td>
                                                    <td>৳ 10,000.00</td>
                                                </tr>
                                                <tr>
                                                    <td>BASTU</td>
                                                    <td>5/7/21</td>
                                                    <td>Approved</td>
                                                    <td>Redo</td>
                                                    <td>৳ 10,000.00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div> -->

@endsection
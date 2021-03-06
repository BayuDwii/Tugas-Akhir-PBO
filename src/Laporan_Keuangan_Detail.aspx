<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Laporan_Keuangan_Detail.aspx.cs" Inherits="Kost_Q.src.Laporan_Keuangan_Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KOST-Q</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <%-- HEADER --%>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: rgb(232, 186,153);">
            <div class="container-fluid">
                <a class="navbar-brand ps-5 fs-3">KOST-Q</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mb-2 mb-lg-0 w-75 ms-auto d-flex justify-content-between px-5">
                        <li class="nav-item ps-5">
                            <a class="nav-link active fs-2 ps-5" aria-current="page">Laporan Keuangan</a>
                        </li>

                        <li class="nav-item d-flex align-items-center">
                            <i class="fa-solid fa-circle-user fs-1"></i>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <%-- HEADER --%>

    <form id="form1" runat="server">
        <div class="container-fluid mt-5 pt-5">
            <div class="container">
                <div class="row">
                    <div class="col-5">
                        <p style="height: 5rem; font-weight: 600; font-size: 1.1rem;">
                            Nama
                        </p>
                        <p style="height: 5rem; font-weight: 600; font-size: 1.1rem;">
                            Tanggal
                        </p>
                        <p style="height: 5rem; font-weight: 600; font-size: 1.1rem;">
                            Keuntungan
                        </p>
                    </div>
                    <asp:PlaceHolder ID="detail_laporan" runat="server"></asp:PlaceHolder>
                    <div class="col-2">
                        <div class="d-flex justify-content-between">
                            <div class="delete">
                                <asp:Button Text="Hapus" ID="delete_laporan" CssClass="btn btn-danger btn-lg text-white" runat="server" OnClick="delete_laporan_Click" />
                            </div>
                            <div class="edit">
                                <asp:PlaceHolder ID="edit_keuangan" runat="server"></asp:PlaceHolder>
                            </div>
                            <div class="kembali">
                                <a href="Laporan_Keuangan.aspx" class="btn btn-info btn-lg text-dark">
                                    <i class="bi bi-arrow-left"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>

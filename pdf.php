<?php
require_once("tcpdf/tcpdf.php");
require "connect.php";

$id_jadwal_tagihan = $_GET["id"];

// tanggal laporan
$tb_jadwal_tagihan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM jadwal_tagihan WHERE id = '$id_jadwal_tagihan'"));
$tanggal = $tb_jadwal_tagihan["tanggal"];

// ubah value tanggal
$split_tgl = explode("/", $tanggal);
$tgl = $split_tgl[0];
$bln = $split_tgl[1];
$thn = $split_tgl[2];
$tanggal_laporan = $tgl."-".$bln."-".$thn;

// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->setCreator(PDF_CREATOR);
$pdf->setAuthor('Akbaroke');
$pdf->setTitle('Data_Laporan_Uangkas_'.$tanggal_laporan.'');
$pdf->setSubject('Data_Laporan_Uangkas_'.$tanggal_laporan.'');
$pdf->setKeywords('Data_Laporan_Uangkas_'.$tanggal_laporan.'');

// set font
$pdf->setFont('pdfacourier', '', 9, '', true);

// helvetica
// pdfacourier
// times

// set header
$pdf->setPrintHeader(false);

// Add a page
$pdf->AddPage();

$html = file_get_contents("http://localhost/kas-app/print-dataLaporan.php?id=".$id_jadwal_tagihan);



// Print text using writeHTMLCell()
$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);

// ---------------------------------------------------------

// Close and output PDF document
// This method has several options, check the source code documentation for more information.
$pdf->Output('Data_Laporan_Uangkas_'.$tanggal_laporan.'.pdf', 'I');

?>
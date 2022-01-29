﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="asad.aspx.cs" Inherits="asad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="table.css" rel="stylesheet" />
    <link href="rwd-table.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
  <h1>RWD List to Table</h1>
<table class="rwd-table">
  <tr>
    <th>Movie Title</th>
    <th>Genre</th>
    <th>Year</th>
    <th>Gross</th>
  </tr>
  <tr>
    <td data-th="Movie Title">Star Wars</td>
    <td data-th="Genre">Adventure, Sci-fi</td>
    <td data-th="Year">1977</td>
    <td data-th="Gross">$460,935,665</td>
  </tr>
  <tr>
    <td data-th="Movie Title">Howard The Duck</td>
    <td data-th="Genre">"Comedy"</td>
    <td data-th="Year">1986</td>
    <td data-th="Gross">$16,295,774</td>
  </tr>
  <tr>
    <td data-th="Movie Title">American Graffiti</td>
    <td data-th="Genre">Comedy, Drama</td>
    <td data-th="Year">1973</td>
    <td data-th="Gross">$115,000,000</td>
  </tr>
</table>

<p>&larr; Drag window (in editor or full page view) to see the effect. &rarr;</p>
    </form>
</body>
</html>

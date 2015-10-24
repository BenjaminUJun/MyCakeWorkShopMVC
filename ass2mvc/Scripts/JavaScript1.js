$('#booktable').dataTable();
$('#booktable tbody tr:even').addClass("silver");
$('#usertable').dataTable();
$('#usertable tbody tr:even').addClass("silver");
$('#booktable tbody tr').mouseover(function () {
    $(this).addClass('dataHover');
});
$('#usertable tbody tr').mouseover(function () {
    $(this).addClass('dataHover');
});
$('#booktable tbody tr').mouseout(function () {
    $(this).removeClass('dataHover');
});
$('#usertable tbody tr').mouseout(function () {
    $(this).removeClass('dataHover');
});
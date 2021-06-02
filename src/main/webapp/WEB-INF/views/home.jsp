<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Spring Framework - Ajax</title>
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/ax5ui/ax5ui-kernel/master/dist/ax5ui.all.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.rawgit.com/ax5ui/ax5ui-kernel/master/dist/ax5ui.all.min.js"></script>

<link href="<c:url value="/resources/jquery-ui/jquery-ui.css"/>"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/jqGrid/css/ui.jqgrid.css"/>"
	rel="stylesheet" type="text/css" />

<script src="<c:url value="/resources/jqGrid/js/jquery-1.11.0.min.js"/>"></script>
<script src="<c:url value="/resources/jquery-ui/jquery-ui.js"/>"></script>
<script
	src="<c:url value="/resources/jqGrid/js/i18n/grid.locale-en.js"/>"></script>
<script src="<c:url value="/resources/jqGrid/js/jquery.jqGrid.min.js"/>"></script>

</head>

<body>

	<h1>JSP -> JQGRID</h1>

	<table id="list"></table>
	<hr>

	<script type="text/javascript">
        $(function() {
 
            $("#list").jqGrid({
                datatype : "local",
                height : 250,
                colNames : [ '컬럼1', '컬럼2' ],
                colModel : [ {
                    name : 'col1',
                    index : 'col1'
                }, {
                    name : 'col2',
                    index : 'col2'
                }, ],
                caption : "그리드 배열 데이터 샘플링"
 
            });
             
            var mydata = [ {
                col1 : "내용1",
                col2 : "내용11"
            }, {
                col1 : "내용2",
                col2 : "내용22"
            }, ];
            //배열을 반복문으로 돌려서 그리드에 add 시킨다 
            for (var i = 0; i <= mydata.length; i++) {
                $("#list").jqGrid('addRowData', i + 1, mydata[i]);
            }
        })
         
    </script>


	<table id="list4"></table>

	<script type="text/javascript">
    $(function() {
    	 
        // 변수 선언
        var i, max, myData, grid = $("#list4");

        // grid 설정
        grid.jqGrid({
            datatype : "local",
            height : 'auto',
            colNames : [ 'Inv No', 'Date', 'Client', 'Amount', 'Tax','Total', 'Notes' ],

            colModel : [
            	{name : 'id', index : 'id', width : 60, sorttype : "int"},
            	{name : 'invdate', index : 'invdate', width : 90, sorttype : "date"},
            	{name : 'name', index : 'name', width : 100},
            	{name : 'amount', index : 'amount', width : 80, align : "right", sorttype : "float"},
            	{name : 'tax', index : 'tax', width : 80, align : "right", sorttype : "float"},
            	{name : 'total', index : 'total', width : 80, align : "right", sorttype : "float"},
            	{name : 'note', index : 'note', width : 150, sortable : false}
            ],
            multiselect : true,
            caption : "Manipulating Array Data"

        });

        // 로컬 데이터
        myData = [
        	{id : "1", invdate : "2021-10-01", name : "test", note : "note", amount : "200.00", tax : "10.00", total : "210.00"},
        	{id : "2", invdate : "2021-10-02",name : "test2", note : "note2", amount : "300.00", tax : "20.00", total : "320.00"},
        	{id : "3", invdate : "2021-10-02",name : "test3", note : "note2", amount : "300.00", tax : "20.00", total : "320.00"},
        	{id : "4", invdate : "2021-10-02",name : "test4", note : "note2", amount : "300.00", tax : "20.00", total : "320.00"},
        	{id : "5", invdate : "2021-10-02",name : "test5", note : "note2", amount : "300.00", tax : "20.00", total : "320.00"},
        	{id : "6", invdate : "2021-10-02",name : "test5", note : "note2", amount : "300.00", tax : "20.00", total : "320.00"},
        	{id : "7", invdate : "2021-10-02",name : "test5", note : "note2", amount : "300.00", tax : "20.00", total : "320.00"},
        	{id : "8", invdate : "2021-10-02",name : "test5", note : "note2", amount : "300.00", tax : "20.00", total : "320.00"},
        ];

        // 데이터 추가
        for (i = 0, max = myData.length; i <= max; i++) {
            grid.jqGrid('addRowData', i + 1, myData[i]);
        }

    });
    </script>
    
    

	<table id="jqGrid22"></table>
 <script type="text/javascript"> 
    
        $(document).ready(function () {
            $("#jqGrid22").jqGrid({
                url: 'http://trirand.com/blog/phpjqgrid/examples/jsonp/getjsonp.php?callback=?&qwery=orders',
                mtype: "GET",
                datatype: "jsonp",
                colModel: [
                    { label: 'OrderID', name: 'OrderID', key: true, width: 75 },
                    { label: 'Customer ID', name: 'CustomerID', width: 150 },
                    { label: 'Order Date', name: 'OrderDate', width: 150                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          },
                    { label: 'Freight', name: 'Freight', width: 150 },
                    { label:'Ship Name', name: 'ShipName', width: 150 }
                ],
				page: 1,
                width: 780,
                height: 250,
                rowNum: 20,
				scrollPopUp:true,
				scrollLeftOffset: "83%",
				viewrecords: true,
                scroll: 1, // set the scroll property to 1 to enable paging with scrollbar - virtual loading of records
                emptyrecords: 'Scroll to bottom to retrieve new page', // the message will be displayed at the bottom 
                pager: "#jqGridPager"
            });
        });

    </script>
    
</html>

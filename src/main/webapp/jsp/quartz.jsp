<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>js定时器效果</title>
    </head>
    <body>
        <div class="time"></div>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.1.min.js"></script>
        <script type="text/javascript">
            $(function(){
                timeNow();
                function timeNow(){
                    var date = new Date();
                    var seperator1 = "-";
                    var seperator2 = ":";
                    var month = date.getMonth() + 1;
                    var strDate = date.getDate();
                    var hour = date.getHours();
                    var minu =date.getMinutes();
                    var sec =date.getSeconds();
                    if (month >= 1 && month <= 9) {
                        month = "0" + month;
                    }
                    if (strDate >= 0 && strDate <= 9) {
                        strDate = "0" + strDate;
                    }
                    if (minu >= 0 && minu <= 9) {
                        minu = "0" + minu;
                    }
                    if (sec >= 0 && sec <= 9) {
                        sec = "0" + sec;
                    }
                    if (hour >= 0 && hour <= 9) {
                        hour = "0" + hour;
                    }
                    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate + " " + hour + seperator2 + minu + seperator2 + sec;
                    $('.time').html('年月日:'+date.getFullYear() + seperator1 + month + seperator1 + strDate +'时分秒:'+hour + seperator2 + minu +':'+sec );
                };
                var time = null;
                time=setInterval(timeNow,1000);
            });
        </script>
    </body>
</html>
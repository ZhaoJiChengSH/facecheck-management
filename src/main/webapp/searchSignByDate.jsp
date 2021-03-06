<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<%@ include file="UIAdminHead.jsp" %>
<div class="layui-body">
    <div class="layui-text" style="font-size: 25px; color: #393D49;width: 400px;height: 30px;padding: 35px">
        签到信息日期查询
    </div>
    <form class="layui-form" action="querySignbyDate.action" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">日期选择</label>
            <div class="layui-input-block" style="width: 250px;">
                <input type="text" class="layui-input" id="test1" name="input" required lay-verify="required"
                       placeholder="请输入日期" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">查询项</label>
            <div class="layui-input-block">
                <input type="radio" name="query" value="0" title="查询该日期签到项" checked>
                <input type="radio" name="query" value="1" title="查询该日期以后有效签到项">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo1">查询</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
    <div style="width: 850px;margin: 20px 40px;">
        <table class="layui-table" lay-data="{page:true}" lay-filter="test">
            <thead>
            <tr>
                <th lay-data="{field:'stuID', width:100}">打卡ID</th>
                <th lay-data="{field:'name', width:150, sort:true}">打卡名</th>
                <th lay-data="{field:'sex', width:150, sort:true}">打卡描述</th>
                <th lay-data="{field:'clazz', width:150, sort:true}">发布日期</th>
                <th lay-data="{field:'depart', width:150, sort:true}">教师ID</th>
                <th lay-data="{field:'operate', sort:false}">操作</th>
            </tr>
            </thead>
            <tbody>
            <s:iterator value="signs">
                <tr>
                    <td><s:property value="signID"/></td>
                    <td><s:property value="name"/></td>
                    <td><s:property value="description"/></td>
                    <td><s:date format="YYYY-MM-dd" name="createTime"/></td>
                    <td><s:property value="teaID"/></td>
                    <td>
                        <a href="getSignInstance.action?signID=${signID}" class="layui-btn layui-btn-normal layui-btn-xs">查看</a>
                    </td>
                </tr>
            </s:iterator>
            </tbody>
        </table>
    </div>

        <%--<script>--%>
        <%--    layui.use('laydate', function(){--%>
        <%--        var laydate = layui.laydate;--%>

        <%--        //执行一个laydate实例--%>
        <%--        laydate.render({--%>
        <%--            elem: '#test1' //指定元素--%>
        <%--        });--%>
        <%--    });--%>
        <%--</script>--%>
        <%--<script >--%>
        <%--    layui.use('form', function(){--%>
        <%--        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功--%>

        <%--        form.on('submit(formDemo1)', function(data){--%>
        <%--        });--%>
        <%--        form.render();--%>
        <%--    });--%>
        <%--</script>--%>
<script>
    window.onload = function () {
        document.getElementById("querySignDate").className = "layui-this";
    }
</script>
<%@ include file="UIbottom.jsp" %>
</html>
<%@ page language="C#" autoeventwireup="true" inherits="User_user_regaction, App_Web_sxbic0ln" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员信息页</title>
<link rel="stylesheet" type="text/css" href="skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="skin/user_user.css" />
<script language="javascript">
    var submitOne = "0";
    function enterSubmit() {
        if (event.keyCode == 13 && submitOne == "0") {
            if (DOSubmit('register') == true) {
                document.getElementById('regbotton').disabled = 'disabled';
                submitOne = "1";
                document.registerForm.submit();
            }
        }
    }
    function setQuestion(obj, a) {
        var value = obj.value;
        if (value == "-1") {
            document.getElementById("my_question" + a).style.display = "";
        }
        else {
            document.getElementById("my_question" + a).style.display = "none";
        }
    }

    function checkUserquestion(question, a) {
        document.getElementById("question_q" + a + "_Tip").className = "";
        if (question == "") {
            document.getElementById("question_q" + a + "_Tip").innerHTML = "<font color=red >请选择您的密码提示问题！</font>";
            return false;
        }
        document.getElementById("question_q" + a + "_Tip").innerHTML = "<font color=#FFFFFF>问题" + a + "可以使用！</font>";

        return true;
    }
    function checkquestion(question, a) {
        document.getElementById("question" + a + "_Tip").className = "";
        if (question == "") {
            document.getElementById("question" + a + "_Tip").innerHTML = "<font color=red >请输入您的问题！</font>";
            return false;
        }
        if (question.replace(/[^\x00-\xff]/g, "ab").length < 2 || question.replace(/[^\x00-\xff]/g, "ab").length > 30) {
            document.getElementById("question" + a + "_Tip").innerHTML = "<font color=red >提示问题长度控制在2-30个字符！</font>";
            return false;
        }
        document.getElementById("question" + a + "_Tip").innerHTML = "<font color=#FFFFFF>自定义问题" + a + "可以使用！</font>";
        return true;
    }
    function checkanswer(answer, a) {
        document.getElementById("answer" + a + "_Tip").className = "";
        if (answer == "") {
            document.getElementById("answer" + a + "_Tip").innerHTML = "<font color=red >请输入您的问题答案！</font>";
            return false;
        }
        if (answer.replace(/[^\x00-\xff]/g, "ab").length < 2 || answer.replace(/[^\x00-\xff]/g, "ab").length > 30) {
            document.getElementById("answer" + a + "_Tip").innerHTML = "<font color=red >问题答案长度控制在2-30个字符！</font>";
            return false;
        }
        document.getElementById("answer" + a + "_Tip").innerHTML = "<font color=#FFFFFF>答案" + a + "可以使用！</font>";
        return true;
    }
    function doOnFocus(param) {
        var str = "";
        if (param == "question_q1_Tip") {
            str = "请选择您的密码提示问题！";
        }
        if (param == "question_q2_Tip") {
            str = "请选择您的密码提示问题！";
        }
        if (param == "question_q3_Tip") {
            str = "请选择您的密码提示问题！";
        }
        if (param == "question1_Tip") {
            str = "请输入您的问题！";
        }
        if (param == "question2_Tip") {
            str = "请输入您的问题！";
        }
        if (param == "question3_Tip") {
            str = "请输入您的问题！";
        }
        if (param == "answer1_Tip") {
            str = "请输入您的问题答案！";
        }
        if (param == "answer2_Tip") {
            str = "请输入您的问题答案！";
        }
        if (param == "answer3_Tip") {
            str = "请输入您的问题答案！";
        }
        if (param == "usercard_Tip") {
            str = "请输入正确的身份证号码！";
        }
        document.getElementById(param).innerHTML = str;
    }
    function DOSubmit(param) {
        if (param == "register") {
            if (isOnSubmit) {
                alert('正在提交，请耐心等待！');
                return false;
            }
            if (OK() == false)
                return false;
            if (document.registerForm.question_q1.value == "") {
                registerForm.question_q1.focus();
                return false;
            }
            if (document.registerForm.question_q1.value == "-1" && document.registerForm.question1.value == "") {
                registerForm.question1.focus();
                return false;
            }
            if (document.registerForm.answer1.value == "") {
                registerForm.answer1.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "") {
                registerForm.question_q2.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "-1" && document.registerForm.question2.value == "") {
                registerForm.question2.focus();
                return false;
            }
            if (document.registerForm.answer2.value == "") {
                registerForm.answer2.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "") {
                registerForm.question_q3.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "-1" && document.registerForm.question3.value == "") {
                registerForm.question3.focus();
                return false;
            }
            if (document.registerForm.answer3.value == "") {
                registerForm.answer3.focus();
                return false;
            }
            if (document.registerForm.usercard.value == "") {
                registerForm.usercard.focus();
                return false;
            }

        }
        document.registerForm.regOperation.value = param;
        isOnSubmit = true;
        return true;
    }
    function OK() {
        var obj;
        obj = document.getElementById("question_q1_Tip");
        if (obj.innerHTML.indexOf("问题1可以使用") == -1) {
            document.registerForm.question_q1.focus();
            return false;
        }
        obj = document.getElementById("question1_Tip");
        if ((document.registerForm.question_q1.value == "-1") && (obj.innerHTML.indexOf("自定义问题1可以使用") == -1)) {
            document.registerForm.question1.focus();
            return false;
        }
        obj = document.getElementById("answer1_Tip");
        if (obj.innerHTML.indexOf("答案1可以使用") == -1) {
            document.registerForm.answer1.focus();
            return false;
        }
        obj = document.getElementById("question_q2_Tip");
        if (obj.innerHTML.indexOf("问题2可以使用") == -1) {
            document.registerForm.question_q2.focus();
            return false;
        }
        obj = document.getElementById("question2_Tip");
        if ((document.registerForm.question_q2.value == "-1") && (obj.innerHTML.indexOf("自定义问题2可以使用") == -1)) {
            document.registerForm.question2.focus();
            return false;
        }
        obj = document.getElementById("answer2_Tip");
        if (obj.innerHTML.indexOf("答案2可以使用") == -1) {
            document.registerForm.answer2.focus();
            return false;
        }
        obj = document.getElementById("question_q3_Tip");
        if (obj.innerHTML.indexOf("问题3可以使用") == -1) {
            document.registerForm.question_q3.focus();
            return false;
        }
        obj = document.getElementById("question3_Tip");
        if ((document.registerForm.question_q3.value == "-1") && (obj.innerHTML.indexOf("自定义问题3可以使用") == -1)) {
            document.registerForm.question3.focus();
            return false;
        }
        obj = document.getElementById("answer3_Tip");
        if (obj.innerHTML.indexOf("答案3可以使用") == -1) {
            document.registerForm.answer3.focus();
            return false;
        }
        obj = document.getElementById("usercard_Tip");
        if (obj.innerHTML.indexOf("验证通过") == -1) {
            document.registerForm.usercard.focus();
            return false;
        }
        return true;
    }
    var isOnSubmit = false;
    function DOSubmit(param) {
        if (param == "register") {
            if (isOnSubmit) {
                alert('正在提交，请耐心等待！');
                return false;
            }
            if (OK() == false)
                return false;
            if (document.registerForm.question_q1.value == "") {
                registerForm.question_q1.focus();
                return false;
            }
            if (document.registerForm.question_q1.value == "-1" && document.registerForm.question1.value == "") {
                registerForm.question1.focus();
                return false;
            }
            if (document.registerForm.answer1.value == "") {
                registerForm.answer1.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "") {
                registerForm.question_q2.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "-1" && document.registerForm.question2.value == "") {
                registerForm.question2.focus();
                return false;
            }
            if (document.registerForm.answer2.value == "") {
                registerForm.answer2.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "") {
                registerForm.question_q3.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "-1" && document.registerForm.question3.value == "") {
                registerForm.question3.focus();
                return false;
            }
            if (document.registerForm.answer3.value == "") {
                registerForm.answer3.focus();
                return false;
            }
            if (document.registerForm.usercard.value == "") {
                registerForm.usercard.focus();
                return false;
            }

        }
        document.registerForm.regOperation.value = param;
        isOnSubmit = true;
        return true;
    }
    function OK() {
        var obj;
        obj = document.getElementById("question_q1_Tip");
        if (obj.innerHTML.indexOf("问题1可以使用") == -1) {
            document.registerForm.question_q1.focus();
            return false;
        }
        obj = document.getElementById("question1_Tip");
        if ((document.registerForm.question_q1.value == "-1") && (obj.innerHTML.indexOf("自定义问题1可以使用") == -1)) {
            document.registerForm.question1.focus();
            return false;
        }
        obj = document.getElementById("answer1_Tip");
        if (obj.innerHTML.indexOf("答案1可以使用") == -1) {
            document.registerForm.answer1.focus();
            return false;
        }
        obj = document.getElementById("question_q2_Tip");
        if (obj.innerHTML.indexOf("问题2可以使用") == -1) {
            document.registerForm.question_q2.focus();
            return false;
        }
        obj = document.getElementById("question2_Tip");
        if ((document.registerForm.question_q2.value == "-1") && (obj.innerHTML.indexOf("自定义问题2可以使用") == -1)) {
            document.registerForm.question2.focus();
            return false;
        }
        obj = document.getElementById("answer2_Tip");
        if (obj.innerHTML.indexOf("答案2可以使用") == -1) {
            document.registerForm.answer2.focus();
            return false;
        }
        obj = document.getElementById("question_q3_Tip");
        if (obj.innerHTML.indexOf("问题3可以使用") == -1) {
            document.registerForm.question_q3.focus();
            return false;
        }
        obj = document.getElementById("question3_Tip");
        if ((document.registerForm.question_q3.value == "-1") && (obj.innerHTML.indexOf("自定义问题3可以使用") == -1)) {
            document.registerForm.question3.focus();
            return false;
        }
        obj = document.getElementById("answer3_Tip");
        if (obj.innerHTML.indexOf("答案3可以使用") == -1) {
            document.registerForm.answer3.focus();
            return false;
        }
        obj = document.getElementById("usercard_Tip");
        if (obj.innerHTML.indexOf("验证通过") == -1) {
            document.registerForm.usercard.focus();
            return false;
        }
        return true;
    } function DOSubmit(param) {
        if (param == "register") {
            if (isOnSubmit) {
                alert('正在提交，请耐心等待！');
                return false;
            }
            if (OK() == false)
                return false;
            if (document.registerForm.question_q1.value == "") {
                registerForm.question_q1.focus();
                return false;
            }
            if (document.registerForm.question_q1.value == "-1" && document.registerForm.question1.value == "") {
                registerForm.question1.focus();
                return false;
            }
            if (document.registerForm.answer1.value == "") {
                registerForm.answer1.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "") {
                registerForm.question_q2.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "-1" && document.registerForm.question2.value == "") {
                registerForm.question2.focus();
                return false;
            }
            if (document.registerForm.answer2.value == "") {
                registerForm.answer2.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "") {
                registerForm.question_q3.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "-1" && document.registerForm.question3.value == "") {
                registerForm.question3.focus();
                return false;
            }
            if (document.registerForm.answer3.value == "") {
                registerForm.answer3.focus();
                return false;
            }
            if (document.registerForm.usercard.value == "") {
                registerForm.usercard.focus();
                return false;
            }

        }
        document.registerForm.regOperation.value = param;
        isOnSubmit = true;
        return true;
    }
    function OK() {
        var obj;
        obj = document.getElementById("question_q1_Tip");
        if (obj.innerHTML.indexOf("问题1可以使用") == -1) {
            document.registerForm.question_q1.focus();
            return false;
        }
        obj = document.getElementById("question1_Tip");
        if ((document.registerForm.question_q1.value == "-1") && (obj.innerHTML.indexOf("自定义问题1可以使用") == -1)) {
            document.registerForm.question1.focus();
            return false;
        }
        obj = document.getElementById("answer1_Tip");
        if (obj.innerHTML.indexOf("答案1可以使用") == -1) {
            document.registerForm.answer1.focus();
            return false;
        }
        obj = document.getElementById("question_q2_Tip");
        if (obj.innerHTML.indexOf("问题2可以使用") == -1) {
            document.registerForm.question_q2.focus();
            return false;
        }
        obj = document.getElementById("question2_Tip");
        if ((document.registerForm.question_q2.value == "-1") && (obj.innerHTML.indexOf("自定义问题2可以使用") == -1)) {
            document.registerForm.question2.focus();
            return false;
        }
        obj = document.getElementById("answer2_Tip");
        if (obj.innerHTML.indexOf("答案2可以使用") == -1) {
            document.registerForm.answer2.focus();
            return false;
        }
        obj = document.getElementById("question_q3_Tip");
        if (obj.innerHTML.indexOf("问题3可以使用") == -1) {
            document.registerForm.question_q3.focus();
            return false;
        }
        obj = document.getElementById("question3_Tip");
        if ((document.registerForm.question_q3.value == "-1") && (obj.innerHTML.indexOf("自定义问题3可以使用") == -1)) {
            document.registerForm.question3.focus();
            return false;
        }
        obj = document.getElementById("answer3_Tip");
        if (obj.innerHTML.indexOf("答案3可以使用") == -1) {
            document.registerForm.answer3.focus();
            return false;
        }
        obj = document.getElementById("usercard_Tip");
        if (obj.innerHTML.indexOf("验证通过") == -1) {
            document.registerForm.usercard.focus();
            return false;
        }
        return true;
    } function DOSubmit(param) {
        if (param == "register") {
            if (isOnSubmit) {
                alert('正在提交，请耐心等待！');
                return false;
            }
            if (OK() == false)
                return false;
            if (document.registerForm.question_q1.value == "") {
                registerForm.question_q1.focus();
                return false;
            }
            if (document.registerForm.question_q1.value == "-1" && document.registerForm.question1.value == "") {
                registerForm.question1.focus();
                return false;
            }
            if (document.registerForm.answer1.value == "") {
                registerForm.answer1.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "") {
                registerForm.question_q2.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "-1" && document.registerForm.question2.value == "") {
                registerForm.question2.focus();
                return false;
            }
            if (document.registerForm.answer2.value == "") {
                registerForm.answer2.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "") {
                registerForm.question_q3.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "-1" && document.registerForm.question3.value == "") {
                registerForm.question3.focus();
                return false;
            }
            if (document.registerForm.answer3.value == "") {
                registerForm.answer3.focus();
                return false;
            }
            if (document.registerForm.usercard.value == "") {
                registerForm.usercard.focus();
                return false;
            }

        }
        document.registerForm.regOperation.value = param;
        isOnSubmit = true;
        return true;
    }
    function OK() {
        var obj;
        obj = document.getElementById("question_q1_Tip");
        if (obj.innerHTML.indexOf("问题1可以使用") == -1) {
            document.registerForm.question_q1.focus();
            return false;
        }
        obj = document.getElementById("question1_Tip");
        if ((document.registerForm.question_q1.value == "-1") && (obj.innerHTML.indexOf("自定义问题1可以使用") == -1)) {
            document.registerForm.question1.focus();
            return false;
        }
        obj = document.getElementById("answer1_Tip");
        if (obj.innerHTML.indexOf("答案1可以使用") == -1) {
            document.registerForm.answer1.focus();
            return false;
        }
        obj = document.getElementById("question_q2_Tip");
        if (obj.innerHTML.indexOf("问题2可以使用") == -1) {
            document.registerForm.question_q2.focus();
            return false;
        }
        obj = document.getElementById("question2_Tip");
        if ((document.registerForm.question_q2.value == "-1") && (obj.innerHTML.indexOf("自定义问题2可以使用") == -1)) {
            document.registerForm.question2.focus();
            return false;
        }
        obj = document.getElementById("answer2_Tip");
        if (obj.innerHTML.indexOf("答案2可以使用") == -1) {
            document.registerForm.answer2.focus();
            return false;
        }
        obj = document.getElementById("question_q3_Tip");
        if (obj.innerHTML.indexOf("问题3可以使用") == -1) {
            document.registerForm.question_q3.focus();
            return false;
        }
        obj = document.getElementById("question3_Tip");
        if ((document.registerForm.question_q3.value == "-1") && (obj.innerHTML.indexOf("自定义问题3可以使用") == -1)) {
            document.registerForm.question3.focus();
            return false;
        }
        obj = document.getElementById("answer3_Tip");
        if (obj.innerHTML.indexOf("答案3可以使用") == -1) {
            document.registerForm.answer3.focus();
            return false;
        }
        obj = document.getElementById("usercard_Tip");
        if (obj.innerHTML.indexOf("验证通过") == -1) {
            document.registerForm.usercard.focus();
            return false;
        }
        return true;
    } function DOSubmit(param) {
        if (param == "register") {
            if (isOnSubmit) {
                alert('正在提交，请耐心等待！');
                return false;
            }
            if (OK() == false)
                return false;
            if (document.registerForm.question_q1.value == "") {
                registerForm.question_q1.focus();
                return false;
            }
            if (document.registerForm.question_q1.value == "-1" && document.registerForm.question1.value == "") {
                registerForm.question1.focus();
                return false;
            }
            if (document.registerForm.answer1.value == "") {
                registerForm.answer1.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "") {
                registerForm.question_q2.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "-1" && document.registerForm.question2.value == "") {
                registerForm.question2.focus();
                return false;
            }
            if (document.registerForm.answer2.value == "") {
                registerForm.answer2.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "") {
                registerForm.question_q3.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "-1" && document.registerForm.question3.value == "") {
                registerForm.question3.focus();
                return false;
            }
            if (document.registerForm.answer3.value == "") {
                registerForm.answer3.focus();
                return false;
            }
            if (document.registerForm.usercard.value == "") {
                registerForm.usercard.focus();
                return false;
            }

        }
        document.registerForm.regOperation.value = param;
        isOnSubmit = true;
        return true;
    }
    function OK() {
        var obj;
        obj = document.getElementById("question_q1_Tip");
        if (obj.innerHTML.indexOf("问题1可以使用") == -1) {
            document.registerForm.question_q1.focus();
            return false;
        }
        obj = document.getElementById("question1_Tip");
        if ((document.registerForm.question_q1.value == "-1") && (obj.innerHTML.indexOf("自定义问题1可以使用") == -1)) {
            document.registerForm.question1.focus();
            return false;
        }
        obj = document.getElementById("answer1_Tip");
        if (obj.innerHTML.indexOf("答案1可以使用") == -1) {
            document.registerForm.answer1.focus();
            return false;
        }
        obj = document.getElementById("question_q2_Tip");
        if (obj.innerHTML.indexOf("问题2可以使用") == -1) {
            document.registerForm.question_q2.focus();
            return false;
        }
        obj = document.getElementById("question2_Tip");
        if ((document.registerForm.question_q2.value == "-1") && (obj.innerHTML.indexOf("自定义问题2可以使用") == -1)) {
            document.registerForm.question2.focus();
            return false;
        }
        obj = document.getElementById("answer2_Tip");
        if (obj.innerHTML.indexOf("答案2可以使用") == -1) {
            document.registerForm.answer2.focus();
            return false;
        }
        obj = document.getElementById("question_q3_Tip");
        if (obj.innerHTML.indexOf("问题3可以使用") == -1) {
            document.registerForm.question_q3.focus();
            return false;
        }
        obj = document.getElementById("question3_Tip");
        if ((document.registerForm.question_q3.value == "-1") && (obj.innerHTML.indexOf("自定义问题3可以使用") == -1)) {
            document.registerForm.question3.focus();
            return false;
        }
        obj = document.getElementById("answer3_Tip");
        if (obj.innerHTML.indexOf("答案3可以使用") == -1) {
            document.registerForm.answer3.focus();
            return false;
        }
        obj = document.getElementById("usercard_Tip");
        if (obj.innerHTML.indexOf("验证通过") == -1) {
            document.registerForm.usercard.focus();
            return false;
        }
        return true;
    }

    function DOSubmit(param) {
        if (param == "register") {
            if (isOnSubmit) {
                alert('正在提交，请耐心等待！');
                return false;
            }
            if (OK() == false)
                return false;
            if (document.registerForm.question_q1.value == "") {
                registerForm.question_q1.focus();
                return false;
            }
            if (document.registerForm.question_q1.value == "-1" && document.registerForm.question1.value == "") {
                registerForm.question1.focus();
                return false;
            }
            if (document.registerForm.answer1.value == "") {
                registerForm.answer1.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "") {
                registerForm.question_q2.focus();
                return false;
            }
            if (document.registerForm.question_q2.value == "-1" && document.registerForm.question2.value == "") {
                registerForm.question2.focus();
                return false;
            }
            if (document.registerForm.answer2.value == "") {
                registerForm.answer2.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "") {
                registerForm.question_q3.focus();
                return false;
            }
            if (document.registerForm.question_q3.value == "-1" && document.registerForm.question3.value == "") {
                registerForm.question3.focus();
                return false;
            }
            if (document.registerForm.answer3.value == "") {
                registerForm.answer3.focus();
                return false;
            }
            if (document.registerForm.usercard.value == "") {
                registerForm.usercard.focus();
                return false;
            }

        }
        document.registerForm.regOperation.value = param;
        isOnSubmit = true;
        return true;
    }
    function OK() {
        var obj;
        obj = document.getElementById("question_q1_Tip");
        if (obj.innerHTML.indexOf("问题1可以使用") == -1) {
            document.registerForm.question_q1.focus();
            return false;
        }
        obj = document.getElementById("question1_Tip");
        if ((document.registerForm.question_q1.value == "-1") && (obj.innerHTML.indexOf("自定义问题1可以使用") == -1)) {
            document.registerForm.question1.focus();
            return false;
        }
        obj = document.getElementById("answer1_Tip");
        if (obj.innerHTML.indexOf("答案1可以使用") == -1) {
            document.registerForm.answer1.focus();
            return false;
        }
        obj = document.getElementById("question_q2_Tip");
        if (obj.innerHTML.indexOf("问题2可以使用") == -1) {
            document.registerForm.question_q2.focus();
            return false;
        }
        obj = document.getElementById("question2_Tip");
        if ((document.registerForm.question_q2.value == "-1") && (obj.innerHTML.indexOf("自定义问题2可以使用") == -1)) {
            document.registerForm.question2.focus();
            return false;
        }
        obj = document.getElementById("answer2_Tip");
        if (obj.innerHTML.indexOf("答案2可以使用") == -1) {
            document.registerForm.answer2.focus();
            return false;
        }
        obj = document.getElementById("question_q3_Tip");
        if (obj.innerHTML.indexOf("问题3可以使用") == -1) {
            document.registerForm.question_q3.focus();
            return false;
        }
        obj = document.getElementById("question3_Tip");
        if ((document.registerForm.question_q3.value == "-1") && (obj.innerHTML.indexOf("自定义问题3可以使用") == -1)) {
            document.registerForm.question3.focus();
            return false;
        }
        obj = document.getElementById("answer3_Tip");
        if (obj.innerHTML.indexOf("答案3可以使用") == -1) {
            document.registerForm.answer3.focus();
            return false;
        }
        obj = document.getElementById("usercard_Tip");
        if (obj.innerHTML.indexOf("验证通过") == -1) {
            document.registerForm.usercard.focus();
            return false;
        }
        return true;
    }

    //判断身份证合法性
    function isIdCardNo(idcard) {
        var strr = document.getElementById("usercard_Tip")
        var Errors = new Array(
    "<font color=#FFFFFF>验证通过!</font>",
    "<font color=red>身份证号码位数不对!</font>",
    "<font color=red>身份证号码错误!</font>",
    "<font color=red>身份证号码错误!</font>",
    "<font color=red>身份证号码错误!</font>",
	"<font color=red>请输入您的正确身份证！</font>"
       );
        if (idcard == "") {
            strr.innerHTML = Errors[5];
            return false;
        }
        var area = { 11: "北京", 12: "天津", 13: "河北", 14: "山西", 15: "内蒙古", 21: "辽宁", 22: "吉林", 23: "黑龙江", 31: "上海", 32: "江苏", 33: "浙江", 34: "安徽", 35: "福建", 36: "江西", 37: "山东", 41: "河南", 42: "湖北", 43: "湖南", 44: "广东", 45: "广西", 46: "海南", 50: "重庆", 51: "四川", 52: "贵州", 53: "云南", 54: "西藏", 61: "陕西", 62: "甘肃", 63: "青海", 64: "宁夏", 65: "新疆", 71: "台湾", 81: "香港", 82: "澳门", 91: "国外" }
        var idcard, Y, JYM;
        var S, M;
        var idcard_array = new Array();
        idcard_array = idcard.split("");
        //地区检验 
        if (area[parseInt(idcard.substr(0, 2))] == null) {
            strr.innerHTML = Errors[4];
            return false;
        }
        switch (idcard.length) {
            case 15:
                if ((parseInt(idcard.substr(6, 2)) + 1900) % 4 == 0 || ((parseInt(idcard.substr(6, 2)) + 1900) % 100 == 0 && (parseInt(idcard.substr(6, 2)) + 1900) % 4 == 0)) {
                    ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/; //测试出生日期的合法性 
                } else {
                    ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/; //测试出生日期的合法性 
                }
                if (ereg.test(idcard)) {
                    strr.innerHTML = Errors[0];
                } else {
                    strr.innerHTML = Errors[2];
                }
                break;
            case 18:
                //18位身份号码检测 
                //出生日期的合法性检查 
                //闰年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9])) 
                //平年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8])) 
                if (parseInt(idcard.substr(6, 4)) % 4 == 0 || (parseInt(idcard.substr(6, 4)) % 100 == 0 && parseInt(idcard.substr(6, 4)) % 4 == 0)) {
                    ereg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/; //闰年出生日期的合法性正则表达式 
                } else {
                    ereg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/; //平年出生日期的合法性正则表达式 
                }
                if (ereg.test(idcard)) {//测试出生日期的合法性 
                    //计算校验位 
                    S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7
        + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9
        + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10
        + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5
        + (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8
        + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4
        + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2
        + parseInt(idcard_array[7]) * 1
        + parseInt(idcard_array[8]) * 6
        + parseInt(idcard_array[9]) * 3;
                    Y = S % 11;
                    M = "F";
                    JYM = "10X98765432";
                    M = JYM.substr(Y, 1); //判断校验位 
                    if (M == idcard_array[17]) {
                        strr.innerHTML = Errors[0];
                    } else {
                        strr.innerHTML = Errors[3];
                    }
                } else {
                    strr.innerHTML = Errors[2];
                }
                break;
            default:
                strr.innerHTML = Errors[1];
                break;
        }

    }

</script>

<style>
    .box1
    {
        font-size: 14px;
        font-weight: bold;
        color: #CC0000;
        margin-bottom: 10px;
    }
    .rok
    {
        background-color: #FDFFCE;
        padding: 10px;
        border: 1px solid #FFBA43;
        margin-right: 10px;
        margin-left: 10px;
        margin-top: 20px;
        margin-bottom: 30px;
    }
    .r1
    {
        float: left;
        width: 25px;
    }
    .r2
    {
        float: left;
        width: 660px;
    }
    .clearfix
    {
        clear: both;
        display: block;
    }
</style>
</head>
<body>
<form id="registerForm" runat="server" onsubmit="return DOSubmit('register');" method="post">
<table width="600" height="344" border="0" align="center" cellpadding="3" cellspacing="0">
    <tr>
        <td colspan="3">
            <strong><font color="#325AA2">设置密码问题答案</font></strong>
        </td>
    </tr>
    <tr>
        <td height="27" colspan="3">
            密码问题答案可用于找回通行证密码，请认真填写，自定义问题和答案长度不超过30个字符。
        </td>
    </tr>
    <tr>
        <td width="118" align="right">
            问题1：
        </td>
        <td width="235">
            <select runat="server" name="question_q1" class="inputregbtm" id="question_q1" tabindex="1"
                onchange="setQuestion(this,1)" onblur="checkUserquestion(document.registerForm.question_q1.value,1)">
                <option value="" selected>请选择一个问题</option>
                <option value="您母亲的姓名是？">我母亲的姓名是？</option>
                <option value="您父亲的姓名是？">我父亲的姓名是？</option>
                <option value="您配偶的姓名是？">我配偶的姓名是？</option>
                <option value="您的出生地点是？">我的出生地点是？</option>
                <option value="您高中班主任的名字是？">我高中班主任的名字是？</option>
                <option value="您初中班主任的名字是？">我初中班主任的名字是？</option>
                <option value="您小学班主任的名字是？">我小学班主任的名字是？</option>
                <option value="您小学校名是？">我小学校名是？</option>
                <option value="您的学号（或工号）是？">我的学号（或工号）是？</option>
                <option value="您母亲的生日是？">我母亲的生日是？</option>
                <option value="您父亲的生日是？">我父亲的生日是？</option>
                <option value="您配偶的生日是？">我配偶的生日是？</option>
                <option value="-1">我自己编写密码提示问题</option>
            </select>
        </td>
        <td width="254">
            <span id="question_q1_Tip">
            </span>
        </td>
    </tr>
    <tr id="my_question1" style="display: none">
        <td align="right">
            自定义问题1：
        </td>
        <td>
            <input onblur="checkquestion(document.registerForm.question1.value,1);this.className='it1';" name="question1" class="it1"
                id="question1" tabindex="12" size="30" maxlength="30" runat="server" />
        </td>
        <td>
            <span id="question1_Tip"></span>
        </td>
    </tr>
    <tr>
        <td align="right">
            答案1：
        </td>
        <td>
            <input onblur="checkanswer(document.registerForm.answer1.value,1);this.className='it1';" runat="server" name="answer1"
                class="it1" id="answer1" tabindex="13" size="30" maxlength="30" />
        </td>
        <td>
            <span id="answer1_Tip"></span>
        </td>
    </tr>
    <tr>
        <td width="118" align="right">
            问题2：
        </td>
        <td width="235">
            <select runat="server" name="question_q2" class="inputregbtm" id="question_q2" tabindex="2"
                onchange="setQuestion(this,2)" onblur="checkUserquestion(document.registerForm.question_q2.value,2)">
                <option value="" selected>请选择一个问题</option>
                <option value="您母亲的姓名是？">我母亲的姓名是？</option>
                <option value="您父亲的姓名是？">我父亲的姓名是？</option>
                <option value="您配偶的姓名是？">我配偶的姓名是？</option>
                <option value="您的出生地点是？">我的出生地点是？</option>
                <option value="您高中班主任的名字是？">我高中班主任的名字是？</option>
                <option value="您初中班主任的名字是？">我初中班主任的名字是？</option>
                <option value="您小学班主任的名字是？">我小学班主任的名字是？</option>
                <option value="您小学校名是？">我小学校名是？</option>
                <option value="您的学号（或工号）是？">我的学号（或工号）是？</option>
                <option value="您母亲的生日是？">我母亲的生日是？</option>
                <option value="您父亲的生日是？">我父亲的生日是？</option>
                <option value="您配偶的生日是？">我配偶的生日是？</option>
                <option value="-1">我自己编写密码提示问题</option>
            </select>
        </td>
        <td width="254">
            <span id="question_q2_Tip"></span>
        </td>
    </tr>
    <tr id="my_question2" style="display: none">
        <td align="right">
            自定义问题2：
        </td>
        <td>
            <input onblur="checkquestion(document.registerForm.question1.value,2);this.className='it1';" runat="server" name="question2"
                class="it1" id="question2" tabindex="12" size="30" maxlength="30" />
        </td>
        <td>
            <span id="question2_Tip"></span>
        </td>
    </tr>
    <tr>
        <td align="right">
            答案2：
        </td>
        <td>
            <input onblur="checkanswer(document.registerForm.answer1.value,2);this.className='it1';"
                 runat="server" name="answer2" class="it1" id="answer2" tabindex="13" size="30"
                maxlength="30" />
        </td>
        <td>
            <span id="answer2_Tip"></span>
        </td>
    </tr>
    <tr>
        <td width="118" align="right">
            问题3：
        </td>
        <td width="235">
            <select runat="server" onblur="checkUserquestion(document.registerForm.question_q3.value,3)"
                onchange="setQuestion(this,3)" name="question_q3" class="inputregbtm" id="question_q3"
                tabindex="1">
                <option value="" selected>请选择一个问题</option>
                <option value="您母亲的姓名是？">我母亲的姓名是？</option>
                <option value="您父亲的姓名是？">我父亲的姓名是？</option>
                <option value="您配偶的姓名是？">我配偶的姓名是？</option>
                <option value="您的出生地点是？">我的出生地点是？</option>
                <option value="您高中班主任的名字是？">我高中班主任的名字是？</option>
                <option value="您初中班主任的名字是？">我初中班主任的名字是？</option>
                <option value="您小学班主任的名字是？">我小学班主任的名字是？</option>
                <option value="您小学校名是？">我小学校名是？</option>
                <option value="您的学号（或工号）是？">我的学号（或工号）是？</option>
                <option value="您母亲的生日是？">我母亲的生日是？</option>
                <option value="您父亲的生日是？">我父亲的生日是？</option>
                <option value="您配偶的生日是？">我配偶的生日是？</option>
                <option value="-1">我自己编写密码提示问题</option>
            </select>
        </td>
        <td width="254">
            <span id="question_q3_Tip"></span>
        </td>
    </tr>
    <tr id="my_question3" style="display: none">
        <td align="right">
            自定义问题3：
        </td>
        <td>
            <input onblur="checkquestion(document.registerForm.question1.value,3);this.className='it1';" runat="server" name="question3"
                class="it1" id="question3" tabindex="12" size="30" maxlength="30" />
        </td>
        <td>
            <span id="question3_Tip"></span>
        </td>
    </tr>
    <tr>
        <td align="right">
            答案3：
        </td>
        <td>
            <input onblur="checkanswer(document.registerForm.answer1.value,3);this.className='it1';"
                name="answer3" class="it1" id="answer3" tabindex="13" size="30" maxlength="30"
                runat="server" />
        </td>
        <td>
            <span id="answer3_Tip"></span>
        </td>
    </tr>
</table>
<asp:Panel ID="panel" runat="server">
    <table width="600" height="178" border="0" align="center" cellpadding="7" cellspacing="0">
        <tr>
            <td colspan="3">
                <strong><font color="#325AA2">设置身份证</font></strong>
            </td>
        </tr>
        <tr>
            <td  colspan="3">
            <%--    身份证号码作为通行证归属的最终凭证，请准确填写真实身份证号码。<br />
                <a href="User_regaction.aspx?menu=none"><b><font color="#FF0000">如果您没有身份证，请点此设置密保</font></b></a>--%>
            </td>
        </tr>
        <tr>
            <td width="117" height="33" align="right">
                身份证号码：
            </td>
            <td width="237">
                <input runat="server" name="usercard" class="it1" id="usercard" tabindex="13" size="30"
                    maxlength="18" onblur="isIdCardNo(document.registerForm.usercard.value);this.className='it1';"
                   />
            </td>
            <td width="254">
                <span id="usercard_Tip"></span>
            </td>
        </tr>
        <tr>
            <td height="58" align="right">
                &nbsp;
            </td>
            <td colspan="2">
                <input name="tme" type="hidden" id="tme" value="20091208160141" /><input name="frnd"
                    type="hidden" id="frnd" value="4de337607c13de2678317228a135efcb" />
                <input type="hidden" name="regOperation" />
                <span class="btmbian"><input type="hidden" value="1" name="ischeck" />
     <asp:Button  ID="BtnSave" runat="server" Visible="false"   Text="提交保存" 
                    onclick="BtnSave_Click" style="height: 26px"  > 
      </asp:Button>
    </span>
            </td>
        </tr>
    </table>
</asp:Panel>
</form>
</body>
</html>

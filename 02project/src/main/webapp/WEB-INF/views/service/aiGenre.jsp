<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.io.PrintWriter"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/danfojs@0.1.2/dist/index.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@2.4.0/dist/tf.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-vis"></script>
<script>
//dfd는 danfojs의 모듈의 이름이다. read_csv를 이용하여 해당 링크의 데이터를 읽어온다.
  //웹에서 제공하는 분꽃 데이터를 읽어오는 부분이다.  
function genreSerch() {
	$('#result').html("로딩중입니다. 잠시만 기다려주세요.");

	dfd.read_csv('/ex/resources/file/genreData.csv').then(function(data){
	       // console.log(data);
	        //data.print(); //읽어온 데이터를 표형태로 출력한다.
		//종속변수 컬럼 선정
	        //상품,성별,나이
	        독립변수 = data.loc({columns:['성별','나이']});
	       // 독립변수.print(); //선정한 독립변수 출력
	     
	//하나의 종속변수를 여러개로 분리 0과 1의 데이터를 넣는다.
	       
	        종속변수 = data.loc({columns:['어린이','취업','소설','액션','자기개발']});
	        //data['품종'].print();// 종속변인 품종 1개의 컬럼 출력
	        //종속변수.print();// 하나의 칼럼을 여러 개의 컬럼으로 01의 값을 넣어 분리한 컬럼 출력 
	//입력층 4개의 컬럼 설정
	
	  console.log(독립변수)
	  console.log(종속변수)
	var X = tf.input({ shape: [2]});
	        	//딥러닝을 위한 히든 레이어
	        var H = tf.layers.dense({ units: 2, activation:'relu'}).apply(X);
	
	      	//출력층 5개의 컬럼 설정
	        var Y = tf.layers.dense({ units: 5, activation:'softmax'}).apply(H);   
	
		//모델 생성
	        model = tf.model({ inputs: X, outputs: Y });
	        var compileParam = { optimizer: tf.train.adam(), loss: 'categoricalCrossentropy', metrics:['accuracy'] }
	        model.compile(compileParam);   
	//결과 출력    
	       // tfvis.show.modelSummary({name:'요약', tab:'모델'}, model);
	  // 3. 데이터로 모델을 학습시킵니다. 
	  _history = [];
	        var fitParam = { 
	          epochs: 300, //몇번 학습할 것인가
	          callbacks:{
	            onEpochEnd:
	              function(epoch, logs){
	                console.log('epoch', epoch, logs, 'RMSE=>', Math.sqrt(logs.loss));
	                // _history.push(logs);
	                // tfvis.show.history({name:'loss', tab:'역사'}, _history, ['loss']);
	                // tfvis.show.history({name:'accuracy', tab:'역사'}, _history, ['acc']);
	              }
	          }
	        }        
		//학습결과 확인
	        model.fit(독립변수.tensor, 종속변수.tensor, fitParam).then(function (result) {
	        	var gender = $('#genreGender').val();
	        	var age = $('#genreAge').val();
	            // 4. 모델을 이용합니다. 
	            // 4.1 기존의 데이터를 이용
	            var New상품 = [[]]
	            New상품[0][0] = Number(gender);
	            New상품[0][1] = Number(age);
	            var New상품 = tf.tensor(New상품);
	            예측한결과 = new dfd.DataFrame(model.predict(New상품));
	            
	            var result = 예측한결과.data;
	            console.log(result);
	            console.log(result[0]);
	            console.log(result[0][0]);
	            
	            const arr = result[0];
                const maxValue = Math.max.apply(null, arr);
                console.log(maxValue);
	            
	            if(result[0][0]==maxValue){
		            $('#result').html("입력하신 성별,나이에 대해 가장 높은 데이터는 어린이 입니다");
	            }else if(result[0][1]==maxValue){
		            $('#result').html("입력하신 성별,나이에 대해 가장 높은 데이터는 취업 입니다");
	            }else if(result[0][2]==maxValue){
		            $('#result').html("입력하신 성별,나이에 대해 가장 높은 데이터는 소설 입니다");
	            }else if(result[0][3]==maxValue){
		            $('#result').html("입력하신 성별,나이에 대해 가장 높은 데이터는 액션 입니다");
	            }else if(result[0][4]==maxValue){
		            $('#result').html("입력하신 성별,나이에 대해 가장 높은 데이터는 자기개발 입니다");
	        	}else{
		            $('#result').html("다시 시도하세요.");
	        	}
	            //예측한결과.print();
	          //  종속변수.print();
	        });  
	    })
}
</script>
</head>
<body>
<div style="text-align: center; margin-top:70px;">
		성별선택==>
		<select id="genreGender">
        <option value="0">남 자</option>
        <option value="1">여 자</option>
        </select>
        &emsp;&emsp;&emsp;
	나이입력: <input type="text" id='genreAge'>
	<button onclick="genreSerch();">분석하기</button>
	<div id='result'></div>
	</div>
	<div>
	
	</div>
	<div style="margin-top:400px">
<%@ include file="../include/footer.jsp"%>
</div>
</body>
</html>
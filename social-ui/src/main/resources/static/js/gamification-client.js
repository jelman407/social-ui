var SERVER_URL = "http://192.168.163.128:8000/api";
//var SERVER_URL = "http://localhost:8000/api";
//var SERVER_URL = "http://172.18.0.3:8000/api";

function updateLeaderBoard() {
	
	SERVER_URL = "http://192.168.163.128:8000/api";
	
	console.log("------------ updateLeaderBoard() ------------");
	console.log("------------" + SERVER_URL + "/leaders" + "------------");
	
	$.ajax({
		url : SERVER_URL + "/leaders"
	}).then(
			function(data) {
				$('#leaderboard-body').empty();
				data.forEach(function(row) {
					$('#leaderboard-body').append(
							'<tr><td>' + row.userId + '</td>' + '<td>'
									+ row.totalScore + '</td>');
				});
			});
}

function updateStats(userId) {
	$.ajax({
		url : SERVER_URL + "/stats?userId=" + userId,
		success : function(data) {
			$('#stats-div').show();
			$('#stats-user-id').empty().append(userId);
			$('#stats-score').empty().append(data.score);
			$('#stats-badges').empty().append(data.badges.join());
		},
		error : function(data) {
			$('#stats-div').show();
			$('#stats-user-id').empty().append(userId);
			$('#stats-score').empty().append(0);
			$('#stats-badges').empty();
		}
	});
}

$(document).ready(function() {

	updateLeaderBoard();

	$("#refresh-leaderboard").click(function(event) {
		updateLeaderBoard();
	});

});
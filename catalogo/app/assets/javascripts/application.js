// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require rails.validations
//= require_tree .

$(document).ready(function(){
		$("#btn1").click(function(){
		$('#form-toggle').fadeToggle();
		if($('#gbtn1').hasClass('glyphicon glyphicon-plus')){
			$('#gbtn1').removeClass('glyphicon glyphicon-plus');
			$('#gbtn1').addClass('glyphicon glyphicon-chevron-up');
		}else{
			$('#gbtn1').removeClass('glyphicon glyphicon-chevron-up');
			$('#gbtn1').addClass('glyphicon glyphicon-plus');
		}
	});

	$("#button-up").click(function(){
		$('.subnavbar').fadeToggle();
		if($('#button-up-icon').hasClass('glyphicon glyphicon-down')){
			$('#button-up-icon').removeClass('glyphicon glyphicon-down');
			$('#button-up-icon').addClass('glyphicon glyphicon-chevron-up');
		}else{
			$('#button-up-icon').removeClass('glyphicon glyphicon-chevron-up');
			$('#button-up-icon').addClass('glyphicon glyphicon-down');
		}
	});
});

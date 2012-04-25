# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
    $("a#inline").fancybox({
        'autoDimensions':false,
        'width':500,
        'height':225
    })

    $("a#mailinglist").fancybox({
        'autoDimensions':false,
        'height': 260,
        'width': 300
    })

    $("#mail-form")
        .bind("ajax:complete", (xhr, status) ->
            $("#response").html("Complete!"))
        .bind("ajax:beforeSend", ->
            $("#response").html("Sending..."))
        .bind("ajax:success", (data, status, xhr) ->
            $("#response").html("Success"))
        .bind("ajax:error", (xhr, status, data) ->
            $("#response").html("Error!"))

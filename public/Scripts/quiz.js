var questions = [
    {"text": "Which is not a cat?", "answers": ["Alice","Sandra","Smoked Cod","Pamplemousse" ], "correct": "Pamplemousse" },
    {"text": "Which cat is fat?", "answers": ["Smoked Cod","Mr. Fluffy","Alice","Sandra" ], "correct": "Smoked Cod"  },
    {"text": "Who is the prettiest cat?", "answers": ["Alice","Smoked Cod","Sandra","Goolag" ], "correct": "Sandra" },
    {"text": "What does Maurice love more than anything?", "answers": ["Salt","Kippers","Wool","Silly Questions" ], "correct": "Wool" },
    {"text": "What happened wigget?", "answers": ["he stood on a crack","he broke his back","he lied","all of the above", "wool" ], "correct": "all of the above" }, 
	{"text": "Where is Mr Fluffy from?", "answers": ["Canada","Belarus","USA","France" ], "correct": "France" },
    {"text": "What Colour is Dave cat?", "answers": ["Ginger","Woolen","Black","White" ], "correct": "Ginger"  },
    {"text": "Which cat is the oldest?", "answers": ["Wigget","Dave Cat","Sandra","Smoked Cod","Wispy", "Alice",  ], "correct": "Wispy" },
    {"text": "What is Sandra Cat's favourite thing to drink?", "answers": ["Tea","Milk","Wine","Blood","Stoly"  ], "correct": "Stoly" },
    {"text": "How many cats are there?", "answers": ["10","8","6","333", "4" ], "correct": "8" }


];

var score = 0;//assign a value to score
var display_question = (function () {//creates a var
    countdown_current = max_countdown;
    countdown_interval = mainApp.setInterval(countdown, 1000);
    var question = questions[score]; //targets a specific question, change array position to change q number

    $("#question").text(question.text); //select key => value

    $("#answers").empty();
    for (var i in question.answers) {
        var answer = question.answers[i];
        $("#answers").append("<li>" + answer + "</li>"); //append adds instead of overwrites as list items
    }

    $("#answers li").on("click", validate_answer); //aims to validate the answer by calling the variable val ans
}
);

var validate_answer = (function () {
    var message = questions[score].message;
    //if the clicked item is equal to questions correct item, else we are wrong:
    if ($(this).text().toLowerCase() == questions[score].correct.toLowerCase()) {
        clearInterval(countdown_interval);

        score++;
        display_score();

        $("#answers").empty();
        $('#question').html('<h4>Correct!</h4><a id="next-link"><li style="list-style:none; color:black;">Next Question</li></a>');
        $('#next-link').click(display_question);
        

        // More Questions
        if (questions.length > score) {

        }
        // Quiz Won
        else {
            $('#next-link').remove();
            $('#winner').show();
            $("#question").text("Thank Mew for finishing!");
            $("#answers").empty();

            document.getElementById("play").play();
        }

    } else {
        $(this).animate({ width: '10%' }, 1000, 'easeOutBounce');
        $(this).css("background-color", "#ff0000");
    }

    display_score();
});

var display_error = (function(){
    $("#question").text("You ran out of time, refresh and try again");
    $("#answers").empty();
});

var display_score =(function(){
    $("#score").text(score);
});

var max_countdown = 15;
var countdown_current = max_countdown;
var countdown_interval;
var countdown = function() {
    $("#countdown").text(countdown_current);

    countdown_current--;
    if (countdown_current < 0) {
        display_error();
        clearInterval(countdown_interval);
    }
}

display_question();//displays the content of the question variable

function progress(percent, $element) {//this is in process
					var progressBarWidth = (400 * percent / 100);
					$('#progressBar').animate({ width: progressBarWidth }, 500).html(percent + "%&nbsp;");
					}
display_score();
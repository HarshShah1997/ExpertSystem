getString(0, [First|_], First).
getString(Index, [First|Rest], Response) :-
    Index > 0,
    NextIndex is Index - 1,
    getString(NextIndex, Rest, Response).

askAQuestion(Question, Answer, Choices) :-
    question(Question),
    answers(Choices, 0),
    read(Index),
    write(''), nl,
    getString(Index, Choices, Response),
    asserta(progress(Question, Response)),
    Response = Answer.

findLanguage(Language) :-
    language(Language), !.

language(python) :-
    why(forChildren).

language(python) :-
    why(donotKnow).

language(java) :-
    why(earnMoney),
    prefferedPlatform(doesNotMatter).

language(cpp) :-
    why(earnMoney),
    prefferedPlatform(gaming).

language(objectivec) :-
    why(earnMoney),
    prefferedPlatform(mobile),
    preferredMobileOS(ios).

language(java) :-
    why(earnMoney),
    prefferedPlatform(mobile),
    preferredMobileOS(android).

:- dynamic(progress/2).

language(python) :-
    why(earnMoney),
    prefferedPlatform(facebook).

language(python) :-
    why(earnMoney),
    prefferedPlatform(google).

language(csharp) :-
    why(earnMoney),
    prefferedPlatform(microsoft).

language(objectivec) :-
    why(earnMoney),
    prefferedPlatform(apple).

language(javascript) :-
    why(earnMoney),
    prefferedPlatform(web),
    web(frontEnd).

language(csharp) :-
    why(earnMoney),
    prefferedPlatform(web),
    web(backEnd),
    workFor(corporate),
    microsoftOpinion(iAmFan).

language(java) :-
    why(earnMoney),
    prefferedPlatform(web),
    web(backEnd),
    workFor(corporate),
    microsoftOpinion(goodEnough).

language(java) :-
    why(earnMoney),
    prefferedPlatform(web),
    web(backEnd),
    workFor(corporate),
    microsoftOpinion(suck).

language(javascript) :-
    why(earnMoney),
    prefferedPlatform(web),
    web(backEnd),
    workFor(startup),
    tryNew(yes).

language(python) :-
    why(earnMoney),
    prefferedPlatform(web),
    web(backEnd),
    workFor(startup),
    tryNew(no),
    favouriteToy(lego).

language(ruby) :-
    why(earnMoney),
    prefferedPlatform(web),
    web(backEnd),
    workFor(startup),
    tryNew(no),
    favouriteToy(playDoh).

language(php) :-
    why(earnMoney),
    prefferedPlatform(web),
    web(backEnd),
    workFor(startup),
    tryNew(no),
    favouriteToy(oldUgly).

language(csharp) :-
    why(earnMoney),
    prefferedPlatform(enterprise),
    microsoftOpinion(iAmFan).

language(java) :-
    why(earnMoney),
    workFor(enterprise),
    microsoftOpinion(goodEnough).

language(java) :-
    why(earnMoney),
    workFor(enterprise),
    microsoftOpinion(suck).

language(python) :-
    why(forFun),
    learningPreference(easyWay).

language(python) :-
    why(forFun),
    learningPreference(bestWay).

language(java) :-
    why(forFun),
    learningPreference(harderWay),
    whichCar(auto).

language(c) :-
    why(forFun),
    learningPreference(harderWay),
    whichCar(manual).

language(cpp) :-
    why(forFun),
    learningPreference(hardestWay).

language(python) :-
    why(forInterest),
    learningPreference(easyWay).

language(python) :-
    why(forInterest),
    learningPreference(bestWay).

language(java) :-
    why(forInterest),
    learningPreference(harderWay),
    whichCar(auto).

language(c) :-
    why(forInterest),
    learningPreference(harderWay),
    whichCar(manual).

language(cpp) :-
    why(forInterest),
    learningPreference(hardestWay).

language(python) :-
    why(toImprove),
    learningPreference(easyWay).

language(python) :-
    why(toImprove),
    learningPreference(bestWay).

language(java) :-
    why(toImprove),
    learningPreference(harderWay),
    whichCar(auto).

language(c) :-
    why(toImprove),
    learningPreference(harderWay),
    whichCar(manual).

language(cpp) :-
    why(toImprove),
    learningPreference(hardestWay).

welcome :-
    write('Which programming language should I learn first in 2016?'), nl,
    write('To answer, input the number shown next to each answer, followed by a dot (.)'), nl, nl.


question(web) :-
    write('Which "end"?'), nl.

question(workFor) :-
    write('I want to work for...'), nl.

question(learningPreference) :-
    write('I prefer to learn things...'), nl.

question(whichCar) :-
    write('Auto or Manual Car?'), nl.


answer(forChildren) :-
    write('I want to learn programming for my children').

answer(donotKnow) :-
    write('I have no idea').

answer(earnMoney) :-
    write('I just want to earn money').

question(why) :-
    write('What is your motivation to learn programming?'), nl.

question(prefferedPlatform) :-
    write('Which platform would you prefer?'), nl.

question(preferredMobileOS) :-
    write('Which Operating System would you like?'), nl.


answer(forFun) :-
    write('Just for having fun').

answer(forInterest) :-
    write('I am interested to learn programming').

answer(toImprove) :-
    write('I want to improve myself').

answer(doesNotMatter) :-
    write('Does not matter, I just want money').

question(microsoftOpinion) :-
    write('What is your opinion about Microsoft?'), nl.

question(tryNew) :-
    write('Do you want to try something new, which has high potential, but is not much mature?'), nl.

question(favouriteToy) :-
    write('What is your favourite toy?'), nl.

answer(gaming) :-
    write('Gaming').

answer(mobile) :-
    write('Mobile').

answer(facebook) :-
    write('Facebook').

answer(web) :-
    write('Web').

answer(enterprise) :-
    write('Enterprise').

answer(ios) :-
    write('iOS').

answer(android) :-
    write('Android').

answer(frontEnd) :-
    write('Front-end').

answer(iAmFan) :-
    write('I am a fan!').

answer(goodEnough) :-
    write('Good Enough').

answer(suck) :-
    write('It Sucks').

desc(csharp) :-
    write('C#'), nl,
    write('A popular choice for enterprise to create websites and Windows application using .NET framework'), nl,
    write('Can be used to build websites with ASP.net a web Framework from Microsoft'), nl,
    write('Similar to Java in basic syntax and some features').

answer(yes) :-
    write('Yes').

answer(no) :-
    write('No').

answer(lego) :-
    write('Lego').

answer(playDoh) :-
    write('Play-Doh').

answer(oldUgly) :-
    write('I have an old and ugly toy and I like it so much').

desc(java) :-
    write('Java'), nl,
    write('One of the most in demand & highest paying programming languages'), nl,
    write('Slogan: write once, work everywhere') , nl ,
    write('Very popular on all platforms because of its portability ') , nl.


answer(easyWay) :-
    write('The easy way').

answer(bestWay) :-
    write('The best way').

answer(harderWay) :-
    write('The slightly harder way').

answer(hardestWay) :-
    write('Extremely hard way (Suicide)').

answer(auto) :-
    write('Automatic Transmission Car').

answer(manual) :-
    write('Manual Transmission Car').


desc(python) :-
    write('Python'), nl,
    write('Widely regarded as the best programming language for beginners'), nl,
    write('Easiest to learn'), nl, 
    write('You can Build website using Django a popular framework for python') ,nl ,
    write('Widely Used in scientific,technical and academic Field such as Artificial Intelligence ') , nl.

answer(google) :-
    write('Google').

answer(microsoft) :-
    write('Microsoft').

answer(apple) :-
    write('Apple').


desc(c) :-
    write('C'), nl,
    write('Lingua franca of programming language'), nl,
    write('One of the oldest and most widely used language in the world'), nl ,
    write('Popular language for System and Hardware programming ') , nl.

desc(cpp) :-
    write('C++'), nl,
    write('Complex version of C with a lot more features'), nl,
    write('Widely used for developing games , industrial and performance critical applications'), nl,
    write('Recommended only if you have a mentor to guide you').

answer(backEnd) :-
    write('Back-end').

answer(startup) :-
    write('Startup').

answer(corporate) :-
    write('Corporate').

desc(javascript) :-
    write('JavaScript'), nl,
    write('Most popular clients-side web scripting language'), nl,
    write('One of the hottest programming language now, due to its increasing popularity as server side language(node.js)'), nl,
    write('A must learn for front-end web developer (HTML and CSS as well)').

desc(ruby) :-
    write('Ruby'), nl,
    write('Mostly known for its popular web framework, Ruby on Rails'), nl,
    write('Designed for fun and productive coding'), nl,
    write('Focuses on getting things done').

what(objective) :-
    write('Writing an objective'), nl,
    where(goal).
recommendation.

why(Answer) :-
    progress(why, Answer).
why(Answer) :-
    \+ progress(why, _),
    askAQuestion(why, Answer, [forChildren, donotKnow, earnMoney, forFun, forInterest, toImprove]).

desc(objectivec) :-
    write('Objective-C'), nl,
    write('Primary language used by Apple for MacOSX & iOS'), nl,
    write('Choose this if you want to focus on developing iOS or OSX apps only').

prefferedPlatform(Answer) :-
    progress(prefferedPlatform, Answer).
prefferedPlatform(Answer) :-
    \+ progress(prefferedPlatform, _),
    askAQuestion(prefferedPlatform, Answer, [doesNotMatter, gaming, mobile, facebook, google, microsoft, apple, web, enterprise]).

preferredMobileOS(Answer) :-
    progress(preferredMobileOS, Answer).
preferredMobileOS(Answer) :-
    \+ progress(preferredMobileOS, _),
    askAQuestion(preferredMobileOS, Answer, [ios, android]).

web(Answer) :-
    progress(web, Answer).
web(Answer) :-
    \+ progress(web, _),
    askAQuestion(web, Answer, [frontEnd, backEnd]).

workFor(Answer) :-
    progress(workFor, Answer).
workFor(Answer) :-
    \+ progress(workFor, _),
    askAQuestion(workFor, Answer, [startup, corporate]).

whichCar(Answer) :-
    progress(whichCar, Answer).
whichCar(Answer) :-
    \+ progress(whichCar, _),
    askAQuestion(whichCar, Answer, [auto, manual]).

microsoftOpinion(Answer) :-
    progress(microsoftOpinion, Answer).
microsoftOpinion(Answer) :-
    \+ progress(microsoftOpinion, _),
    askAQuestion(microsoftOpinion, Answer, [iAmFan, goodEnough, suck]).

tryNew(Answer) :-
    progress(tryNew, Answer).
tryNew(Answer) :-
    \+ progress(tryNew, _),
    askAQuestion(tryNew, Answer, [yes, no]).

favouriteToy(Answer) :-
    progress(favouriteToy, Answer).
favouriteToy(Answer) :-
    \+ progress(favouriteToy, _),
    askAQuestion(favouriteToy, Answer, [lego, playDoh, oldUgly]).

desc(php) :-
    write('PHP'), nl,
    write('Suitable for building small and simple sites within a short time frame'), nl,
    write('Supported by almost every web hosting services with lower price').

learningPreference(Answer) :-
    progress(learningPreference, Answer).
learningPreference(Answer) :-
    \+ progress(learningPreference, _),
    askAQuestion(learningPreference, Answer, [easyWay, bestWay, harderWay, hardestWay]).


answers([], _).
answers([First|Rest], Index) :-
    write(Index), write(' -> '), answer(First), nl,
    NextIndex is Index + 1,
    answers(Rest, NextIndex).

reset_answers :-
      retract(progress(_, _)),
        fail.
    reset_answers.

main :-
    welcome,
    reset_answers,
    findLanguage(Language),
    desc(Language), nl.


% Expert system should be started from here
main :-
  welcome,
  findLanguage(Language),
  describe(Language), nl.


welcome :-
  write('Which programming language should I learn first in 2016?'), nl,
  write('To answer, input the number shown next to each answer, followed by a dot (.)'), nl, nl.


findLanguage(Language) :-
  language(Language), !.


% Store user answers to be able to track his progress
:- dynamic(progress/2).

% Rules for the knowledge base
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


% Questions for the knowledge base
question(why) :-
  write('Why do you want to learn programming?'), nl.

question(prefferedPlatform) :-
  write('Which platform/field?'), nl.

question(preferredMobileOS) :-
  write('Which OS?'), nl.

question(web) :-
  write('Which "end"?'), nl.

question(workFor) :-
  write('I want to work for...'), nl.

question(microsoftOpinion) :-
  write('What do you think about Microsoft?'), nl.

question(tryNew) :-
  write('Do you want to try something new, with huge potential, but less mature?'), nl.

question(favouriteToy) :-
  write('Which one is your favourite toy?'), nl.

question(learningPreference) :-
  write('I prefer to learn things...'), nl.

question(whichCar) :-
  write('Auto or Manual Car?'), nl.


% Answers for the knowledge base
answer(forChildren) :-
  write('For my kids').

answer(donotKnow) :-
  write('I don\'t know').

answer(earnMoney) :-
  write('Make money').

answer(forFun) :-
  write('Just for fun').

answer(forInterest) :-
  write('I\'m interested').

answer(toImprove) :-
  write('Improve myself').

answer(doesNotMatter) :-
  write('Doesn\'t matter, I just want $$$').

answer(gaming) :-
  write('3D/Gaming').

answer(mobile) :-
  write('Mobile').

answer(facebook) :-
  write('Facebook').

answer(google) :-
  write('Google').

answer(microsoft) :-
  write('Microsoft').

answer(apple) :-
  write('Apple').

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

answer(backEnd) :-
  write('Back-end').

answer(startup) :-
  write('Startup').

answer(corporate) :-
  write('Corporate').

answer(iAmFan) :-
  write('I\'m a fan!').

answer(goodEnough) :-
  write('Not Bad').

answer(suck) :-
  write('Suck').

answer(yes) :-
  write('Yes').

answer(no) :-
  write('No').

answer(lego) :-
  write('Lego').

answer(playDoh) :-
  write('Play-Doh').

answer(oldUgly) :-
  write('I\'ve an old & ugly toy, but I love it so much!').

answer(easyWay) :-
  write('The easy way').

answer(bestWay) :-
  write('The best way').

answer(harderWay) :-
  write('The slightly harder way').

answer(hardestWay) :-
  write('The really hard way (but easier to pick up other languages in the future)').

answer(auto) :-
  write('Auto').

answer(manual) :-
  write('Manual').


% Language descriptions for the knowledge base
describe(python) :-
  write('Python'), nl,
  write('Widely regarded as the best programming language for beginners'), nl,
  write('Easiest to learn').

describe(java) :-
  write('Java'), nl,
  write('One of the most in demand & highest paying programming languages'), nl,
  write('Slogan: write once, work everywhere').

describe(c) :-
  write('C'), nl,
  write('Lingua franca of programming language'), nl,
  write('One of the oldest and most widely used language in the world').

describe(cpp) :-
  write('C++'), nl,
  write('Complex version of C with a lot more features'), nl,
  write('Recommended only if you have a mentor to guide you').

describe(javascript) :-
  write('JavaScript'), nl,
  write('Most popular clients-side web scripting language'), nl,
  write('A must learn for front-end web developer (HTML and CSS as well)').

describe(csharp) :-
  write('C#'), nl,
  write('A popular choice for enterprise to create websites and Windows application using .NET framework'), nl,
  write('Similar to Java in basic syntax and some features').

describe(ruby) :-
  write('Ruby'), nl,
  write('Mostly known for its popular web framework, Ruby on Rails'), nl,
  write('Focuses on getting things done').

describe(php) :-
  write('PHP'), nl,
  write('Suitable for building small and simple sites within a short time frame'), nl,
  write('Supported by almost every web hosting services with lower price').

describe(objectivec) :-
  write('Objective-C'), nl,
  write('Primary language used by Apple for MacOSX & iOS'), nl,
  write('Choose this if you want to focus on developing iOS or OSX apps only').


% Assigns an answer to questions from the knowledge base
why(Answer) :-
  progress(why, Answer).
why(Answer) :-
  \+ progress(why, _),
  ask(why, Answer, [forChildren, donotKnow, earnMoney, forFun, forInterest, toImprove]).

prefferedPlatform(Answer) :-
  progress(prefferedPlatform, Answer).
prefferedPlatform(Answer) :-
  \+ progress(prefferedPlatform, _),
  ask(prefferedPlatform, Answer, [doesNotMatter, gaming, mobile, facebook, google, microsoft, apple, web, enterprise]).

preferredMobileOS(Answer) :-
  progress(preferredMobileOS, Answer).
preferredMobileOS(Answer) :-
  \+ progress(preferredMobileOS, _),
  ask(preferredMobileOS, Answer, [ios, android]).

web(Answer) :-
  progress(web, Answer).
web(Answer) :-
  \+ progress(web, _),
  ask(web, Answer, [frontEnd, backEnd]).

workFor(Answer) :-
  progress(workFor, Answer).
workFor(Answer) :-
  \+ progress(workFor, _),
  ask(workFor, Answer, [startup, corporate]).

microsoftOpinion(Answer) :-
  progress(microsoftOpinion, Answer).
microsoftOpinion(Answer) :-
  \+ progress(microsoftOpinion, _),
  ask(microsoftOpinion, Answer, [iAmFan, goodEnough, suck]).

tryNew(Answer) :-
  progress(tryNew, Answer).
tryNew(Answer) :-
  \+ progress(tryNew, _),
  ask(tryNew, Answer, [yes, no]).

favouriteToy(Answer) :-
  progress(favouriteToy, Answer).
favouriteToy(Answer) :-
  \+ progress(favouriteToy, _),
  ask(favouriteToy, Answer, [lego, playDoh, oldUgly]).

learningPreference(Answer) :-
  progress(learningPreference, Answer).
learningPreference(Answer) :-
  \+ progress(learningPreference, _),
  ask(learningPreference, Answer, [easyWay, bestWay, harderWay, hardestWay]).

whichCar(Answer) :-
  progress(whichCar, Answer).
whichCar(Answer) :-
  \+ progress(whichCar, _),
  ask(whichCar, Answer, [auto, manual]).


% Outputs a nicely formatted list of answers
% [First|Rest] is the Choices list, Index is the index of First in Choices
answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' -> '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).


% Parses an Index and returns a Response representing the "Indexth" element in
% Choices (the [First|Rest] list)
parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).


% Asks the Question to the user and saves the Answer
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  write(''), nl,
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.


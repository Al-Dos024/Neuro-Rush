# Neuro Rush
### refactored Flutter app that was used to ask questions about ADHD, the past version was ([hand in hand](https://github.com/Al-Dos024/Hand_in_Hand)).

## What Is ADHD?

ADHD stands for attention deficit hyperactivity disorder. It is a medical condition .
- ADHD can affect a child at school, at home, and in friendships.
- Sometimes parents and teachers notice signs of ADHD when a child is very young. <p>  (But it's normal for little kids to be distracted, restless, impatient, or impulsive — these things don't always mean that a child has ADHD.) </p>
- A person with ADHD has differences in brain development and brain activity that affect attention, the ability to sit still, and self-control.
<img  src="https://github.com/user-attachments/assets/58111954-7add-45b8-804c-b2ca5b60cc58">
<p> And that's how we are inspired by the App icon </p>

<img width="700" src="https://github.com/user-attachments/assets/830d7be8-8961-4bdb-ad93-5e5329d8fb66">


## Why We Recatored This App?
We developed this app to address the growing need for accessible, accurate, and convenient tools to diagnose ADHD. Traditional methods can be time-consuming and stressful, so we designed this app to make the process easier and more approachable for everyone involved , and the past version was full of bugs.

## What does the app do?
Our application offers three main features: 
- Detailed information about ADHD, 
- Assessment test for children, 
- Assessment test for adults. 
<p>Additionally, users can access past results, allowing them to monitor changes and improvements over time.</p>

## Main Technolgy we used :
- ValueNotifier for both
  * Flutter localizations (English and Arabic and change between them easily)
  * Light and Dark mode
- Firebase with 3 features:
  * Authentication: Using email and password
  * Cloud Firestore: To store the questions and answers for adult and child in both language
  * Realtime Database: To store the result of the data and revel it
- Cubit to manage the state of data more efficient

# onboarding

firstly we start the app with onboarding screen , gives us a brief summary of the app:

<img width="700" src="https://github.com/user-attachments/assets/e20e6fd4-4a29-4ca4-9007-7ae9927cc7e8">



you can move it by 3 wayes:
- Wave in the screen from left to right
- Next and skip button
- The points in the buttons , givees smoth animation when scroll

<p>here we have simple condation if the device alredy logged in ? then we move frowerd to mainView <br> if dont? then we move to next page witch is ...</p>

# Authentication  
<img width="700" src="https://github.com/user-attachments/assets/5a8bfcbf-8d12-4295-b95a-a47c03b3e3ff">

<p>as in regular Sign in we need the user to already have an account with email & password, if not ?
 <br> we move to sign up where we send personal data like Name,age,email and password
 <br> after that he can upload the photo he want and set it as Avatar picure in Main view
 </p>
 
## It is necessary to set an account in firebase?
Yes , we send the result of both child and adult to firebase using the Email he register with .

# Main View
<img width="700" src="https://github.com/user-attachments/assets/7c95dbf2-5c02-42e9-91e7-fd1d7e01ceb1">
<p>Here's the main interface in the application ,you can see that we revealed the presonal data from realtime database 
 <br> personal photo , name and email , We will divide this into two main parts:</p>

- Drawer
- Body of the page

## Drawer
you can customize your app as you like here using the 2 functions Dark and light mode and Arabic and English language

<img width="700" src="https://github.com/user-attachments/assets/feabb0c9-9efd-4039-8182-d2af29f87e02">

We will discess the previos kids result with result page

## The body of page 
here we got into the main parts in the app 
- Whats's ADHD?
<p> A page where we discuss what is ADHD and give general information about it </p>

<img width="700" src="https://github.com/user-attachments/assets/75a8aab4-10e2-4dea-9f0b-3e52e757c597">

- Child Test
<p>this test is based on Conner's Partent Raiting , you can see how it is work </p>

([Conner's Partent Raiting](https://www.youtube.com/watch?v=UqRu2klS50Q&t=63s))).

the pics needs to be here

<p> Firstly we start with whos the child ? male or female and his age , the result is different based on these factors.
 <br>After we enter the quiz phase we have lots of widget, 
 <br>starting with stack on appbar shows the current question and how many questions are there
 <br>the question and answer list are in the firebase firestore and we fetch it based on the language and what test are we in
 <br>lastly we have next and back button to control the question and move freely between them
 <br>you got 80 questions needs to be answered and can't skip any part of it
 <br>the points is simple to calculate never = 0 , often = 1 , sometimes = 2 and always = 3
 <br>then we take the points of each and start to separate them into 14 category every question is into category
 <br>after that and with last question we see the age and gender of kid and the dataset come with the result
</p>
- Adult Test


## Phase Two Child
before we get into the phase we need to need the test we use 
The conners parent rating scale (CPRS) 
![image](https://github.com/AlDos024/Hand_in_Hand/assets/106039568/3f7323b2-9ef5-411e-98b1-de046ddb519c)
<p><br>i used the same qustions which were 80 qustion</p>
<img width="700" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/f59aa12b-5e18-4697-9560-2a20dfc9e3fd">

<p><br>here should be classiefation abon total points</p>
<img width="700" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/57a3d47e-8da7-4ad2-bb87-b49d8513b4ad">
<p><br>but we need to be more specefic to handle which we come to next page</p>
<img width="700" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/2ff23fcd-f36a-46c7-95fa-2cc22f7609e0">

<p><br>he merged the whole 80 qustion into 16 letter from A to N every letter has a specific Diagnosis<br>if the white cell without dark point Cross letter and qustion then we conseder the LEFT qustion number as a point to that letter <br> and if the white cell with dark point Cross letter and qustion then we conseder the RIGHT qustion number as a point to that letter <br> that how we add points to A-N<br>That how i done with coding</p>
<img width="700" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/4fac5b9e-03a4-4f99-b963-e29dbe352ec6">
<p><br>Then we come to the diagnosis about how the points has reach<br>we have 10 lists made by 2 factor :</p>

- Gender (Male or Female)
- Age(3-5 ,6-8 ,9-11 ,12-14 ,15-17)

we will take example for female with age 7 :
<img width="750" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/5587b20c-dabd-46ef-9d1b-a6ec06b7175c">

for way to count the letter F we need to see how much it reached , the way i used in code:
![image](https://github.com/AlDos024/Hand_in_Hand/assets/106039568/9b81c3b9-0743-4b3b-a433-8912322ed409)

<p>you can see more about the way i coded in Dataset folder feel free to see it :)  <br>now back to the App <br>firstly we need to know the gender and age for kid to know which list we should use</p>

<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/ed159a04-6848-4574-ad36-543838b02d73">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/5a58c897-5ccc-4e49-8fdb-d8069ec5ab60">
<p><br>then we start the quisions:(i've put most of them alaways and maybe that why the numbers high)<br> </p>
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/da011d80-c770-420a-8954-0828a94b5f43">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/4252d0b4-5db3-4775-a26a-a1a5f3ff3451">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/7a40bd15-f121-4dc5-a708-9a3d906017f6">

<p>the points incresed , now its from 0 to 3 .<br>about the letter i talked about it up in the CRPS <br>about the buttons: </p>

- the A,B and F advice give you paragraph to read about the diagnosis.
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/dfc19eaa-828f-40b6-8ab9-16ed68a43f54">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/4a984158-c45e-4a19-a35d-3b18e4c93949">    
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/5aa5a3eb-35b4-48fa-aab3-d79ada87f57b">

- return to phases back to that MainPage
- the phase 3 was advanced so later we can build it :)
- what the letter mean give little information about the diagnosis.
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/12f8ce24-3a12-436e-9a83-fc219869bc4b">

The End of child phase two

## Phase Two Adult
here it easier than the child one here we see the Consecutive numbers 1-2 3-4 (exept number 17 it alone) and break the quistions into 2 letters A & B 
- A from 1 - 17
- B from 17-35
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/952606a5-4c86-427f-9a04-f8366fcc1918">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/c04d8ccb-1de2-40f6-8c3b-3a5c19e739e5">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/4fa7c1df-567f-4db6-bf07-9c62575c3223">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/53cc7e69-5352-4f1a-98c3-8fd722885983">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/af8096ac-76a6-4a86-b898-3317abca2e45">

The Adult not perfect as child but .. it would be :)

<p>and all the user that login and have reveld the data can be shown in the realtime database in the firebase <br></p>

![image](https://github.com/AlDos024/Hand_in_Hand/assets/106039568/ced74f61-9c4d-415a-a982-5262964fe563)



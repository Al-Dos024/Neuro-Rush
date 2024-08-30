# Neuro Rush
### refactored Flutter app that was used to ask questions about ADHD, the past version was ([hand in hand](https://github.com/Al-Dos024/Hand_in_Hand)).

## What Is ADHD?

ADHD stands for attention deficit hyperactivity disorder. It is a medical condition .
- ADHD can affect a child at school, at home, and in friendships.
- Sometimes parents and teachers notice signs of ADHD when a child is very young. <p>  (But it's normal for little kids to be distracted, restless, impatient, or impulsive — these things don't always mean that a child has ADHD.) </p>
- A person with ADHD has differences in brain development and brain activity that affect attention, the ability to sit still, and self-control.
<img  src="https://github.com/user-attachments/assets/58111954-7add-45b8-804c-b2ca5b60cc58">
<p> And that's how we are inspired by the App icon </p>
<img width = "250"  src="https://github.com/user-attachments/assets/6dfcf1b3-f53a-41b7-a7f5-9c912e8fb2a2">

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

<------------- stop here -----------> 

# The UI screens and each logic in them
## on boarding

firstly we have the onboarding screen , it have 3 pages every page talk about ADHD with little details:

<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/578bfa8b-2120-4e71-8967-2f86bbbf50b6">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/3cc7857c-88f8-4cdf-a609-18bfacbad772">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/062f7186-2c3c-40ac-bdf5-e8d58ea653bc">

you can move it by 3 wayes:
- by wave in the screen from left to right
- by next and skip button
- by the points in the buttons
- 
## Login & Register 

<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/8358bda6-a051-49f2-ad4f-26d053a54c44">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/10721751-d9fd-499d-acb3-aa3bc6cb2336">
<p><br> i used the firebase Authentication to check of email and password that has taken.</p>
<img src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/5bead619-40a2-4348-95b7-5e0b5e1e758d">
<p><br> i have done error hadling what ever he didnt add anything neither he done it wrong by show notification .</p>
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/d5d2c4cc-4211-44c7-9e34-73eb01139c64">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/c1051354-244c-4176-831d-cc00e06675c3">

<p><br> if you already login before it directly send you to MainPage screen</p>
<img src = 'https://github.com/AlDos024/Hand_in_Hand/assets/106039568/1fce4f88-c590-4c24-a655-708ff472029d'>


## Main page 

<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/8f3f4351-85ae-4089-aadd-01076b73bb2f">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/e9dde43b-f7ba-44a8-bf0d-7708bd072be1">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/a55472b7-83a0-4970-9bbf-f985ac820c6f">
<p><br>Here the main part of the app<br>We have 4 button:</p>

- The Under 18 questioner for childern which the partet answer it.
- The Above 18 questioner for Adult .
- The logout in app bar it should log out of the account and show Alertdialog if you sure you want to leave (2nd screen).
- the More about ADHD is a video and photo which give you more information about ADHD (3rd screen).
## Phase One
<p>The phase one is the same for Child & Adult , you must answer every qustion or won't be able to continue<br></p>
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/e703f274-a50c-4f2b-b597-400921ae21fb">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/e4bf8e22-7da1-4fb6-bc41-1fe4ffb0163e">
<img width="250" src="https://github.com/AlDos024/Hand_in_Hand/assets/106039568/6b87030b-c5fb-4715-86c7-56c44274df27">
<p><br>The qustions has different way to collect : <br></p>

- the 'NO' has 0 point.
- The 'maybe' has 1 point.
- The 'always' has 2 point.
  
<p>The qustions has different category to collect : <br></p>

- The movement collect the points from qustion 1 to 13 , the score must be above or equal 19
- The Rush collect the points from qustion 14 to 23 , the score must be above or equal 14
- The attention collect the points from qustion 24 to 36 , the score must be above or equal 19
<p>if you pass one of them you have pass the phase one successfully and can go to 2nd phase</p>

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



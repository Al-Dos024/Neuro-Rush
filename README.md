# Neuro Rush
### refactored the Flutter app that was used to ask questions about ADHD; the past version was [hand in hand](https://github.com/Al-Dos024/Hand_in_Hand).

## What Is ADHD?

ADHD stands for attention deficit hyperactivity disorder. It is a medical condition.
ADHD can affect a child at school, at home, and in friendships.
Sometimes parents and teachers notice signs of ADHD when a child is very young. <p>  (But it's normal for little kids to be distracted, restless, impatient, or impulsive — these things don't always mean that a child has ADHD.) </p>
A person with ADHD has differences in brain development and brain activity that affect attention, the ability to sit still, and self-control.
<img  src="https://github.com/user-attachments/assets/58111954-7add-45b8-804c-b2ca5b60cc58">
<p> And that's how we are inspired by the App icon. </p>

<img width="700" src="https://github.com/user-attachments/assets/830d7be8-8961-4bdb-ad93-5e5329d8fb66">


## Why We Received This App?
We developed this app to address the growing need for accessible, accurate, and convenient tools to diagnose ADHD. Traditional methods can be time-consuming and stressful, so we designed this app to make the process easier and more approachable for everyone involved , and the past version was full of bugs.

## What does the app do?
Our application offers three main features: 
Detailed information about ADHD, 
Assessment test for children, 
Assessment test for adults. 
<p>Additionally, users can access past results, allowing them to monitor changes and improvements over time.</p>

## Main technology we used :
MVVM design pattern
ValueNotifier for both
  * Flutter localizations (English and Arabic and change between them easily)
  * Light and Dark mode
Firebase with 3 features:
  * Authentication: Using email and password
  * Cloud Firestore: To store the questions and answers for adult and child in both language
  * Realtime Database: To store the result of the data and revel it
Cubit to manage the state of data more efficiently

# onboarding

First, we start the app with onboarding screen that gives us a brief summary of the app:

<img width="700" src="https://github.com/user-attachments/assets/e20e6fd4-4a29-4ca4-9007-7ae9927cc7e8">

you can move it by 3 ways:
- Wave in the screen from left to right
- Next and skip button
- The points in the buttons give some animation when scrolling

<p>here we have simple condition if the device is already logged in ? then we move forward to mainView <br> if dont? then we move to next page, witch is ...</p>

# Authentication  
<img width="700" src="https://github.com/user-attachments/assets/5a8bfcbf-8d12-4295-b95a-a47c03b3e3ff">

<p>as in regular sign-in, we need the user to already have an account with email & password; if not,?
 <br> weup, move to sign up where we send personal data like Name, age, email and password
 <br> after that, he can upload the photo he want and set it as an avatar picture in Main view
 </p>
 
## IsIt it necessary to set an account in firebase?
Yes , we send the result of both child and adults to firebase using the Email he registered with .

# Main View
<img width="700" src="https://github.com/user-attachments/assets/7c95dbf2-5c02-42e9-91e7-fd1d7e01ceb1">
<p>Here's the main interface in the application application.You can see that we revealed the personal data from a real-time database 
 <br> personal photo , name, and email , We will divide this into two main parts:</p>

- Drawer
- Body of the page


## Drawer
you can customize your app as you like here using the 2 functions Dark and light mode and Arabic and English language

<img width="700" src="https://github.com/user-attachments/assets/feabb0c9-9efd-4039-8182-d2af29f87e02">

We will display the previous kids results with the result page

## The body of page 
here we got into the main parts in the app 
* What's ADHD?
<p> A page where we discuss what is ADHD and give general information about it.</p>

<img width="700" src="https://github.com/user-attachments/assets/75a8aab4-10e2-4dea-9f0b-3e52e757c597">

* Child Test

<img width="700" src="https://github.com/user-attachments/assets/f8122bc9-8e0c-4c86-b984-964e9f13f15a">
<p>this test is based on Conner's Partent Raiting; you can see how it works.</p>

([Conner's Partent Raiting](https://www.youtube.com/watch?v=UqRu2klS50Q&t=63s)).
<p> Firstly, we start with whos the child ? male or female and his age , the result is different based on these factors.
 <br>we have 10 lists made by 2 factor :   Gender (Male or Female)  , Age (3-5, 6-8, 9-11, 12-14, 15-17)
 <br>After we enter the quiz phase, we have lots of widget, 
 <br>starting with stack on appbar shows the current question and how many questions are there
 <br>the question and answer list is in the firebase Firestore, and we fetch it based on the language
 <br>Lastly, we have next and back button to control the question and move freely between them
 <br>you got 80 questions that need to be answered and can't skip any part of them.
The points is simple to calculate: never = 0 , often = 1 , sometimes = 2 and always = 3
 <br>then we take the points of each and start to separate them into 14 categories. Every question is into a category
 <br>after that and with last question, we see the age and gender of kid and the dataset come with the result
 <br> you can check the repo hand in hand for more details about this test
</p>

* Adult Test
  
<img width="700" src="https://github.com/user-attachments/assets/c704ec1e-2470-4e7a-b514-fd659952b6c1">

here it is easier than the child one; there are only one; 18 questions, and break the questions into 2 category overall & detailed 
* Overall, we can diagnose the patient from the questions 1–6, and it's more of general
* detailed can diagnose the patient from the questions 7–18, and it highlights specific challenges in areas like task management, impulse control, and focus, which are often associated with ADHD


# Result
Here comes the final part of our application. We can break it into 3 pages :
<img width="700" src="https://github.com/user-attachments/assets/35c32f8a-8724-4942-91cd-7f68d81a5c8d">
* previous result:
<p>This page shown in the drawer , The main purpose is to see the previous result of the kid and see if he getting better or not.
<br> We can do the same for adults, but it only show 2 categories, which is easy to remember Unlike child test
</p>

* Child result:
pics here
<p>This page shows after you finish the child test; it collects the points based on gender and age factor.
Every category has its own points so he got high in Opposition but low in Cognitive problems and so on
</p>

* Adult result:
pics here
<p>This page shows after you finish the adult test; it collects the points based on the number of questions.
<br> if it is from 1-6, then we add it to overall category, and the rest added to detailed category
<br>it only in 3 results: low , medium and high
</p>

<img width="700" src="https://github.com/user-attachments/assets/1764d942-f1ae-4c3e-a4f4-21ec0e570607">
 
That's it. Test and send your review. I hope you enjoyed reading the repo :)


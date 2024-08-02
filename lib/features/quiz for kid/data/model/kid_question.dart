//Phase 2 childern : from 3 to 17 years onlyyyyy

import 'question_model.dart';

List<Question> questionsForChild() {
  List<Question> list = [];

  list.add(
    Question(
      "Angry and depressed",
      [
        Answer("Rarely", 0),
        Answer("Sometimes", 1),
        Answer("Often", 2),
        Answer("Always", 3),
      ],
      [
        ("Lost Game: He kicked the ground angrily after losing the game."),
        ("Bad Grade: She felt down and didn't want to talk after getting a bad grade."),
      ],
    ),
  );
  list.add(Question(
    "Difficulty performing or completing homework",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Easily Distracted: kept getting distracted by noises outside, making it hard to finish his homework."),
      ("Procrastination: stared at her homework for hours, unable to start until it was very late."),
    ],
  ));

  list.add(Question(
    "He wants to move or acts as if he is always driven by a motor and cannot stand to stay still.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Constant Fidgeting: He couldn't sit still in class, constantly tapping his feet and shifting in his seat."),
      ("Nonstop Movement: She ran around the house from room to room, unable to settle down."),
    ],
  ));

  list.add(Question(
    "Shy",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Avoiding Eye Contact: She looked down and avoided eye contact when someone new talked to her."),
      ("Quiet in Groups: He stayed silent and hung back during group activities at school."),
    ],
  ));

  list.add(Question(
    "Everything must be precise and accurate. Everything must be arranged next to it.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Orderly Toys: He arranged his toy cars in a specific order, each one right next to the other."),
      ("Organized Crayons: She lined up her crayons in a row, making sure they were touching each other."),
    ],
  ));

  list.add(Question(
    "He has no friends, he has no companions at all",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Lunchtime Alone: He sat alone during lunch every day, without anyone to talk to."),
      ("Solo Play: She played by herself at recess, watching the other kids from a distance."),
    ],
  ));
  list.add(Question(
    "Suffers from stomach diseases",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Frequent Stomachaches: She often complained about stomach pain and had to lie down."),
      ("Missed School: He missed many days of school because of his stomach problems."),
    ],
  ));
  list.add(Question(
    "fights a lot.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Frequent Arguments: He often got into shouting matches with his classmates over small disagreements."),
      ("Physical Fights: He frequently found himself in physical altercations on the playground."),
    ],
  ));
  list.add(Question(
    "Avoids schoolwork, has difficulty doing things that require mental focus.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Procrastination: She often delayed starting her schoolwork, finding excuses to do other things instead."),
      ("Complaining About Homework: He frequently complained about his homework, saying it was too hard or boring."),
    ],
  ));

  list.add(Question(
    "Has difficulty concentrating for long periods of time on work or play.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Easily Distracted: He often lost focus during class, turning to look out the window or fidgeting with his supplies."),
      ("Abandoned Games: She quickly got bored of games, moving on to something else before finishing."),
    ],
  ));

  list.add(Question(
    "Argues with adults, argue for the sake of arguing",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Bedtime Battles: He frequently argued with his parents about bedtime, refusing to go to sleep."),
      ("Homework Disputes: She often argued with her teacher over homework assignments, questioning why she had to do them."),
    ],
  ));

  list.add(Question(
    "Fails to complete his/her tasks",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Unfinished Homework: He left his homework half-done, unable to stay focused long enough to complete it."),
      ("Incomplete Chores: She often started her chores but didn't finish them, leaving her room only partially cleaned."),
    ],
  ));

  list.add(Question(
    "Difficult to control in the markets or while buying household needs.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Running Around: He would run up and down the aisles, ignoring his parents' attempts to keep him close."),
      ("Touching Everything: She constantly grabbed items off the shelves, making shopping trips chaotic."),
    ],
  ));

  list.add(Question(
    "Afraid of people, new people in general.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Hiding Behind Parents: She clung to her parents and hid behind them whenever they met new people."),
      ("Avoiding Interaction: He avoided eye contact and stayed silent around new kids at school."),
    ],
  ));

  list.add(Question(
    "Many times checks things over and over again.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Door Locks: He repeatedly checked if the door was locked, even after being told it was secure."),
      ("Homework Review: She went over her homework multiple times, unsure if she had done it correctly."),
    ],
  ));

  list.add(Question(
    "Loses his/her friends quickly.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Frequent Arguments: He often argued with his friends, leading to falling outs and lost friendships."),
      ("Impulsive Actions: Emma's impulsive behavior upset her friends, causing them to drift away."),
    ],
  ));

  list.add(Question(
    "Aches and pains",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Frequent Headaches: She often complained of headaches, making it hard for her to concentrate."),
      ("Sore Muscles: He frequently had sore muscles, making it difficult for him to participate in physical activities."),
    ],
  ));

  list.add(Question(
    "restless, hyperactive and unstable",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Constant Movement: He couldn't sit still in class, always fidgeting and bouncing in his seat."),
      ("Nonstop Talking: She talked incessantly, interrupting others and finding it hard to stay quiet."),
    ],
  ));

  list.add(Question(
    "Trouble concentrating in class.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Daydreaming: She often stared out the window, lost in thought instead of paying attention to the lesson."),
      ("Distracted by Noise: He was easily distracted by any noise in the classroom, losing focus on his work."),
    ],
  ));

  list.add(Question(
    "Doesn't listen to what is being said.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Ignoring Instructions: He often ignored instructions from his teacher, focusing on something else instead."),
      ("Zoning Out: She frequently zoned out during conversations, missing important information."),
    ],
  ));

  list.add(Question(
    "Lose his temper",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Outbursts in Class: He frequently lost his temper in class, yelling when he became frustrated."),
      ("Tantrums at Home: he threw tantrums at home when things didn't go his way."),
    ],
  ));

  list.add(Question(
    "Needs constant supervision to complete his Tasks.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Homework Monitoring: He needed his parents to sit with him to finish his homework."),
      ("Chore Assistance: She required constant reminders and supervision to complete her chores."),
    ],
  ));

  list.add(Question(
    "Runs or climbs a lot in a situation where this behavior is not appropriate.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Library Running: He ran around the library, despite being told to stay quiet and calm."),
      ("Classroom Climbing: She climbed on the classroom furniture during lessons."),
    ],
  ));

  list.add(Question(
    "He is afraid of new situations.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Avoiding New Activities: She felt anxious and refused to try new activities, preferring familiar ones."),
      ("Clinging to Parents: He clung to his parents and felt scared when faced with new experiences."),
    ],
  ));

  list.add(Question(
    "Very concerned with cleanliness and is annoying.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Constant Handwashing: He insisted on washing his hands repeatedly, bothering others with his frequent trips to the sink."),
      ("Obsessive Cleaning: She always cleaned her desk and often interrupted others to make sure everything was spotless."),
    ],
  ));

  list.add(Question(
    "Doesn't know how to make friends",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Shy in Groups: She stayed quiet in group settings, unsure how to start conversations."),
      ("Awkward Introductions: He struggled with introducing himself to new kids, often saying the wrong thing."),
    ],
  ));

  list.add(Question(
    "Has aches and pains or stomach pain before going to school.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Morning Stomachaches: Jake often complained of stomachaches every morning before heading to school."),
      ("Frequent Headaches: Emma frequently had headaches just before it was time to leave for school."),
    ],
  ));

  list.add(Question(
    "Easily excitable and impulsive",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Interrupting Conversations: He often interrupted others in his excitement, blurting out his thoughts without waiting."),
      ("Sudden Outbursts: She had sudden outbursts of energy, jumping up and running around without warning."),
    ],
  ));

  list.add(Question(
    "Doesn't follow instructions and fails to complete tasks or responsibilities at work or school. (he understand instructions)",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Incomplete Assignments: He often left his school assignments unfinished, despite understanding the instructions."),
      ("Unfinished Chores: She rarely completed her chores, even though she knew what was expected."),
    ],
  ));

  list.add(Question(
    "He has difficulty organizing his tasks.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Messy Desk: Jake's desk was always cluttered, making it hard for him to find what he needed."),
      ("Lost Homework: She frequently lost her homework assignments, unable to keep them organized."),
    ],
  ));

  list.add(Question(
    "Excited",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Jumping with Joy: Jake couldn't stop jumping up and down when he heard he was going to the amusement park."),
      ("Gleeful Shouting: Emma shouted gleefully and clapped her hands when she saw her birthday presents."),
    ],
  ));

  list.add(Question(
    "very active or restless",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Constantly Moving: He was always moving, whether it was pacing around the room or fidgeting in his seat."),
      ("Nonstop Running: She ran around the playground non-stop, never seeming to tire out."),
    ],
  ));

  list.add(Question(
    " He is afraid of being alone.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Stays Close to Parents: He clung to his parents and refused to stay in a room by himself."),
      ("Nighttime Fear: She was scared to sleep alone and insisted on having someone with her."),
    ],
  ));

  list.add(Question(
    "It has to be done the same way every time, routine.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Morning Routine: He insisted on brushing his teeth, combing his hair, and packing his backpack in the same order every morning."),
      ("Bedtime Ritual: She followed a strict bedtime ritual, needing her story, nightlight, and favorite stuffed animal arranged the same way each night."),
    ],
  ));

  list.add(Question(
    "None of his friends invite him to visit his home.",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("No Playdates: He noticed he never got invited to his friends' houses for playdates or parties."),
      ("Left Out: She felt left out when she heard other kids talking about the fun they had at each other's homes."),
    ],
  ));

  list.add(Question(
    "Suffers from a headache",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Daily Discomfort: He experienced headaches almost daily, affecting his ability to participate in activities."),
      ("Disrupted Sleep: She often woke up at night due to headaches, leaving her tired in the morning."),
    ],
  ));

  list.add(Question(
    "Fails to finish the things he starts",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Incomplete Projects: Jake left many of his art projects half-done, losing interest before completing them."),
      ("Abandoned Books: Emma started reading books but rarely finished them, moving on to something else instead."),
    ],
  ));

  list.add(Question(
    "Low concentration and easily distracted",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Quickly Loses Focus: Jake often lost focus during lessons, turning his attention to anything that moved."),
      ("Sidetracked During Homework: Emma got distracted by the smallest things, like a bird outside the window, while doing her homework."),
    ],
  ));

  list.add(Question(
    "Talks a lot",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Constant Chatter: He talked non-stop during class, often interrupting the teacher and classmates."),
      ("Endless Stories: She loved telling endless stories, even when others were trying to concentrate."),
    ],
  ));

  list.add(Question(
    "Strongly refuses or is stubborn about complying with the requests of adults",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Defiant Behavior: He often said 'no' and argued back when his parents asked him to do something."),
      ("Refusal to Follow Rules: She stubbornly refused to follow classroom rules, even when the teacher explained why they were important."),
    ],
  ));

  list.add(Question(
    "Fails to pay attention to details and makes careless mistakes in school, work, or other activities",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Sloppy Homework: He often made careless mistakes in his homework because he didn't check his work."),
      ("Overlooking Instructions: She frequently skipped parts of her assignments, missing important details in the instructions."),
    ],
  ));

  list.add(Question(
    "Has difficulty waiting in line or waiting his turn in play or group situations",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Impatient in Line: He frequently pushed ahead in line, unable to wait his turn."),
      ("Interrupting Games: She interrupted others during games, insisting it should be her turn next."),
    ],
  ));

  list.add(Question(
    "He suffers from many fears",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Fear of the Dark: He was terrified of the dark and needed a nightlight to sleep."),
      ("Anxious About Strangers: She felt extremely anxious around new people, often hiding behind her parents."),
    ],
  ));
  list.add(Question(
    "This is a ritual that must be performed",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Bedtime Routine: Every night, He had to follow his specific bedtime routine, including reading a story and arranging his pillows just right."),
      ("Morning Ritual: She insisted on eating the same breakfast and brushing her teeth in a particular order every morning."),
    ],
  ));

  list.add(Question(
    "Lack of focus and attention span is a problem",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Easily Distracted: He got easily distracted during lessons, making it hard for him to keep up with the class."),
      ("Incomplete Tasks: She rarely finished her assignments on time due to her short attention span."),
    ],
  ));

  list.add(Question(
    "Complains that he is sick, even though there is nothing wrong with him",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Imaginary Aches: He frequently complained of aches and pains, even when nothing was physically wrong."),
      ("Fake Stomachaches: She often said she had a stomachache to avoid going to school, despite being perfectly healthy."),
    ],
  ));

  list.add(Question(
    "He has a sharp temper and explodes with anger",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Frequent Outbursts: He often exploded in anger over small disagreements, yelling and stomping his feet."),
      ("Easily Irritated: She became quickly irritated and lashed out at her friends or family members when things didn't go her way."),
    ],
  ));

  list.add(Question(
    "Gets distracted while being instructed to do something",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Loses Focus During Instructions: He often started daydreaming while his teacher was giving instructions, missing key steps."),
      ("Distracted by Noises: She would get distracted by noises in the classroom, failing to pay attention to what she was supposed to do."),
    ],
  ));

  list.add(Question(
    "Interrupts or interferes in other people's conversations or games",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Butting into Talks: He often interrupted his classmates' conversations, eager to share his own thoughts."),
      ("Interfering with Play: She frequently jumped into her friends' games without being invited, disrupting their play."),
    ],
  ));

  list.add(Question(
    "Forgetful in his daily activities",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Losing Homework: He often forgot to bring his homework to school, leaving it at home."),
      ("Forgetting Chores: She frequently forgot to do her assigned chores, like feeding the pets or taking out the trash."),
    ],
  ));

  list.add(Question(
    "Can't understand math",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Struggles with Simple Problems: He found even basic addition and subtraction confusing."),
      ("Difficulty with Concepts: She had a hard time grasping math concepts like fractions and multiplication."),
    ],
  ));

  list.add(Question(
    "At mealtimes, runs a lot between each spoonful",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Leaving the Table: Jake frequently left the table to run around the room between bites of his meal."),
      ("Restless Eating: Emma couldn't sit still during meals, constantly getting up and moving around."),
    ],
  ));

  list.add(Question(
    "Afraid of the dark, animals and insects",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Nighttime Fear: He needed a nightlight because he was scared of the dark."),
      ("Avoids Pets: She refused to visit friends with pets, fearing any kind of animal."),
    ],
  ));

  list.add(Question(
    "Sets high goals for himself",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Academic Excellence: He aimed to get the highest grades in his class, studying hard every night."),
      ("Sports Achievements: She set her sights on becoming the best player on her soccer team, practicing every day."),
    ],
  ));

  list.add(Question(
    "Fidgets with his hands and feet and rubs the chair",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Restless Hands: He fidgeted with his hands, playing with pencils and erasers during class."),
      ("Tapping Feet: She constantly tapped her feet on the floor, unable to sit still."),
    ],
  ));

  list.add(Question(
    "Concentration span is low",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Easily Distracted: He quickly lost focus during lessons, looking around the room instead of paying attention."),
      ("Short Study Sessions: She could only study for a few minutes before becoming distracted by something else."),
    ],
  ));

  list.add(Question(
    "Easily annoyed with others and quick to anger (foolish)",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Snapping at Friends: He quickly got annoyed with his friends over small things, often snapping at them."),
      ("Frequent Outbursts: She had frequent angry outbursts when others didn't do things her way."),
    ],
  ));

  list.add(Question(
    "Bad handwriting",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Messy Letters: Jake's handwriting was often messy and hard to read, with letters slanting in different directions."),
      ("Inconsistent Size: Emma's handwriting had letters of varying sizes, making her writing appear jumbled."),
    ],
  ));

  list.add(Question(
    "Has difficulty playing or engaging in any entertaining activity quietly",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Loud Playtime: He always played loudly, making it hard for others to concentrate or rest nearby."),
      ("Noisy Games: She often chose games that involved a lot of shouting and noise, unable to keep her volume down."),
    ],
  ));

  list.add(Question(
    "Shy and introverted",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Avoids Social Situations: He preferred to stay alone rather than join group activities, feeling anxious around others."),
      ("Quiet in Class: She rarely spoke up in class, often avoiding eye contact and keeping to herself."),
    ],
  ));

  list.add(Question(
    "Blames others for his mistakes or misbehavior",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Shifting Responsibility: Jake often said it was someone else's fault when he got in trouble, never admitting his own mistakes."),
      ("Accusing Friends: Emma blamed her friends for things that went wrong during group activities, avoiding taking responsibility."),
    ],
  ));

  list.add(Question(
    "A lot of fidgeting and rubbing",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Constantly Moving: He fidgeted non-stop, tapping his fingers and bouncing his legs during class."),
      ("Rubbing Objects: She frequently rubbed the edges of her desk or chair, unable to keep her hands still."),
    ],
  ));

  list.add(Question(
    "Chaotic and disorganized at school and home",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Messy Desk: Jake's desk at school was always cluttered with papers, books, and supplies in disarray."),
      ("Unorganized Backpack: Emma's backpack was chaotic, with crumpled assignments and lost items."),
    ],
  ));

  list.add(Question(
    "Gets annoyed if someone organizes his things",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Resentful of Help: He got upset when his parents tried to tidy his room, preferring his own chaotic arrangement."),
      ("Disturbed by Change: She became irritated when her teacher organized her desk, feeling like her space was invaded."),
    ],
  ));

  list.add(Question(
    "Relating to parents or an adult",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Seeking Approval: He often looked to his parents for validation and reassurance in his decisions."),
      ("Adult Conversations: She preferred talking to adults, finding it easier to relate to their conversations than those of her peers."),
    ],
  ));

  list.add(Question(
    "Disturbs other children",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Interrupting Games: He often disrupted his classmates' games by jumping in uninvited and changing the rules."),
      ("Distracting During Lessons: She frequently distracted other students during lessons by talking or making noises."),
    ],
  ));

  list.add(Question(
    "Deliberately does things that annoy others",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Teasing: He often teased his classmates, knowing it would upset them."),
      ("Interrupting Conversations: She purposefully interrupted others when they were talking, enjoying the reaction she got."),
    ],
  ));

  list.add(Question(
    "His requests must be answered immediately - easily frustrated",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Impatient Demands: Jake got upset if his teacher didn't answer his questions right away, becoming visibly frustrated."),
      ("Instant Gratification: Emma wanted her parents to respond to her requests immediately, throwing a tantrum if they didn't."),
    ],
  ));

  list.add(Question(
    "Doesn't focus on anything unless he's interested in it",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Easily Distracted in Class: He paid attention in class only when the subject excited him, ignoring everything else."),
      ("Selective Participation: She participated actively in activities she liked but zoned out during tasks she found boring."),
    ],
  ));

  list.add(Question(
    "Spiteful - malicious - vengeful",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Holding Grudges: Jake held grudges against his classmates, seeking opportunities to get back at them for perceived slights."),
      ("Mean Comments: Emma made mean comments or spread rumors about others to hurt their feelings intentionally."),
    ],
  ));

  list.add(Question(
    "Loses things he needs to do his homework and activities: pens, books, tools, school lunches",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Misplaced Pens: He frequently lost his pens, making it hard for him to complete his homework."),
      ("Missing Books: She often couldn't find her school books, leaving her unprepared for class."),
    ],
  ));

  list.add(Question(
    "Feels less than others",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Low Self-Esteem: He often thought he wasn't as smart or talented as his classmates, feeling inferior."),
      ("Comparing Achievements: She constantly compared herself to her friends and felt she didn't measure up."),
    ],
  ));

  list.add(Question(
    "Seems tired or slow all the time",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Lethargic at School: He appeared tired throughout the school day, often resting his head on his desk."),
      ("Low Energy: She moved slowly and lacked the energy to participate actively in activities."),
    ],
  ));

  list.add(Question(
    "Can't spell",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Misspells Simple Words: He often misspelled even basic words, making it difficult for others to understand his writing."),
      ("Frequent Errors: Emma's written work was full of spelling mistakes, causing her to struggle with reading comprehension."),
    ],
  ));

  list.add(Question(
    "Cries easily and a lot",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Frequent Tears: He cried at the slightest provocation, whether it was a minor disagreement or a change in routine."),
      ("Emotional Outbursts: She often had emotional outbursts, crying when she felt overwhelmed or frustrated."),
    ],
  ));

  list.add(Question(
    "Leaves his chair in class or other situations where sitting is required",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Roaming the Classroom: He frequently got up and walked around the classroom during lessons, unable to stay seated."),
      ("Interrupting Activities: She often left her chair during group activities, disrupting the flow and causing distractions."),
    ],
  ));

  list.add(Question(
    "The Mood changes very quickly",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Happy to Sad: He could go from laughing to crying in a matter of minutes, his emotions changing rapidly."),
      ("Calm to Angry: She often shifted from being calm to throwing a tantrum over small frustrations."),
    ],
  ));

  list.add(Question(
    "Easily frustrated after trying to accomplish anything",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Giving Up Quickly: He often abandoned his homework in frustration if he couldn't solve a problem right away."),
      ("Tears and Tantrums: She frequently cried and had tantrums when her crafts or projects didn't turn out as she wanted."),
    ],
  ));

  list.add(Question(
    "Easily distracted by any external influences",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Classroom Noises: He often lost focus during lessons due to any noises in the classroom, such as whispers or movements."),
      ("Outdoor Distractions: She constantly glanced out the window, distracted by people or activities happening outside."),
    ],
  ));

  list.add(Question(
    "Slips into the answer quickly before the question is finished",
    [
      Answer("Rarely", 0),
      Answer("Sometimes", 1),
      Answer("Often", 2),
      Answer("Always", 3),
    ],
    [
      ("Interrupts Teacher: He frequently answered questions in class before the teacher finished asking, often guessing incorrectly."),
      ("Impulsive Responses: She jumped to conclusions during conversations, providing answers before hearing the full question."),
    ],
  ));

  return list;
}

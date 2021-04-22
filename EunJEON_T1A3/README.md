## Software Development Plan

### Table of contents

- [Links](#Links)
- [Development, Purpose & Scope](#Development-purpose-scope)
- [Functionality and Features](#Functionality-and-Features)
- [User Interaction and Experience](#User-interaction-and-experience)
- [Control Flow Development](#Control-flow-development)
- [Implementation Plan](#Implementation-Plan)
- [Help documentation & Install the application](#Help-documentation-&-Install-the-application)

#

### Link

- [Github_link](https://github.com/eunbiggabi/ruby_app)

#

### Development, Purpose & Scope

Purpose: **Typing game** is a fun educational word-typing game to be played in a command-line interface. The goal of **typing game** is to provide a fun way of practice your typing.

Problem: Within the older group, there was no correlation between the total time spent on the entire task and the number of corrections, but increased typing speed was related to more errors. The results suggest that the approach to the task was different across age groups, either because of age or because of cohort effects. We discuss the interplay of speed and accuracy with regard to digital writing, and its implications for the design of human-computer interactions

Target Audience: **Typing game** is an excellent game for everyone. Created for entertainment purpose, but it can be beneficial, especially in educational purpose such as younger and elderly people.

Target Audience Usage: **Typing game** will be launched from the command line using the files listed in the installation section of this README.md document.

#

### Functionality and Features

1. Users can practice their typing skills by entering what they see on the screen and are rated by speed/accuracy.

- When the game starts, randomly set sentence will appear on the screen. When this is completed correctly you can get sucessful message. Also it will show how long does it take from start of display to end of tying, and it will generate to second form.

2. Typing game will give users motivation by checking a leader board

- The game will sort and take top 5 leader board base on user record. The leader board will show the user whoever got a shorter time to compelete

3. Users are able to choose difficulty of game levels: easy, medium, and hard

- It is divided into the three difficulties which is the beginner, intermediate, and advance. User can choose right level for them. Also, it will give user each different level of leader board so that user can try every level of difficulties.

#

### User interaction and experience

1. The game start with user_id screen being displayed.

2. The user can select game level difficuty: easy, medium, and hard. Also user can quit the game here

3. The user need to enter 's' to start

4. The game will show random sentence according to what you choose from game-level

5. The game will show how long does it take, and it will ask user that want to play again or not

6. The game will bring a user back to typing again if the user say 'yes' otherwise the game will show leader board and thank you for playing message will show up.

#

### Control Flow Development

![flow_chart](https://i.imgur.com/IYBrwRz.png)

#

### Implementation Plan

I creat a trello board after I approve my features. I focused on my features on trello. Also I make a plan for document, presentation, and coding as big section. trello board link on the blew

[Trello-board](https://trello.com/b/01Nzsprx/t1a3-terminal-application)

![Trello_board](https://i.imgur.com/FC29kPZ.png)

#

### Help documentation & Install the application

- If you do not have Ruby on your computer, follow these instructions to [download and install](https://www.ruby-lang.org/en/documentation/installation/)

- Clone the project files onto your computer from the source code here: https://github.com/eunbiggabi/ruby_app

- If you clone the typing-game, please enter the following code. It will install all the necessary document for you and start the code

```
$ ./src/run_app.sh
```

- You can check help statement before you start the game

```
$ ruby src/main.rb --help
```

- You can run typing-game again entering by 
```
$ ruby src/main.rb
```

#

### Dependencies

Typing game utilise the following gems that are Mac dependent and will not function on other operating systems.

The following Ruby Gems are required and are included in the Gemfile.

gem "stop_watch", "~> 1.0"

gem "faker", "~> 2.17"

gem "colorize", "~> 0.8.1"

gem "csv", "~> 3.1"

Note: You don't need to do this if you enter

```
$ ./src/run_app.sh
```

It will automatically install for you

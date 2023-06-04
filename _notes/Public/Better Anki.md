---
tags: math, startup
feed: show
---

Starting from the [[Starting a New App]] template

# Next Steps
1. Setup Kotlin development environment
	1. [Kotlin Multiplatform tutorial](https://www.youtube.com/watch?v=2yd6rVJdICU)
	2. [Kotlin server](https://kotlinlang.org/docs/server-overview.html), probably with [Spring's generator](https://start.spring.io/)
	3. [Kotlin for Android](https://developer.android.com/kotlin)
	4. [Kotlin tutorial](https://developer.android.com/courses/android-basics-compose/course)
		1. [3 hour beginner course](https://www.youtube.com/watch?v=F9UC9DY-vIU)
	5. Look into [Kotlin auth](https://ktor.io/docs/authentication.html#supported)
	6. [Learn Ktor](https://ktor.io/learn/)

# Job to be done

## Short term
Have na Anki like platform for my own personal use

## Long term
Stabilising the meaning of concepts ( what is a Staging server? ) across people by sharing flashcards worldwide

### Cool Cards to add
- [MLOPs dictionary](https://www.hopsworks.ai/mlops-dictionary)

# Competition
1. [Quizlet](https://quizlet.com/en-gb): Flashcards & practice tests. Focused on learning materials
2. [Anki](https://apps.ankiweb.net/): Opensource solution. Exactly what we need, but hard to implement

# Strategy
1. Public cards are free forever
2. Private cards are paid for after X cards ( 200? )
3. Rather than money, we can pay for extra private cards with advertised cards. Businesses would be keen on this as it creates strong brand awareness.

# Product

## User flows
Description of how we expect our users to interact with the platform

### Core flow
1. See a cards' question
2. Tap to see the answer
3. Swipe right if we know the answer, left if we don't

### Add card
1. Click on a "+" icon
2. Add a card containing
	1. Question: str
	2. Answer: str
	3. private: boolean ( defaults to false )

## Database tables
- A * next to the column name means that there is an index on this column.
- A ¬ next to the column means that there is a uniqueness constraint on this column

### Common
This fields exist in every table

| Column | Type | Description |
| --- | --- | --- |
| last_updated_at | datetime | When this row was last updated |
| created_at | datetime | When this card was created |


### User

| Column | Type | Description |
| --- | --- | --- |
| name | str | name |
| ¬email | str | email |

### Card

| Column | Type | Description |
| --- | --- | --- |
| front | str | What is shown to the user during reviews |
| back | str | What the user is meant to recall after seeing the card's front |
| * created_by | User FK | The user that created the card |
| median_time | int | median review time among all users reviewing this card, in miliseconds |

### UserCard

| Column | Type | Description |
| --- | --- | --- |
| * card | Card FK | The card |
| * user | User FK | The user |
| last_review_datetime | datetime | The last time this card was reviewed |
| * next_review_datetime | datetime | The next time this card should be shown to the user |

## Revision

| Column | Type | Description |
| --- | --- | --- |
| * user_card | UserCard FK | The user_card we are keeping the history of |
| reviewed_at | datetime | The datetime at which this UserCard revision happened |
| remembered | boolean | `True` if the user remembered the card, `False` otherwise |

### CardTag

| Column | Type | Description |
| --- | --- | --- |
| * card | Card FK | The card |
| * tag | str | A tag belonging to this card | user |

# External Feedback

## Founder Block's suggestions
Point of Contant: Lennard Gropengiesser

### Guidance
- Design: 1 Day workshop to define
	- Customer base
	- Business model
	- Shorter term goal of the app
	- Define product Scope
	- Vision: What's the long term plan?
	- Design ( Figma )

### Contact


# ChatGPT

From [this](https://chat.openai.com/c/e6751526-8731-45f7-95c6-83b37a0dea8f) conversation:

```
Here are the steps you can follow to build an Android app with a Kotlin backend server and authentication:

1.  Set up Android Studio: Android Studio is the official IDE for Android development. You can download it from the official Android website.
    
2.  Choose a backend server framework: Ktor is a popular backend server framework for Kotlin. It is lightweight and easy to use, and it provides built-in support for features like routing, authentication, and templating.
    
3.  Set up your backend server: You can deploy your Ktor backend server to a cloud hosting service like Heroku or DigitalOcean. Alternatively, you can host your server on your own infrastructure.
    
4.  Implement authentication: You can use a library like Auth0 or Firebase Authentication to implement authentication in your backend server. Both libraries provide easy-to-use APIs for integrating authentication into your application.
    
5.  Define your API endpoints: Define the API endpoints that your Android app will use to interact with your backend server. Use RESTful APIs to ensure that your API is easy to use and maintain.
    
6.  Implement data storage: You can use a database like PostgreSQL or MongoDB to store your user data. Use a library like Exposed or KMongo to interact with your database from your Ktor backend server.
    
7.  Integrate your backend with your Android app: Use a library like Retrofit or Volley to make API calls from your Android app to your backend server.
    
8.  Implement authentication in your Android app: You can use a library like Firebase Authentication or Okta to implement authentication in your Android app. Both libraries provide easy-to-use APIs for integrating authentication into your application.
    
9.  Test and deploy: Test your application thoroughly to ensure that it is stable and performs well. Deploy your application to the Google Play Store or an alternative app store.
    

By following these steps, you can build a secure and scalable Android app with a Kotlin backend server and authentication.
```
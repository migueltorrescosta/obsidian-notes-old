Starting from the [[Starting a New App]] template

# Next Steps
#next-steps 
1. Setup Kotlin development environment
	1. [Kotlin server](https://kotlinlang.org/docs/server-overview.html), probably with [Spring's generator](https://start.spring.io/)
	2. [Kotlin for Android](https://developer.android.com/kotlin)
	3. [Kotlin tutorial](https://developer.android.com/courses/android-basics-compose/course)
	4. Look into [Kotlin auth](https://ktor.io/docs/authentication.html#supported)
	5. [Learn Ktor](https://ktor.io/learn/)
	6. 

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

## RevisionHistory
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

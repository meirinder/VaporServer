import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    
    
    router.get("json") { req -> String in
        let dog = Dog()
        dog.name = "petya"
        dog.legs = "4"
        let breed = Breed()
        breed.name = "test"
        dog.breed = breed
        let jsonEncoder = JSONEncoder()
        let test = try jsonEncoder.encode(dog)
        print(test)
        return """
        {
        "sections": [
        {
        "sectionId": "1",
        "sectionName": "PersonalData",
        "sectionSequenceNumber": "1",
        "tasks": [
        {
        "question": {
        "questionId": "1",
        "questionSequenceNumber": "1",
        "text": "Фамилия Имя Отчество ",
        "questionPresent": "textField"
        },
        "answer": ""
        },
        {
        "question": {
        "questionId": "2",
        "questionSequenceNumber": "2",
        "text": "Дата рождения",
        "questionPresent": "datePicker"
        },
        "answer": ""
        },
        {
        "question": {
        "questionId": "3",
        "questionSequenceNumber": "3",
        "text": "Район проживания",
        "questionPresent": "swipe",
        "swipeOptions": [
        {
        "value": ""
        },
        {
        "value": "Советский"
        },
        {
        "value": "Ленинский"
        },
        {
        "value": "Центральный"
        },
        {
        "value": "Железнодорожный"
        },
        {
        "value": "Первомайский"
        },
        {
        "value": "Кировский"
        }]
        },
        "answer": ""
        },
        {
        "question": {
        "questionId": "4",
        "questionSequenceNumber": "2",
        "text": "Интересующие тебя вакансии, опыт который тебе бы хотелось приобрести",
        "questionPresent": "textField"
        },
        "answer": ""
        },
        {
        "question": {
        "questionId": "5",
        "questionSequenceNumber": "2",
        "text": "Факультет, курс",
        "questionPresent": "textField"
        },
        "answer": ""
        }
        ]
        },
        {
        "sectionId": "2",
        "sectionName": "WorcingConditions",
        "sectionSequenceNumber": "2",
        "tasks": [
        {
        "question": {
        "questionId": "6",
        "questionSequenceNumber": "1",
        "text": "Занятость",
        "questionPresent": "swipe",
        "swipeOptions": [
        {
        "value": ""
        },
        {
        "value": "Пол дня (20 часов в неделю)"
        },
        {
        "value": "Частичная (30 часов в неделю)"
        },
        {
        "value": "Полная (40 часов в неделю)"
        }
        ]
        },
        "answer": ""
        },
        {
        "question": {
        "questionId": "7",
        "questionSequenceNumber": "2",
        "text": "Ожидаемая заработная плата",
        "questionPresent": "textField"
        },
        "answer": ""
        }
        ]
        },
        {
        "sectionId": "3",
        "sectionName": "Иностранный язык",
        "sectionSequenceNumber": "3",
        "tasks": [
        {
        "question": {
        "questionId": "8",
        "questionSequenceNumber": "2",
        "text": "Уровень Английского",
        "questionPresent": "swipe",
        "swipeOptions": [
        {
        "value": ""
        },
        {
        "value": "Начальный"
        },
        {
        "value": "Базовый"
        },
        {
        "value": "На уровне чтений технической документации"
        },
        {
        "value": "Продвинутый"
        },
        {
        "value": "Свободное владение"
        }
        ]
        },
        "answer": ""
        },
        {
        "question": {
        "questionId": "9",
        "questionSequenceNumber": "2",
        "text": "Другие языки, уровень владения",
        "questionPresent": "textField"
        },
        "answer": ""
        }
        ]
        },
        {
        "sectionId": "4",
        "sectionName": "Exp/skills",
        "sectionSequenceNumber": "4",
        "tasks": [
        {
        "question": {
        "questionId": "10",
        "questionSequenceNumber": "1",
        "text": "Опыт работы (организация, должность, даты), общий стаж работы",
        "questionPresent": "textField"
        },
        "answer": ""
        },
        {
        "question": {
        "questionId": "11",
        "questionSequenceNumber": "2",
        "text": "Сертификаты (Какие, откуда, когда)",
        "questionPresent": "textField"
        },
        "answer": ""
        },
        {
        "question": {
        "questionId": "12",
        "questionSequenceNumber": "3",
        "text": "Навыки",
        "questionPresent": "selectionableCollectionView",
        "collectionViewItems": [
        {
        "itemId": "0",
        "itemName": "Нет навыков"
        },
        {
        "itemId": "2",
        "itemName": "ActiveScript"
        },
        {
        "itemId": "3",
        "itemName": "AJAX"
        },
        {
        "itemId": "4",
        "itemName": "Amazon Services"
        },
        {
        "itemId": "5",
        "itemName": "Android NDK"
        },
        {
        "itemId": "6",
        "itemName": "Android SDK"
        },
        {
        "itemId": "7",
        "itemName": "AngularJS"
        },
        {
        "itemId": "8",
        "itemName": "Apache"
        },
        {
        "itemId": "9",
        "itemName": " Apache Tiles"
        },
        {
        "itemId": "10",
        "itemName": "ASP.NET"
        },
        {
        "itemId": "11",
        "itemName": "Backbone.js"
        },
        {
        "itemId": "12",
        "itemName": "BDD"
        },
        {
        "itemId": "13",
        "itemName": "Bootstrap"
        },
        {
        "itemId": "14",
        "itemName": "C#"
        },
        {
        "itemId": "15",
        "itemName": "C/C++"
        },
        {
        "itemId": "16",
        "itemName": "CGI"
        },
        {
        "itemId": "17",
        "itemName": "Chai"
        },
        {
        "itemId": "18",
        "itemName": "Cocoa"
        },
        {
        "itemId": "19",
        "itemName": "CocoaTouch"
        },
        {
        "itemId": "20",
        "itemName": "CocoaPods"
        },
        {
        "itemId": "21",
        "itemName": "CofeeScript"
        },
        {
        "itemId": "22",
        "itemName": "CrossBrawser"
        },
        {
        "itemId": "23",
        "itemName": "CSS"
        },
        {
        "itemId": "24",
        "itemName": "DataMapper"
        },
        {
        "itemId": "25",
        "itemName": "Dependency injection"
        },
        {
        "itemId": "26",
        "itemName": "Drupal"
        },
        {
        "itemId": "27",
        "itemName": "DRY"
        },
        {
        "itemId": "28",
        "itemName": "Elasticsearch"
        },
        {
        "itemId": "29",
        "itemName": "Ember.js"
        },
        {
        "itemId": "30",
        "itemName": "Entity Framework"
        },
        {
        "itemId": "31",
        "itemName": "fabric.js"
        },
        {
        "itemId": "32",
        "itemName": "Factory"
        },
        {
        "itemId": "33",
        "itemName": "Ffmpeg"
        },
        {
        "itemId": "34",
        "itemName": "Git"
        },
        {
        "itemId": "35",
        "itemName": "Groovy"
        },
        {
        "itemId": "36",
        "itemName": "Hibernate"
        },
        {
        "itemId": "37",
        "itemName": "HTML"
        },
        {
        "itemId": "38",
        "itemName": "ImageMagick"
        },
        {
        "itemId": "39",
        "itemName": "Java SE"
        },
        {
        "itemId": "40",
        "itemName": "JavaScript"
        },
        {
        "itemId": "41",
        "itemName": "Jenkins"
        },
        {
        "itemId": "42",
        "itemName": "JIRA"
        },
        {
        "itemId": "43",
        "itemName": "Joomla"
        },
        {
        "itemId": "44",
        "itemName": "jQuery"
        },
        {
        "itemId": "45",
        "itemName": "Karma"
        },
        {
        "itemId": "46",
        "itemName": "KISS"
        },
        {
        "itemId": "47",
        "itemName": "KnockOut"
        },
        {
        "itemId": "48",
        "itemName": "Kotlin"
        },
        {
        "itemId": "49",
        "itemName": "Laravel"
        },
        {
        "itemId": "50",
        "itemName": "LESS"
        },
        {
        "itemId": "51",
        "itemName": "LibVLC"
        },
        {
        "itemId": "52",
        "itemName": "Magento"
        },
        {
        "itemId": "53",
        "itemName": "Mencoder"
        },
        {
        "itemId": "54",
        "itemName": "Mocha"
        },
        {
        "itemId": "55",
        "itemName": "MongoDB"
        },
        {
        "itemId": "56",
        "itemName": "MS SQL"
        },
        {
        "itemId": "57",
        "itemName": "Multitrading"
        },
        {
        "itemId": "58",
        "itemName": "MVC"
        },
        {
        "itemId": "59",
        "itemName": "MVVM"
        },
        {
        "itemId": "60",
        "itemName": "MySQL"
        },
        {
        "itemId": "61",
        "itemName": "Nginx"
        },
        {
        "itemId": "62",
        "itemName": "NHibernate"
        },
        {
        "itemId": "63",
        "itemName": "Node.js"
        },
        {
        "itemId": "64",
        "itemName": "NoSQL"
        },
        {
        "itemId": "65",
        "itemName": "Objective-C"
        },
        {
        "itemId": "66",
        "itemName": "ODBS"
        },
        {
        "itemId": "67",
        "itemName": "OOP"
        },
        {
        "itemId": "68",
        "itemName": "OpenCV"
        },
        {
        "itemId": "69",
        "itemName": "OpenGL"
        },
        {
        "itemId": "70",
        "itemName": "Orchard"
        },
        {
        "itemId": "71",
        "itemName": "ORM"
        },
        {
        "itemId": "72",
        "itemName": "PayPal"
        },
        {
        "itemId": "73",
        "itemName": "Perl"
        },
        {
        "itemId": "74",
        "itemName": "Photoshop"
        },
        {
        "itemId": "75",
        "itemName": "PHP"
        },
        {
        "itemId": "76",
        "itemName": "PostgreSQL"
        },
        {
        "itemId": "77",
        "itemName": "Python"
        },
        {
        "itemId": "78",
        "itemName": "Qt"
        },
        {
        "itemId": "79",
        "itemName": "React.js"
        },
        {
        "itemId": "80",
        "itemName": "Realm"
        },
        {
        "itemId": "81",
        "itemName": "Redmine"
        },
        {
        "itemId": "82",
        "itemName": "Responsive web"
        },
        {
        "itemId": "83",
        "itemName": "REST"
        },
        {
        "itemId": "84",
        "itemName": "RoR"
        },
        {
        "itemId": "85",
        "itemName": "Ruby"
        },
        {
        "itemId": "86",
        "itemName": "Sass"
        },
        {
        "itemId": "87",
        "itemName": "Scala"
        },
        {
        "itemId": "88",
        "itemName": "SEO"
        },
        {
        "itemId": "89",
        "itemName": "Shell"
        },
        {
        "itemId": "90",
        "itemName": "Singleton"
        },
        {
        "itemId": "91",
        "itemName": "SOAP"
        },
        {
        "itemId": "92",
        "itemName": "SOLID"
        },
        {
        "itemId": "92",
        "itemName": "Sphinx"
        },
        {
        "itemId": "93",
        "itemName": "Spring"
        },
        {
        "itemId": "94",
        "itemName": "SQL"
        },
        {
        "itemId": "95",
        "itemName": "SQLite"
        },
        {
        "itemId": "96",
        "itemName": "Stripe"
        },
        {
        "itemId": "97",
        "itemName": "Struts"
        },
        {
        "itemId": "98",
        "itemName": "SVN"
        },
        {
        "itemId": "99",
        "itemName": "Swift"
        },
        {
        "itemId": "100",
        "itemName": "Swing"
        },
        {
        "itemId": "101",
        "itemName": "Symphony"
        },
        {
        "itemId": "102",
        "itemName": "TDD"
        },
        {
        "itemId": "103",
        "itemName": "three.js"
        },
        {
        "itemId": "104",
        "itemName": "TypeScript"
        },
        {
        "itemId": "105",
        "itemName": "Unity"
        },
        {
        "itemId": "106",
        "itemName": "Unix shell"
        },
        {
        "itemId": "107",
        "itemName": "VIPER"
        },
        {
        "itemId": "108",
        "itemName": "Visual Studio"
        },
        {
        "itemId": "109",
        "itemName": "WCF"
        },
        {
        "itemId": "110",
        "itemName": "Web Services"
        },
        {
        "itemId": "111",
        "itemName": "WebAPI"
        },
        {
        "itemId": "112",
        "itemName": "WebForms"
        },
        {
        "itemId": "113",
        "itemName": "Wordpress"
        },
        {
        "itemId": "114",
        "itemName": "Xamarin"
        },
        {
        "itemId": "115",
        "itemName": "Xcode"
        },
        {
        "itemId": "116",
        "itemName": "XML"
        },
        {
        "itemId": "117",
        "itemName": "Yii"
        },
        {
        "itemId": "118",
        "itemName": "Zend Framework"
        }
        ]
        },
        "answer": ""
        }
        ]
        }
        ]
        }
"""
        
    }
 
    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}


class Dog: Codable {
    var legs: String?
    var name: String?
    var breed: Breed?
    var parents: [Dog]?
}

class Breed: Codable {
    var name: String?
}


class JsonValidatorsController < ApplicationController
  def index
  end

  def create
    @data = [
      {
        "_id": "664d42d7236236f0b9ef9aa5",
        "index": 0,
        "guid": "3604fe74-202f-4fbe-870c-1ecd49ed93ef",
        "isActive": true,
        "balance": "$3,149.44",
        "picture": "http://placehold.it/32x32",
        "age": 26,
        "eyeColor": "green",
        "name": "Gutierrez Olsen",
        "gender": "male",
        "company": "GEEKOL",
        "email": "gutierrezolsen@geekol.com",
        "phone": "+1 (932) 491-3816",
        "address": "322 Sands Street, Gwynn, District Of Columbia, 2918",
        "about": "Commodo sunt fugiat ipsum sit. Aute consequat sit irure nostrud. Officia non proident ex consequat velit.\r\n",
        "registered": "2019-11-29T12:55:35 +05:00",
        "latitude": -47.297853,
        "longitude": -69.646502,
        "tags": [
          "aliqua",
          "dolor",
          "ut",
          "irure",
          "veniam",
          "nisi",
          "nulla"
        ],
        "friends": [
          {
            "id": 0,
            "name": "Schroeder Callahan"
          },
          {
            "id": 1,
            "name": "Aurelia Buckley"
          },
          {
            "id": 2,
            "name": "Mamie Carlson"
          }
        ],
        "greeting": "Hello, Gutierrez Olsen! You have 1 unread messages.",
        "favoriteFruit": "apple"
      },
      {
        "_id": "664d42d7718ebca7c1c18f1c",
        "index": 1,
        "guid": "b6e52d90-efa5-4e64-9795-6f6a569dbd85",
        "isActive": true,
        "balance": "$2,697.46",
        "picture": "http://placehold.it/32x32",
        "age": 39,
        "eyeColor": "brown",
        "name": "Odessa Frye",
        "gender": "female",
        "company": "UPLINX",
        "email": "odessafrye@uplinx.com",
        "phone": "+1 (818) 567-2537",
        "address": "198 Rockaway Avenue, Norfolk, Maryland, 1269",
        "about": "Duis ex officia esse sit proident deserunt labore cillum aute anim velit magna minim. Officia enim deserunt nisi aliquip aute proident in. Culpa nulla nostrud voluptate dolor do mollit deserunt labore id sint ipsum. Commodo ea deserunt excepteur pariatur occaecat veniam sint tempor consectetur nulla ipsum quis excepteur. Nostrud aliquip non et pariatur anim anim laboris. Incididunt aute Lorem irure pariatur nulla quis nulla in amet.\r\n",
        "registered": "2016-03-07T11:10:12 +05:00",
        "latitude": -42.501853,
        "longitude": 155.930226,
        "tags": [
          "commodo",
          "Lorem",
          "est",
          "labore",
          "cupidatat",
          "nostrud",
          "aliqua"
        ],
        "friends": [
          {
            "id": 0,
            "name": "Baldwin Donaldson"
          },
          {
            "id": 1,
            "name": "Isabelle Sellers"
          },
          {
            "id": 2,
            "name": "Twila Byers"
          }
        ],
        "greeting": "Hello, Odessa Frye! You have 2 unread messages.",
        "favoriteFruit": "strawberry"
      },
      {
        "_id": "664d42d73a08f517db518b5d",
        "index": 2,
        "guid": "3344b7b2-5c8a-451d-b0cd-6306d7f496e8",
        "isActive": true,
        "balance": "$3,100.83",
        "picture": "http://placehold.it/32x32",
        "age": 38,
        "eyeColor": "green",
        "name": "Frederick Calhoun",
        "gender": "male",
        "company": "GENEKOM",
        "email": "frederickcalhoun@genekom.com",
        "phone": "+1 (940) 492-2761",
        "address": "889 Ferris Street, Barstow, Nevada, 5245",
        "about": "Proident irure deserunt esse do aliquip excepteur occaecat do Lorem occaecat Lorem velit. Quis ullamco commodo cupidatat ut proident culpa tempor cupidatat Lorem consectetur adipisicing occaecat ad. Eiusmod proident enim est id deserunt consectetur id officia ut Lorem enim aliquip fugiat mollit.\r\n",
        "registered": "2023-08-25T10:29:27 +04:00",
        "latitude": -15.149628,
        "longitude": -153.177157,
        "tags": [
          "est",
          "consectetur",
          "do",
          "enim",
          "dolore",
          "labore",
          "elit"
        ],
        "friends": [
          {
            "id": 0,
            "name": "Elinor Rowe"
          },
          {
            "id": 1,
            "name": "Vicky Mcfadden"
          },
          {
            "id": 2,
            "name": "Estrada Leon"
          }
        ],
        "greeting": "Hello, Frederick Calhoun! You have 8 unread messages.",
        "favoriteFruit": "banana"
      },
      {
        "_id": "664d42d79bfc2dd25f5e4f5f",
        "index": 3,
        "guid": "ba6e5ff5-403e-43c7-994e-36ca8980e8ae",
        "isActive": true,
        "balance": "$1,783.97",
        "picture": "http://placehold.it/32x32",
        "age": 27,
        "eyeColor": "brown",
        "name": "Luella Grant",
        "gender": "female",
        "company": "SECURIA",
        "email": "luellagrant@securia.com",
        "phone": "+1 (858) 416-3004",
        "address": "309 Leonora Court, Greenbush, Louisiana, 6304",
        "about": "Sint tempor ut occaecat consequat reprehenderit laboris mollit velit do do aute irure officia. Qui Lorem nostrud qui et sit qui excepteur deserunt culpa elit ullamco Lorem. Eu voluptate dolor esse aliquip commodo consectetur ullamco.\r\n",
        "registered": "2023-07-02T08:23:17 +04:00",
        "latitude": 0.205897,
        "longitude": 45.553255,
        "tags": [
          "pariatur",
          "occaecat",
          "fugiat",
          "consequat",
          "cillum",
          "fugiat",
          "est"
        ],
        "friends": [
          {
            "id": 0,
            "name": "Melba Larsen"
          },
          {
            "id": 1,
            "name": "Wiley Lawson"
          },
          {
            "id": 2,
            "name": "Martinez Moon"
          }
        ],
        "greeting": "Hello, Luella Grant! You have 4 unread messages.",
        "favoriteFruit": "strawberry"
      },
      {
        "_id": "664d42d77f667b7ff59d3fdd",
        "index": 4,
        "guid": "24d5e5fa-9844-4071-b155-3a5e44cef7a2",
        "isActive": true,
        "balance": "$3,962.85",
        "picture": "http://placehold.it/32x32",
        "age": 24,
        "eyeColor": "brown",
        "name": "Kramer Raymond",
        "gender": "male",
        "company": "KANGLE",
        "email": "kramerraymond@kangle.com",
        "phone": "+1 (856) 591-2450",
        "address": "934 Kosciusko Street, Belvoir, Ohio, 4004",
        "about": "Occaecat occaecat nostrud ipsum Lorem culpa Lorem consequat amet ea ut. Consectetur sit anim irure exercitation dolor pariatur esse do minim. Anim minim aliquip Lorem Lorem. Non qui sit anim excepteur proident esse dolor irure id. Culpa amet magna quis est ipsum aliqua excepteur amet cillum eiusmod Lorem laborum. Id laboris dolore aliqua voluptate.\r\n",
        "registered": "2015-11-12T10:19:47 +05:00",
        "latitude": 7.845898,
        "longitude": -76.433262,
        "tags": [
          "elit",
          "officia",
          "irure",
          "nostrud",
          "Lorem",
          "mollit",
          "ipsum"
        ],
        "friends": [
          {
            "id": 0,
            "name": "Daniels Hurley"
          },
          {
            "id": 1,
            "name": "Antoinette Scott"
          },
          {
            "id": 2,
            "name": "Drake Harrington"
          }
        ],
        "greeting": "Hello, Kramer Raymond! You have 1 unread messages.",
        "favoriteFruit": "strawberry"
      }
    ]
    respond_to { |format| format.turbo_stream }
  end

end

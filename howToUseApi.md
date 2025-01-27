# Key prior pol.is endpoint

This is the existing live API. Things were modified for our own use-case, see readme.

## Create Comment

### Endpoint

POST https://pol.is/api/v3/comments


### REQUEST 

from the new comment place:
{txt: "Some new comment", pid: "mypid", conversation_id: "2smkr6fwuk", vote: -1, agid: 1}

from the seed admin place:
{txt: "Another seed comment", pid: "mypid", conversation_id: "2smkr6fwuk", is_seed: true}


### RESPONSE

{"tid":12,"currentPid":24}

https://github.com/zkorum/polis-wl/blob/c79d47bf93d9582d90b767219f9d2080ac4f8641/server/src/utils/parameter.ts#L520

## Create Vote

### Endpoint

POST http://localhost:8000/api/v3/votes

## REQUEST

{lang: "en", weight: 0, vote: 1, tid: 7, pid: "mypid", conversation_id: "2ehdjncz6f", agid: 1}


OR

Agree is -1 !!!
{"lang":"en","weight":0,"vote":-1,"tid":1,"pid":"mypid","conversation_id":"2smkr6fwuk","agid":1}

## RESPONSE

{
    "nextComment": {
        "txt": "I don't like sport",
        "tid": 0,
        "created": "1737578914328",
        "tweet_id": null,
        "quote_src_url": null,
        "is_seed": true,
        "is_meta": false,
        "lang": null,
        "pid": 0,
        "randomN": 9.499944302110912,
        "remaining": 14,
        "total": 15,
        "translations": []
    },
    "currentPid": 10
}

## Create Conversation

### Endpoint

POST 
http://localhost:8000/api/v3/conversations

### Request:

{is_draft: true, is_active: true}

## Response


## Edit Conversation

### Endpoint
PUT 
http://localhost:8000/api/v3/conversations

### Request:
{
  "topic": "Test conversation",
  "description": "",
  "link_url": null,
  "parent_url": null,
  "upvotes": 1,
  "participant_count": 0,
  "is_anon": false,
  "is_active": true,
  "is_draft": true,
  "is_public": true,
  "is_data_open": false,
  "profanity_filter": true,
  "spam_filter": true,
  "strict_moderation": false,
  "prioritize_seed": false,
  "vis_type": 0,
  "write_type": 1,
  "help_type": 1,
  "write_hint_type": 1,
  "style_btn": null,
  "socialbtn_type": 0,
  "subscribe_type": 1,
  "branding_type": 1,
  "bgcolor": null,
  "help_bgcolor": null,
  "help_color": null,
  "email_domain": null,
  "use_xid_whitelist": false,
  "owner": 1,
  "org_id": 1,
  "context": null,
  "course_id": null,
  "lti_users_only": false,
  "owner_sees_participation_stats": false,
  "auth_needed_to_vote": false,
  "auth_needed_to_write": false,
  "auth_opt_fb": true,
  "auth_opt_tw": true,
  "auth_opt_allow_3rdparty": true,
  "modified": "1737715229864",
  "created": "1737715229864",
  "site_id": "polis_site_id_R8z4jN7Qr9k74xjdRc",
  "auth_opt_fb_computed": true,
  "auth_opt_tw_computed": true,
  "translations": [],
  "ownername": "Test",
  "is_mod": true,
  "is_owner": true,
  "pp": false,
  "conversation_id": "6krppbhcs9"
}

## Response

{
    "topic": "Test conversation",
    "description": "",
    "link_url": null,
    "parent_url": null,
    "upvotes": 1,
    "participant_count": 0,
    "is_anon": false,
    "is_active": true,
    "is_draft": true,
    "is_public": true,
    "is_data_open": false,
    "profanity_filter": true,
    "spam_filter": true,
    "strict_moderation": false,
    "prioritize_seed": false,
    "vis_type": 0,
    "write_type": 1,
    "help_type": 1,
    "write_hint_type": 1,
    "style_btn": null,
    "socialbtn_type": 0,
    "subscribe_type": 1,
    "branding_type": 1,
    "bgcolor": null,
    "help_bgcolor": null,
    "help_color": null,
    "email_domain": null,
    "use_xid_whitelist": false,
    "owner": 1,
    "org_id": 1,
    "context": null,
    "course_id": null,
    "lti_users_only": false,
    "owner_sees_participation_stats": false,
    "auth_needed_to_vote": false,
    "auth_needed_to_write": false,
    "auth_opt_fb": true,
    "auth_opt_tw": true,
    "auth_opt_allow_3rdparty": true,
    "modified": "1737715229864",
    "created": "1737715229864",
    "is_mod": true,
    "conversation_id": "6krppbhcs9"
}

## Create user

### Endpoint

POST
http://localhost:8000/api/v3/auth/new

### Request

{
  "hname": "agora_admin",
  "email": "admin@zkorum.com",
  "password": "agora_admin",
  "gatekeeperTosPrivacy": true
}

### Response

...

## math_main data populated by polis_main regularly

### Example data

```json
{
  "n": 11,
  "pca": {
    "comps": [
      [
        -0.5395235610122506,
        0.5567760030774129,
        -0.19335506861837684,
        0.32488868263922266,
        0,
        -0.15930362228052095,
        0.06570247305240479,
        0.16607382433841564,
        -0.06570247305240479,
        0.33157623604691017,
        -0.059810783273950036,
        0,
        0,
        -0.28436605212818344,
        0
      ],
      [
        0.042859849285582494,
        -0.11661396238824757,
        0.35074253268715444,
        0.21320627987401683,
        0,
        0.01884562172219833,
        0.06708978648687632,
        0.7091399658759459,
        -0.06708978648687632,
        0.28402981624362317,
        -0.04358275910110349,
        0,
        0,
        0.4704018007121336,
        0
      ]
    ],
    "center": [
      0.22222222222222224,
      0.22222222222222224,
      0.4444444444444445,
      -0.25,
      0,
      0,
      0.5,
      0,
      -0.5,
      -0.5,
      -0.6666666666666669,
      0,
      0,
      -0.2857142857142857,
      0
    ],
    "comment-extremity": [
      2.561959586655512,
      2.6927680372460876,
      2.240564563798211,
      1.1287795531691398,
      0,
      0.621282562886539,
      0.5455296385549655,
      2.8207977763380825,
      0.18184321285165514,
      0.8454637857998916,
      0.095540451177396,
      0,
      0,
      1.5206283250452755,
      0
    ],
    "comment-projection": [
      [
        2.5539137148396276,
        -2.6355806735949168,
        1.0816880542921063,
        -0.943716342924732,
        0,
        0.6169802760829745,
        -0.381696875904908,
        -0.6432011559036598,
        0.12723229196830266,
        -0.6420946201039113,
        0.07721538918120982,
        0,
        0,
        0.7866749886565748,
        0
      ],
      [
        -0.2028833675049144,
        0.5520092529904834,
        -1.9621622047501641,
        -0.6193082784441786,
        0,
        -0.07298877907899887,
        -0.3897564386464251,
        -2.7464872779676344,
        0.1299188128821417,
        -0.5500213740689527,
        0.05626510006011449,
        0,
        0,
        -1.301327385845767,
        0
      ]
    ]
  },
  "zid": 1,
  "tids": [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14
  ],
  "mod-in": [
    0,
    7,
    1,
    4,
    13,
    6,
    3,
    12,
    2,
    11,
    9,
    5,
    14,
    10,
    8
  ],
  "n-cmts": 15,
  "in-conv": [
    0,
    7,
    1,
    4,
    6,
    3,
    2,
    9,
    5,
    10,
    8
  ],
  "mod-out": [],
  "repness": {
    "0": [
      {
        "tid": 0,
        "p-test": 0.8164965809277264,
        "n-agree": 3,
        "repness": 3.428571428571429,
        "n-trials": 5,
        "n-success": 3,
        "p-success": 0.5714285714285714,
        "best-agree": true,
        "repful-for": "agree",
        "repness-test": 1.5477582
      },
      {
        "tid": 1,
        "p-test": 1.8898223650461359,
        "repness": 3.75,
        "n-trials": 6,
        "n-success": 5,
        "p-success": 0.75,
        "repful-for": "disagree",
        "repness-test": 2.013665
      }
    ],
    "1": [
      {
        "tid": 1,
        "p-test": 2,
        "n-agree": 3,
        "repness": 6.4,
        "n-trials": 3,
        "n-success": 3,
        "p-success": 0.8,
        "best-agree": true,
        "repful-for": "agree",
        "repness-test": 2.7464263
      },
      {
        "tid": 3,
        "p-test": 1.7320508075688772,
        "repness": 3,
        "n-trials": 2,
        "n-success": 2,
        "p-success": 0.75,
        "repful-for": "agree",
        "repness-test": 1.7320508
      },
      {
        "tid": 9,
        "p-test": 2,
        "repness": 2,
        "n-trials": 3,
        "n-success": 3,
        "p-success": 0.8,
        "repful-for": "agree",
        "repness-test": 1.6329932
      },
      {
        "tid": 0,
        "p-test": 2.23606797749979,
        "repness": 2.916666666666667,
        "n-trials": 4,
        "n-success": 4,
        "p-success": 0.8333333333333333,
        "repful-for": "disagree",
        "repness-test": 2.2886887
      },
      {
        "tid": 2,
        "p-test": 2,
        "repness": 1.6,
        "n-trials": 3,
        "n-success": 3,
        "p-success": 0.8,
        "repful-for": "disagree",
        "repness-test": 1.535299
      }
    ]
  },
  "consensus": {
    "agree": [],
    "disagree": []
  },
  "meta-tids": [],
  "votes-base": {
    "0": {
      "A": [
        0,
        0,
        0,
        0,
        1,
        1,
        0,
        1,
        0,
        0,
        0
      ],
      "D": [
        0,
        1,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        1,
        0
      ],
      "S": [
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        1,
        0
      ]
    },
    "1": {
      "A": [
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        1,
        0
      ],
      "D": [
        0,
        0,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        0,
        0
      ],
      "S": [
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0
      ]
    },
    "2": {
      "A": [
        0,
        0,
        1,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0
      ],
      "D": [
        0,
        1,
        0,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        0
      ],
      "S": [
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        0
      ]
    },
    "3": {
      "A": [
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0
      ],
      "D": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0
      ],
      "S": [
        1,
        1,
        0,
        0,
        0,
        0,
        1,
        1,
        0,
        0,
        0
      ]
    },
    "4": {
      "A": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "D": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "S": [
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ]
    },
    "5": {
      "A": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0
      ],
      "D": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1
      ],
      "S": [
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        1
      ]
    },
    "6": {
      "A": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "D": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0
      ],
      "S": [
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0
      ]
    },
    "7": {
      "A": [
        0,
        0,
        0,
        1,
        0,
        1,
        1,
        0,
        0,
        0,
        0
      ],
      "D": [
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        1
      ],
      "S": [
        1,
        0,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        0,
        1
      ]
    },
    "8": {
      "A": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0
      ],
      "D": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "S": [
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0
      ]
    },
    "9": {
      "A": [
        0,
        1,
        0,
        1,
        0,
        0,
        1,
        0,
        1,
        0,
        0
      ],
      "D": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0
      ],
      "S": [
        1,
        1,
        0,
        1,
        0,
        0,
        1,
        1,
        1,
        0,
        0
      ]
    },
    "10": {
      "A": [
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        1,
        0,
        0,
        0
      ],
      "D": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "S": [
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        1,
        0,
        0,
        0
      ]
    },
    "11": {
      "A": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "D": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "S": [
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ]
    },
    "12": {
      "A": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "D": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "S": [
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ]
    },
    "13": {
      "A": [
        0,
        0,
        1,
        0,
        0,
        1,
        1,
        1,
        0,
        0,
        0
      ],
      "D": [
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1
      ],
      "S": [
        1,
        1,
        1,
        0,
        0,
        1,
        1,
        1,
        0,
        0,
        1
      ]
    },
    "14": {
      "A": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "D": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "S": [
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ]
    }
  },
  "group-votes": {
    "0": {
      "votes": {
        "0": {
          "A": 3,
          "D": 1,
          "S": 5
        },
        "1": {
          "A": 0,
          "D": 5,
          "S": 6
        },
        "2": {
          "A": 2,
          "D": 3,
          "S": 6
        },
        "3": {
          "A": 0,
          "D": 1,
          "S": 2
        },
        "4": {
          "A": 0,
          "D": 0,
          "S": 1
        },
        "5": {
          "A": 1,
          "D": 0,
          "S": 2
        },
        "6": {
          "A": 0,
          "D": 1,
          "S": 2
        },
        "7": {
          "A": 2,
          "D": 2,
          "S": 5
        },
        "8": {
          "A": 1,
          "D": 0,
          "S": 2
        },
        "9": {
          "A": 1,
          "D": 1,
          "S": 3
        },
        "10": {
          "A": 2,
          "D": 0,
          "S": 3
        },
        "11": {
          "A": 0,
          "D": 0,
          "S": 1
        },
        "12": {
          "A": 0,
          "D": 0,
          "S": 1
        },
        "13": {
          "A": 3,
          "D": 0,
          "S": 4
        },
        "14": {
          "A": 0,
          "D": 0,
          "S": 1
        }
      },
      "n-members": 6
    },
    "1": {
      "votes": {
        "0": {
          "A": 0,
          "D": 4,
          "S": 4
        },
        "1": {
          "A": 3,
          "D": 0,
          "S": 3
        },
        "2": {
          "A": 0,
          "D": 3,
          "S": 3
        },
        "3": {
          "A": 2,
          "D": 0,
          "S": 2
        },
        "4": {
          "A": 0,
          "D": 0,
          "S": 0
        },
        "5": {
          "A": 0,
          "D": 1,
          "S": 1
        },
        "6": {
          "A": 0,
          "D": 0,
          "S": 0
        },
        "7": {
          "A": 1,
          "D": 1,
          "S": 2
        },
        "8": {
          "A": 0,
          "D": 0,
          "S": 0
        },
        "9": {
          "A": 3,
          "D": 0,
          "S": 3
        },
        "10": {
          "A": 0,
          "D": 0,
          "S": 0
        },
        "11": {
          "A": 0,
          "D": 0,
          "S": 0
        },
        "12": {
          "A": 0,
          "D": 0,
          "S": 0
        },
        "13": {
          "A": 1,
          "D": 2,
          "S": 3
        },
        "14": {
          "A": 0,
          "D": 0,
          "S": 0
        }
      },
      "n-members": 5
    }
  },
  "base-clusters": {
    "x": [
      0.14228822668782537,
      -3.1347991247558458,
      1.1464472938622263,
      -0.01207097083220657,
      1.9461414691819976,
      2.440115129846827,
      -2.312828671330475,
      2.9224735951389054,
      -1.5492307119096667,
      -3.0128395070539913,
      -0.8023979976152531
    ],
    "y": [
      0.09407626618707511,
      1.0650602931679816,
      -0.3305683629041809,
      -1.446554748259115,
      0.1283904440367785,
      -2.9355721371885237,
      -1.4292158446492982,
      1.3782186717211924,
      0.1926987320657206,
      0.481622343764456,
      2.980204350248972
    ],
    "id": [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10
    ],
    "count": [
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1
    ],
    "members": [
      [
        0
      ],
      [
        1
      ],
      [
        2
      ],
      [
        3
      ],
      [
        4
      ],
      [
        5
      ],
      [
        6
      ],
      [
        7
      ],
      [
        8
      ],
      [
        9
      ],
      [
        10
      ]
    ]
  },
  "group-clusters": [
    {
      "id": 0,
      "center": [
        1.4308991239809292,
        -0.5186683110677957
      ],
      "members": [
        0,
        2,
        3,
        4,
        5,
        7
      ]
    },
    {
      "id": 1,
      "center": [
        -2.1624192025330466,
        0.6580739749195664
      ],
      "members": [
        1,
        6,
        8,
        9,
        10
      ]
    }
  ],
  "subgroup-votes": {
    "0": {
      "0": {
        "votes": {
          "0": {
            "A": 0,
            "D": 0,
            "S": 1
          },
          "1": {
            "A": 0,
            "D": 1,
            "S": 2
          },
          "2": {
            "A": 0,
            "D": 1,
            "S": 2
          },
          "3": {
            "A": 0,
            "D": 0,
            "S": 1
          },
          "4": {
            "A": 0,
            "D": 0,
            "S": 1
          },
          "5": {
            "A": 0,
            "D": 0,
            "S": 1
          },
          "6": {
            "A": 0,
            "D": 0,
            "S": 1
          },
          "7": {
            "A": 1,
            "D": 0,
            "S": 2
          },
          "8": {
            "A": 0,
            "D": 0,
            "S": 1
          },
          "9": {
            "A": 1,
            "D": 0,
            "S": 2
          },
          "10": {
            "A": 0,
            "D": 0,
            "S": 1
          },
          "11": {
            "A": 0,
            "D": 0,
            "S": 1
          },
          "12": {
            "A": 0,
            "D": 0,
            "S": 1
          },
          "13": {
            "A": 0,
            "D": 0,
            "S": 1
          },
          "14": {
            "A": 0,
            "D": 0,
            "S": 1
          }
        },
        "n-members": 2
      },
      "1": {
        "votes": {
          "0": {
            "A": 3,
            "D": 1,
            "S": 4
          },
          "1": {
            "A": 0,
            "D": 4,
            "S": 4
          },
          "2": {
            "A": 2,
            "D": 2,
            "S": 4
          },
          "3": {
            "A": 0,
            "D": 1,
            "S": 1
          },
          "4": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "5": {
            "A": 1,
            "D": 0,
            "S": 1
          },
          "6": {
            "A": 0,
            "D": 1,
            "S": 1
          },
          "7": {
            "A": 1,
            "D": 2,
            "S": 3
          },
          "8": {
            "A": 1,
            "D": 0,
            "S": 1
          },
          "9": {
            "A": 0,
            "D": 1,
            "S": 1
          },
          "10": {
            "A": 2,
            "D": 0,
            "S": 2
          },
          "11": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "12": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "13": {
            "A": 3,
            "D": 0,
            "S": 3
          },
          "14": {
            "A": 0,
            "D": 0,
            "S": 0
          }
        },
        "n-members": 4
      }
    },
    "1": {
      "0": {
        "votes": {
          "0": {
            "A": 0,
            "D": 2,
            "S": 2
          },
          "1": {
            "A": 2,
            "D": 0,
            "S": 2
          },
          "2": {
            "A": 0,
            "D": 1,
            "S": 1
          },
          "3": {
            "A": 1,
            "D": 0,
            "S": 1
          },
          "4": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "5": {
            "A": 0,
            "D": 1,
            "S": 1
          },
          "6": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "7": {
            "A": 0,
            "D": 1,
            "S": 1
          },
          "8": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "9": {
            "A": 1,
            "D": 0,
            "S": 1
          },
          "10": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "11": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "12": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "13": {
            "A": 0,
            "D": 2,
            "S": 2
          },
          "14": {
            "A": 0,
            "D": 0,
            "S": 0
          }
        },
        "n-members": 3
      },
      "1": {
        "votes": {
          "0": {
            "A": 0,
            "D": 2,
            "S": 2
          },
          "1": {
            "A": 1,
            "D": 0,
            "S": 1
          },
          "2": {
            "A": 0,
            "D": 2,
            "S": 2
          },
          "3": {
            "A": 1,
            "D": 0,
            "S": 1
          },
          "4": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "5": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "6": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "7": {
            "A": 1,
            "D": 0,
            "S": 1
          },
          "8": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "9": {
            "A": 2,
            "D": 0,
            "S": 2
          },
          "10": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "11": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "12": {
            "A": 0,
            "D": 0,
            "S": 0
          },
          "13": {
            "A": 1,
            "D": 0,
            "S": 1
          },
          "14": {
            "A": 0,
            "D": 0,
            "S": 0
          }
        },
        "n-members": 2
      }
    }
  },
  "lastModTimestamp": null,
  "subgroup-repness": {
    "0": {
      "0": [
        {
          "tid": 13,
          "p-test": 0,
          "repness": 1.666666666666667,
          "n-trials": 1,
          "n-success": 0,
          "p-success": 0.3333333333333333,
          "repful-for": "disagree",
          "repness-test": 0.61237246
        }
      ],
      "1": [
        {
          "tid": 13,
          "p-test": 2,
          "n-agree": 3,
          "repness": 2.4,
          "n-trials": 3,
          "n-success": 3,
          "p-success": 0.8,
          "best-agree": true,
          "repful-for": "agree",
          "repness-test": 1.5491934
        },
        {
          "tid": 10,
          "p-test": 1.7320508075688772,
          "repness": 2.25,
          "n-trials": 2,
          "n-success": 2,
          "p-success": 0.75,
          "repful-for": "agree",
          "repness-test": 1.3693064
        },
        {
          "tid": 1,
          "p-test": 2.23606797749979,
          "repness": 1.666666666666667,
          "n-trials": 4,
          "n-success": 4,
          "p-success": 0.8333333333333333,
          "repful-for": "disagree",
          "repness-test": 1.3801311
        },
        {
          "tid": 9,
          "p-test": 1.4142135623730951,
          "repness": 2.666666666666667,
          "n-trials": 1,
          "n-success": 1,
          "p-success": 0.6666666666666667,
          "repful-for": "disagree",
          "repness-test": 1.4907119
        }
      ]
    },
    "1": {
      "0": [
        {
          "tid": 13,
          "p-test": 1.7320508075688772,
          "n-agree": 0,
          "repness": 2.25,
          "n-trials": 2,
          "n-success": 2,
          "p-success": 0.75,
          "best-agree": true,
          "repful-for": "disagree",
          "repness-test": 1.3693064
        }
      ],
      "1": [
        {
          "tid": 13,
          "p-test": 1.4142135623730951,
          "n-agree": 1,
          "repness": 2.666666666666667,
          "n-trials": 1,
          "n-success": 1,
          "p-success": 0.6666666666666667,
          "best-agree": true,
          "repful-for": "agree",
          "repness-test": 1.4907119
        }
      ]
    }
  },
  "user-vote-counts": {
    "0": 15,
    "1": 6,
    "2": 5,
    "3": 4,
    "4": 4,
    "5": 5,
    "6": 7,
    "7": 11,
    "8": 3,
    "9": 2,
    "10": 3
  },
  "lastVoteTimestamp": 1737646740293,
  "subgroup-clusters": {
    "0": [
      {
        "id": 0,
        "center": [
          0.0651086279278094,
          -0.67623924103602
        ],
        "members": [
          0,
          3
        ],
        "parent-id": 0
      },
      {
        "id": 1,
        "center": [
          2.113794372007489,
          -0.43988284608368344
        ],
        "members": [
          2,
          4,
          5,
          7
        ],
        "parent-id": 0
      }
    ],
    "1": [
      {
        "id": 0,
        "center": [
          -2.31667887647503,
          1.50896232906047
        ],
        "members": [
          1,
          9,
          10
        ],
        "parent-id": 1
      },
      {
        "id": 1,
        "center": [
          -1.9310296916200707,
          -0.6182585562917888
        ],
        "members": [
          6,
          8
        ],
        "parent-id": 1
      }
    ]
  },
  "comment-priorities": {
    "0": 12.21109575744502,
    "1": 13.124438063484357,
    "2": 5.685131903806935,
    "3": 15.761116595146609,
    "4": 0.7831078906305026,
    "5": 5.967424153101961,
    "6": 1.8618156131461587,
    "7": 28.351304814939176,
    "8": 4.354734824095515,
    "9": 15.034068172149244,
    "10": 6.130682680212925,
    "11": 0.7831078906305026,
    "12": 0.7831078906305026,
    "13": 19.27980322477403,
    "14": 0.7831078906305026
  },
  "group-aware-consensus": {
    "0": 0.09523809523809523,
    "1": 0.1,
    "2": 0.07500000000000001,
    "3": 0.1875,
    "4": 0.16666666666666666,
    "5": 0.16666666666666666,
    "6": 0.125,
    "7": 0.21428571428571427,
    "8": 0.25,
    "9": 0.32000000000000006,
    "10": 0.30000000000000004,
    "11": 0.16666666666666666,
    "12": 0.16666666666666666,
    "13": 0.26666666666666666,
    "14": 0.16666666666666666
  }
}
```

### Useful output

Extracted from JSON above:

Note: 
- tid = opinion_id
- pid = participant_id
- zid = internal conversation_id
- zinvite == pol.is "conversation_id" in frontend endpoint = external conversation_id

```json
  "repness": {
    "0": [
      {
        "tid": 0,
        "p-test": 0.8164965809277264,
        "n-agree": 3,
        "repness": 3.428571428571429,
        "n-trials": 5,
        "n-success": 3,
        "p-success": 0.5714285714285714,
        "best-agree": true,
        "repful-for": "agree",
        "repness-test": 1.5477582
      },
      {
        "tid": 1,
        "p-test": 1.8898223650461359,
        "repness": 3.75,
        "n-trials": 6,
        "n-success": 5,
        "p-success": 0.75,
        "repful-for": "disagree",
        "repness-test": 2.013665
      }
    ],
    "1": [
      {
        "tid": 1,
        "p-test": 2,
        "n-agree": 3,
        "repness": 6.4,
        "n-trials": 3,
        "n-success": 3,
        "p-success": 0.8,
        "best-agree": true,
        "repful-for": "agree",
        "repness-test": 2.7464263
      },
      {
        "tid": 3,
        "p-test": 1.7320508075688772,
        "repness": 3,
        "n-trials": 2,
        "n-success": 2,
        "p-success": 0.75,
        "repful-for": "agree",
        "repness-test": 1.7320508
      },
      {
        "tid": 9,
        "p-test": 2,
        "repness": 2,
        "n-trials": 3,
        "n-success": 3,
        "p-success": 0.8,
        "repful-for": "agree",
        "repness-test": 1.6329932
      },
      {
        "tid": 0,
        "p-test": 2.23606797749979,
        "repness": 2.916666666666667,
        "n-trials": 4,
        "n-success": 4,
        "p-success": 0.8333333333333333,
        "repful-for": "disagree",
        "repness-test": 2.2886887
      },
      {
        "tid": 2,
        "p-test": 2,
        "repness": 1.6,
        "n-trials": 3,
        "n-success": 3,
        "p-success": 0.8,
        "repful-for": "disagree",
        "repness-test": 1.535299
      }
    ]
  },
```

### How polis front use is:

https://github.com/zkorum/polis-wl/blob/c79d47bf93d9582d90b767219f9d2080ac4f8641/client-participation/vis2/vis2.js#L48-L63


module Page.Libraries exposing (view)

import Html exposing (Html, a, div, h1, h2, img, main_, p, section, small, span, text)
import Html.Attributes exposing (alt, class, href, id, src, tabindex, target)

type alias Lib =
  { name : String
  , github : String
  , tags : List String
  , summary : String
  }

libs : List Lib
libs =
    [ { name = "Kyanite"
      , github = "https://github.com/dhershman1/kyanite"
      , tags = ["utility", "functional"]
      , summary = "A light weight functional JavaScript library that only depends on itself."
      }
    , { name = "Tap Junit"
      , github = "https://github.com/dhershman1/tap-junit"
      , tags = ["tape", "tap", "junit", "testing"]
      , summary = "A silly simple, silly small XML output for tap/tape tests to convert them to junit"
      }
    , { name = "Phone Fns"
      , github = "https://github.com/dhershman1/phone-fns"
      , tags = ["utility", "functional", "phones"]
      , summary = "A small modern, and functional phone number library"
      }
    , { name = "Vue Debounce"
      , github = "https://github.com/dhershman1/vue-debounce"
      , tags = ["vue", "debounce"]
      , summary = "A simple to use directive for debounce solutions"
      }
    ]


cardView : Lib -> Html msg
cardView { name, github, tags, summary } =
    div [ class "card" ]
        [ h2 [ class "lib__name" ]
            [ a
                [ class "lib__link"
                , href github
                , target "_blank"
                ]
                [ text name ]
            ]
        , div [ class "tag__wrapper" ]
            (List.map (\t -> span [class "tag"] [text t]) tags)
        , p [ class "lib__description" ]
            [ small []
                [ text summary ]
            ]
        ]


view : { title : String, content : Html msg }
view =
    { title = "Libraries & Plugins"
    , content =
        main_ [ class "libs" ]
            [ h1 [ class "center" ] [ text "Libraries/Plugins" ]
            , div [ class "card__container" ] (List.map cardView libs)
            ]
    }

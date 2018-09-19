<!DOCTYPE html>
<html lang="{{ language }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{{ langData['title'] }}</title>
    <meta name="author" content="{{ langData['author'] }}">
    <meta name="application-name" content="{{ langData['title'] }}">
    <meta name="description" content="{{ langData['description'] }}">

    <link href='//fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/headline_animation.css">
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="https://zephir-lang.com/images/icons/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://zephir-lang.com/images/icons/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://zephir-lang.com/images/icons/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://zephir-lang.com/images/icons/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon-precomposed" sizes="60x60" href="https://zephir-lang.com/images/icons/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon-precomposed" sizes="120x120" href="https://zephir-lang.com/images/icons/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon-precomposed" sizes="76x76" href="https://zephir-lang.com/images/icons/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon-precomposed" sizes="152x152" href="https://zephir-lang.com/images/icons/apple-touch-icon-152x152.png">
    <link rel="icon" type="image/png" href="https://zephir-lang.com/images/icons/favicon-196x196.png" sizes="196x196">
    <link rel="icon" type="image/png" href="https://zephir-lang.com/images/icons/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="https://zephir-lang.com/images/icons/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="https://zephir-lang.com/images/icons/favicon-16x16.png" sizes="16x16">
    <link rel="icon" type="image/png" href="https://zephir-lang.com/images/icons/favicon-128.png" sizes="128x128">

    <meta name="msapplication-TileColor" content="#FFFFFF">
    <meta name="msapplication-TileImage" content="https://zephir-lang.com/images/icons/mstile-144x144.png">
    <meta name="msapplication-square70x70logo" content="https://zephir-lang.com/images/icons/mstile-70x70.png">
    <meta name="msapplication-square150x150logo" content="https://zephir-lang.com/images/icons/mstile-150x150.png">
    <meta name="msapplication-wide310x150logo" content="https://zephir-lang.com/images/icons/mstile-310x150.png">
    <meta name="msapplication-square310x310logo" content="https://zephir-lang.com/images/icons/mstile-310x310.png">
</head>
<body>
    <header class="landing">
        <div id="navbar" class="content">
            <h2 id="logo"><img src="images/zephir_logo.png" alt=""></h2>
            <div class="responsive_nav"><i class="fa fa-bars"></i></div>
            <nav>
                <ul>
                    <li class="current"><a href="/">{{ langData['home'] }}</a></li>
                    <li>
                        <a href="https://github.com/phalcon/zephir">{{ langData['github'] }}</a>
                    </li>
                    <li>
                        <a href="https://docs.zephir-lang.com/">{{ langData['documentation'] }}</a>
                    </li>
                    <li>
                        <a href="https://forum.zephir-lang.com/">{{ langData['support'] }}</a>
                    </li>
                    <li>
                        <select class="languageSelector">
                        {% for langKey, langName in languages %}
                            <option value="{{ langKey }}"{% if langKey === language %} selected="selected"{% endif %}>
                                {{ langData['language' ~ langName] }}
                            </option>
                        {% endfor %}
                        </select>
                    </li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
        <div id="calltoaction" class="content">

            <!-- HEADLINE ANIMATION -->
            <div class="cd-intro">
                <h1 class="cd-headline slide">
                    <span>{{ langData['encancePhp'] }} </span>
                    <span class="cd-words-wrapper">
                            <b class="is-visible">{{ langData['encancePhpFaster'] }}</b>
                            <b>{{ langData['encancePhpBetter'] }}</b>
                            <b>{{ langData['encancePhpReliable'] }}</b>
                        </span><br/>
                    <!--<span>While Improving The User Experience</span>-->
                </h1>
            </div><!-- END HEADLINE ANIMATION -->

            <div class="try-btn">
                <a href="https://github.com/phalcon/zephir" class="btn btn-pink">
                    <i class="fa fa-download"></i> {{ langData['download'] }}
                    <span class="description">{{ langData['version'] }}</span>
                </a>
                <a href="#" class="btn btn-blue">
                    <i class="fa fa-play-circle-o"></i> {{ langData['aSmallTaste'] }}
                    <span class="description">{{ langData['seeWhatZCanDo'] }}</span>
                </a>
            </div>
        </div>
    </header>
    <section>
        <div id="rotated_box">
            <div class="content">
                <div class="column">
                    <div class="feacture_image"><img src="images/system.png"></div>
                    <h3>{{ langData['typeSystem'] }}</h3>
                    <p>{{ langData['typeSystemDescription'] }}</p>
                </div>
                <div class="column">
                    <div class="feacture_image"><img src="images/memory.png"></div>
                    <h3>{{ langData['memorySafety'] }}</h3>
                    <p>{{ langData['memorySafetyDescription'] }}</p>
                </div>
                <div class="column">
                    <div class="feacture_image"><img src="images/compilation.png">
                    </div>
                    <h3>{{ langData['compilationModel'] }}</h3>
                    <p>{{ langData['compilationModelDescription'] }}</p>
                </div>

                <div class="clear"></div>
            </div>
        </div>
    </section>
    <section id="about_project">
        <div class="content">
            <div class="col col-x5">
                <h2>{{ langData['everythingYouNeed'] }}</h2>
                <p>{{ langData['everythingYouNeedDescription1'] }}</p>
                <p>{{ langData['everythingYouNeedDescription2'] }}</p>
            </div>
            <div class="col col-x5">
                <h2>{{ langData['needAHand'] }}</h2>
                <a href="https://docs.zephir-lang.com/en/latest/install.html"
                   class="bubbletext text-violet">
                    {{ langData['howToInstall'] }}
                </a>
                <a href="https://docs.zephir-lang.com/en/latest/intro.html"
                   class="bubbletext text-violet">
                    {{ langData['readTutorials'] }}
                </a>
            </div>
            <div class="clear"></div>
        </div>
    </section>
    <section>
        <div id="contributors"></div>
    </section>
    <footer>
        <div class="content">
            <div class="left-content">
                <div class="col">
                    <strong>{{ langData['main'] }}</strong>
                    <a href="http://github.com/phalcon/zephir" class="download">
                        {{ langData['download'] }}
                    </a>
                    <a href="http://docs.zephir-lang.com/">
                        {{ langData['documentation'] }}
                    </a>
                    <a href="http://docs.zephir-lang.com/en/latest/install.html">
                        {{ langData['installation'] }}
                    </a>
                </div>
                <div class="col">
                    <strong>{{ langData['others'] }}</strong>
                    <a href="http://docs.zephir-lang.com/en/latest/language.html">
                        {{ langData['basicSyntax'] }}
                    </a>
                    <a href="http://docs.zephir-lang.com/en/latest/operators.html">
                        {{ langData['operators'] }}
                    </a>
                    <a href="http://docs.zephir-lang.com/en/latest/arrays.html">
                        {{ langData['arrays'] }}
                    </a>
                </div>
                <div class="col">
                    <strong>{{ langData['zephir'] }}</strong>
                    <a href="#">{{ langData['whatIsIt'] }}</a>
                    <a href="#">{{ langData['team'] }}</a>
                    <a href="#">{{ langData['contactUs'] }}</a>
                </div>
            </div>
            <div class="right-content">
                <strong>{{ langData['getInTouch'] }}</strong>
                <span>{{ langData['followUsOnSocialMedia'] }}</span>

                <div class="social-links">
                    <a href="http://twitter.com/zephirlang" class="tt-icon"></a>
                    <!--<a href="#" class="fb-icon"></a>
                    <a href="#" class="gg-icon"></a>-->
                </div>
            </div>
        </div>
        <div class="clear"></div>

        <div class="developed">
            <div class="content">
                {{ langData['websiteDesignedBy'] }}
                <a href="http://www.mctekk.com/" class="logo">
                    <img src="images/mctekk-logo.png" alt=""/>
                </a>
            </div>
        </div>
    </footer>

    <script src="../js/jquery-2.1.1.js"></script>
    <script src="../js/main.js"></script>
    <script type="text/javascript">
        $(document).ready(
            function () {
                $('.responsive_nav').click(
                    function () {
                        var nav_element;
                        var body_element;

                        nav_element  = $('nav');
                        body_element = $('body');

                        if (nav_element.hasClass('slide')) {
                            nav_element.removeClass('slide');
                            body_element.removeClass('overflow');
                        } else {
                            nav_element.addClass('slide');
                            body_element.addClass('overflow');
                        }
                    }
                );

                $('.languageSelector').on(
                    'change',
                    function () {
                        var url = $(this).val();
                        if (!url) {
                            url = 'en';
                        }

                        window.location = '{{ config.path('siteUrl') }}/' + url;
                        return false;
                    }
                );
            }
        );
    </script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="myportfolio.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>MyPortfolio</title>
    <link rel="stylesheet" href="style.css"/>
     <!-- boxicon css link -->
     <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>

       <!-- Link Swiper's CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
</head>
<body>
   <div class="overlay"></div>
    
    <header>
        <a href="#" class="logo"><span>Sh</span>rawosy</a>
        <ul class="navlist">
            <li><a href="#home" class="active">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#services">Skills</a></li>
            <li><a href="#portfolio">Portfolio</a></li>
            <li><a href="#blog">Hobbies</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
           <div class="right-header">
       <a runat="server" id="Admin_login" class="btn">Login </a>
       
   </div>
        <div class="right-header">
            <a href="#" class="btn">Let's chat <i class='bx bx-message-dots' ></i></a>
            <div class="menu-icon ">
                <div class="bar"></div>
            </div>
        </div>
    </header>
    <section class="home" id="home">
        <div class="hero-info">
            <h3>Welcome To my World</h3>
            <h1>Hi I'm Shrawosy</h1>

            <div class="text-animate">
                <h2>CS student in KUET</h2>
            </div>

            <p> I thrive on exploring cutting-edge technologies and honing my skills in software development. With a passion for problem-solving and a commitment to innovation, I seek to contribute meaningfully to the tech industry. Eager to embrace new challenges, I am currently focusing on Web Development.</p>

            <div class="btn-box">
                <a href="mailto:richard@mail.com" class="btn">Hire Me Now ! <i class='bx bx-right-arrow-alt' ></i></a>
                <a href="img/shrawosy_cv.jpg" target="_blank" class="btn d-CV">Download CV <i class='bx bx-download'></i></a>
            </div>

            <div class="social-media">
                <div class="bg-icon">
                    <a href="#"><i class='bx bxl-instagram'></i></a>
                    <span></span>
                </div>

                <div class="bg-icon">
                    <a href="https://github.com/shrawosymodak"><i class='bx bxl-github'></i></a>
                    <span></span>
                </div>

                <div class="bg-icon">
                    <a href="#"><i class='bx bxl-twitter'></i></a>
                    <span></span>
                </div>

                <div class="bg-icon">
                    <a href="https://www.facebook.com/profile.php?id=100077102045798&mibextid=JRoKGi"><i class='bx bxl-facebook'></i></a>
                    <span></span>
                </div>
            </div>
        </div>
        <div class="img-hero">
            <img src="img/mypic1.jpg" alt="">
            <div class="rotate-text">
                <div class="text">
                    <p>I'm a Student and a Learner... </p>
                </div>
                <span><i></i></span>
            </div>
        </div>
    </section>



    <section class="about" id="about">
        <div class="about-img">
            <img src="/img/mypic22.jpg" alt="" class="aboutHero"/>
           
        </div>
        <div class="about-content">
            <h2 class="heading">About Me</h2>
            <h3>3 Year's technical skills in programming languages </h3>
            <p>Hello, I'm Shrawosy, a CSE student at Khulna University of Engineering & Technology (KUET). Passionate about leveraging technology to solve real-world problems, I am constantly exploring and expanding my knowledge in the dynamic field of computer science.</p>
            <div class="about-btn">
                <button class="active">Main Skills</button>
                <button>Awards</button>
                <button>Education</button>
            </div>
            <div class="content-btn">
                <div class="content">
                    <div class="text-box">
                    <p>Android App Design </p>
                    <span>Delight the user and make it work.</span>
                </div>
                <div class="text-box">
                    <p>Web & User Interface Design - Development</p>
                    <span>Website , Web Experience , ...</span>
                </div>
                <div class="text-box">
                    <p>Problem solving</p>
                    <span>I Like to solve problem in dynamic environment.</span>
                </div>
                </div>

                <div class="content">
                    <div class="text-box">
                    <p>Web Design Award</p>
                    <span>Award for creativity and user experience.</span>
                </div>
                <div class="text-box">
                    <p>Code and Development Award</p>
                    <span>Exceptional coding skills and develoment techniques</span>
                </div>
                <div class="text-box">
                    <p>Hackathons and coding Competiotions</p>
                    <span>Participating in hackathons and coding.</span>
                </div>
                </div>


                <div class="content">
                    <div class="text-box">
                    <p>SSC</p>
                    <span>Completed SSC from Sristy Academic School,Tangail.</span>
                </div>
                <div class="text-box">
                    <p>HSC</p>
                    <span>Completed HSC from Govt. Kumudini College.</span>
                </div>
                <div class="text-box">
                    <p>Bachelor's Degree in Computer Science</p>
                    <span>I am still studing in KUET.</span>
                </div>
                </div>
            </div>
            <div class="cvContent">
                <a href="img/shrawosy_cv.jpg" target="_blank" class="btn d-CV">Download CV <i class='bx bx-download'></i></a>
            </div>
        </div>
    </section>

    <section class="services" id="services">
        <div class="main-text">
            <h2 class="heading">My Projects</h2>
            <span>Some of my works</span>
        </div>

       <div class="allServices">
      <div class="servicesItem">
          <div class="icon-services">
              <i  runat="server" id="t1"></i>
              <span></span>
          </div>
          <h3 runat="server" id="Project1_name"></h3>
          <p runat="server" id="Project1_description"> </p>
         
      </div>
           
            <div class="servicesItem">
                <div class="icon-services">
                    <i class='bx bx-code-alt' ></i>
                    <span></span>
                </div>
                <h3 runat="server" id="Project2_name"></h3>
                <p runat="server" id="Project2_description"></p>
                
            </div>

            <div class="servicesItem">
                <div class="icon-services">
                    <i class='bx bx-desktop' ></i>
                    <span></span>
                </div>
                <h3 runat="server" id="Project3_name"></h3>
                <p runat="server" id="Project3_description"></p>
                
            </div>

            <div class="servicesItem">
                <div class="icon-services">
                    <i class='bx bxs-party' ></i>
                    <span></span>
                </div>
                <h3 runat="server" id="Project4_name"></h3>
                <p runat="server" id="Project4_description"></p>
                
            </div>
        </div>

        <div class="proposal">
            <div class="text-box">
                <span>Get It Touch</span>
                <h3>Have a Project On Your Mind</h3>
                <a href="#contact" class="btn">Contact Me</a>
            </div>
            <img src="/img/support.png" class="first"/>
        </div>

        <div class="showcase">
            <img src="/shapes/ring.png" class="ring"/>
            <img src="/shapes/circle.png" class="circle"/>
            <img src="/shapes/circle.png" class="circle2"/>
            <img src="/shapes/circle.png" class="circle3"/>
            <img src="/shapes/half-ring.png" class="half-ring"/>
        </div>
    </section>

    <section class="portfolio" id="portfolio">
        <div class="main-text">
            <h2 class="heading">My Portfolio</h2>
            <span>What i have done</span>
        </div>
        <div class="fillter-buttons">
            <button class="button mixitup-control-active" data-filter="all">All Work</button>
            <button class="button" data-filter=".web">Web Development</button>
            <button class="button" data-filter=".uiux">Frontend Design</button>
            <button class="button" data-filter=".branding">Web Design</button>
        </div>

        <div class="portfolio-gallery">
            <div class="portfolio-box mix uiux">
                <div class="portfolio-content">
                    <h3>Frontend Design</h3>
                    <p>I excel in creating visually appealing and responsive frontend designs with a focus on user experience and modern web technologies.</p>
                <a href="https://www.w3schools.com/whatis/whatis_frontenddev.asp" class="readMore">Explore More</a>
                </div>
                <div class="portfolio-img">
                    <img src="/img/portfolio/1.jpg" alt=""/>
                </div>
            </div>

            <div class="portfolio-box mix web">
                <div class="portfolio-content">
                    <h3>Web Development</h3>
                    <p>Passionate about crafting visually engaging and user-centric web designs with a focus on modern aesthetics, intuitive navigation, and responsive layouts.</p>
                    <a href="https://www.programming-hero.com/" class="readMore">Explore More</a>
                </div>
                <div class="portfolio-img">
                    <img src="/img/portfolio/2.jpg" alt=""  />
                </div>
            </div>

            <div class="portfolio-box mix web">
                <div class="portfolio-content">
                    <h3>Web Development</h3>
                    <p>Crafting engaging and responsive web experiences through dynamic front-end and secure back-end development.</p>
                    <a href="https://www.programming-hero.com/" class="readMore">Explore More</a>
                </div>
                <div class="portfolio-img">
                    <img src="/img/portfolio/3.jpg" alt=""/>
                </div>
            </div>


            <div class="portfolio-box mix web">
                <div class="portfolio-content">
                    <h3>Web Development</h3>
                    <p>Crafting engaging and responsive web experiences through dynamic front-end and secure back-end development.</p>
                    <a href="https://www.programming-hero.com/" class="readMore">Explore More</a>
                </div>
                <div class="portfolio-img">
                    <img src="img/portfolio/4.jpg" alt="">
                </div>
            </div>

            <div class="portfolio-box mix uiux">
                <div class="portfolio-content">
                    <h3>Frontend  Design</h3>
                    <p>Expert in crafting intuitive and responsive frontend designs with a focus on user experience and modern web technologies.</p>
                    <a href="https://www.w3schools.com/whatis/whatis_frontenddev.asp" class="readMore">Explore More</a>
                </div>
                <div class="portfolio-img">
                    <img src="img/portfolio/5.jpg" alt="">
                </div>
            </div>

            <div class="portfolio-box mix branding">
                <div class="portfolio-content">
                    <h3>Web Design</h3>
                    <p>Crafting engaging and responsive web experiences through dynamic front-end and secure back-end development.</p>
                    <a href="https://www.programming-hero.com/" class="readMore">Explore More</a>
                </div>
                <div class="portfolio-img">
                    <img src="img/portfolio/6.jpg" alt="">
                </div>
            </div>
        </div>

    </section>




    <section class="blog" id="blog">
        <div class="main-text">
            <h2 class="heading">Hobbies</h2>
            <span>What i like to do </span>
        </div>

        <div class="blog-box swiper mySwiper">
            <div class="cards swiper-wrapper">
                <div class="card swiper-slide">
                    <div class="card-top">
                        <img src="/img/travelling2.jpg" alt=""/>
                    </div>
                    <div class="card-info">
                        <h2>Travelling</h2>
                        
                        <p class="excerpt">
                            Passionate Traveler, Exploring Cultures and Landscapes Worldwide.
                        </p>
                        <a href="https://www.homeexchange.com/blog/most-visited-tourist-attractions-in-the-world/" class="readMore">Explore More</a>
                    </div>
                </div>

                <div class="card swiper-slide">
                    <div class="card-top">
                        <img src="/img/photography.jpeg" alt=""/>
                    </div>
                    <div class="card-info">
                        <h2>photography</h2>
                        
                        <p class="excerpt">
                            Capturing Moments, Framing Emotions Through Photography.
                        </p>
                        <a href="https://expertphotography.com/photography-as-a-hobby/" class="readMore">Explore More</a>
                    </div>
                </div>

                <div class="card swiper-slide">
                    <div class="card-top">
                        <img src="/img/coding.jpg" alt=""/>
                    </div>
                    <div class="card-info">
                        <h2> Competitive Problem solving</h2>
                        
                        <p class="excerpt">
                            I enjoy solving complex problems as a hobby, finding satisfaction in unraveling challenges and fostering a continuous learning mindset.
                        </p>
                        <a href="https://en.wikipedia.org/wiki/Competitive_programming" class="readMore">Explore More</a>
                    </div>
                </div>

                <div class="card swiper-slide">
                    <div class="card-top">
                        <img src="/img/drawing.jpg" alt=""/>
                    </div>
                    <div class="card-info">
                        <h2>Drawing</h2>
                        
                        <p class="excerpt">
                            Artistic Passion, Bringing Imagination to Life through Drawing.
                        </p>
                        <a href="https://www.legit.ng/ask-legit/top/1559292-most-realistic-painting-world-lifelike-works-art/" class="readMore">Explore More</a>
                    </div>
                </div>

                <div class="card swiper-slide">
                    <div class="card-top">
                        <img src="~/img/gardening.avif" alt=""/>
                    </div>
                    <div class="card-info">
                        <h2>Gardening</h2>
                        
                        <p class="excerpt">
                            Cultivating Tranquility: Nurturing Gardens for Joyful Blooms.
                        </p>
                        <a href="https://englishstudyhub.blogspot.com/2015/06/my-favourite-hobby-gardening.html" class="readMore">Explore More</a>
                    </div>
                </div>

                <div class="card swiper-slide">
                    <div class="card-top">
                        <img src="/img/AI.jpeg" alt=""/>
                    </div>
                    <div class="card-info">
                        <h2>AI knowledge Learning</h2>
                        
                        <p class="excerpt">
                            AI Enthusiast, Constantly Exploring the Frontiers of Artificial Intelligence.
                        </p>
                        <a href="https://www.javatpoint.com/knowledge-representation-in-ai" class="readMore">Explore More</a>
                    </div>
                </div>

            </div>
        </div>

        <div class="swiper-pagination"></div>

        <div class="showcase">
            <img src="shapes/ring.png" class="ring">
            <img src="shapes/second-circle.png" class="second-circle">
            <img src="shapes/circle.png" class="circle">
            <img src="shapes/half-ring.png" class="half-ring">
        </div>

    </section>



    <section class="down-box" id="contact">
        <div class="contactSkills">
            <div class="contact-info">
                <div class="main-text">
                    <h2 class="heading">Contact Me</h2>
                    <span>get in touch with me</span>
                </div>
                <form action="https://api.web3forms.com/submit" method="POST">
                    <input type="hidden" name="access_key" value="2d67dad0-1a4a-4f64-aea6-e4a3ca7b83de">
                    <div class="input-box">
                        <input type="text" placeholder="First Name">
                        <input type="text" placeholder="Last Name">
                    </div>
                    <input type="email" placeholder="Email">
                    <input type="text" placeholder="Subject">
                    <textarea name="#" id="" cols="30" rows="10">
                    </textarea>
                    <div class="formBtn">
                        <button type="submit" class="btn">Send Message</button>
                    </div>
                </form>
            </div>
            <div class="skills">
                <div class="container">
                    <div class="skillBox">
                        <div class="main-text">
                            <h2 class="heading">My Skills</h2>
                            <span>Let Me Help you</span>
                        </div>
                        <div class="skill-wrap">
                            <div class="skill">
                                <div class="outer-circle">
                                    <div class="inner-circle">
                                        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="180px" height="180px">
                                            <defs>
                                                <linearGradient id="GradientColor">
                                                <stop offset="0%" stop-color="#e91e63" />
                                                <stop offset="100%" stop-color="#673ab7" />
                                                </linearGradient>
                                            </defs>
                                                <circle cx="85" cy="85" r="75" stroke-linecap="round" />
                                       </svg>
                                       <h2 class="counter">
                                        <span data-target="89">0</span>%
                                       </h2>
                                    </div>
                                </div>
                                <div class="sk-title">
                                    HTML
                                </div>
                            </div>

                            <div class="skill">
                                <div class="outer-circle">
                                    <div class="inner-circle">
                                        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="180px" height="180px">
                                            <defs>
                                                <linearGradient id="GradientColor">
                                                <stop offset="0%" stop-color="#e91e63" />
                                                <stop offset="100%" stop-color="#673ab7" />
                                                </linearGradient>
                                            </defs>
                                                <circle cx="85" cy="85" r="75" stroke-linecap="round" />
                                       </svg>
                                       <h2 class="counter">
                                        <span data-target="70">0</span>%
                                       </h2>
                                    </div>
                                </div>
                                <div class="sk-title">
                                    CSS
                                </div>
                            </div>


                            <div class="skill">
                                <div class="outer-circle">
                                    <div class="inner-circle">
                                        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="180px" height="180px">
                                            <defs>
                                                <linearGradient id="GradientColor">
                                                <stop offset="0%" stop-color="#e91e63" />
                                                <stop offset="100%" stop-color="#673ab7" />
                                                </linearGradient>
                                            </defs>
                                                <circle cx="85" cy="85" r="75" stroke-linecap="round" />
                                       </svg>
                                       <h2 class="counter">
                                        <span data-target="56">0</span>%
                                       </h2>
                                    </div>
                                </div>
                                <div class="sk-title">
                                    JavaScript
                                </div>
                            </div>


                            <div class="skill">
                                <div class="outer-circle">
                                    <div class="inner-circle">
                                        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="180px" height="180px">
                                            <defs>
                                                <linearGradient id="GradientColor">
                                                <stop offset="0%" stop-color="#e91e63" />
                                                <stop offset="100%" stop-color="#673ab7" />
                                                </linearGradient>
                                            </defs>
                                                <circle cx="85" cy="85" r="75" stroke-linecap="round" />
                                       </svg>
                                       <h2 class="counter">
                                        <span data-target="60">0</span>%
                                       </h2>
                                    </div>
                                </div>
                                <div class="sk-title">
                                    Programming Skills
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <p>Copyright © 2024 by <span>Shrawosy</span> || All Right Reservd.</p>
    </footer>


    <div id="progress">
        <span id="progress-value">
            <i class='bx bxs-chevrons-up' ></i>
        </span>
    </div>


     <!-- scroll reveal  -->
    <script src="https://unpkg.com/scrollreveal"></script>
    <!-- Swiper JS -->
     <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
    <!-- mixitup cdn js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mixitup/3.3.1/mixitup.min.js"></script>
    <script src="script.js"></script>
    <script defer src="https://downloads-global.3cx.com/downloads/livechatandtalk/v1/callus.js" id="tcx-callus-js" charset="utf-8"></script>
    <script src="https://web3forms.com/client/script.js" async defer></script>

</body>
</html>

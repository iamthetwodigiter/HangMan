const Map<String, String> hangmanWords = {
  "aberration": "A departure from what is normal or expected.",
  "accolade": "An award or privilege granted as a special honor.",
  "acumen": "The ability to make good judgments and quick decisions.",
  "affable": "Friendly, good-natured, or easy to talk to.",
  "alacrity": "Brisk and cheerful readiness.",
  "ameliorate": "Make something bad or unsatisfactory better.",
  "anomaly": "Something that deviates from what is standard or expected.",
  "antithesis":
      "A person or thing that is the direct opposite of someone or something else.",
  "aplomb":
      "Self-confidence or assurance, especially in a demanding situation.",
  "apprehensive":
      "Anxious or fearful that something bad or unpleasant will happen.",
  "arbitrary": "Based on random choice or personal whim.",
  "arduous": "Involving or requiring strenuous effort; difficult and tiring.",
  "ascertain": "Find something out for certain; make sure of.",
  "assiduous": "Showing great care and perseverance.",
  "astute":
      "Having or showing an ability to accurately assess situations or people.",
  "audacious": "Showing a willingness to take surprisingly bold risks.",
  "auspicious": "Conducive to success; favorable.",
  "avarice": "Extreme greed for wealth or material gain.",
  "banal": "So lacking in originality as to be obvious and boring.",
  "benevolent": "Well-meaning and kindly.",
  "benign": "Gentle and kind.",
  "boisterous": "Noisy, energetic, and cheerful.",
  "bombastic": "High-sounding but with little meaning; inflated.",
  "cajole":
      "Persuade someone to do something by sustained coaxing or flattery.",
  "callous": "Showing or having an insensitive and cruel disregard for others.",
  "camaraderie":
      "Mutual trust and friendship among people who spend a lot of time together.",
  "candor": "The quality of being open and honest in expression.",
  "capricious":
      "Given to sudden and unaccountable changes of mood or behavior.",
  "catharsis": "The process of releasing strong or repressed emotions.",
  "caveat":
      "A warning or proviso of specific stipulations, conditions, or limitations.",
  "chicanery":
      "The use of trickery to achieve a political, financial, or legal purpose.",
  "circumspect": "Wary and unwilling to take risks.",
  "clandestine": "Kept secret or done secretively, especially because illicit.",
  "coerce":
      "Persuade an unwilling person to do something by using force or threats.",
  "cognizant": "Having knowledge or being aware of.",
  "complacent":
      "Showing smug or uncritical satisfaction with oneself or one's achievements.",
  "conflagration":
      "An extensive fire that destroys a great deal of land or property.",
  "conundrum": "A confusing and difficult problem or question.",
  "copious": "Abundant in supply or quantity.",
  "credulous": "Having or showing too great a readiness to believe things.",
  "cursory": "Hasty and therefore not thorough or detailed.",
  "daunting": "Seeming difficult to deal with in anticipation; intimidating.",
  "dearth": "A scarcity or lack of something.",
  "debacle": "A sudden and ignominious failure; a fiasco.",
  "debilitate": "Make someone weak and infirm.",
  "decorum": "Behavior in keeping with good taste and propriety.",
  "deleterious": "Causing harm or damage.",
  "delineate": "Describe or portray something precisely.",
  "demure": "Reserved, modest, and shy.",
  "depict": "Show or represent by a drawing, painting, or other art form.",
  "deprecate": "Express disapproval of.",
  "deride": "Express contempt for; ridicule.",
  "despondent": "In low spirits from loss of hope or courage.",
  "detrimental": "Tending to cause harm.",
  "dexterous": "Demonstrating neat skill, especially with the hands.",
  "didactic":
      "Intended to teach, particularly in having moral instruction as an ulterior motive.",
  "diligent": "Having or showing care and conscientiousness in one's work.",
  "disparate": "Essentially different in kind; not allowing comparison.",
  "dogmatic": "Inclined to lay down principles as incontrovertibly true.",
  "ebullient": "Cheerful and full of energy.",
  "eclectic":
      "Deriving ideas, style, or taste from a broad and diverse range of sources.",
  "elucidate": "Make something clear; explain.",
  "emulate": "Match or surpass, typically by imitation.",
  "enervate": "Cause someone to feel drained of energy or vitality.",
  "engender": "Cause or give rise to a feeling, situation, or condition.",
  "enigma": "A person or thing that is mysterious or difficult to understand.",
  "ephemeral": "Lasting for a very short time.",
  "equanimity": "Mental calmness, composure, and evenness of temper.",
  "equivocate":
      "Use ambiguous language so as to conceal the truth or avoid committing oneself.",
  "erudite": "Having or showing great knowledge or learning.",
  "eschew": "Deliberately avoid using; abstain from.",
  "esoteric":
      "Intended for or likely to be understood by only a small number of people.",
  "exacerbate": "Make a problem, bad situation, or negative feeling worse.",
  "exculpate": "Show or declare that someone is not guilty of wrongdoing.",
  "exonerate": "Absolve someone from blame for a fault or wrongdoing.",
  "expedite":
      "Make an action or process happen sooner or be accomplished more quickly.",
  "extol": "Praise enthusiastically.",
  "facetious": "Treating serious issues with deliberately inappropriate humor.",
  "fallacy": "A mistaken belief, especially one based on unsound argument.",
  "fastidious": "Very attentive to and concerned about accuracy and detail.",
  "fervent": "Having or displaying a passionate intensity.",
  "flagrant": "Conspicuously or obviously offensive.",
  "flummox": "Perplex someone greatly; bewilder.",
  "fortuitous": "Happening by accident or chance rather than design.",
  "gregarious": "Fond of company; sociable.",
  "hackneyed":
      "Lacking significance through having been overused; unoriginal and trite.",
  "hapless": "Unfortunate.",
  "harbinger":
      "A person or thing that announces or signals the approach of another.",
  "hegemony":
      "Leadership or dominance, especially by one country or social group.",
  "heinous": "Utterly odious or wicked.",
  "heretic": "A person believing in or practicing religious heresy.",
  "histrionic": "Overly theatrical or melodramatic in character or style.",
  "hubris": "Excessive pride or self-confidence.",
  "hypocrisy":
      "The practice of claiming to have moral standards or beliefs to which one's own behavior does not conform.",
  "iconoclast":
      "A person who attacks or criticizes cherished beliefs or institutions.",
  "idiosyncratic": "Relating to idiosyncrasy; peculiar or individual.",
  "imminent": "About to happen.",
  "immutable": "Unchanging over time or unable to be changed.",
  "impervious": "Not allowing fluid to pass through.",
  "impetuous": "Acting or done quickly and without thought or care.",
  "incongruous":
      "Not in harmony or keeping with the surroundings or other aspects of something.",
  "indefatigable": "Persisting tirelessly.",
  "indolent": "Wanting to avoid activity or exertion; lazy.",
  "ineffable": "Too great or extreme to be expressed or described in words.",
  "inimical": "Tending to obstruct or harm.",
  "innate": "Inborn; natural.",
  "insipid": "Lacking flavor.",
  "intransigent":
      "Unwilling or refusing to change one's views or to agree about something.",
  "intrepid": "Fearless; adventurous.",
  "inveterate":
      "Having a particular habit, activity, or interest that is long-established and unlikely to change.",
  "irreverent":
      "Showing a lack of respect for people or things that are generally taken seriously.",
  "jubilant": "Feeling or expressing great happiness and triumph.",
  "juxtaposition":
      "The fact of two things being seen or placed close together with contrasting effect.",
  "laconic": "Using very few words.",
  "laudatory": "Expressing praise and commendation.",
  "lethargic": "Affected by lethargy; sluggish and apathetic.",
  "loquacious": "Tending to talk a great deal; talkative.",
  "lucid": "Expressed clearly; easy to understand.",
  "magnanimous":
      "Generous or forgiving, especially toward a rival or less powerful person.",
  "maverick": "An unorthodox or independent-minded person.",
  "melancholy":
      "A feeling of pensive sadness, typically with no obvious cause.",
  "mendacious": "Not telling the truth; lying.",
  "mercurial": "Subject to sudden or unpredictable changes of mood or mind.",
  "mitigate": "Make less severe, serious, or painful.",
  "mollify": "Appease the anger or anxiety of someone.",
  "nefarious": "Wicked or criminal.",
  "neophyte": "A person who is new to a subject or activity.",
  "nocturnal": "Done, occurring, or active at night.",
  "obdurate":
      "Stubbornly refusing to change one's opinion or course of action.",
  "obfuscate": "Render obscure, unclear, or unintelligible.",
  "obstinate":
      "Stubbornly refusing to change one's opinion or chosen course of action.",
  "omnipotent": "Having unlimited power; able to do anything.",
  "ostentatious": "Characterized by vulgar or pretentious display.",
  "paradigm": "A typical example or pattern of something.",
  "paradox": "A statement that contradicts itself but might be true.",
  "paragon":
      "A person or thing regarded as a perfect example of a particular quality.",
  "perfunctory": "Carried out with a minimum of effort or reflection.",
  "perspicacious": "Having a ready insight into and understanding of things.",
  "placate": "Make someone less angry or hostile.",
  "pragmatic": "Dealing with things sensibly and realistically.",
  "precarious":
      "Not securely held or in position; dangerously likely to fall or collapse.",
  "precocious":
      "Having developed certain abilities or proclivities at an earlier age than usual.",
  "predilection": "A preference or special liking for something.",
  "proclivity": "A tendency to choose or do something regularly.",
  "prodigal": "Spending money or resources freely and recklessly.",
  "prosaic": "Having the style or diction of prose; lacking poetic beauty.",
  "quandary":
      "A state of perplexity or uncertainty over what to do in a difficult situation.",
  "quintessential":
      "Representing the most perfect or typical example of a quality or class.",
  "rancor": "Bitterness or resentfulness, especially when long-standing.",
  "recalcitrant":
      "Having an obstinately uncooperative attitude toward authority or discipline.",
  "recondite": "Little known; abstruse.",
  "redolent": "Strongly reminiscent or suggestive of something.",
  "replete": "Filled or well-supplied with something.",
  "repudiate": "Refuse to accept or be associated with.",
  "rescind": "Revoke, cancel, or repeal a law, order, or agreement.",
  "reticent": "Not revealing one's thoughts or feelings readily.",
  "reverence": "Deep respect for someone or something.",
  "sagacious": "Having or showing keen mental discernment and good judgment.",
  "salient": "Most noticeable or important.",
  "sanctimonious": "Making a show of being morally superior to other people.",
  "sanguine":
      "Optimistic or positive, especially in an apparently bad or difficult situation.",
  "scintillating": "Sparkling or shining brightly.",
  "scrupulous": "Diligent, thorough, and extremely attentive to details.",
  "serendipity":
      "The occurrence of events by chance in a happy or beneficial way.",
  "solicitous": "Characterized by or showing interest or concern.",
  "spurious": "Not being what it purports to be; false or fake.",
  "staid": "Sedate, respectable, and unadventurous.",
  "stoic":
      "A person who can endure pain or hardship without showing their feelings or complaining.",
  "substantiate": "Provide evidence to support or prove the truth of.",
  "superfluous": "Unnecessary, especially through being more than enough.",
  "surreptitious":
      "Kept secret, especially because it would not be approved of.",
  "taciturn": "Reserved or uncommunicative in speech.",
  "tantamount": "Equivalent in seriousness to; virtually the same as.",
  "temerity": "Excessive confidence or boldness.",
  "tenuous": "Very weak or slight.",
  "timorous": "Showing or suffering from nervousness or a lack of confidence.",
  "torrid": "Very hot and dry.",
  "tractable": "Easy to control or influence.",
  "transient": "Lasting only for a short time.",
  "ubiquitous": "Present, appearing, or found everywhere.",
  "usurp": "Take a position of power or importance illegally or by force.",
  "vacillate": "Waver between different opinions or actions.",
  "venerate": "Regard with great respect.",
  "veracity": "Conformity to facts; accuracy.",
  "verbose": "Using or expressed in more words than are needed.",
  "vex": "Make someone feel annoyed, frustrated, or worried.",
  "vicarious":
      "Experienced in the imagination through the feelings or actions of another person.",
  "vicissitude":
      "A change of circumstances or fortune, typically one that is unwelcome or unpleasant.",
  "vilify": "Speak or write about in an abusively disparaging manner.",
  "vindicate": "Clear someone of blame or suspicion.",
  "virulent": "Extremely severe or harmful in its effects.",
  "vociferous": "Vehement or clamorous.",
  "volition": "The faculty or power of using one's will.",
  "voracious": "Wanting or devouring great quantities of food.",
  "wanton": "Deliberate and unprovoked.",
  "wary": "Feeling or showing caution about possible dangers or problems.",
  "whimsical": "Playfully quaint or fanciful.",
  "wistful": "Having or showing a feeling of vague or regretful longing.",
  "zealous": "Having or showing zeal.",
  "zenith": "The time at which something is most powerful or successful.",
  "zephyr": "A soft gentle breeze.",
  "abandon": "To leave something behind.",
  "abate": "To reduce in amount or intensity.",
  "abduct": "To take someone away by force.",
  "abide": "To accept or follow a rule or decision.",
  "abject": "Extremely bad or severe.",
  "ablaze": "Burning brightly.",
  "abroad": "In or to a foreign country.",
  "abrupt": "Sudden and unexpected.",
  "absent": "Not present in a place.",
  "accent": "A distinctive way of pronouncing a language.",
  "accept": "To receive or agree to something.",
  "access": "The means to approach or enter.",
  "accuse": "To charge someone with an offense.",
  "achieve": "To successfully reach a goal.",
  "acquire": "To gain possession of something.",
  "advice": "Guidance or recommendations offered.",
  "afraid": "Feeling fear or anxiety.",
  "agency": "A business or organization.",
  "amazing": "Causing great surprise or wonder.",
  "anxious": "Experiencing worry or unease.",
  "arouse": "To stimulate or awaken.",
  "arrive": "To reach a destination.",
  "aspect": "A particular part or feature of something.",
  "assess": "To evaluate or estimate the value of.",
  "athlete": "A person trained in sports.",
  "attract": "To draw attention or interest.",
  "bargain": "An agreement or deal.",
  "beauty": "A quality that pleases the senses.",
  "benefit": "An advantage or profit gained.",
  "bizarre": "Very strange or unusual.",
  "bless": "To confer or invoke divine favor.",
  "bottle": "A container for liquids.",
  "bravely": "With courage or determination.",
  "breeze": "A gentle wind.",
  "bright": "Radiating or reflecting light.",
  "burden": "A heavy load or responsibility.",
  "cabin": "A small shelter or house.",
  "candid": "Truthful and straightforward.",
  "capture": "To take control or possession of.",
  "caution": "Care taken to avoid danger.",
  "celebrate": "To acknowledge a significant event.",
  "charm": "A pleasing quality or trait.",
  "choice": "An act of selecting among options.",
  "climate": "The weather conditions in an area.",
  "combat": "Fighting between armed forces.",
  "comfort": "A state of physical ease and well-being.",
  "complex": "Consisting of many different parts.",
  "connect": "To join or link together.",
  "create": "To bring something into existence.",
  "damage": "Harm that impairs or destroys.",
  "debate": "A discussion involving opposing arguments.",
  "delight": "Great pleasure or joy.",
  "demand": "To ask for urgently.",
  "deserve": "To be worthy of something.",
  "devote": "To give time or attention to something.",
  "dizzy": "Feeling lightheaded or unsteady.",
  "dreamy": "Having a magical or fantastical quality.",
  "eager": "Keen or enthusiastic.",
  "edit": "To make changes or corrections.",
  "enjoy": "To take pleasure in something.",
  "escape": "To break free from confinement.",
  "evolve": "To develop gradually.",
  "excite": "To cause strong feelings or enthusiasm.",
  "famous": "Well-known and celebrated.",
  "flavor": "A distinctive taste or smell.",
  "freedom": "The state of being free.",
  "funeral": "A ceremony for honoring the deceased.",
  "gadget": "A small mechanical device or tool.",
  "genuine": "Authentic and real.",
  "glance": "A quick or brief look.",
  "gorgeous": "Beautiful and attractive.",
  "happen": "To occur or take place.",
  "harbor": "A sheltered place for ships.",
  "honest": "Truthful and sincere.",
  "impact": "A strong effect or influence.",
  "income": "Money received regularly.",
  "inspire": "To fill someone with the urge to do something.",
  "journey": "An act of traveling from one place to another.",
  "joyful": "Feeling or expressing great happiness.",
  "kindly": "In a kind manner.",
  "laugh": "To make sounds of amusement.",
  "loyal": "Faithful and devoted.",
  "manage": "To control or be responsible for something.",
  "message": "A communication sent to someone.",
  "miracle": "An extraordinary event that is unexplainable.",
  "mysterious": "Difficult to understand or explain.",
  "natural": "Existing in or caused by nature.",
  "noble": "Having high moral qualities.",
  "offer": "To present or propose something.",
  "option": "A choice or alternative.",
  "origin": "The point where something begins.",
  "parent": "A father or mother.",
  "peaceful": "Free from disturbance.",
  "permit": "To allow something to happen.",
  "puzzle": "A game or problem requiring thought.",
  "rarely": "Occurring infrequently.",
  "remind": "To cause someone to remember.",
  "restore": "To bring something back to its original state.",
  "reward": "Something given in recognition of service.",
  "safety": "The condition of being protected from harm.",
  "simple": "Easy to understand or do.",
  "smooth": "Having an even surface.",
  "social": "Relating to society or its organization.",
  "strive": "To make great efforts to achieve something.",
  "succeed": "To achieve a desired aim or result.",
  "sudden": "Happening unexpectedly.",
  "travel": "To move from one place to another.",
  "unfold": "To open or spread out.",
  "unique": "Being the only one of its kind.",
  "vacation": "A period of leisure away from work.",
  "venture": "A risky or daring journey or undertaking.",
  "vivid": "Intense in color or clarity.",
  "whistle":
      "A high-pitched sound made by forcing air through a small opening.",
  "worry": "To feel anxious or concerned.",
  "zodiac": "A belt of the heavens divided into twelve signs.",
  "balance": "A state of equilibrium.",
  "calculate": "To determine by mathematical processes.",
  "champion": "A winner or someone who fights for a cause.",
  "dedicate": "To devote time or effort to something.",
  "eliminate": "To remove or get rid of.",
  "frequent": "Occurring or done on many occasions.",
  "generate": "To produce or create.",
  "hospital": "A place where sick people are treated.",
  "inquire": "To ask for information.",
  "jungle": "A dense, tropical forest.",
  "knowledge": "Information and skills acquired through experience.",
  "legend": "A traditional story or a person of great importance.",
  "magnify": "To make something appear larger.",
  "neither": "Not one nor the other.",
  "outcome": "The result of an action or process.",
  "patient": "A person receiving medical treatment.",
  "quality": "A distinctive attribute or characteristic.",
  "respect": "Admiration or regard.",
  "surface": "The outermost layer of something.",
  "trouble": "Difficulty or problems.",
  "ultimate": "The final or last one.",
  "welcome": "To greet someone with pleasure.",
  "absolve": "To clear someone of guilt or blame.",
  "courage": "The ability to confront fear or adversity.",
  "dialogue": "A conversation between two or more people.",
  "enthusiastic": "Showing intense enjoyment or interest.",
  "fashion": "A popular trend or style.",
  "harmony": "The combination of elements to create a pleasing effect.",
  "horizon": "The line where the earth and sky appear to meet.",
  "justice": "Fairness and the upholding of rights.",
  "leisure": "Free time for relaxation and enjoyment.",
  "passion": "A strong feeling of enthusiasm or excitement.",
  "quaint": "Attractively unusual or old-fashioned.",
  "radical": "Relating to or affecting the fundamental nature of something.",
  "serene": "Calm and peaceful.",
  "trendy": "Fashionable or up-to-date.",
  "youth": "The period between childhood and adult age.",
  "ambition": "A strong desire to achieve something.",
  "brilliant": "Shining brightly or exceptionally clever.",
  "emerge": "To come into view or become apparent.",
  "grateful": "Feeling or showing thanks.",
  "honesty": "The quality of being truthful.",
  "knack": "An acquired or natural skill.",
  "mystic": "Relating to mysteries or the supernatural.",
  "nature": "The physical world and everything in it.",
  "optimistic": "Hopeful and confident about the future.",
  "pristine": "In its original condition.",
  "radiant": "Sending out light or heat.",
  "spectacular": "Impressively large or beautiful.",
  "thrill": "A sudden feeling of excitement.",
  "unveil": "To reveal or make known.",
  "wonder": "A feeling of amazement and admiration."
};

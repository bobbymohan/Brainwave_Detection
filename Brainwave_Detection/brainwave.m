function [y1] = brainwave(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 14-May-2021 01:05:28.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx17 matrix, input #1
% and returns:
%   y = Qx1 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [2.238820161;2.820927995;2.83629913;-3.743027199;-0.830349318;-1.400113054;-0.386430194;-2.366768801;-0.830477788;-1.400121227;-0.386426028;-3.009847812;-0.830460639;-1.400120992;-0.386432441;0.005011801;-0.43682052];
x1_step1.gain = [0.00751639093812566;0.00598660107494513;0.00596489313466102;0.378929460685411;0.682322512129064;1.01571638015411;1.77402588963533;0.884649331604436;0.67079224333119;1.09200346262941;1.7730850850854;0.688772736971352;0.599583174753452;1.09056267347758;1.77309240866931;1.46285621745518e-05;2.68892357185007];
x1_step1.ymin = -1;

% Layer 1
b1 = [-1.918501523786780405;1.5532101878109045856;1.4759808356765398152;1.4481005471844470289;-1.5437689552520845737;-1.098654542314329241;0.7583711110406503586;1.4005622246737667869;-0.29418914714255223197;0.91993206260247584183;-0.78995306825476585555;-0.07560385461949613306;0.3297315424436345066;0.67678868473859676858;-0.39528098065304456687;0.55174912357229566329;0.29956644011906086167;0.8905088799699976132;-0.47636283781926730407;-0.3846507280462528322;-0.19133973834114756385;0.17144365343463199847;-0.50223373662934933659;-0.67350335892553969686;0.85477337961991550763;0.91684158824744987903;-1.1387338579050558796;-1.5677825650125949419;-1.0287008989628352307;-1.8308422417897065593;1.2020894227448577496;1.5869143759598001164;-1.7309001158872057147;2.1592510908444029205];
IW1_1 = [0.60464052160742276509 -0.36268033106133695798 -0.14904110423257710405 0.083759668077927298957 0.015078959574687376965 0.51968873483963728965 -0.21959072815232813514 0.39835203161537902083 0.10016004678340546807 0.249278480494351945 -0.28506392477957825937 -0.51008149291785631618 -0.2979958051079933945 0.33456288510538534364 0.73354423647620614624 -0.48627476234277067224 -0.1005254397064669486;-0.15755257517349566254 -0.070889222295429599185 -0.71348521281291177321 0.12585507188831895897 -0.035090061651676614229 0.71790722689286146085 0.4850683385807139647 -0.22826224907388181773 -0.025150647413738340397 0.035063237198023657071 0.44714097036293604104 -0.87896352033044844454 0.50833118033995372542 -0.16924057666024353019 -0.57156616834011353401 -0.31728847553026839901 0.53644786246212339265;-0.21317150615131899571 -0.61372953680101283158 0.6129974557742263741 0.17889618770895598932 0.36313092863929280485 0.5886298637196003547 0.19625183462064535456 -0.68041197045550461109 -0.12932256208014170085 0.45727063076856594437 -0.5198914696777329203 0.41835542381599732931 0.22694276101318297534 -0.4300783851000475333 -0.20195490450545924843 -0.16385908075179356214 -0.55150024687439846982;-0.69666087091869577375 -0.38236244341020009241 -0.58521691941354980759 -0.28152536341776257522 -0.25911427496379640933 -0.269835039225528317 -0.5316704748180638429 0.53913638053027290731 -0.49712246893389772096 -0.47204203965231672502 0.13812644935515971945 0.39837522017003390573 0.32018575967410023431 -0.42850578892690921462 -0.37646973856039867012 0.4473818101282978632 -0.70944620537076541478;0.76929714859814024575 -1.2556579570350312469 -0.29477014383387412089 -0.52143518006438149825 0.64116711147950411487 0.47852570629012247672 0.00075188676228383859428 -0.34264104977034093302 0.88690123270531218136 -0.085345620863170518211 -0.059264533396814970956 -0.03473377307521130497 0.78104633648681964786 0.33769336944475347728 -1.048027417461942834 0.029259884078917663963 0.5130524689772908431;0.17960135967867899009 -0.84045646235852400352 -0.30521590009632987295 0.20576617240635217132 -0.13012516217134503793 -0.27845989013459487849 0.24980704074679849214 -0.92433339920675727797 -0.59463199408061773177 -0.017346386201787789699 0.34550238315028342084 -0.32713374679553175461 -0.65681775618261784011 0.17953327291484583172 -0.19139973992745290543 0.067808547589862433469 -0.013070316333234299755;0.23062383312071910169 -0.70078586622546168439 0.21182335879805835877 -0.075977051750518789786 -0.54525742054502401857 0.73475193277586703378 0.43496883359802973601 0.96251768503400003674 0.65144859655259912401 0.40104386459992991121 0.02776277344672441888 0.91481865300217868331 0.38670132776654086992 -0.53886066699041457184 -0.44200690409131010439 -0.18346872094955310462 0.15654450959059004744;0.30434900482308224756 0.49543790466781811865 0.95227984921284614117 0.27791224974627509736 0.22585625717574545068 0.20927585131699286136 -0.035010755961371910205 0.25863909846417421079 0.38171600591357546239 0.29123774806454716391 0.77531035847332552269 -0.22663224105692561516 0.066029658039149410897 0.36153383227823976398 0.95463310255415045891 0.39992928226581425655 -0.37364132480128015024;0.48630614160741314489 0.24032230221589800934 0.78496605169727518003 -0.09238917029093796085 -0.36534145056464262247 -0.63452669570149633493 -0.49264707331929580292 1.2532219884824031819 -0.68406931187537112216 -0.71449915891142423696 0.23226556623578314964 0.17191945256354665417 -0.55914770224728793657 0.31082518339229686655 0.28421014226130936198 -0.46838176923201874091 -0.60346093631629760257;-0.55245073446181336418 -0.091399649745787139854 0.0099153041693738376561 0.45325208485212659104 0.48789395301949950445 0.3599884928672414941 -0.72808442336263312633 -0.12157821501477047987 -0.50415961454062352409 -0.066970575233223125777 0.15699658977680944205 0.57105869647101414888 -0.25239779223176600498 -0.74815078236501386666 0.28462964186740380423 0.40679896277212151956 0.064892586259353401967;1.1207755757441426603 -0.5797863037023368582 0.2478044935819365413 0.40709179356880287326 -0.50213029948060261543 -0.25908116863869323776 0.11931774724339701266 -0.14534595549054205033 0.17800211422284833995 0.59200862698061418321 -0.44806601980486554515 -0.32287586927396971781 0.23490345350765926002 -0.32332627460799995278 0.039065299399767557109 0.44696544175255775722 0.63929571747216940025;-0.17301796525350374156 -0.53088577111377721618 -0.78341842620467561087 -0.35080638730616292564 0.79985560674873601439 -0.059307490701607436245 0.46452253648648123008 -0.44691299472831763628 0.84223277136821017574 -0.40084974931987682467 -0.32745087824804347543 -0.38092715685252476199 -0.23206618384251123666 -0.61909344471987270975 -0.27061052993990553084 -0.68816396675383606496 -0.56423269455402147443;-0.44445002885590234598 -0.34779835024945360278 0.30010930228165150213 -0.57170551228302923796 -0.89763041720174019389 0.47574547822093488092 0.52760627499729040313 0.25967900078666011909 0.038105711356048121985 -0.10131022877131330706 -0.014963814742913536873 0.34816752254641192277 -0.27370143558087128843 -0.41514455895561036547 -0.33275226738636926038 -0.054702220525439222698 0.30656346855088922876;-0.073465839983080732933 -0.52099307225021573853 0.22980846990840442245 0.70965939650410281292 0.41370139765171887181 0.57742967895383190413 -0.51159784137286257177 -0.35262412435445772418 -0.37242703612163874372 -0.21609047353537125247 -0.050128626097900287617 0.34725618425228310659 -0.25528542330117653947 -0.20237288899090721817 -0.15089302245453115048 -0.62143768994251002979 0.39601147058785418631;0.072122827260247365788 -0.4442609216689967222 -0.88663221052031526703 0.040391079918631687951 0.46606680379480858178 0.33675902352546149832 -0.31889515661325601448 -1.1708051570697848298 0.052379600004036956651 -0.1400963258220546126 -0.72525203873867050142 -0.57414283575999924825 0.084673692455359605979 -0.39193518213962424968 -0.44384850482899590451 0.011799324369636854035 -0.54950120349043929391;-0.29683314777853153643 0.27023634476935454174 -0.49480003111308906716 0.070306593905384254239 -0.37798346401347093781 -0.27970607534606811706 -0.070926694570885198687 -1.1873253791429241311 -0.78074975516743716497 0.64767182019351376976 -1.0085402326662229466 -0.74220735453707975537 -1.0821163335583456888 0.20828071809975010065 -0.7927353678307524909 -0.15068499199366297558 0.050828746103651914479;0.70133467677887328939 -0.10738161350792796433 0.89442739926884762269 0.10005195132196439967 0.18294357882461484421 -0.067524137816648441279 0.092967215505357178595 -0.11535859765192611748 0.69790386198776610538 -0.38969202926102086693 0.45195600312413347632 -0.9244764942914457384 0.01063636090374038036 0.16730991447285487039 1.0171461315617293941 0.01392205045825490109 0.35251941406782555388;0.27793989487451231657 -0.29621343710942205085 0.32455393125164344603 0.52558207755625685476 -0.62086179517464568089 0.49048715172487727942 -0.67223953778152478744 -0.19833764927736016737 0.083553623366924734128 0.64622867686250617947 -0.8173040956021357939 -0.40883272596911512942 -0.15399384287596595833 0.41525540369796082318 -0.18472828560672618914 -0.15651081247063813873 -0.59216955193918652256;-0.68813635904170178392 -0.44469532939879902189 0.31836445044361760814 -0.32572427158168354433 0.50455097197824327893 -0.74542018793099951157 0.0016551334950479085206 0.54256281321383537097 -0.29773680202835728359 -0.4583939837298195985 -0.65069553661613255269 0.45926131044085760635 -0.17297192741405134631 0.59319173553168691448 0.64396233858897988789 0.33371186525539481282 0.15394466062062178713;0.58752308217589344075 -0.4781401006505152651 -0.19034754855416211039 0.13025158508486842091 0.18407013035388916644 -0.3265721811280756226 -0.0010444213697983293493 1.2345790474696698436 0.78681382251831544217 -0.13502898821800726759 0.68547255503543114141 0.9733418535556406237 0.77383518356705649488 0.37517203759301415156 0.6980457669320370151 0.90274589652105630133 -0.28564235627620915281;-1.1748131774414818373 0.21581614315292618755 -0.47308791114638232278 -0.069210322427614032192 0.72351379206219024187 0.52613432356961109537 0.50004238832096226108 -0.97393631917177092561 0.81370814762101095763 0.39529074805542718796 0.51843155349309344437 -0.57333061697797471634 -0.38730965609135736827 -0.40630040224487368183 -0.12163906296079149416 0.13088635195734624195 -0.1228714090977427037;1.473573612742962391 0.2780102847968992652 0.49077004929331746741 0.87556836971477181031 -1.0599382412497897477 -0.028193085336756577158 -0.25078531484601257473 0.53634324451277770596 -0.10393426985146704544 0.12759326701050049957 0.15939887687296439012 -0.37986149290713694393 0.35165835322154087583 0.13211275788599866066 -0.68896608174323936691 0.029871194984010550344 0.21466813328950429263;0.14731485880866929117 0.74766160208660292774 0.8431012231896981568 -0.35104236850278025539 0.46923289750166369272 -0.048428744626891458147 -0.38254131286663900502 -0.54196548183419746003 0.364189534125882175 -0.43586463233664041184 0.16299921550552362581 0.012694057336363324257 -0.43464842384066748604 -0.42528102154593944162 -0.58546810008517946589 0.63471037115996831179 0.10223282159924251822;0.14395321149432310781 0.71709070174723099633 0.028174119229160826672 0.10170812761715071482 0.78394063981387029916 -0.222989796643078525 0.2755769964742275091 -0.27245300036221947737 0.62926677145414422476 -0.12332207892237780078 0.33489817724148346345 -0.31725773222392289474 0.13137143768312731229 0.24528758010154616542 -0.31724799648383694706 0.76134209800351815289 0.55041420215133785021;0.64936583240491785318 0.14279508950923419652 -0.32022172649693070312 0.08498427363815318214 -0.20246021028328783919 -0.49112130956808730531 0.23743203383875646773 -0.10228193360997148154 -0.56512243815877549746 0.67710772612274350291 0.66576390353057190996 0.38753481275524059857 -0.1361727147105319391 -0.39169850011653922772 -0.40754561408190503879 -0.28728925578825592613 -0.43678178143203971739;0.096583194320359902485 -0.35248031599573736994 -0.44410824773205820337 -0.16784225087132792487 -0.22056892738170541524 0.85322085594496677174 0.66933809052059367595 -0.64437655615228395245 0.042726205001054833044 0.15772700621840893276 -0.41650502304048842017 -0.83613527923130681607 -0.14440148283270698437 0.23682488530667095139 0.17257835136896507167 -0.30724920391364618499 0.51679172008215179535;-0.77371104011552382929 0.3966903923803170029 0.33101320003367351585 0.056373479010104740605 0.52629480494622959963 0.0085657878889435472985 -0.38714959280337779557 0.22724143820553677209 0.68339082158392205901 -0.7729844577526168159 0.043165801192536226716 -0.23800615793299670364 0.46681366763426163091 -0.90739744811308353789 -0.93417888286140904341 -0.35278108284673476147 -0.42979773022708778196;-0.43266978105679942956 0.74753671017371869922 0.23131499321680162873 -0.25476585577397176108 -0.35297639700210331482 -0.75066585600504287523 0.30676991892795335559 -0.041426853381560636846 -0.062113884570346111769 -0.68192026821098639111 -0.71597659671714553031 -0.0091753254051243991057 0.00066319701216356651344 0.20894719569740508036 -0.53149041109842432018 -0.99216474504003071555 0.23715358592751248357;-0.50857449065773741026 -0.66103353206334092285 0.48691503748605291513 -0.378630230913873711 -0.6957987920485124711 0.32529109170612779955 -0.60052026175667050367 0.81223173687121508202 0.41551841499333574959 0.29438714675813471011 0.035019468141205892242 -0.19110091322612812736 -0.17013005832748268054 0.40986393680933863592 -0.090245539601955165887 -0.79034632861812181837 -0.14169968882730921145;-0.51321948167937214702 0.068076835129174062544 -0.25131818106660408496 -0.084529148064371742444 0.52514212376456892439 -0.40056875055417973108 0.36555631991197534703 1.0793951781303374737 -0.38293375314576283408 0.350416249676638758 0.73418725816103658222 0.82667180703015807897 -0.3845523021873799574 -0.47360262754638243754 0.30339545597771905294 0.075474963242181405954 -0.050272264796541753229;0.44945118757607083193 -0.67802109827714074353 -0.34596560289859384918 0.071181843543071735003 -0.18637851224569701447 0.62063737276878139237 0.6620007615240474097 0.33462729205057195614 0.57350794943163685424 -0.42359000982132150037 -0.47666430632149331403 0.60019046257654096177 -0.3578940363700877092 0.79561891947471607978 0.077770004891109106859 -0.017234407677131462211 0.2017541447312636016;0.30056466639772594363 0.5379438838189077865 0.53753148074407175461 0.25493344019743191531 0.25461021088156471359 0.53156828937266542567 0.11502794062717276724 0.62239228423011005997 0.32995458900722202111 -0.45470728892314737912 0.41587688634546848832 -0.17642296141633681539 -0.29858684950124597668 -0.56384371325540372233 0.46720400003447587478 -0.5202235666005069481 -0.26013679647123105765;-0.31410808912255655523 0.025566413011768512886 0.65908209517056415283 -0.64312053738900831767 -0.080095211086997311623 0.18609230687187330866 -0.50700861949947895191 -0.32626560089777961737 0.60954557531535202841 -0.31590003353829088084 0.56464404019065927987 0.021414879272801820576 -0.17163001487038923032 -0.46485106126328712417 0.14690626838595255421 -0.082166538195587252025 -0.46169275370296181116;1.1571027402793452321 -0.037333092531825887161 0.011344226414734578934 0.91390793674318382411 0.062823167765484161373 -0.19323460139848638861 0.37864267581246990879 0.66811981152828581187 -0.77463696551936644941 -0.19793456282018959125 0.25890873551100079819 0.35419201656799531586 -0.83730755552814462028 0.14264206406473409205 0.60547357899936016246 0.25903952813528119403 -0.47156746657306775061];

% Layer 2
b2 = -0.061435663909524380888;
LW2_1 = [-0.33862062974304169005 -0.74169193306686476141 -0.53222548449200413057 -0.53826270724376923393 -1.1101865060050968292 0.87802053659154588594 1.334395339788578827 0.64409355024474101992 -0.72332746118277213565 -0.93345203354445482891 -0.59323646251150086162 0.8378456775378740895 -0.52418097224764337305 0.055436416422020080852 -0.62317265817438938225 -1.2361867666180208492 -0.77351068949788992501 0.48682318690316173093 1.1588110913974078997 -0.78209674608529411444 -0.76420735885605695081 1.3078805470621555074 0.2012357613522707811 -0.047846109140845229091 -0.051347060211777151295 0.66689936843680075462 0.6846670624237102265 -1.0358575612456839554 -0.50897323511432268628 -0.4937620120531664436 0.98085843801783945128 -0.34927181138237806124 0.44297788503923291037 -1.2208654853444367294];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.666666666666667;
y1_step1.xoffset = 1;

% ===== SIMULATION ========

% Dimensions
Q = size(x1,1); % samples

% Input 1
x1 = x1';
xp1 = mapminmax_apply(x1,x1_step1);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = repmat(b2,1,Q) + LW2_1*a1;

% Output 1
y1 = mapminmax_reverse(a2,y1_step1);
y1 = y1';
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end

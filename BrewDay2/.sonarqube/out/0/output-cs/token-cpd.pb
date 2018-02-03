ê
GC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\BundleConfig.cs
	namespace 	
BrewDay2
 
{ 
public 

static 
class 
BundleConfig $
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	

PathConfig 
c 
= 
new 

PathConfig )
() *
)* +
;+ ,
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
c) *
.* +
jquery+ 1
)1 2
.2 3
Include3 :
(: ;
c 
. 

jqueryincl $
)$ %
)% &
;& '
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
c) *
.* +
validate+ 3
)3 4
.4 5
Include5 <
(< =
c 
. 
validateincl &
)& '
)' (
;( )
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
c) *
.* +

modernizer+ 5
)5 6
.6 7
Include7 >
(> ?
c 
. 
modernizerincl (
)( )
)) *
;* +
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
c) *
.* +
	bootstrap+ 4
)4 5
.5 6
Include6 =
(= >
c 
. 
bootstrapincl %
,% &
c 
. 
respond 
)  
)  !
;! "
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
c( )
.) *
css* -
)- .
.. /
Include/ 6
(6 7
c 
. 
cssbootstrap $
,$ %
c 
. 
cssincl 
)  
)  !
;! "
} 	
} 
}   Ü
GC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\FilterConfig.cs
	namespace 	
BrewDay2
 
{ 
public 

static 
class 
FilterConfig $
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{ 	
filters		 
.		 
Add		 
(		 
new		  
HandleErrorAttribute		 0
(		0 1
)		1 2
)		2 3
;		3 4
}

 	
} 
} ≤:
IC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\IdentityConfig.cs
	namespace 	
BrewDay2
 
{ 
public 

class 
EmailService 
: #
IIdentityMessageService  7
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
} 	
} 
public 

class 

SmsService 
: #
IIdentityMessageService 5
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
} 	
} 
public   

class   "
ApplicationUserManager   '
:  ( )
UserManager  * 5
<  5 6
ApplicationUser  6 E
>  E F
{!! 
public"" "
ApplicationUserManager"" %
(""% &

IUserStore""& 0
<""0 1
ApplicationUser""1 @
>""@ A
store""B G
)""G H
:## 
base## 
(## 
store## 
)## 
{$$ 	
}%% 	
public'' 
static'' "
ApplicationUserManager'' ,
Create''- 3
(''3 4"
IdentityFactoryOptions''4 J
<''J K"
ApplicationUserManager''K a
>''a b
options''c j
,''j k
IOwinContext''l x
context	''y Ä
)
''Ä Å
{(( 	
var)) 
manager)) 
=)) 
new)) "
ApplicationUserManager)) 4
())4 5
new))5 8
	UserStore))9 B
<))B C
ApplicationUser))C R
>))R S
())S T
context))T [
.))[ \
Get))\ _
<))_ ` 
ApplicationDbContext))` t
>))t u
())u v
)))v w
)))w x
)))x y
;))y z
manager++ 
.++ 
UserValidator++ !
=++" #
new++$ '
UserValidator++( 5
<++5 6
ApplicationUser++6 E
>++E F
(++F G
manager++G N
)++N O
{,, *
AllowOnlyAlphanumericUserNames-- .
=--/ 0
false--1 6
,--6 7
RequireUniqueEmail.. "
=..# $
true..% )
}// 
;// 
manager22 
.22 
PasswordValidator22 %
=22& '
new22( +
PasswordValidator22, =
{33 
RequiredLength44 
=44  
$num44! "
,44" ##
RequireNonLetterOrDigit55 '
=55( )
true55* .
,55. /
RequireDigit66 
=66 
true66 #
,66# $
RequireLowercase77  
=77! "
true77# '
,77' (
RequireUppercase88  
=88! "
true88# '
,88' (
}99 
;99 
manager<< 
.<< '
UserLockoutEnabledByDefault<< /
=<<0 1
true<<2 6
;<<6 7
manager== 
.== )
DefaultAccountLockoutTimeSpan== 1
===2 3
TimeSpan==4 <
.==< =
FromMinutes=== H
(==H I
$num==I J
)==J K
;==K L
manager>> 
.>> 0
$MaxFailedAccessAttemptsBeforeLockout>> 8
=>>9 :
$num>>; <
;>>< =
managerBB 
.BB %
RegisterTwoFactorProviderBB -
(BB- .
$strBB. ?
,BB? @
newBBA D$
PhoneNumberTokenProviderBBE ]
<BB] ^
ApplicationUserBB^ m
>BBm n
{CC 
MessageFormatDD 
=DD 
$strDD  >
}EE 
)EE 
;EE 
managerFF 
.FF %
RegisterTwoFactorProviderFF -
(FF- .
$strFF. =
,FF= >
newFF? B
EmailTokenProviderFFC U
<FFU V
ApplicationUserFFV e
>FFe f
{GG 
SubjectHH 
=HH 
$strHH /
,HH/ 0

BodyFormatII 
=II 
$strII ;
}JJ 
)JJ 
;JJ 
managerKK 
.KK 
EmailServiceKK  
=KK! "
newKK# &
EmailServiceKK' 3
(KK3 4
)KK4 5
;KK5 6
managerLL 
.LL 

SmsServiceLL 
=LL  
newLL! $

SmsServiceLL% /
(LL/ 0
)LL0 1
;LL1 2
varMM "
dataProtectionProviderMM &
=MM' (
optionsMM) 0
.MM0 1"
DataProtectionProviderMM1 G
;MMG H
ifNN 
(NN "
dataProtectionProviderNN &
!=NN' )
nullNN* .
)NN. /
{OO 
managerPP 
.PP 
UserTokenProviderPP )
=PP* +
newQQ &
DataProtectorTokenProviderQQ 2
<QQ2 3
ApplicationUserQQ3 B
>QQB C
(QQC D"
dataProtectionProviderQQD Z
.QQZ [
CreateQQ[ a
(QQa b
$strQQb t
)QQt u
)QQu v
;QQv w
}RR 
returnSS 
managerSS 
;SS 
}TT 	
}UU 
publicXX 

classXX $
ApplicationSignInManagerXX )
:XX* +
SignInManagerXX, 9
<XX9 :
ApplicationUserXX: I
,XXI J
stringXXK Q
>XXQ R
{YY 
publicZZ $
ApplicationSignInManagerZZ '
(ZZ' ("
ApplicationUserManagerZZ( >
userManagerZZ? J
,ZZJ K"
IAuthenticationManagerZZL b!
authenticationManagerZZc x
)ZZx y
:[[ 
base[[ 
([[ 
userManager[[ 
,[[ !
authenticationManager[[  5
)[[5 6
{\\ 	
}]] 	
public__ 
override__ 
Task__ 
<__ 
ClaimsIdentity__ +
>__+ ,#
CreateUserIdentityAsync__- D
(__D E
ApplicationUser__E T
user__U Y
)__Y Z
{`` 	
returnaa 
useraa 
.aa %
GenerateUserIdentityAsyncaa 1
(aa1 2
(aa2 3"
ApplicationUserManageraa3 I
)aaI J
UserManageraaJ U
)aaU V
;aaV W
}bb 	
publicdd 
staticdd $
ApplicationSignInManagerdd .
Createdd/ 5
(dd5 6"
IdentityFactoryOptionsdd6 L
<ddL M$
ApplicationSignInManagerddM e
>dde f
optionsddg n
,ddn o
IOwinContextddp |
context	dd} Ñ
)
ddÑ Ö
{ee 	
returnff 
newff $
ApplicationSignInManagerff /
(ff/ 0
contextff0 7
.ff7 8
GetUserManagerff8 F
<ffF G"
ApplicationUserManagerffG ]
>ff] ^
(ff^ _
)ff_ `
,ff` a
contextffb i
.ffi j
Authenticationffj x
)ffx y
;ffy z
}gg 	
}hh 
}ii ß
EC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\PathConfig.cs
	namespace 	
BrewDay2
 
. 
	App_Start 
{ 
public 

class 

PathConfig 
{		 
public

 
string

 
error

 
{

 
get

 !
;

! "
}

# $
public 
string 
error2 
{ 
get "
;" #
}$ %
public 
string 
jquery 
{ 
get "
;" #
}$ %
public 
string 

jqueryincl  
{! "
get# &
;& '
}( )
public 
string 
validate 
{  
get! $
;$ %
}& '
public 
string 
validateincl "
{# $
get% (
;( )
}* +
public 
string 

modernizer  
{! "
get# &
;& '
}( )
public 
string 
modernizerincl $
{% &
get' *
;* +
}, -
public 
string 
	bootstrap 
{  !
get" %
;% &
}' (
public 
string 
bootstrapincl #
{$ %
get& )
;) *
}+ ,
public 
string 
respond 
{ 
get  #
;# $
}% &
public 
string 
css 
{ 
get 
;  
}! "
public 
string 
cssincl 
{ 
get  #
;# $
}% &
public 
string 
cssbootstrap "
{# $
get% (
;( )
}* +
public 

PathConfig 
( 
) 
{ 	
error 
= 
$str -
;- .
error2 
= 
$str .
;. /
jquery 
= 
$str *
;* +

jqueryincl 
= 
$str 8
;8 9
validate 
= 
$str ,
;, -
validateincl 
= 
$str 7
;7 8

modernizer   
=   
$str   .
;  . /
modernizerincl!! 
=!! 
$str!! 4
;!!4 5
	bootstrap"" 
="" 
$str"" -
;""- .
bootstrapincl## 
=## 
$str## 4
;##4 5
respond$$ 
=$$ 
$str$$ ,
;$$, -
css%% 
=%% 
$str%% !
;%%! "
cssincl&& 
=&& 
$str&& *
;&&* +
cssbootstrap'' 
='' 
$str'' 4
;''4 5
}(( 	
})) 
}** ˛
FC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\RouteConfig.cs
	namespace 	
BrewDay2
 
{ 
public 

static 
class 
RouteConfig #
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{		 	
routes

 
.

 
IgnoreRoute

 
(

 
$str

 ;
)

; <
;

< =
routes 
. 
MapRoute 
( 
$str 
, 
$str ,
,, -
new 
{ 

controller  
=! "
$str# )
,) *
action+ 1
=2 3
$str4 ;
,; <
id= ?
=@ A
UrlParameterB N
.N O
OptionalO W
}X Y
) 
; 
} 	
} 
} à
GC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\Startup.Auth.cs
	namespace		 	
BrewDay2		
 
{

 
public 

partial 
class 
Startup  
{ 
public 
void 
ConfigureAuth !
(! "
IAppBuilder" -
app. 1
)1 2
{ 	
app 
.  
CreatePerOwinContext $
($ % 
ApplicationDbContext% 9
.9 :
Create: @
)@ A
;A B
app 
.  
CreatePerOwinContext $
<$ %"
ApplicationUserManager% ;
>; <
(< ="
ApplicationUserManager= S
.S T
CreateT Z
)Z [
;[ \
app 
.  
CreatePerOwinContext $
<$ %$
ApplicationSignInManager% =
>= >
(> ?$
ApplicationSignInManager? W
.W X
CreateX ^
)^ _
;_ `
app 
. #
UseCookieAuthentication '
(' (
new( +'
CookieAuthenticationOptions, G
{ 
AuthenticationType "
=# $&
DefaultAuthenticationTypes% ?
.? @
ApplicationCookie@ Q
,Q R
	LoginPath 
= 
new 

PathString  *
(* +
$str+ ;
); <
,< =
Provider 
= 
new (
CookieAuthenticationProvider ;
{ 
OnValidateIdentity   &
=  ' ("
SecurityStampValidator  ) ?
.  ? @
OnValidateIdentity  @ R
<  R S"
ApplicationUserManager  S i
,  i j
ApplicationUser  k z
>  z {
(  { |
TimeSpan!!  
.!!  !
FromMinutes!!! ,
(!!, -
$num!!- /
)!!/ 0
,!!0 1
("" 
manager""  
,""  !
user""" &
)""& '
=>""( *
user""+ /
.""/ 0%
GenerateUserIdentityAsync""0 I
(""I J
manager""J Q
)""Q R
)""R S
}## 
}$$ 
)$$ 
;$$ 
app%% 
.%% #
UseExternalSignInCookie%% '
(%%' (&
DefaultAuthenticationTypes%%( B
.%%B C
ExternalCookie%%C Q
)%%Q R
;%%R S
app(( 
.(( $
UseTwoFactorSignInCookie(( (
(((( )&
DefaultAuthenticationTypes(() C
.((C D
TwoFactorCookie((D S
,((S T
TimeSpan((U ]
.((] ^
FromMinutes((^ i
(((i j
$num((j k
)((k l
)((l m
;((m n
app-- 
.-- -
!UseTwoFactorRememberBrowserCookie-- 1
(--1 2&
DefaultAuthenticationTypes--2 L
.--L M*
TwoFactorRememberBrowserCookie--M k
)--k l
;--l m
}// 	
}00 
}11 „í
NC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\AccountController.cs
	namespace

 	
BrewDay2


 
.

 
Controllers

 
{ 
[ 
	Authorize 
] 
public 

class 
AccountController "
:# $

Controller% /
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
public 
AccountController  
(  !
)! "
{ 	
} 	
public 
AccountController  
(  !"
ApplicationUserManager! 7
userManager8 C
,C D$
ApplicationSignInManagerE ]
signInManager^ k
)l m
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public $
ApplicationSignInManager '
SignInManager( 5
{ 	
get 
=> 
_signInManager !
??" $
HttpContext% 0
.0 1
GetOwinContext1 ?
(? @
)@ A
.A B
GetB E
<E F$
ApplicationSignInManagerF ^
>^ _
(_ `
)` a
;a b
private 
set 
=> 
_signInManager )
=* +
value, 1
;1 2
}   	
public"" "
ApplicationUserManager"" %
UserManager""& 1
{## 	
get$$ 
=>$$ 
_userManager$$ 
??$$  "
HttpContext$$# .
.$$. /
GetOwinContext$$/ =
($$= >
)$$> ?
.$$? @
GetUserManager$$@ N
<$$N O"
ApplicationUserManager$$O e
>$$e f
($$f g
)$$g h
;$$h i
private%% 
set%% 
=>%% 
_userManager%% '
=%%( )
value%%* /
;%%/ 0
}&& 	
[** 	
AllowAnonymous**	 
]** 
public++ 
ActionResult++ 
Login++ !
(++! "
string++" (
	returnUrl++) 2
)++2 3
{,, 	
ViewBag-- 
.-- 
	ReturnUrl-- 
=-- 
	returnUrl--  )
;--) *
return.. 
View.. 
(.. 
).. 
;.. 
}// 	
[33 	
HttpPost33	 
]33 
[44 	
AllowAnonymous44	 
]44 
[55 	$
ValidateAntiForgeryToken55	 !
]55! "
public66 
async66 
Task66 
<66 
ActionResult66 &
>66& '
Login66( -
(66- .
LoginViewModel66. <
model66= B
,66B C
string66D J
	returnUrl66K T
)66T U
{77 	
if88 
(88 
!88 

ModelState88 
.88 
IsValid88 #
)88# $
{99 
return:: 
View:: 
(:: 
model:: !
)::! "
;::" #
};; 
var?? 
result?? 
=?? 
await?? 
SignInManager?? ,
.??, -
PasswordSignInAsync??- @
(??@ A
model??A F
.??F G
Email??G L
,??L M
model??N S
.??S T
Password??T \
,??\ ]
model??^ c
.??c d

RememberMe??d n
,??n o
false??p u
)??u v
;??v w
switch@@ 
(@@ 
result@@ 
)@@ 
{AA 
caseBB 
SignInStatusBB !
.BB! "
SuccessBB" )
:BB) *
returnCC 
RedirectToLocalCC *
(CC* +
	returnUrlCC+ 4
)CC4 5
;CC5 6
caseDD 
SignInStatusDD !
.DD! "
	LockedOutDD" +
:DD+ ,
returnEE 
ViewEE 
(EE  
$strEE  )
)EE) *
;EE* +
caseFF 
SignInStatusFF !
.FF! " 
RequiresVerificationFF" 6
:FF6 7
returnGG 
RedirectToActionGG +
(GG+ ,
$strGG, 6
,GG6 7
newGG8 ;
{GG< =
	ReturnUrlGG> G
=GGH I
	returnUrlGGJ S
,GGS T
modelGGU Z
.GGZ [

RememberMeGG[ e
}GGf g
)GGg h
;GGh i
defaultHH 
:HH 

ModelStateII 
.II 
AddModelErrorII ,
(II, -
$strII- /
,II/ 0
$strII1 S
)IIS T
;IIT U
returnJJ 
ViewJJ 
(JJ  
modelJJ  %
)JJ% &
;JJ& '
}KK 
}LL 	
[PP 	
AllowAnonymousPP	 
]PP 
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
ActionResultQQ &
>QQ& '

VerifyCodeQQ( 2
(QQ2 3
stringQQ3 9
providerQQ: B
,QQB C
stringQQD J
	returnUrlQQK T
,QQT U
boolQQV Z

rememberMeQQ[ e
)QQe f
{RR 	
ifTT 
(TT 
!TT 
awaitTT 
SignInManagerTT $
.TT$ % 
HasBeenVerifiedAsyncTT% 9
(TT9 :
)TT: ;
)TT; <
{UU 
returnVV 
ViewVV 
(VV 
$strVV #
)VV# $
;VV$ %
}WW 
returnXX 
ViewXX 
(XX 
newXX 
VerifyCodeViewModelXX /
{XX0 1
ProviderXX2 :
=XX; <
providerXX= E
,XXE F
	ReturnUrlXXG P
=XXQ R
	returnUrlXXS \
,XX\ ]

RememberMeXX^ h
=XXi j

rememberMeXXk u
}XXv w
)XXw x
;XXx y
}YY 	
[]] 	
HttpPost]]	 
]]] 
[^^ 	
AllowAnonymous^^	 
]^^ 
[__ 	$
ValidateAntiForgeryToken__	 !
]__! "
public`` 
async`` 
Task`` 
<`` 
ActionResult`` &
>``& '

VerifyCode``( 2
(``2 3
VerifyCodeViewModel``3 F
model``G L
)``L M
{aa 	
ifbb 
(bb 
!bb 

ModelStatebb 
.bb 
IsValidbb #
)bb# $
{cc 
returndd 
Viewdd 
(dd 
modeldd !
)dd! "
;dd" #
}ee 
varkk 
resultkk 
=kk 
awaitkk 
SignInManagerkk ,
.kk, - 
TwoFactorSignInAsynckk- A
(kkA B
modelkkB G
.kkG H
ProviderkkH P
,kkP Q
modelkkR W
.kkW X
CodekkX \
,kk\ ]
modelkk^ c
.kkc d

RememberMekkd n
,kkn o
modelkkp u
.kku v
RememberBrowser	kkv Ö
)
kkÖ Ü
;
kkÜ á
switchll 
(ll 
resultll 
)ll 
{mm 
casenn 
SignInStatusnn !
.nn! "
Successnn" )
:nn) *
returnoo 
RedirectToLocaloo *
(oo* +
modeloo+ 0
.oo0 1
	ReturnUrloo1 :
)oo: ;
;oo; <
casepp 
SignInStatuspp !
.pp! "
	LockedOutpp" +
:pp+ ,
returnqq 
Viewqq 
(qq  
$strqq  )
)qq) *
;qq* +
defaultrr 
:rr 

ModelStatess 
.ss 
AddModelErrorss ,
(ss, -
$strss- /
,ss/ 0
$strss1 E
)ssE F
;ssF G
returntt 
Viewtt 
(tt  
modeltt  %
)tt% &
;tt& '
}uu 
}vv 	
[zz 	
AllowAnonymouszz	 
]zz 
public{{ 
ActionResult{{ 
Register{{ $
({{$ %
){{% &
{|| 	
return}} 
View}} 
(}} 
)}} 
;}} 
}~~ 	
[
ÇÇ 	
HttpPost
ÇÇ	 
]
ÇÇ 
[
ÉÉ 	
AllowAnonymous
ÉÉ	 
]
ÉÉ 
[
ÑÑ 	&
ValidateAntiForgeryToken
ÑÑ	 !
]
ÑÑ! "
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
ActionResult
ÖÖ &
>
ÖÖ& '
Register
ÖÖ( 0
(
ÖÖ0 1
RegisterViewModel
ÖÖ1 B
model
ÖÖC H
)
ÖÖH I
{
ÜÜ 	
if
áá 
(
áá 

ModelState
áá 
.
áá 
IsValid
áá "
)
áá" #
{
àà 
var
ââ 
user
ââ 
=
ââ 
new
ââ 
ApplicationUser
ââ .
{
ââ/ 0
UserName
ââ1 9
=
ââ: ;
model
ââ< A
.
ââA B
Email
ââB G
,
ââG H
Email
ââI N
=
ââO P
model
ââQ V
.
ââV W
Email
ââW \
}
ââ] ^
;
ââ^ _
var
ää 
result
ää 
=
ää 
await
ää "
UserManager
ää# .
.
ää. /
CreateAsync
ää/ :
(
ää: ;
user
ää; ?
,
ää? @
model
ääA F
.
ääF G
Password
ääG O
)
ääO P
;
ääP Q
if
ãã 
(
ãã 
result
ãã 
.
ãã 
	Succeeded
ãã $
)
ãã$ %
{
åå 
await
çç 
SignInManager
çç '
.
çç' (
SignInAsync
çç( 3
(
çç3 4
user
çç4 8
,
çç8 9
false
çç: ?
,
çç? @
false
ççA F
)
ççF G
;
ççG H"
ApplicationDbContext
èè (
db
èè) +
=
èè, -
new
èè. 1"
ApplicationDbContext
èè2 F
(
èèF G
)
èèG H
;
èèH I
	Magazzino
êê 
m
êê 
=
êê  !
new
êê" %
	Magazzino
êê& /
(
êê/ 0
)
êê0 1
{
ëë 
UserId
íí 
=
íí  
user
íí! %
.
íí% &
Id
íí& (
}
ìì 
;
ìì 
db
îî 
.
îî 
Magazzinoes
îî "
.
îî" #
Add
îî# &
(
îî& '
m
îî' (
)
îî( )
;
îî) *
db
ïï 
.
ïï 
SaveChanges
ïï "
(
ïï" #
)
ïï# $
;
ïï$ %
return
ññ 
RedirectToAction
ññ +
(
ññ+ ,
$str
ññ, 3
,
ññ3 4
$str
ññ5 ;
)
ññ; <
;
ññ< =
}
óó 
	AddErrors
òò 
(
òò 
result
òò  
)
òò  !
;
òò! "
}
ôô 
return
úú 
View
úú 
(
úú 
model
úú 
)
úú 
;
úú 
}
ùù 	
[
°° 	
AllowAnonymous
°°	 
]
°° 
public
¢¢ 
async
¢¢ 
Task
¢¢ 
<
¢¢ 
ActionResult
¢¢ &
>
¢¢& '
ConfirmEmail
¢¢( 4
(
¢¢4 5
string
¢¢5 ;
userId
¢¢< B
,
¢¢B C
string
¢¢D J
code
¢¢K O
)
¢¢O P
{
££ 	
if
§§ 
(
§§ 
userId
§§ 
==
§§ 
null
§§ 
||
§§ !
code
§§" &
==
§§' )
null
§§* .
)
§§. /
{
•• 
return
¶¶ 
View
¶¶ 
(
¶¶ 
$str
¶¶ #
)
¶¶# $
;
¶¶$ %
}
ßß 
var
®® 
result
®® 
=
®® 
await
®® 
UserManager
®® *
.
®®* +
ConfirmEmailAsync
®®+ <
(
®®< =
userId
®®= C
,
®®C D
code
®®E I
)
®®I J
;
®®J K
return
©© 
View
©© 
(
©© 
result
©© 
.
©© 
	Succeeded
©© (
?
©©) *
$str
©©+ 9
:
©©: ;
$str
©©< C
)
©©C D
;
©©D E
}
™™ 	
[
ÆÆ 	
AllowAnonymous
ÆÆ	 
]
ÆÆ 
public
ØØ 
ActionResult
ØØ 
ForgotPassword
ØØ *
(
ØØ* +
)
ØØ+ ,
{
∞∞ 	
return
±± 
View
±± 
(
±± 
)
±± 
;
±± 
}
≤≤ 	
[
∂∂ 	
HttpPost
∂∂	 
]
∂∂ 
[
∑∑ 	
AllowAnonymous
∑∑	 
]
∑∑ 
[
∏∏ 	&
ValidateAntiForgeryToken
∏∏	 !
]
∏∏! "
public
ππ 
async
ππ 
Task
ππ 
<
ππ 
ActionResult
ππ &
>
ππ& '
ForgotPassword
ππ( 6
(
ππ6 7%
ForgotPasswordViewModel
ππ7 N
model
ππO T
)
ππT U
{
∫∫ 	
if
ªª 
(
ªª 

ModelState
ªª 
.
ªª 
IsValid
ªª "
)
ªª" #
{
ºº 
var
ΩΩ 
user
ΩΩ 
=
ΩΩ 
await
ΩΩ  
UserManager
ΩΩ! ,
.
ΩΩ, -
FindByNameAsync
ΩΩ- <
(
ΩΩ< =
model
ΩΩ= B
.
ΩΩB C
Email
ΩΩC H
)
ΩΩH I
;
ΩΩI J
if
ææ 
(
ææ 
user
ææ 
==
ææ 
null
ææ  
||
ææ! #
!
ææ$ %
(
ææ% &
await
ææ& +
UserManager
ææ, 7
.
ææ7 8#
IsEmailConfirmedAsync
ææ8 M
(
ææM N
user
ææN R
.
ææR S
Id
ææS U
)
ææU V
)
ææV W
)
ææW X
{
øø 
return
¡¡ 
View
¡¡ 
(
¡¡  
$str
¡¡  <
)
¡¡< =
;
¡¡= >
}
¬¬ 
}
ƒƒ 
return
«« 
View
«« 
(
«« 
model
«« 
)
«« 
;
«« 
}
»» 	
[
ÃÃ 	
AllowAnonymous
ÃÃ	 
]
ÃÃ 
public
ÕÕ 
ActionResult
ÕÕ (
ForgotPasswordConfirmation
ÕÕ 6
(
ÕÕ6 7
)
ÕÕ7 8
{
ŒŒ 	
return
œœ 
View
œœ 
(
œœ 
)
œœ 
;
œœ 
}
–– 	
[
‘‘ 	
AllowAnonymous
‘‘	 
]
‘‘ 
public
’’ 
ActionResult
’’ 
ResetPassword
’’ )
(
’’) *
string
’’* 0
code
’’1 5
)
’’5 6
{
÷÷ 	
return
◊◊ 
code
◊◊ 
==
◊◊ 
null
◊◊ 
?
◊◊  !
View
◊◊" &
(
◊◊& '
$str
◊◊' .
)
◊◊. /
:
◊◊0 1
View
◊◊2 6
(
◊◊6 7
)
◊◊7 8
;
◊◊8 9
}
ÿÿ 	
[
‹‹ 	
HttpPost
‹‹	 
]
‹‹ 
[
›› 	
AllowAnonymous
››	 
]
›› 
[
ﬁﬁ 	&
ValidateAntiForgeryToken
ﬁﬁ	 !
]
ﬁﬁ! "
public
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ 
<
ﬂﬂ 
ActionResult
ﬂﬂ &
>
ﬂﬂ& '
ResetPassword
ﬂﬂ( 5
(
ﬂﬂ5 6$
ResetPasswordViewModel
ﬂﬂ6 L
model
ﬂﬂM R
)
ﬂﬂR S
{
‡‡ 	
if
·· 
(
·· 
!
·· 

ModelState
·· 
.
·· 
IsValid
·· #
)
··# $
{
‚‚ 
return
„„ 
View
„„ 
(
„„ 
model
„„ !
)
„„! "
;
„„" #
}
‰‰ 
var
ÂÂ 
user
ÂÂ 
=
ÂÂ 
await
ÂÂ 
UserManager
ÂÂ (
.
ÂÂ( )
FindByNameAsync
ÂÂ) 8
(
ÂÂ8 9
model
ÂÂ9 >
.
ÂÂ> ?
Email
ÂÂ? D
)
ÂÂD E
;
ÂÂE F
if
ÊÊ 
(
ÊÊ 
user
ÊÊ 
==
ÊÊ 
null
ÊÊ 
)
ÊÊ 
{
ÁÁ 
return
ÈÈ 
RedirectToAction
ÈÈ '
(
ÈÈ' (
$str
ÈÈ( C
,
ÈÈC D
$str
ÈÈE N
)
ÈÈN O
;
ÈÈO P
}
ÍÍ 
var
ÎÎ 
result
ÎÎ 
=
ÎÎ 
await
ÎÎ 
UserManager
ÎÎ *
.
ÎÎ* + 
ResetPasswordAsync
ÎÎ+ =
(
ÎÎ= >
user
ÎÎ> B
.
ÎÎB C
Id
ÎÎC E
,
ÎÎE F
model
ÎÎG L
.
ÎÎL M
Code
ÎÎM Q
,
ÎÎQ R
model
ÎÎS X
.
ÎÎX Y
Password
ÎÎY a
)
ÎÎa b
;
ÎÎb c
if
ÏÏ 
(
ÏÏ 
result
ÏÏ 
.
ÏÏ 
	Succeeded
ÏÏ  
)
ÏÏ  !
{
ÌÌ 
return
ÓÓ 
RedirectToAction
ÓÓ '
(
ÓÓ' (
$str
ÓÓ( C
,
ÓÓC D
$str
ÓÓE N
)
ÓÓN O
;
ÓÓO P
}
ÔÔ 
	AddErrors
 
(
 
result
 
)
 
;
 
return
ÒÒ 
View
ÒÒ 
(
ÒÒ 
)
ÒÒ 
;
ÒÒ 
}
ÚÚ 	
[
ˆˆ 	
AllowAnonymous
ˆˆ	 
]
ˆˆ 
public
˜˜ 
ActionResult
˜˜ '
ResetPasswordConfirmation
˜˜ 5
(
˜˜5 6
)
˜˜6 7
{
¯¯ 	
return
˘˘ 
View
˘˘ 
(
˘˘ 
)
˘˘ 
;
˘˘ 
}
˙˙ 	
[
˛˛ 	
HttpPost
˛˛	 
]
˛˛ 
[
ˇˇ 	
AllowAnonymous
ˇˇ	 
]
ˇˇ 
[
ÄÄ 	&
ValidateAntiForgeryToken
ÄÄ	 !
]
ÄÄ! "
public
ÅÅ 
ActionResult
ÅÅ 
ExternalLogin
ÅÅ )
(
ÅÅ) *
string
ÅÅ* 0
provider
ÅÅ1 9
,
ÅÅ9 :
string
ÅÅ; A
	returnUrl
ÅÅB K
)
ÅÅK L
{
ÇÇ 	
return
ÑÑ 
new
ÑÑ 
ChallengeResult
ÑÑ &
(
ÑÑ& '
provider
ÑÑ' /
,
ÑÑ/ 0
Url
ÑÑ1 4
.
ÑÑ4 5
Action
ÑÑ5 ;
(
ÑÑ; <
$str
ÑÑ< S
,
ÑÑS T
$str
ÑÑU ^
,
ÑÑ^ _
new
ÑÑ` c
{
ÑÑd e
	ReturnUrl
ÑÑf o
=
ÑÑp q
	returnUrl
ÑÑr {
}
ÑÑ| }
)
ÑÑ} ~
)
ÑÑ~ 
;ÑÑ Ä
}
ÖÖ 	
[
ââ 	
AllowAnonymous
ââ	 
]
ââ 
public
ää 
async
ää 
Task
ää 
<
ää 
ActionResult
ää &
>
ää& '
SendCode
ää( 0
(
ää0 1
string
ää1 7
	returnUrl
ää8 A
,
ääA B
bool
ääC G

rememberMe
ääH R
)
ääR S
{
ãã 	
var
åå 
userId
åå 
=
åå 
await
åå 
SignInManager
åå ,
.
åå, -$
GetVerifiedUserIdAsync
åå- C
(
ååC D
)
ååD E
;
ååE F
if
çç 
(
çç 
userId
çç 
==
çç 
null
çç 
)
çç 
{
éé 
return
èè 
View
èè 
(
èè 
$str
èè #
)
èè# $
;
èè$ %
}
êê 
var
ëë 
userFactors
ëë 
=
ëë 
await
ëë #
UserManager
ëë$ /
.
ëë/ 0-
GetValidTwoFactorProvidersAsync
ëë0 O
(
ëëO P
userId
ëëP V
)
ëëV W
;
ëëW X
var
íí 
factorOptions
íí 
=
íí 
userFactors
íí  +
.
íí+ ,
Select
íí, 2
(
íí2 3
purpose
íí3 :
=>
íí; =
new
íí> A
SelectListItem
ííB P
{
ííQ R
Text
ííS W
=
ííX Y
purpose
ííZ a
,
íía b
Value
ííc h
=
ííi j
purpose
íík r
}
íís t
)
íít u
.
ííu v
ToList
íív |
(
íí| }
)
íí} ~
;
íí~ 
return
ìì 
View
ìì 
(
ìì 
new
ìì 
SendCodeViewModel
ìì -
{
ìì. /
	Providers
ìì0 9
=
ìì: ;
factorOptions
ìì< I
,
ììI J
	ReturnUrl
ììK T
=
ììU V
	returnUrl
ììW `
,
ìì` a

RememberMe
ììb l
=
ììm n

rememberMe
ììo y
}
ììz {
)
ìì{ |
;
ìì| }
}
îî 	
[
òò 	
HttpPost
òò	 
]
òò 
[
ôô 	
AllowAnonymous
ôô	 
]
ôô 
[
öö 	&
ValidateAntiForgeryToken
öö	 !
]
öö! "
public
õõ 
async
õõ 
Task
õõ 
<
õõ 
ActionResult
õõ &
>
õõ& '
SendCode
õõ( 0
(
õõ0 1
SendCodeViewModel
õõ1 B
model
õõC H
)
õõH I
{
úú 	
if
ùù 
(
ùù 
!
ùù 

ModelState
ùù 
.
ùù 
IsValid
ùù #
)
ùù# $
{
ûû 
return
üü 
View
üü 
(
üü 
)
üü 
;
üü 
}
†† 
if
££ 
(
££ 
!
££ 
await
££ 
SignInManager
££ $
.
££$ %$
SendTwoFactorCodeAsync
££% ;
(
££; <
model
££< A
.
££A B
SelectedProvider
££B R
)
££R S
)
££S T
{
§§ 
return
•• 
View
•• 
(
•• 
$str
•• #
)
••# $
;
••$ %
}
¶¶ 
return
ßß 
RedirectToAction
ßß #
(
ßß# $
$str
ßß$ 0
,
ßß0 1
new
ßß2 5
{
ßß6 7
Provider
ßß8 @
=
ßßA B
model
ßßC H
.
ßßH I
SelectedProvider
ßßI Y
,
ßßY Z
model
ßß[ `
.
ßß` a
	ReturnUrl
ßßa j
,
ßßj k
model
ßßl q
.
ßßq r

RememberMe
ßßr |
}
ßß} ~
)
ßß~ 
;ßß Ä
}
®® 	
[
¨¨ 	
AllowAnonymous
¨¨	 
]
¨¨ 
public
≠≠ 
async
≠≠ 
Task
≠≠ 
<
≠≠ 
ActionResult
≠≠ &
>
≠≠& '#
ExternalLoginCallback
≠≠( =
(
≠≠= >
string
≠≠> D
	returnUrl
≠≠E N
)
≠≠N O
{
ÆÆ 	
var
ØØ 
	loginInfo
ØØ 
=
ØØ 
await
ØØ !#
AuthenticationManager
ØØ" 7
.
ØØ7 8'
GetExternalLoginInfoAsync
ØØ8 Q
(
ØØQ R
)
ØØR S
;
ØØS T
if
∞∞ 
(
∞∞ 
	loginInfo
∞∞ 
==
∞∞ 
null
∞∞ !
)
∞∞! "
{
±± 
return
≤≤ 
RedirectToAction
≤≤ '
(
≤≤' (
$str
≤≤( /
)
≤≤/ 0
;
≤≤0 1
}
≥≥ 
var
∂∂ 
result
∂∂ 
=
∂∂ 
await
∂∂ 
SignInManager
∂∂ ,
.
∂∂, -!
ExternalSignInAsync
∂∂- @
(
∂∂@ A
	loginInfo
∂∂A J
,
∂∂J K
false
∂∂L Q
)
∂∂Q R
;
∂∂R S
switch
∑∑ 
(
∑∑ 
result
∑∑ 
)
∑∑ 
{
∏∏ 
case
ππ 
SignInStatus
ππ !
.
ππ! "
Success
ππ" )
:
ππ) *
return
∫∫ 
RedirectToLocal
∫∫ *
(
∫∫* +
	returnUrl
∫∫+ 4
)
∫∫4 5
;
∫∫5 6
case
ªª 
SignInStatus
ªª !
.
ªª! "
	LockedOut
ªª" +
:
ªª+ ,
return
ºº 
View
ºº 
(
ºº  
$str
ºº  )
)
ºº) *
;
ºº* +
case
ΩΩ 
SignInStatus
ΩΩ !
.
ΩΩ! ""
RequiresVerification
ΩΩ" 6
:
ΩΩ6 7
return
ææ 
RedirectToAction
ææ +
(
ææ+ ,
$str
ææ, 6
,
ææ6 7
new
ææ8 ;
{
ææ< =
	ReturnUrl
ææ> G
=
ææH I
	returnUrl
ææJ S
,
ææS T

RememberMe
ææU _
=
ææ` a
false
ææb g
}
ææh i
)
ææi j
;
ææj k
default
øø 
:
øø 
ViewBag
¡¡ 
.
¡¡ 
	ReturnUrl
¡¡ %
=
¡¡& '
	returnUrl
¡¡( 1
;
¡¡1 2
ViewBag
¬¬ 
.
¬¬ 
LoginProvider
¬¬ )
=
¬¬* +
	loginInfo
¬¬, 5
.
¬¬5 6
Login
¬¬6 ;
.
¬¬; <
LoginProvider
¬¬< I
;
¬¬I J
return
√√ 
View
√√ 
(
√√  
$str
√√  ;
,
√√; <
new
√√= @0
"ExternalLoginConfirmationViewModel
√√A c
{
√√d e
Email
√√f k
=
√√l m
	loginInfo
√√n w
.
√√w x
Email
√√x }
}
√√~ 
)√√ Ä
;√√Ä Å
}
ƒƒ 
}
≈≈ 	
[
…… 	
HttpPost
……	 
]
…… 
[
   	
AllowAnonymous
  	 
]
   
[
ÀÀ 	&
ValidateAntiForgeryToken
ÀÀ	 !
]
ÀÀ! "
public
ÃÃ 
async
ÃÃ 
Task
ÃÃ 
<
ÃÃ 
ActionResult
ÃÃ &
>
ÃÃ& ''
ExternalLoginConfirmation
ÃÃ( A
(
ÃÃA B0
"ExternalLoginConfirmationViewModel
ÃÃB d
model
ÃÃe j
,
ÃÃj k
string
ÃÃl r
	returnUrl
ÃÃs |
)
ÃÃ| }
{
ÕÕ 	
if
ŒŒ 
(
ŒŒ 
User
ŒŒ 
.
ŒŒ 
Identity
ŒŒ 
.
ŒŒ 
IsAuthenticated
ŒŒ -
)
ŒŒ- .
{
œœ 
return
–– 
RedirectToAction
–– '
(
––' (
$str
––( /
,
––/ 0
$str
––1 9
)
––9 :
;
––: ;
}
—— 
if
”” 
(
”” 

ModelState
”” 
.
”” 
IsValid
”” "
)
””" #
{
‘‘ 
var
÷÷ 
info
÷÷ 
=
÷÷ 
await
÷÷  #
AuthenticationManager
÷÷! 6
.
÷÷6 7'
GetExternalLoginInfoAsync
÷÷7 P
(
÷÷P Q
)
÷÷Q R
;
÷÷R S
if
◊◊ 
(
◊◊ 
info
◊◊ 
==
◊◊ 
null
◊◊  
)
◊◊  !
{
ÿÿ 
return
ŸŸ 
View
ŸŸ 
(
ŸŸ  
$str
ŸŸ  6
)
ŸŸ6 7
;
ŸŸ7 8
}
⁄⁄ 
var
€€ 
user
€€ 
=
€€ 
new
€€ 
ApplicationUser
€€ .
{
€€/ 0
UserName
€€1 9
=
€€: ;
model
€€< A
.
€€A B
Email
€€B G
,
€€G H
Email
€€I N
=
€€O P
model
€€Q V
.
€€V W
Email
€€W \
}
€€] ^
;
€€^ _
var
‹‹ 
result
‹‹ 
=
‹‹ 
await
‹‹ "
UserManager
‹‹# .
.
‹‹. /
CreateAsync
‹‹/ :
(
‹‹: ;
user
‹‹; ?
)
‹‹? @
;
‹‹@ A
if
›› 
(
›› 
result
›› 
.
›› 
	Succeeded
›› $
)
››$ %
{
ﬁﬁ 
result
ﬂﬂ 
=
ﬂﬂ 
await
ﬂﬂ "
UserManager
ﬂﬂ# .
.
ﬂﬂ. /
AddLoginAsync
ﬂﬂ/ <
(
ﬂﬂ< =
user
ﬂﬂ= A
.
ﬂﬂA B
Id
ﬂﬂB D
,
ﬂﬂD E
info
ﬂﬂF J
.
ﬂﬂJ K
Login
ﬂﬂK P
)
ﬂﬂP Q
;
ﬂﬂQ R
if
‡‡ 
(
‡‡ 
result
‡‡ 
.
‡‡ 
	Succeeded
‡‡ (
)
‡‡( )
{
·· 
await
‚‚ 
SignInManager
‚‚ +
.
‚‚+ ,
SignInAsync
‚‚, 7
(
‚‚7 8
user
‚‚8 <
,
‚‚< =
false
‚‚> C
,
‚‚C D
false
‚‚E J
)
‚‚J K
;
‚‚K L
return
„„ 
RedirectToLocal
„„ .
(
„„. /
	returnUrl
„„/ 8
)
„„8 9
;
„„9 :
}
‰‰ 
}
ÂÂ 
	AddErrors
ÊÊ 
(
ÊÊ 
result
ÊÊ  
)
ÊÊ  !
;
ÊÊ! "
}
ÁÁ 
ViewBag
ÈÈ 
.
ÈÈ 
	ReturnUrl
ÈÈ 
=
ÈÈ 
	returnUrl
ÈÈ  )
;
ÈÈ) *
return
ÍÍ 
View
ÍÍ 
(
ÍÍ 
model
ÍÍ 
)
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
[
ÔÔ 	
HttpPost
ÔÔ	 
]
ÔÔ 
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
ÒÒ 
ActionResult
ÒÒ 
LogOff
ÒÒ "
(
ÒÒ" #
)
ÒÒ# $
{
ÚÚ 	#
AuthenticationManager
ÛÛ !
.
ÛÛ! "
SignOut
ÛÛ" )
(
ÛÛ) *(
DefaultAuthenticationTypes
ÛÛ* D
.
ÛÛD E
ApplicationCookie
ÛÛE V
)
ÛÛV W
;
ÛÛW X
return
ÙÙ 
RedirectToAction
ÙÙ #
(
ÙÙ# $
$str
ÙÙ$ +
,
ÙÙ+ ,
$str
ÙÙ- 3
)
ÙÙ3 4
;
ÙÙ4 5
}
ıı 	
[
˘˘ 	
AllowAnonymous
˘˘	 
]
˘˘ 
public
˙˙ 
ActionResult
˙˙ "
ExternalLoginFailure
˙˙ 0
(
˙˙0 1
)
˙˙1 2
{
˚˚ 	
return
¸¸ 
View
¸¸ 
(
¸¸ 
)
¸¸ 
;
¸¸ 
}
˝˝ 	
	protected
ˇˇ 
override
ˇˇ 
void
ˇˇ 
Dispose
ˇˇ  '
(
ˇˇ' (
bool
ˇˇ( ,
	disposing
ˇˇ- 6
)
ˇˇ6 7
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
	disposing
ÅÅ 
)
ÅÅ 
{
ÇÇ 
if
ÉÉ 
(
ÉÉ 
_userManager
ÉÉ  
!=
ÉÉ! #
null
ÉÉ$ (
)
ÉÉ( )
{
ÑÑ 
_userManager
ÖÖ  
.
ÖÖ  !
Dispose
ÖÖ! (
(
ÖÖ( )
)
ÖÖ) *
;
ÖÖ* +
_userManager
ÜÜ  
=
ÜÜ! "
null
ÜÜ# '
;
ÜÜ' (
}
áá 
if
ââ 
(
ââ 
_signInManager
ââ "
!=
ââ# %
null
ââ& *
)
ââ* +
{
ää 
_signInManager
ãã "
.
ãã" #
Dispose
ãã# *
(
ãã* +
)
ãã+ ,
;
ãã, -
_signInManager
åå "
=
åå# $
null
åå% )
;
åå) *
}
çç 
}
éé 
base
êê 
.
êê 
Dispose
êê 
(
êê 
	disposing
êê "
)
êê" #
;
êê# $
}
ëë 	
private
ïï 
const
ïï 
string
ïï 
XsrfKey
ïï $
=
ïï% &
$str
ïï' /
;
ïï/ 0
private
óó $
IAuthenticationManager
óó &#
AuthenticationManager
óó' <
=>
óó= ?
HttpContext
óó@ K
.
óóK L
GetOwinContext
óóL Z
(
óóZ [
)
óó[ \
.
óó\ ]
Authentication
óó] k
;
óók l
private
ôô 
void
ôô 
	AddErrors
ôô 
(
ôô 
IdentityResult
ôô -
result
ôô. 4
)
ôô4 5
{
öö 	
foreach
õõ 
(
õõ 
var
õõ 
error
õõ 
in
õõ !
result
õõ" (
.
õõ( )
Errors
õõ) /
)
õõ/ 0
{
úú 

ModelState
ùù 
.
ùù 
AddModelError
ùù (
(
ùù( )
$str
ùù) +
,
ùù+ ,
error
ùù- 2
)
ùù2 3
;
ùù3 4
}
ûû 
}
üü 	
private
°° 
ActionResult
°° 
RedirectToLocal
°° ,
(
°°, -
string
°°- 3
	returnUrl
°°4 =
)
°°= >
{
¢¢ 	
if
££ 
(
££ 
Url
££ 
.
££ 

IsLocalUrl
££ 
(
££ 
	returnUrl
££ (
)
££( )
)
££) *
{
§§ 
return
•• 
Redirect
•• 
(
••  
	returnUrl
••  )
)
••) *
;
••* +
}
¶¶ 
return
ßß 
RedirectToAction
ßß #
(
ßß# $
$str
ßß$ +
,
ßß+ ,
$str
ßß- 3
)
ßß3 4
;
ßß4 5
}
®® 	
internal
™™ 
class
™™ 
ChallengeResult
™™ &
:
™™' ($
HttpUnauthorizedResult
™™) ?
{
´´ 	
public
¨¨ 
ChallengeResult
¨¨ "
(
¨¨" #
string
¨¨# )
provider
¨¨* 2
,
¨¨2 3
string
¨¨4 :
redirectUri
¨¨; F
)
¨¨F G
:
≠≠ 
this
≠≠ 
(
≠≠ 
provider
≠≠ 
,
≠≠  
redirectUri
≠≠! ,
,
≠≠, -
null
≠≠. 2
)
≠≠2 3
{
ÆÆ 
}
ØØ 
public
±± 
ChallengeResult
±± "
(
±±" #
string
±±# )
provider
±±* 2
,
±±2 3
string
±±4 :
redirectUri
±±; F
,
±±F G
string
±±H N
userId
±±O U
)
±±U V
{
≤≤ 
LoginProvider
≥≥ 
=
≥≥ 
provider
≥≥  (
;
≥≥( )
RedirectUri
¥¥ 
=
¥¥ 
redirectUri
¥¥ )
;
¥¥) *
UserId
µµ 
=
µµ 
userId
µµ 
;
µµ  
}
∂∂ 
public
∏∏ 
string
∏∏ 
LoginProvider
∏∏ '
{
∏∏( )
get
∏∏* -
;
∏∏- .
set
∏∏/ 2
;
∏∏2 3
}
∏∏4 5
public
ππ 
string
ππ 
RedirectUri
ππ %
{
ππ& '
get
ππ( +
;
ππ+ ,
set
ππ- 0
;
ππ0 1
}
ππ2 3
public
∫∫ 
string
∫∫ 
UserId
∫∫  
{
∫∫! "
get
∫∫# &
;
∫∫& '
set
∫∫( +
;
∫∫+ ,
}
∫∫- .
public
ºº 
override
ºº 
void
ºº  
ExecuteResult
ºº! .
(
ºº. /
ControllerContext
ºº/ @
context
ººA H
)
ººH I
{
ΩΩ 
var
ææ 

properties
ææ 
=
ææ  
new
ææ! $&
AuthenticationProperties
ææ% =
{
ææ> ?
RedirectUri
ææ@ K
=
ææL M
RedirectUri
ææN Y
}
ææZ [
;
ææ[ \
if
øø 
(
øø 
UserId
øø 
!=
øø 
null
øø "
)
øø" #
{
¿¿ 

properties
¡¡ 
.
¡¡ 

Dictionary
¡¡ )
[
¡¡) *
XsrfKey
¡¡* 1
]
¡¡1 2
=
¡¡3 4
UserId
¡¡5 ;
;
¡¡; <
}
¬¬ 
context
√√ 
.
√√ 
HttpContext
√√ #
.
√√# $
GetOwinContext
√√$ 2
(
√√2 3
)
√√3 4
.
√√4 5
Authentication
√√5 C
.
√√C D
	Challenge
√√D M
(
√√M N

properties
√√N X
,
√√X Y
LoginProvider
√√Z g
)
√√g h
;
√√h i
}
ƒƒ 
}
≈≈ 	
}
«« 
}»» íE
OC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\AdditiviController.cs
	namespace

 	
BrewDay2


 
.

 
Controllers

 
{ 
[ 
	Authorize 
] 
public 

class 
AdditiviController #
:$ %

Controller& 0
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
_db 
. 
Additivi $
.$ %
ToList% +
(+ ,
), -
)- .
;. /
} 	
public'' 
ActionResult'' 
Details'' #
(''# $
int''$ '
?''' (
id'') +
)''+ ,
{(( 	
if)) 
()) 
id)) 
==)) 
null)) 
))) 
{** 
return++ 
new++  
HttpStatusCodeResult++ /
(++/ 0
HttpStatusCode++0 >
.++> ?

BadRequest++? I
)++I J
;++J K
},, 
Additivi-- 
additivi-- 
=-- 
_db--  #
.--# $
Additivi--$ ,
.--, -
Find--- 1
(--1 2
id--2 4
)--4 5
;--5 6
if.. 
(.. 
additivi.. 
==.. 
null..  
)..  !
{// 
return00 
HttpNotFound00 #
(00# $
)00$ %
;00% &
}11 
return22 
View22 
(22 
additivi22  
)22  !
;22! "
}33 	
public<< 
ActionResult<< 
Create<< "
(<<" #
)<<# $
{== 	
Additivi>> 
a>> 
=>> 
new>> 
Additivi>> %
{>>& '
UserId>>' -
=>>. /
User>>0 4
.>>4 5
Identity>>5 =
.>>= >
	GetUserId>>> G
(>>G H
)>>H I
}>>I J
;>>J K
return@@ 
View@@ 
(@@ 
a@@ 
)@@ 
;@@ 
}AA 	
[LL 	
HttpPostLL	 
]LL 
[MM 	$
ValidateAntiForgeryTokenMM	 !
]MM! "
publicNN 
ActionResultNN 
CreateNN "
(NN" #
AdditiviNN# +
additiviNN, 4
)NN4 5
{OO 	
ifPP 
(PP 

ModelStatePP 
.PP 
IsValidPP "
)PP" #
{QQ 
_dbRR 
.RR 
AdditiviRR 
.RR 
AddRR  
(RR  !
additiviRR! )
)RR) *
;RR* +
_dbSS 
.SS 
SaveChangesSS 
(SS  
)SS  !
;SS! "
returnTT 
RedirectToActionTT '
(TT' (
$strTT( /
)TT/ 0
;TT0 1
}UU 
returnWW 
ViewWW 
(WW 
additiviWW  
)WW  !
;WW! "
}XX 	
publiccc 
ActionResultcc 
Editcc  
(cc  !
intcc! $
?cc$ %
idcc& (
)cc( )
{dd 	
ifee 
(ee 
idee 
==ee 
nullee 
)ee 
{ff 

PathConfiggg 
cgg 
=gg 
newgg "

PathConfiggg# -
(gg- .
)gg. /
;gg/ 0
returnhh 
Redirecthh 
(hh  
chh  !
.hh! "
errorhh" '
)hh' (
;hh( )
}ii 
Additivijj 
additivijj 
=jj 
_dbjj  #
.jj# $
Additivijj$ ,
.jj, -
Findjj- 1
(jj1 2
idjj2 4
)jj4 5
;jj5 6
ifkk 
(kk 
additivikk 
==kk 
nullkk  
)kk  !
{ll 
returnmm 
HttpNotFoundmm #
(mm# $
)mm$ %
;mm% &
}nn 
returnoo 
Viewoo 
(oo 
additivioo  
)oo  !
;oo! "
}pp 	
[|| 	
HttpPost||	 
]|| 
[}} 	$
ValidateAntiForgeryToken}}	 !
]}}! "
public~~ 
ActionResult~~ 
Edit~~  
(~~  !
[~~! "
Bind~~" &
(~~& '
Include~~' .
=~~/ 0
$str~~1 X
)~~X Y
]~~Y Z
Additivi~~[ c
additivi~~d l
)~~l m
{ 	
if
ÄÄ 
(
ÄÄ 

ModelState
ÄÄ 
.
ÄÄ 
IsValid
ÄÄ "
)
ÄÄ" #
{
ÅÅ 
_db
ÇÇ 
.
ÇÇ 
Entry
ÇÇ 
(
ÇÇ 
additivi
ÇÇ "
)
ÇÇ" #
.
ÇÇ# $
State
ÇÇ$ )
=
ÇÇ* +
EntityState
ÇÇ, 7
.
ÇÇ7 8
Modified
ÇÇ8 @
;
ÇÇ@ A
_db
ÉÉ 
.
ÉÉ 
SaveChanges
ÉÉ 
(
ÉÉ  
)
ÉÉ  !
;
ÉÉ! "
return
ÑÑ 
RedirectToAction
ÑÑ '
(
ÑÑ' (
$str
ÑÑ( /
)
ÑÑ/ 0
;
ÑÑ0 1
}
ÖÖ 
return
ÜÜ 
View
ÜÜ 
(
ÜÜ 
additivi
ÜÜ  
)
ÜÜ  !
;
ÜÜ! "
}
áá 	
public
íí 
ActionResult
íí 
Delete
íí "
(
íí" #
int
íí# &
?
íí& '
id
íí( *
)
íí* +
{
ìì 	
if
îî 
(
îî 
id
îî 
==
îî 
null
îî 
)
îî 
{
ïï 

PathConfig
ññ 
c
ññ 
=
ññ 
new
ññ "

PathConfig
ññ# -
(
ññ- .
)
ññ. /
;
ññ/ 0
return
óó 
Redirect
óó 
(
óó  
c
óó  !
.
óó! "
error2
óó" (
)
óó( )
;
óó) *
}
òò 
Additivi
ôô 
additivi
ôô 
=
ôô 
_db
ôô  #
.
ôô# $
Additivi
ôô$ ,
.
ôô, -
Find
ôô- 1
(
ôô1 2
id
ôô2 4
)
ôô4 5
;
ôô5 6
if
öö 
(
öö 
additivi
öö 
==
öö 
null
öö  
)
öö  !
{
õõ 
return
úú 
HttpNotFound
úú #
(
úú# $
)
úú$ %
;
úú% &
}
ùù 
return
ûû 
View
ûû 
(
ûû 
additivi
ûû  
)
ûû  !
;
ûû! "
}
üü 	
[
™™ 	
HttpPost
™™	 
,
™™ 

ActionName
™™ 
(
™™ 
$str
™™ &
)
™™& '
]
™™' (
[
´´ 	&
ValidateAntiForgeryToken
´´	 !
]
´´! "
public
¨¨ 
ActionResult
¨¨ 
DeleteConfirmed
¨¨ +
(
¨¨+ ,
int
¨¨, /
id
¨¨0 2
)
¨¨2 3
{
≠≠ 	
Additivi
ÆÆ 
additivi
ÆÆ 
=
ÆÆ 
_db
ÆÆ  #
.
ÆÆ# $
Additivi
ÆÆ$ ,
.
ÆÆ, -
Find
ÆÆ- 1
(
ÆÆ1 2
id
ÆÆ2 4
)
ÆÆ4 5
;
ÆÆ5 6
_db
ØØ 
.
ØØ 
Additivi
ØØ 
.
ØØ 
Remove
ØØ 
(
ØØ  
additivi
ØØ  (
??
ØØ) +
throw
ØØ, 1
new
ØØ2 5'
InvalidOperationException
ØØ6 O
(
ØØO P
)
ØØP Q
)
ØØQ R
;
ØØR S
_db
∞∞ 
.
∞∞ 
SaveChanges
∞∞ 
(
∞∞ 
)
∞∞ 
;
∞∞ 
return
±± 
RedirectToAction
±± #
(
±±# $
$str
±±$ +
)
±±+ ,
;
±±, -
}
≤≤ 	
	protected
¥¥ 
override
¥¥ 
void
¥¥ 
Dispose
¥¥  '
(
¥¥' (
bool
¥¥( ,
	disposing
¥¥- 6
)
¥¥6 7
{
µµ 	
if
∂∂ 
(
∂∂ 
	disposing
∂∂ 
)
∂∂ 
{
∑∑ 
_db
∏∏ 
.
∏∏ 
Dispose
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏ 
}
ππ 
base
∫∫ 
.
∫∫ 
Dispose
∫∫ 
(
∫∫ 
	disposing
∫∫ "
)
∫∫" #
;
∫∫# $
}
ªª 	
}
ºº 
}ΩΩ ø
KC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\HomeController.cs
	namespace 	
BrewDay2
 
. 
Controllers 
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private		 
readonly		  
ApplicationDbContext		 -
_db		. 1
=		2 3
new		4 7 
ApplicationDbContext		8 L
(		L M
)		M N
;		N O
[ 	
HttpGet	 
] 
public 
ActionResult 
Index !
(! "
)" #
{ 	
var 
daRestituire 
= 
_db "
." #
Ricette# *
.* +
Where+ 0
(0 1
x1 2
=>3 5
!6 7
x7 8
.8 9
Privata9 @
)@ A
;A B
return 
View 
( 
daRestituire $
)$ %
;% &
} 	
public 
ActionResult 
About !
(! "
)" #
{ 	
ViewBag 
. 
Message 
= 
$str B
;B C
return 
View 
( 
) 
; 
} 	
public 
ActionResult 
Contact #
(# $
)$ %
{ 	
ViewBag 
. 
Message 
= 
$str 2
;2 3
return 
View 
( 
) 
; 
} 	
} 
}   ËE
OC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\LievitisController.cs
	namespace

 	
BrewDay2


 
.

 
Controllers

 
{ 
[ 
	Authorize 
] 
public 

class 
LievitisController #
:$ %

Controller& 0
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
_db 
. 
Lieviti #
.# $
ToList$ *
(* +
)+ ,
), -
;- .
} 	
public&& 
ActionResult&& 
Details&& #
(&&# $
int&&$ '
?&&' (
id&&) +
)&&+ ,
{'' 	
if(( 
((( 
id(( 
==(( 
null(( 
)(( 
{)) 

PathConfig** 
c** 
=** 
new** "

PathConfig**# -
(**- .
)**. /
;**/ 0
return++ 
Redirect++ 
(++  
c++  !
.++! "
error++" '
)++' (
;++( )
},, 
Lieviti-- 
lieviti-- 
=-- 
_db-- !
.--! "
Lieviti--" )
.--) *
Find--* .
(--. /
id--/ 1
)--1 2
;--2 3
if.. 
(.. 
lieviti.. 
==.. 
null.. 
)..  
{// 
return00 
HttpNotFound00 #
(00# $
)00$ %
;00% &
}11 
return22 
View22 
(22 
lieviti22 
)22  
;22  !
}33 	
public<< 
ActionResult<< 
Create<< "
(<<" #
)<<# $
{== 	
Lieviti>> 
l>> 
=>> 
new>> 
Lieviti>> #
{>>$ %
UserId>>% +
=>>, -
User>>. 2
.>>2 3
Identity>>3 ;
.>>; <
	GetUserId>>< E
(>>E F
)>>F G
}>>G H
;>>H I
return?? 
View?? 
(?? 
l?? 
)?? 
;?? 
}@@ 	
[KK 	
HttpPostKK	 
]KK 
[LL 	$
ValidateAntiForgeryTokenLL	 !
]LL! "
publicMM 
ActionResultMM 
CreateMM "
(MM" #
[MM# $
BindMM$ (
(MM( )
IncludeMM) 0
=MM1 2
$strMM3 Z
)MMZ [
]MM[ \
LievitiMM] d
lievitiMMe l
)MMl m
{NN 	
ifOO 
(OO 

ModelStateOO 
.OO 
IsValidOO "
)OO" #
{PP 
_dbQQ 
.QQ 
LievitiQQ 
.QQ 
AddQQ 
(QQ  
lievitiQQ  '
)QQ' (
;QQ( )
_dbRR 
.RR 
SaveChangesRR 
(RR  
)RR  !
;RR! "
returnSS 
RedirectToActionSS '
(SS' (
$strSS( /
)SS/ 0
;SS0 1
}TT 
returnVV 
ViewVV 
(VV 
lievitiVV 
)VV  
;VV  !
}WW 	
publicbb 
ActionResultbb 
Editbb  
(bb  !
intbb! $
?bb$ %
idbb& (
)bb( )
{cc 	
ifdd 
(dd 
iddd 
==dd 
nulldd 
)dd 
{ee 
returnff 
newff  
HttpStatusCodeResultff /
(ff/ 0
HttpStatusCodeff0 >
.ff> ?

BadRequestff? I
)ffI J
;ffJ K
}gg 
Lievitihh 
lievitihh 
=hh 
_dbhh !
.hh! "
Lievitihh" )
.hh) *
Findhh* .
(hh. /
idhh/ 1
)hh1 2
;hh2 3
ifii 
(ii 
lievitiii 
==ii 
nullii 
)ii  
{jj 
returnkk 
HttpNotFoundkk #
(kk# $
)kk$ %
;kk% &
}ll 
returnmm 
Viewmm 
(mm 
lievitimm 
)mm  
;mm  !
}nn 	
[zz 	
HttpPostzz	 
]zz 
[{{ 	$
ValidateAntiForgeryToken{{	 !
]{{! "
public|| 
ActionResult|| 
Edit||  
(||  !
[||! "
Bind||" &
(||& '
Include||' .
=||/ 0
$str||1 X
)||X Y
]||Y Z
Lieviti||[ b
lieviti||c j
)||j k
{}} 	
if~~ 
(~~ 

ModelState~~ 
.~~ 
IsValid~~ "
)~~" #
{ 
_db
ÄÄ 
.
ÄÄ 
Entry
ÄÄ 
(
ÄÄ 
lieviti
ÄÄ !
)
ÄÄ! "
.
ÄÄ" #
State
ÄÄ# (
=
ÄÄ) *
EntityState
ÄÄ+ 6
.
ÄÄ6 7
Modified
ÄÄ7 ?
;
ÄÄ? @
_db
ÅÅ 
.
ÅÅ 
SaveChanges
ÅÅ 
(
ÅÅ  
)
ÅÅ  !
;
ÅÅ! "
return
ÇÇ 
RedirectToAction
ÇÇ '
(
ÇÇ' (
$str
ÇÇ( /
)
ÇÇ/ 0
;
ÇÇ0 1
}
ÉÉ 
return
ÑÑ 
View
ÑÑ 
(
ÑÑ 
lieviti
ÑÑ 
)
ÑÑ  
;
ÑÑ  !
}
ÖÖ 	
public
êê 
ActionResult
êê 
Delete
êê "
(
êê" #
int
êê# &
?
êê& '
id
êê( *
)
êê* +
{
ëë 	
if
íí 
(
íí 
id
íí 
==
íí 
null
íí 
)
íí 
{
ìì 

PathConfig
îî 
c
îî 
=
îî 
new
îî "

PathConfig
îî# -
(
îî- .
)
îî. /
;
îî/ 0
return
ïï 
Redirect
ïï 
(
ïï  
c
ïï  !
.
ïï! "
error2
ïï" (
)
ïï( )
;
ïï) *
}
ññ 
Lieviti
óó 
lieviti
óó 
=
óó 
_db
óó !
.
óó! "
Lieviti
óó" )
.
óó) *
Find
óó* .
(
óó. /
id
óó/ 1
)
óó1 2
;
óó2 3
if
òò 
(
òò 
lieviti
òò 
==
òò 
null
òò 
)
òò  
{
ôô 
return
öö 
HttpNotFound
öö #
(
öö# $
)
öö$ %
;
öö% &
}
õõ 
return
úú 
View
úú 
(
úú 
lieviti
úú 
)
úú  
;
úú  !
}
ùù 	
[
ßß 	
HttpPost
ßß	 
,
ßß 

ActionName
ßß 
(
ßß 
$str
ßß &
)
ßß& '
]
ßß' (
[
®® 	&
ValidateAntiForgeryToken
®®	 !
]
®®! "
public
©© 
ActionResult
©© 
DeleteConfirmed
©© +
(
©©+ ,
int
©©, /
id
©©0 2
)
©©2 3
{
™™ 	
Lieviti
´´ 
lieviti
´´ 
=
´´ 
_db
´´ !
.
´´! "
Lieviti
´´" )
.
´´) *
Find
´´* .
(
´´. /
id
´´/ 1
)
´´1 2
;
´´2 3
_db
¨¨ 
.
¨¨ 
Lieviti
¨¨ 
.
¨¨ 
Remove
¨¨ 
(
¨¨ 
lieviti
¨¨ &
??
¨¨' )
throw
¨¨* /
new
¨¨0 3'
InvalidOperationException
¨¨4 M
(
¨¨M N
)
¨¨N O
)
¨¨O P
;
¨¨P Q
_db
≠≠ 
.
≠≠ 
SaveChanges
≠≠ 
(
≠≠ 
)
≠≠ 
;
≠≠ 
return
ÆÆ 
RedirectToAction
ÆÆ #
(
ÆÆ# $
$str
ÆÆ$ +
)
ÆÆ+ ,
;
ÆÆ, -
}
ØØ 	
	protected
±± 
override
±± 
void
±± 
Dispose
±±  '
(
±±' (
bool
±±( ,
	disposing
±±- 6
)
±±6 7
{
≤≤ 	
if
≥≥ 
(
≥≥ 
	disposing
≥≥ 
)
≥≥ 
{
¥¥ 
_db
µµ 
.
µµ 
Dispose
µµ 
(
µµ 
)
µµ 
;
µµ 
}
∂∂ 
base
∑∑ 
.
∑∑ 
Dispose
∑∑ 
(
∑∑ 
	disposing
∑∑ "
)
∑∑" #
;
∑∑# $
}
∏∏ 	
}
ππ 
}∫∫ ÊE
NC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\LuppoliController.cs
	namespace

 	
BrewDay2


 
.

 
Controllers

 
{ 
[ 
	Authorize 
] 
public 

class 
LuppoliController "
:# $

Controller% /
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
_db 
. 
Luppoli #
.# $
ToList$ *
(* +
)+ ,
), -
;- .
} 	
public&& 
ActionResult&& 
Details&& #
(&&# $
int&&$ '
?&&' (
id&&) +
)&&+ ,
{'' 	
if(( 
((( 
id(( 
==(( 
null(( 
)(( 
{)) 
return** 
new**  
HttpStatusCodeResult** /
(**/ 0
HttpStatusCode**0 >
.**> ?

BadRequest**? I
)**I J
;**J K
}++ 
Luppoli,, 
luppoli,, 
=,, 
_db,, !
.,,! "
Luppoli,," )
.,,) *
Find,,* .
(,,. /
id,,/ 1
),,1 2
;,,2 3
if-- 
(-- 
luppoli-- 
==-- 
null-- 
)--  
{.. 
return// 
HttpNotFound// #
(//# $
)//$ %
;//% &
}00 
return11 
View11 
(11 
luppoli11 
)11  
;11  !
}22 	
public;; 
ActionResult;; 
Create;; "
(;;" #
);;# $
{<< 	
Luppoli== 
l== 
=== 
new== 
Luppoli== #
{==$ %
UserId==% +
===, -
User==. 2
.==2 3
Identity==3 ;
.==; <
	GetUserId==< E
(==E F
)==F G
}==G H
;==H I
return>> 
View>> 
(>> 
l>> 
)>> 
;>> 
}?? 	
[JJ 	
HttpPostJJ	 
]JJ 
[KK 	$
ValidateAntiForgeryTokenKK	 !
]KK! "
publicLL 
ActionResultLL 
CreateLL "
(LL" #
[LL# $
BindLL$ (
(LL( )
IncludeLL) 0
=LL1 2
$strLL3 Z
)LLZ [
]LL[ \
LuppoliLL] d
luppoliLLe l
)LLl m
{MM 	
ifNN 
(NN 

ModelStateNN 
.NN 
IsValidNN "
)NN" #
{OO 
_dbPP 
.PP 
LuppoliPP 
.PP 
AddPP 
(PP  
luppoliPP  '
)PP' (
;PP( )
_dbQQ 
.QQ 
SaveChangesQQ 
(QQ  
)QQ  !
;QQ! "
returnRR 
RedirectToActionRR '
(RR' (
$strRR( /
)RR/ 0
;RR0 1
}SS 
returnUU 
ViewUU 
(UU 
luppoliUU 
)UU  
;UU  !
}VV 	
publicaa 
ActionResultaa 
Editaa  
(aa  !
intaa! $
?aa$ %
idaa& (
)aa( )
{bb 	
ifcc 
(cc 
idcc 
==cc 
nullcc 
)cc 
{dd 

PathConfigee 
cee 
=ee 
newee "

PathConfigee# -
(ee- .
)ee. /
;ee/ 0
returnff 
Redirectff 
(ff  
cff  !
.ff! "
errorff" '
)ff' (
;ff( )
}gg 
Luppolihh 
luppolihh 
=hh 
_dbhh !
.hh! "
Luppolihh" )
.hh) *
Findhh* .
(hh. /
idhh/ 1
)hh1 2
;hh2 3
ifii 
(ii 
luppoliii 
==ii 
nullii 
)ii  
{jj 
returnkk 
HttpNotFoundkk #
(kk# $
)kk$ %
;kk% &
}ll 
returnmm 
Viewmm 
(mm 
luppolimm 
)mm  
;mm  !
}nn 	
[zz 	
HttpPostzz	 
]zz 
[{{ 	$
ValidateAntiForgeryToken{{	 !
]{{! "
public|| 
ActionResult|| 
Edit||  
(||  !
[||! "
Bind||" &
(||& '
Include||' .
=||/ 0
$str||1 X
)||X Y
]||Y Z
Luppoli||[ b
luppoli||c j
)||j k
{}} 	
if~~ 
(~~ 

ModelState~~ 
.~~ 
IsValid~~ "
)~~" #
{ 
_db
ÄÄ 
.
ÄÄ 
Entry
ÄÄ 
(
ÄÄ 
luppoli
ÄÄ !
)
ÄÄ! "
.
ÄÄ" #
State
ÄÄ# (
=
ÄÄ) *
EntityState
ÄÄ+ 6
.
ÄÄ6 7
Modified
ÄÄ7 ?
;
ÄÄ? @
_db
ÅÅ 
.
ÅÅ 
SaveChanges
ÅÅ 
(
ÅÅ  
)
ÅÅ  !
;
ÅÅ! "
return
ÇÇ 
RedirectToAction
ÇÇ '
(
ÇÇ' (
$str
ÇÇ( /
)
ÇÇ/ 0
;
ÇÇ0 1
}
ÉÉ 
return
ÑÑ 
View
ÑÑ 
(
ÑÑ 
luppoli
ÑÑ 
)
ÑÑ  
;
ÑÑ  !
}
ÖÖ 	
public
êê 
ActionResult
êê 
Delete
êê "
(
êê" #
int
êê# &
?
êê& '
id
êê( *
)
êê* +
{
ëë 	
if
íí 
(
íí 
id
íí 
==
íí 
null
íí 
)
íí 
{
ìì 

PathConfig
îî 
c
îî 
=
îî 
new
îî "

PathConfig
îî# -
(
îî- .
)
îî. /
;
îî/ 0
return
ïï 
Redirect
ïï 
(
ïï  
c
ïï  !
.
ïï! "
error2
ïï" (
)
ïï( )
;
ïï) *
}
ññ 
Luppoli
óó 
luppoli
óó 
=
óó 
_db
óó !
.
óó! "
Luppoli
óó" )
.
óó) *
Find
óó* .
(
óó. /
id
óó/ 1
)
óó1 2
;
óó2 3
if
òò 
(
òò 
luppoli
òò 
==
òò 
null
òò 
)
òò  
{
ôô 
return
öö 
HttpNotFound
öö #
(
öö# $
)
öö$ %
;
öö% &
}
õõ 
return
úú 
View
úú 
(
úú 
luppoli
úú 
)
úú  
;
úú  !
}
ùù 	
[
ßß 	
HttpPost
ßß	 
,
ßß 

ActionName
ßß 
(
ßß 
$str
ßß &
)
ßß& '
]
ßß' (
[
®® 	&
ValidateAntiForgeryToken
®®	 !
]
®®! "
public
©© 
ActionResult
©© 
DeleteConfirmed
©© +
(
©©+ ,
int
©©, /
id
©©0 2
)
©©2 3
{
™™ 	
Luppoli
´´ 
luppoli
´´ 
=
´´ 
_db
´´ !
.
´´! "
Luppoli
´´" )
.
´´) *
Find
´´* .
(
´´. /
id
´´/ 1
)
´´1 2
;
´´2 3
_db
¨¨ 
.
¨¨ 
Luppoli
¨¨ 
.
¨¨ 
Remove
¨¨ 
(
¨¨ 
luppoli
¨¨ &
??
¨¨' )
throw
¨¨* /
new
¨¨0 3'
InvalidOperationException
¨¨4 M
(
¨¨M N
)
¨¨N O
)
¨¨O P
;
¨¨P Q
_db
≠≠ 
.
≠≠ 
SaveChanges
≠≠ 
(
≠≠ 
)
≠≠ 
;
≠≠ 
return
ÆÆ 
RedirectToAction
ÆÆ #
(
ÆÆ# $
$str
ÆÆ$ +
)
ÆÆ+ ,
;
ÆÆ, -
}
ØØ 	
	protected
±± 
override
±± 
void
±± 
Dispose
±±  '
(
±±' (
bool
±±( ,
	disposing
±±- 6
)
±±6 7
{
≤≤ 	
if
≥≥ 
(
≥≥ 
	disposing
≥≥ 
)
≥≥ 
{
¥¥ 
_db
µµ 
.
µµ 
Dispose
µµ 
(
µµ 
)
µµ 
;
µµ 
}
∂∂ 
base
∑∑ 
.
∑∑ 
Dispose
∑∑ 
(
∑∑ 
	disposing
∑∑ "
)
∑∑" #
;
∑∑# $
}
∏∏ 	
}
ππ 
}∫∫ Y
PC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\MagazzinoController.cs
	namespace 	
BrewDay2
 
. 
Controllers 
{		 
[

 
	Authorize

 
]

 
public 

class 
MagazzinoController $
:% &

Controller' 1
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
var 
me 
= 
_db 
. 
Users 
. 
First $
($ %
x% &
=>' )
x* +
.+ ,
UserName, 4
==5 7
User8 <
.< =
Identity= E
.E F
NameF J
)J K
;K L
return 
View 
( 
_db 
. 
Magazzinoes '
.' (
First( -
(- .
f. /
=>0 2
f3 4
.4 5
UserId5 ;
==< >
me? A
.A B
IdB D
)D E
)E F
;F G
} 	
public"" 
ActionResult"" 
Details"" #
(""# $
int""$ '
?""' (
id"") +
)""+ ,
{## 	
if$$ 
($$ 
id$$ 
==$$ 
null$$ 
)$$ 
{%% 

PathConfig&& 
c&& 
=&& 
new&& "

PathConfig&&# -
(&&- .
)&&. /
;&&/ 0
return'' 
Redirect'' 
(''  
c''  !
.''! "
error''" '
)''' (
;''( )
}(( 
	Magazzino)) 
	magazzino)) 
=))  !
_db))" %
.))% &
Magazzinoes))& 1
.))1 2
Find))2 6
())6 7
id))7 9
)))9 :
;)): ;
if** 
(** 
	magazzino** 
==** 
null** !
)**! "
{++ 
return,, 
HttpNotFound,, #
(,,# $
),,$ %
;,,% &
}-- 
return.. 
View.. 
(.. 
	magazzino.. !
)..! "
;.." #
}// 	
public99 
ActionResult99 
Create99 "
(99" #
)99# $
{:: 	
var;; 
me;; 
=;; 
_db;; 
.;; 
Users;; 
.;; 
First;; $
(;;$ %
x;;% &
=>;;' )
x;;* +
.;;+ ,
UserName;;, 4
==;;5 7
User;;8 <
.;;< =
Identity;;= E
.;;E F
Name;;F J
);;J K
;;;K L
	Magazzino<< 
m<< 
=<< 
new<< 
	Magazzino<< '
{== 
UserId>> 
=>> 
me>> 
.>> 
Id>> 
}?? 
;?? 
return@@ 
View@@ 
(@@ 
m@@ 
)@@ 
;@@ 
}AA 	
[LL 	
HttpPostLL	 
]LL 
[MM 	$
ValidateAntiForgeryTokenMM	 !
]MM! "
publicNN 
ActionResultNN 
CreateNN "
(NN" #
[NN# $
BindNN$ (
(NN( )
IncludeNN) 0
=NN1 2
$strNN3 G
)NNG H
]NNH I
	MagazzinoNNJ S
	magazzinoNNT ]
)NN] ^
{OO 	
ifPP 
(PP 

ModelStatePP 
.PP 
IsValidPP "
)PP" #
{QQ 
_dbRR 
.RR 
MagazzinoesRR 
.RR  
AddRR  #
(RR# $
	magazzinoRR$ -
)RR- .
;RR. /
_dbSS 
.SS 
SaveChangesSS 
(SS  
)SS  !
;SS! "
returnTT 
RedirectToActionTT '
(TT' (
$strTT( /
)TT/ 0
;TT0 1
}UU 
returnWW 
ViewWW 
(WW 
	magazzinoWW !
)WW! "
;WW" #
}XX 	
publicaa 
ActionResultaa 
Editaa  
(aa  !
intaa! $
?aa$ %
idaa& (
)aa( )
{bb 	
ifcc 
(cc 
idcc 
==cc 
nullcc 
)cc 
{dd 
returnee 
newee  
HttpStatusCodeResultee /
(ee/ 0
HttpStatusCodeee0 >
.ee> ?

BadRequestee? I
)eeI J
;eeJ K
}ff 
	Magazzinogg 
	magazzinogg 
=gg  !
_dbgg" %
.gg% &
Magazzinoesgg& 1
.gg1 2
Findgg2 6
(gg6 7
idgg7 9
)gg9 :
;gg: ;
ifhh 
(hh 
	magazzinohh 
==hh 
nullhh !
)hh! "
{ii 
returnjj 
HttpNotFoundjj #
(jj# $
)jj$ %
;jj% &
}kk 
returnll 
Viewll 
(ll 
	magazzinoll !
)ll! "
;ll" #
}mm 	
[yy 	
HttpPostyy	 
]yy 
[zz 	$
ValidateAntiForgeryTokenzz	 !
]zz! "
public{{ 
ActionResult{{ 
Edit{{  
({{  !
[{{! "
Bind{{" &
({{& '
Include{{' .
={{/ 0
$str{{1 E
){{E F
]{{F G
	Magazzino{{H Q
	magazzino{{R [
){{[ \
{|| 	
if}} 
(}} 

ModelState}} 
.}} 
IsValid}} "
)}}" #
{~~ 
_db 
. 
Entry 
( 
	magazzino #
)# $
.$ %
State% *
=+ ,
EntityState- 8
.8 9
Modified9 A
;A B
_db
ÄÄ 
.
ÄÄ 
SaveChanges
ÄÄ 
(
ÄÄ  
)
ÄÄ  !
;
ÄÄ! "
return
ÅÅ 
RedirectToAction
ÅÅ '
(
ÅÅ' (
$str
ÅÅ( /
)
ÅÅ/ 0
;
ÅÅ0 1
}
ÇÇ 
return
ÉÉ 
View
ÉÉ 
(
ÉÉ 
	magazzino
ÉÉ !
)
ÉÉ! "
;
ÉÉ" #
}
ÑÑ 	
public
èè 
ActionResult
èè 
AggiungiAdditivo
èè ,
(
èè, -
)
èè- .
{
êê 	
AdditiviMagazzino
ëë 
am
ëë  
=
ëë! "
new
ëë# &
AdditiviMagazzino
ëë' 8
(
ëë8 9
)
ëë9 :
;
ëë: ;
var
íí 
me
íí 
=
íí 
_db
íí 
.
íí 
Users
íí 
.
íí 
First
íí $
(
íí$ %
x
íí% &
=>
íí' )
x
íí* +
.
íí+ ,
UserName
íí, 4
==
íí5 7
User
íí8 <
.
íí< =
Identity
íí= E
.
ííE F
Name
ííF J
)
ííJ K
;
ííK L
	Magazzino
ìì 
	magazzino
ìì 
=
ìì  !
_db
ìì" %
.
ìì% &
Magazzinoes
ìì& 1
.
ìì1 2
FirstOrDefault
ìì2 @
(
ìì@ A
x
ììA B
=>
ììC E
x
ììF G
.
ììG H
UserId
ììH N
==
ììO Q
me
ììR T
.
ììT U
Id
ììU W
)
ììW X
;
ììX Y
am
îî 
.
îî 
	Magazzino
îî 
=
îî 
	magazzino
îî $
;
îî$ %
am
ïï 
.
ïï 
MagazzinoId
ïï 
=
ïï 
	magazzino
ïï &
.
ïï& '
MagazzinoId
ïï' 2
;
ïï2 3

SelectList
ññ 
additivi
ññ 
=
ññ  !
new
ññ" %

SelectList
ññ& 0
(
ññ0 1
_db
ññ1 4
.
ññ4 5
Additivi
ññ5 =
,
ññ= >
$str
ññ> J
,
ññJ K
$str
ññK Q
)
ññQ R
;
ññR S
ViewBag
óó 
.
óó 
Additivi
óó 
=
óó 
additivi
óó '
;
óó' (
return
òò 
View
òò 
(
òò 
am
òò 
)
òò 
;
òò 
}
öö 	
[
§§ 	
HttpPost
§§	 
]
§§ 
public
•• 
ActionResult
•• 
AggiungiAdditivo
•• ,
(
••, -
AdditiviMagazzino
••- >
am
••? A
)
••A B
{
¶¶ 	
if
ßß 
(
ßß 

ModelState
ßß 
.
ßß 
IsValid
ßß "
)
ßß" #
{
®® 
_db
©© 
.
©©  
AdditiviMagazzinos
©© &
.
©©& '
Add
©©' *
(
©©* +
am
©©+ -
)
©©- .
;
©©. /
_db
™™ 
.
™™ 
SaveChanges
™™ 
(
™™  
)
™™  !
;
™™! "
return
´´ 
RedirectToAction
´´ '
(
´´' (
$str
´´( /
)
´´/ 0
;
´´0 1
}
¨¨ 
var
≠≠ 
me
≠≠ 
=
≠≠ 
_db
≠≠ 
.
≠≠ 
Users
≠≠ 
.
≠≠ 
First
≠≠ $
(
≠≠$ %
x
≠≠% &
=>
≠≠' )
x
≠≠* +
.
≠≠+ ,
UserName
≠≠, 4
==
≠≠5 7
User
≠≠8 <
.
≠≠< =
Identity
≠≠= E
.
≠≠E F
Name
≠≠F J
)
≠≠J K
;
≠≠K L
	Magazzino
ÆÆ 
	magazzino
ÆÆ 
=
ÆÆ  !
_db
ÆÆ" %
.
ÆÆ% &
Magazzinoes
ÆÆ& 1
.
ÆÆ1 2
FirstOrDefault
ÆÆ2 @
(
ÆÆ@ A
x
ÆÆA B
=>
ÆÆC E
x
ÆÆF G
.
ÆÆG H
UserId
ÆÆH N
==
ÆÆO Q
me
ÆÆR T
.
ÆÆT U
Id
ÆÆU W
)
ÆÆW X
;
ÆÆX Y
am
ØØ 
.
ØØ 
	Magazzino
ØØ 
=
ØØ 
	magazzino
ØØ $
;
ØØ$ %
am
∞∞ 
.
∞∞ 
MagazzinoId
∞∞ 
=
∞∞ 
	magazzino
∞∞ &
.
∞∞& '
MagazzinoId
∞∞' 2
;
∞∞2 3

SelectList
±± 
additivi
±± 
=
±±  !
new
±±" %

SelectList
±±& 0
(
±±0 1
_db
±±1 4
.
±±4 5
Additivi
±±5 =
,
±±= >
$str
±±? K
,
±±K L
$str
±±M S
)
±±S T
;
±±T U
ViewBag
≤≤ 
.
≤≤ 
Additivi
≤≤ 
=
≤≤ 
additivi
≤≤ '
;
≤≤' (
return
≥≥ 
View
≥≥ 
(
≥≥ 
am
≥≥ 
)
≥≥ 
;
≥≥ 
}
µµ 	
	protected
ºº 
override
ºº 
void
ºº 
Dispose
ºº  '
(
ºº' (
bool
ºº( ,
	disposing
ºº- 6
)
ºº6 7
{
ΩΩ 	
if
ææ 
(
ææ 
	disposing
ææ 
)
ææ 
{
øø 
_db
¿¿ 
.
¿¿ 
Dispose
¿¿ 
(
¿¿ 
)
¿¿ 
;
¿¿ 
}
¡¡ 
base
¬¬ 
.
¬¬ 
Dispose
¬¬ 
(
¬¬ 
	disposing
¬¬ "
)
¬¬" #
;
¬¬# $
}
√√ 	
}
ƒƒ 
}≈≈ §E
MC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\MaltisController.cs
	namespace

 	
BrewDay2


 
.

 
Controllers

 
{ 
[ 
	Authorize 
] 
public 

class 
MaltisController !
:" #

Controller$ .
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
_db 
. 
Malti !
.! "
ToList" (
(( )
)) *
)* +
;+ ,
} 	
public&& 
ActionResult&& 
Details&& #
(&&# $
int&&$ '
?&&' (
id&&) +
)&&+ ,
{'' 	
if(( 
((( 
id(( 
==(( 
null(( 
)(( 
{)) 

PathConfig** 
c** 
=** 
new** "

PathConfig**# -
(**- .
)**. /
;**/ 0
return++ 
Redirect++ 
(++  
c++  !
.++! "
error++" '
)++' (
;++( )
},, 
Malti-- 
malti-- 
=-- 
_db-- 
.-- 
Malti-- #
.--# $
Find--$ (
(--( )
id--) +
)--+ ,
;--, -
if.. 
(.. 
malti.. 
==.. 
null.. 
).. 
{// 
return00 
HttpNotFound00 #
(00# $
)00$ %
;00% &
}11 
return22 
View22 
(22 
malti22 
)22 
;22 
}33 	
public<< 
ActionResult<< 
Create<< "
(<<" #
)<<# $
{== 	
Malti>> 
m>> 
=>> 
new>> 
Malti>> 
{>>  !
UserId>>! '
=>>( )
User>>* .
.>>. /
Identity>>/ 7
.>>7 8
	GetUserId>>8 A
(>>A B
)>>B C
}>>C D
;>>D E
return?? 
View?? 
(?? 
m?? 
)?? 
;?? 
}@@ 	
[KK 	
HttpPostKK	 
]KK 
[LL 	$
ValidateAntiForgeryTokenLL	 !
]LL! "
publicMM 
ActionResultMM 
CreateMM "
(MM" #
[MM# $
BindMM$ (
(MM( )
IncludeMM) 0
=MM1 2
$strMM3 Z
)MMZ [
]MM[ \
MaltiMM] b
maltiMMc h
)MMh i
{NN 	
ifOO 
(OO 

ModelStateOO 
.OO 
IsValidOO "
)OO" #
{PP 
_dbQQ 
.QQ 
MaltiQQ 
.QQ 
AddQQ 
(QQ 
maltiQQ #
)QQ# $
;QQ$ %
_dbRR 
.RR 
SaveChangesRR 
(RR  
)RR  !
;RR! "
returnSS 
RedirectToActionSS '
(SS' (
$strSS( /
)SS/ 0
;SS0 1
}TT 
returnVV 
ViewVV 
(VV 
maltiVV 
)VV 
;VV 
}WW 	
publicbb 
ActionResultbb 
Editbb  
(bb  !
intbb! $
?bb$ %
idbb& (
)bb( )
{cc 	
ifdd 
(dd 
iddd 
==dd 
nulldd 
)dd 
{ee 
returnff 
newff  
HttpStatusCodeResultff /
(ff/ 0
HttpStatusCodeff0 >
.ff> ?

BadRequestff? I
)ffI J
;ffJ K
}gg 
Maltihh 
maltihh 
=hh 
_dbhh 
.hh 
Maltihh #
.hh# $
Findhh$ (
(hh( )
idhh) +
)hh+ ,
;hh, -
ifii 
(ii 
maltiii 
==ii 
nullii 
)ii 
{jj 
returnkk 
HttpNotFoundkk #
(kk# $
)kk$ %
;kk% &
}ll 
returnmm 
Viewmm 
(mm 
maltimm 
)mm 
;mm 
}nn 	
[zz 	
HttpPostzz	 
]zz 
[{{ 	$
ValidateAntiForgeryToken{{	 !
]{{! "
public|| 
ActionResult|| 
Edit||  
(||  !
[||! "
Bind||" &
(||& '
Include||' .
=||/ 0
$str||1 X
)||X Y
]||Y Z
Malti||[ `
malti||a f
)||f g
{}} 	
if~~ 
(~~ 

ModelState~~ 
.~~ 
IsValid~~ "
)~~" #
{ 
_db
ÄÄ 
.
ÄÄ 
Entry
ÄÄ 
(
ÄÄ 
malti
ÄÄ 
)
ÄÄ  
.
ÄÄ  !
State
ÄÄ! &
=
ÄÄ' (
EntityState
ÄÄ) 4
.
ÄÄ4 5
Modified
ÄÄ5 =
;
ÄÄ= >
_db
ÅÅ 
.
ÅÅ 
SaveChanges
ÅÅ 
(
ÅÅ  
)
ÅÅ  !
;
ÅÅ! "
return
ÇÇ 
RedirectToAction
ÇÇ '
(
ÇÇ' (
$str
ÇÇ( /
)
ÇÇ/ 0
;
ÇÇ0 1
}
ÉÉ 
return
ÑÑ 
View
ÑÑ 
(
ÑÑ 
malti
ÑÑ 
)
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
public
êê 
ActionResult
êê 
Delete
êê "
(
êê" #
int
êê# &
?
êê& '
id
êê( *
)
êê* +
{
ëë 	
if
íí 
(
íí 
id
íí 
==
íí 
null
íí 
)
íí 
{
ìì 

PathConfig
îî 
c
îî 
=
îî 
new
îî "

PathConfig
îî# -
(
îî- .
)
îî. /
;
îî/ 0
return
ïï 
Redirect
ïï 
(
ïï  
c
ïï  !
.
ïï! "
error2
ïï" (
)
ïï( )
;
ïï) *
}
ññ 
Malti
óó 
malti
óó 
=
óó 
_db
óó 
.
óó 
Malti
óó #
.
óó# $
Find
óó$ (
(
óó( )
id
óó) +
)
óó+ ,
;
óó, -
if
òò 
(
òò 
malti
òò 
==
òò 
null
òò 
)
òò 
{
ôô 
return
öö 
HttpNotFound
öö #
(
öö# $
)
öö$ %
;
öö% &
}
õõ 
return
úú 
View
úú 
(
úú 
malti
úú 
)
úú 
;
úú 
}
ùù 	
[
ßß 	
HttpPost
ßß	 
,
ßß 

ActionName
ßß 
(
ßß 
$str
ßß &
)
ßß& '
]
ßß' (
[
®® 	&
ValidateAntiForgeryToken
®®	 !
]
®®! "
public
©© 
ActionResult
©© 
DeleteConfirmed
©© +
(
©©+ ,
int
©©, /
id
©©0 2
)
©©2 3
{
™™ 	
Malti
´´ 
malti
´´ 
=
´´ 
_db
´´ 
.
´´ 
Malti
´´ #
.
´´# $
Find
´´$ (
(
´´( )
id
´´) +
)
´´+ ,
;
´´, -
_db
¨¨ 
.
¨¨ 
Malti
¨¨ 
.
¨¨ 
Remove
¨¨ 
(
¨¨ 
malti
¨¨ "
??
¨¨# %
throw
¨¨& +
new
¨¨, /'
InvalidOperationException
¨¨0 I
(
¨¨I J
)
¨¨J K
)
¨¨K L
;
¨¨L M
_db
≠≠ 
.
≠≠ 
SaveChanges
≠≠ 
(
≠≠ 
)
≠≠ 
;
≠≠ 
return
ÆÆ 
RedirectToAction
ÆÆ #
(
ÆÆ# $
$str
ÆÆ$ +
)
ÆÆ+ ,
;
ÆÆ, -
}
ØØ 	
	protected
±± 
override
±± 
void
±± 
Dispose
±±  '
(
±±' (
bool
±±( ,
	disposing
±±- 6
)
±±6 7
{
≤≤ 	
if
≥≥ 
(
≥≥ 
	disposing
≥≥ 
)
≥≥ 
{
¥¥ 
_db
µµ 
.
µµ 
Dispose
µµ 
(
µµ 
)
µµ 
;
µµ 
}
∂∂ 
base
∑∑ 
.
∑∑ 
Dispose
∑∑ 
(
∑∑ 
	disposing
∑∑ "
)
∑∑" #
;
∑∑# $
}
∏∏ 	
}
ππ 
}∫∫ ëˇ
MC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\ManageController.cs
	namespace

 	
BrewDay2


 
.

 
Controllers

 
{ 
[ 
	Authorize 
] 
public 

class 
ManageController !
:" #

Controller$ .
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
public 
ManageController 
(  
)  !
{ 	
} 	
public 
ManageController 
(  "
ApplicationUserManager  6
userManager7 B
,B C$
ApplicationSignInManagerD \
signInManager] j
)j k
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public $
ApplicationSignInManager '
SignInManager( 5
{ 	
get 
=> 
_signInManager !
??" $
HttpContext% 0
.0 1
GetOwinContext1 ?
(? @
)@ A
.A B
GetB E
<E F$
ApplicationSignInManagerF ^
>^ _
(_ `
)` a
;a b
private 
set 
=> 
_signInManager )
=* +
value, 1
;1 2
}   	
public"" "
ApplicationUserManager"" %
UserManager""& 1
{## 	
get$$ 
=>$$ 
_userManager$$ 
??$$  "
HttpContext$$# .
.$$. /
GetOwinContext$$/ =
($$= >
)$$> ?
.$$? @
GetUserManager$$@ N
<$$N O"
ApplicationUserManager$$O e
>$$e f
($$f g
)$$g h
;$$h i
private%% 
set%% 
=>%% 
_userManager%% '
=%%( )
value%%* /
;%%/ 0
}&& 	
public** 
async** 
Task** 
<** 
ActionResult** &
>**& '
Index**( -
(**- .
ManageMessageId**. =
?**= >
message**? F
)**F G
{++ 	
ViewBag,, 
.,, 
StatusMessage,, !
=,," #
message-- 
==-- 
ManageMessageId-- *
.--* +!
ChangePasswordSuccess--+ @
?--A B
$str--C b
:.. 
message.. 
==.. 
ManageMessageId.. ,
..., -
SetPasswordSuccess..- ?
?..@ A
$str..B b
:// 
message// 
==// 
ManageMessageId// ,
.//, -
SetTwoFactorSuccess//- @
?//A B
$str	//C É
:00 
message00 
==00 
ManageMessageId00 ,
.00, -
Error00- 2
?003 4
$str005 Q
:11 
message11 
==11 
ManageMessageId11 ,
.11, -
AddPhoneSuccess11- <
?11= >
$str11? h
:22 
message22 
==22 
ManageMessageId22 ,
.22, -
RemovePhoneSuccess22- ?
?22@ A
$str22B j
:33 
$str33 
;33 
var55 
userId55 
=55 
User55 
.55 
Identity55 &
.55& '
	GetUserId55' 0
(550 1
)551 2
;552 3
var66 
model66 
=66 
new66 
IndexViewModel66 *
{77 
HasPassword88 
=88 
HasPassword88 )
(88) *
)88* +
,88+ ,
PhoneNumber99 
=99 
await99 #
UserManager99$ /
.99/ 0
GetPhoneNumberAsync990 C
(99C D
userId99D J
)99J K
,99K L
	TwoFactor:: 
=:: 
await:: !
UserManager::" -
.::- .$
GetTwoFactorEnabledAsync::. F
(::F G
userId::G M
)::M N
,::N O
Logins;; 
=;; 
await;; 
UserManager;; *
.;;* +
GetLoginsAsync;;+ 9
(;;9 :
userId;;: @
);;@ A
,;;A B
BrowserRemembered<< !
=<<" #
await<<$ )!
AuthenticationManager<<* ?
.<<? @+
TwoFactorBrowserRememberedAsync<<@ _
(<<_ `
userId<<` f
)<<f g
}== 
;== 
return>> 
View>> 
(>> 
model>> 
)>> 
;>> 
}?? 	
[CC 	
HttpPostCC	 
]CC 
[DD 	$
ValidateAntiForgeryTokenDD	 !
]DD! "
publicEE 
asyncEE 
TaskEE 
<EE 
ActionResultEE &
>EE& '
RemoveLoginEE( 3
(EE3 4
stringEE4 :
loginProviderEE; H
,EEH I
stringEEJ P
providerKeyEEQ \
)EE\ ]
{FF 	
ManageMessageIdGG 
?GG 
messageGG $
;GG$ %
varHH 
resultHH 
=HH 
awaitHH 
UserManagerHH *
.HH* +
RemoveLoginAsyncHH+ ;
(HH; <
UserHH< @
.HH@ A
IdentityHHA I
.HHI J
	GetUserIdHHJ S
(HHS T
)HHT U
,HHU V
newHHW Z
UserLoginInfoHH[ h
(HHh i
loginProviderHHi v
,HHv w
providerKey	HHx É
)
HHÉ Ñ
)
HHÑ Ö
;
HHÖ Ü
ifII 
(II 
resultII 
.II 
	SucceededII  
)II  !
{JJ 
varKK 
userKK 
=KK 
awaitKK  
UserManagerKK! ,
.KK, -
FindByIdAsyncKK- :
(KK: ;
UserKK; ?
.KK? @
IdentityKK@ H
.KKH I
	GetUserIdKKI R
(KKR S
)KKS T
)KKT U
;KKU V
ifLL 
(LL 
userLL 
!=LL 
nullLL  
)LL  !
{MM 
awaitNN 
SignInManagerNN '
.NN' (
SignInAsyncNN( 3
(NN3 4
userNN4 8
,NN8 9
falseNN: ?
,NN? @
falseNNA F
)NNF G
;NNG H
}OO 
messagePP 
=PP 
ManageMessageIdPP )
.PP) *
RemoveLoginSuccessPP* <
;PP< =
}QQ 
elseRR 
{SS 
messageTT 
=TT 
ManageMessageIdTT )
.TT) *
ErrorTT* /
;TT/ 0
}UU 
returnVV 
RedirectToActionVV #
(VV# $
$strVV$ 2
,VV2 3
newVV4 7
{VV8 9
MessageVV: A
=VVB C
messageVVD K
}VVL M
)VVM N
;VVN O
}WW 	
public[[ 
ActionResult[[ 
AddPhoneNumber[[ *
([[* +
)[[+ ,
{\\ 	
return]] 
View]] 
(]] 
)]] 
;]] 
}^^ 	
[bb 	
HttpPostbb	 
]bb 
[cc 	$
ValidateAntiForgeryTokencc	 !
]cc! "
publicdd 
asyncdd 
Taskdd 
<dd 
ActionResultdd &
>dd& '
AddPhoneNumberdd( 6
(dd6 7#
AddPhoneNumberViewModeldd7 N
modelddO T
)ddT U
{ee 	
ifff 
(ff 
!ff 

ModelStateff 
.ff 
IsValidff #
)ff# $
{gg 
returnhh 
Viewhh 
(hh 
modelhh !
)hh! "
;hh" #
}ii 
varkk 
codekk 
=kk 
awaitkk 
UserManagerkk (
.kk( )/
#GenerateChangePhoneNumberTokenAsynckk) L
(kkL M
UserkkM Q
.kkQ R
IdentitykkR Z
.kkZ [
	GetUserIdkk[ d
(kkd e
)kke f
,kkf g
modelkkh m
.kkm n
Numberkkn t
)kkt u
;kku v
ifll 
(ll 
UserManagerll 
.ll 

SmsServicell &
!=ll' )
nullll* .
)ll. /
{mm 
varnn 
messagenn 
=nn 
newnn !
IdentityMessagenn" 1
{oo 
Destinationpp 
=pp  !
modelpp" '
.pp' (
Numberpp( .
,pp. /
Bodyqq 
=qq 
$strqq 7
+qq8 9
codeqq: >
}rr 
;rr 
awaitss 
UserManagerss !
.ss! "

SmsServicess" ,
.ss, -
	SendAsyncss- 6
(ss6 7
messagess7 >
)ss> ?
;ss? @
}tt 
returnuu 
RedirectToActionuu #
(uu# $
$struu$ 7
,uu7 8
newuu9 <
{uu= >
PhoneNumberuu? J
=uuK L
modeluuM R
.uuR S
NumberuuS Y
}uuZ [
)uu[ \
;uu\ ]
}vv 	
[zz 	
HttpPostzz	 
]zz 
[{{ 	$
ValidateAntiForgeryToken{{	 !
]{{! "
public|| 
async|| 
Task|| 
<|| 
ActionResult|| &
>||& ')
EnableTwoFactorAuthentication||( E
(||E F
)||F G
{}} 	
await~~ 
UserManager~~ 
.~~ $
SetTwoFactorEnabledAsync~~ 6
(~~6 7
User~~7 ;
.~~; <
Identity~~< D
.~~D E
	GetUserId~~E N
(~~N O
)~~O P
,~~P Q
true~~R V
)~~V W
;~~W X
var 
user 
= 
await 
UserManager (
.( )
FindByIdAsync) 6
(6 7
User7 ;
.; <
Identity< D
.D E
	GetUserIdE N
(N O
)O P
)P Q
;Q R
if
ÄÄ 
(
ÄÄ 
user
ÄÄ 
!=
ÄÄ 
null
ÄÄ 
)
ÄÄ 
{
ÅÅ 
await
ÇÇ 
SignInManager
ÇÇ #
.
ÇÇ# $
SignInAsync
ÇÇ$ /
(
ÇÇ/ 0
user
ÇÇ0 4
,
ÇÇ4 5
false
ÇÇ6 ;
,
ÇÇ; <
false
ÇÇ= B
)
ÇÇB C
;
ÇÇC D
}
ÉÉ 
return
ÑÑ 
RedirectToAction
ÑÑ #
(
ÑÑ# $
$str
ÑÑ$ +
,
ÑÑ+ ,
$str
ÑÑ- 5
)
ÑÑ5 6
;
ÑÑ6 7
}
ÖÖ 	
[
ââ 	
HttpPost
ââ	 
]
ââ 
[
ää 	&
ValidateAntiForgeryToken
ää	 !
]
ää! "
public
ãã 
async
ãã 
Task
ãã 
<
ãã 
ActionResult
ãã &
>
ãã& ',
DisableTwoFactorAuthentication
ãã( F
(
ããF G
)
ããG H
{
åå 	
await
çç 
UserManager
çç 
.
çç &
SetTwoFactorEnabledAsync
çç 6
(
çç6 7
User
çç7 ;
.
çç; <
Identity
çç< D
.
ççD E
	GetUserId
ççE N
(
ççN O
)
ççO P
,
ççP Q
false
ççR W
)
ççW X
;
ççX Y
var
éé 
user
éé 
=
éé 
await
éé 
UserManager
éé (
.
éé( )
FindByIdAsync
éé) 6
(
éé6 7
User
éé7 ;
.
éé; <
Identity
éé< D
.
ééD E
	GetUserId
ééE N
(
ééN O
)
ééO P
)
ééP Q
;
ééQ R
if
èè 
(
èè 
user
èè 
!=
èè 
null
èè 
)
èè 
{
êê 
await
ëë 
SignInManager
ëë #
.
ëë# $
SignInAsync
ëë$ /
(
ëë/ 0
user
ëë0 4
,
ëë4 5
false
ëë6 ;
,
ëë; <
false
ëë= B
)
ëëB C
;
ëëC D
}
íí 
return
ìì 
RedirectToAction
ìì #
(
ìì# $
$str
ìì$ +
,
ìì+ ,
$str
ìì- 5
)
ìì5 6
;
ìì6 7
}
îî 	
public
òò 
async
òò 
Task
òò 
<
òò 
ActionResult
òò &
>
òò& '
VerifyPhoneNumber
òò( 9
(
òò9 :
string
òò: @
phoneNumber
òòA L
)
òòL M
{
ôô 	
await
öö 
UserManager
öö 
.
öö 1
#GenerateChangePhoneNumberTokenAsync
öö A
(
ööA B
User
ööB F
.
ööF G
Identity
ööG O
.
ööO P
	GetUserId
ööP Y
(
ööY Z
)
ööZ [
,
öö[ \
phoneNumber
öö] h
)
ööh i
;
ööi j
return
úú 
phoneNumber
úú 
==
úú !
null
úú" &
?
úú' (
View
úú) -
(
úú- .
$str
úú. 5
)
úú5 6
:
úú7 8
View
úú9 =
(
úú= >
new
úú> A(
VerifyPhoneNumberViewModel
úúB \
{
úú] ^
PhoneNumber
úú_ j
=
úúk l
phoneNumber
úúm x
}
úúy z
)
úúz {
;
úú{ |
}
ùù 	
[
°° 	
HttpPost
°°	 
]
°° 
[
¢¢ 	&
ValidateAntiForgeryToken
¢¢	 !
]
¢¢! "
public
££ 
async
££ 
Task
££ 
<
££ 
ActionResult
££ &
>
££& '
VerifyPhoneNumber
££( 9
(
££9 :(
VerifyPhoneNumberViewModel
££: T
model
££U Z
)
££Z [
{
§§ 	
if
•• 
(
•• 
!
•• 

ModelState
•• 
.
•• 
IsValid
•• #
)
••# $
{
¶¶ 
return
ßß 
View
ßß 
(
ßß 
model
ßß !
)
ßß! "
;
ßß" #
}
®® 
var
©© 
result
©© 
=
©© 
await
©© 
UserManager
©© *
.
©©* +$
ChangePhoneNumberAsync
©©+ A
(
©©A B
User
©©B F
.
©©F G
Identity
©©G O
.
©©O P
	GetUserId
©©P Y
(
©©Y Z
)
©©Z [
,
©©[ \
model
©©] b
.
©©b c
PhoneNumber
©©c n
,
©©n o
model
©©p u
.
©©u v
Code
©©v z
)
©©z {
;
©©{ |
if
™™ 
(
™™ 
result
™™ 
.
™™ 
	Succeeded
™™  
)
™™  !
{
´´ 
var
¨¨ 
user
¨¨ 
=
¨¨ 
await
¨¨  
UserManager
¨¨! ,
.
¨¨, -
FindByIdAsync
¨¨- :
(
¨¨: ;
User
¨¨; ?
.
¨¨? @
Identity
¨¨@ H
.
¨¨H I
	GetUserId
¨¨I R
(
¨¨R S
)
¨¨S T
)
¨¨T U
;
¨¨U V
if
≠≠ 
(
≠≠ 
user
≠≠ 
!=
≠≠ 
null
≠≠  
)
≠≠  !
{
ÆÆ 
await
ØØ 
SignInManager
ØØ '
.
ØØ' (
SignInAsync
ØØ( 3
(
ØØ3 4
user
ØØ4 8
,
ØØ8 9
false
ØØ: ?
,
ØØ? @
false
ØØA F
)
ØØF G
;
ØØG H
}
∞∞ 
return
±± 
RedirectToAction
±± '
(
±±' (
$str
±±( /
,
±±/ 0
new
±±1 4
{
±±5 6
Message
±±7 >
=
±±? @
ManageMessageId
±±A P
.
±±P Q
AddPhoneSuccess
±±Q `
}
±±a b
)
±±b c
;
±±c d
}
≤≤ 

ModelState
¥¥ 
.
¥¥ 
AddModelError
¥¥ $
(
¥¥$ %
$str
¥¥% '
,
¥¥' (
$str
¥¥) W
)
¥¥W X
;
¥¥X Y
return
µµ 
View
µµ 
(
µµ 
model
µµ 
)
µµ 
;
µµ 
}
∂∂ 	
[
∫∫ 	
HttpPost
∫∫	 
]
∫∫ 
[
ªª 	&
ValidateAntiForgeryToken
ªª	 !
]
ªª! "
public
ºº 
async
ºº 
Task
ºº 
<
ºº 
ActionResult
ºº &
>
ºº& '
RemovePhoneNumber
ºº( 9
(
ºº9 :
)
ºº: ;
{
ΩΩ 	
var
ææ 
result
ææ 
=
ææ 
await
ææ 
UserManager
ææ *
.
ææ* +!
SetPhoneNumberAsync
ææ+ >
(
ææ> ?
User
ææ? C
.
ææC D
Identity
ææD L
.
ææL M
	GetUserId
ææM V
(
ææV W
)
ææW X
,
ææX Y
null
ææZ ^
)
ææ^ _
;
ææ_ `
if
øø 
(
øø 
!
øø 
result
øø 
.
øø 
	Succeeded
øø !
)
øø! "
{
¿¿ 
return
¡¡ 
RedirectToAction
¡¡ '
(
¡¡' (
$str
¡¡( /
,
¡¡/ 0
new
¡¡1 4
{
¡¡5 6
Message
¡¡7 >
=
¡¡? @
ManageMessageId
¡¡A P
.
¡¡P Q
Error
¡¡Q V
}
¡¡W X
)
¡¡X Y
;
¡¡Y Z
}
¬¬ 
var
√√ 
user
√√ 
=
√√ 
await
√√ 
UserManager
√√ (
.
√√( )
FindByIdAsync
√√) 6
(
√√6 7
User
√√7 ;
.
√√; <
Identity
√√< D
.
√√D E
	GetUserId
√√E N
(
√√N O
)
√√O P
)
√√P Q
;
√√Q R
if
ƒƒ 
(
ƒƒ 
user
ƒƒ 
!=
ƒƒ 
null
ƒƒ 
)
ƒƒ 
{
≈≈ 
await
∆∆ 
SignInManager
∆∆ #
.
∆∆# $
SignInAsync
∆∆$ /
(
∆∆/ 0
user
∆∆0 4
,
∆∆4 5
false
∆∆6 ;
,
∆∆; <
false
∆∆= B
)
∆∆B C
;
∆∆C D
}
«« 
return
»» 
RedirectToAction
»» #
(
»»# $
$str
»»$ +
,
»»+ ,
new
»»- 0
{
»»1 2
Message
»»3 :
=
»»; <
ManageMessageId
»»= L
.
»»L M 
RemovePhoneSuccess
»»M _
}
»»` a
)
»»a b
;
»»b c
}
…… 	
public
ÕÕ 
ActionResult
ÕÕ 
ChangePassword
ÕÕ *
(
ÕÕ* +
)
ÕÕ+ ,
{
ŒŒ 	
return
œœ 
View
œœ 
(
œœ 
)
œœ 
;
œœ 
}
–– 	
[
‘‘ 	
HttpPost
‘‘	 
]
‘‘ 
[
’’ 	&
ValidateAntiForgeryToken
’’	 !
]
’’! "
public
÷÷ 
async
÷÷ 
Task
÷÷ 
<
÷÷ 
ActionResult
÷÷ &
>
÷÷& '
ChangePassword
÷÷( 6
(
÷÷6 7%
ChangePasswordViewModel
÷÷7 N
model
÷÷O T
)
÷÷T U
{
◊◊ 	
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 

ModelState
ÿÿ 
.
ÿÿ 
IsValid
ÿÿ #
)
ÿÿ# $
{
ŸŸ 
return
⁄⁄ 
View
⁄⁄ 
(
⁄⁄ 
model
⁄⁄ !
)
⁄⁄! "
;
⁄⁄" #
}
€€ 
var
‹‹ 
result
‹‹ 
=
‹‹ 
await
‹‹ 
UserManager
‹‹ *
.
‹‹* +!
ChangePasswordAsync
‹‹+ >
(
‹‹> ?
User
‹‹? C
.
‹‹C D
Identity
‹‹D L
.
‹‹L M
	GetUserId
‹‹M V
(
‹‹V W
)
‹‹W X
,
‹‹X Y
model
‹‹Z _
.
‹‹_ `
OldPassword
‹‹` k
,
‹‹k l
model
‹‹m r
.
‹‹r s
NewPassword
‹‹s ~
)
‹‹~ 
;‹‹ Ä
if
›› 
(
›› 
result
›› 
.
›› 
	Succeeded
››  
)
››  !
{
ﬁﬁ 
var
ﬂﬂ 
user
ﬂﬂ 
=
ﬂﬂ 
await
ﬂﬂ  
UserManager
ﬂﬂ! ,
.
ﬂﬂ, -
FindByIdAsync
ﬂﬂ- :
(
ﬂﬂ: ;
User
ﬂﬂ; ?
.
ﬂﬂ? @
Identity
ﬂﬂ@ H
.
ﬂﬂH I
	GetUserId
ﬂﬂI R
(
ﬂﬂR S
)
ﬂﬂS T
)
ﬂﬂT U
;
ﬂﬂU V
if
‡‡ 
(
‡‡ 
user
‡‡ 
!=
‡‡ 
null
‡‡  
)
‡‡  !
{
·· 
await
‚‚ 
SignInManager
‚‚ '
.
‚‚' (
SignInAsync
‚‚( 3
(
‚‚3 4
user
‚‚4 8
,
‚‚8 9
false
‚‚: ?
,
‚‚? @
false
‚‚A F
)
‚‚F G
;
‚‚G H
}
„„ 
return
‰‰ 
RedirectToAction
‰‰ '
(
‰‰' (
$str
‰‰( /
,
‰‰/ 0
new
‰‰1 4
{
‰‰5 6
Message
‰‰7 >
=
‰‰? @
ManageMessageId
‰‰A P
.
‰‰P Q#
ChangePasswordSuccess
‰‰Q f
}
‰‰g h
)
‰‰h i
;
‰‰i j
}
ÂÂ 
	AddErrors
ÊÊ 
(
ÊÊ 
result
ÊÊ 
)
ÊÊ 
;
ÊÊ 
return
ÁÁ 
View
ÁÁ 
(
ÁÁ 
model
ÁÁ 
)
ÁÁ 
;
ÁÁ 
}
ËË 	
public
ÏÏ 
ActionResult
ÏÏ 
SetPassword
ÏÏ '
(
ÏÏ' (
)
ÏÏ( )
{
ÌÌ 	
return
ÓÓ 
View
ÓÓ 
(
ÓÓ 
)
ÓÓ 
;
ÓÓ 
}
ÔÔ 	
[
ÛÛ 	
HttpPost
ÛÛ	 
]
ÛÛ 
[
ÙÙ 	&
ValidateAntiForgeryToken
ÙÙ	 !
]
ÙÙ! "
public
ıı 
async
ıı 
Task
ıı 
<
ıı 
ActionResult
ıı &
>
ıı& '
SetPassword
ıı( 3
(
ıı3 4"
SetPasswordViewModel
ıı4 H
model
ııI N
)
ııN O
{
ˆˆ 	
if
˜˜ 
(
˜˜ 

ModelState
˜˜ 
.
˜˜ 
IsValid
˜˜ "
)
˜˜" #
{
¯¯ 
var
˘˘ 
result
˘˘ 
=
˘˘ 
await
˘˘ "
UserManager
˘˘# .
.
˘˘. /
AddPasswordAsync
˘˘/ ?
(
˘˘? @
User
˘˘@ D
.
˘˘D E
Identity
˘˘E M
.
˘˘M N
	GetUserId
˘˘N W
(
˘˘W X
)
˘˘X Y
,
˘˘Y Z
model
˘˘[ `
.
˘˘` a
NewPassword
˘˘a l
)
˘˘l m
;
˘˘m n
if
˙˙ 
(
˙˙ 
result
˙˙ 
.
˙˙ 
	Succeeded
˙˙ $
)
˙˙$ %
{
˚˚ 
var
¸¸ 
user
¸¸ 
=
¸¸ 
await
¸¸ $
UserManager
¸¸% 0
.
¸¸0 1
FindByIdAsync
¸¸1 >
(
¸¸> ?
User
¸¸? C
.
¸¸C D
Identity
¸¸D L
.
¸¸L M
	GetUserId
¸¸M V
(
¸¸V W
)
¸¸W X
)
¸¸X Y
;
¸¸Y Z
if
˝˝ 
(
˝˝ 
user
˝˝ 
!=
˝˝ 
null
˝˝  $
)
˝˝$ %
{
˛˛ 
await
ˇˇ 
SignInManager
ˇˇ +
.
ˇˇ+ ,
SignInAsync
ˇˇ, 7
(
ˇˇ7 8
user
ˇˇ8 <
,
ˇˇ< =
false
ˇˇ> C
,
ˇˇC D
false
ˇˇE J
)
ˇˇJ K
;
ˇˇK L
}
ÄÄ 
return
ÅÅ 
RedirectToAction
ÅÅ +
(
ÅÅ+ ,
$str
ÅÅ, 3
,
ÅÅ3 4
new
ÅÅ5 8
{
ÅÅ9 :
Message
ÅÅ; B
=
ÅÅC D
ManageMessageId
ÅÅE T
.
ÅÅT U 
SetPasswordSuccess
ÅÅU g
}
ÅÅh i
)
ÅÅi j
;
ÅÅj k
}
ÇÇ 
	AddErrors
ÉÉ 
(
ÉÉ 
result
ÉÉ  
)
ÉÉ  !
;
ÉÉ! "
}
ÑÑ 
return
áá 
View
áá 
(
áá 
model
áá 
)
áá 
;
áá 
}
àà 	
public
åå 
async
åå 
Task
åå 
<
åå 
ActionResult
åå &
>
åå& '
ManageLogins
åå( 4
(
åå4 5
ManageMessageId
åå5 D
?
ååD E
message
ååF M
)
ååM N
{
çç 	
ViewBag
éé 
.
éé 
StatusMessage
éé !
=
éé" #
message
èè 
==
èè 
ManageMessageId
èè *
.
èè* + 
RemoveLoginSuccess
èè+ =
?
èè> ?
$str
èè@ o
:
êê 
message
êê 
==
êê 
ManageMessageId
êê ,
.
êê, -
Error
êê- 2
?
êê3 4
$str
êê5 Q
:
ëë 
$str
ëë 
;
ëë 
var
íí 
user
íí 
=
íí 
await
íí 
UserManager
íí (
.
íí( )
FindByIdAsync
íí) 6
(
íí6 7
User
íí7 ;
.
íí; <
Identity
íí< D
.
ííD E
	GetUserId
ííE N
(
ííN O
)
ííO P
)
ííP Q
;
ííQ R
if
ìì 
(
ìì 
user
ìì 
==
ìì 
null
ìì 
)
ìì 
{
îî 
return
ïï 
View
ïï 
(
ïï 
$str
ïï #
)
ïï# $
;
ïï$ %
}
ññ 
var
óó 

userLogins
óó 
=
óó 
await
óó "
UserManager
óó# .
.
óó. /
GetLoginsAsync
óó/ =
(
óó= >
User
óó> B
.
óóB C
Identity
óóC K
.
óóK L
	GetUserId
óóL U
(
óóU V
)
óóV W
)
óóW X
;
óóX Y
var
òò 
otherLogins
òò 
=
òò #
AuthenticationManager
òò 3
.
òò3 4,
GetExternalAuthenticationTypes
òò4 R
(
òòR S
)
òòS T
.
òòT U
Where
òòU Z
(
òòZ [
auth
òò[ _
=>
òò` b

userLogins
òòc m
.
òòm n
All
òòn q
(
òòq r
ul
òòr t
=>
òòu w
auth
òòx |
.
òò| }!
AuthenticationTypeòò} è
!=òòê í
ulòòì ï
.òòï ñ
LoginProvideròòñ £
)òò£ §
)òò§ •
.òò• ¶
ToListòò¶ ¨
(òò¨ ≠
)òò≠ Æ
;òòÆ Ø
ViewBag
ôô 
.
ôô 
ShowRemoveButton
ôô $
=
ôô% &
user
ôô' +
.
ôô+ ,
PasswordHash
ôô, 8
!=
ôô9 ;
null
ôô< @
||
ôôA C

userLogins
ôôD N
.
ôôN O
Count
ôôO T
>
ôôU V
$num
ôôW X
;
ôôX Y
return
öö 
View
öö 
(
öö 
new
öö #
ManageLoginsViewModel
öö 1
{
õõ 
CurrentLogins
úú 
=
úú 

userLogins
úú  *
,
úú* +
OtherLogins
ùù 
=
ùù 
otherLogins
ùù )
}
ûû 
)
ûû 
;
ûû 
}
üü 	
[
££ 	
HttpPost
££	 
]
££ 
[
§§ 	&
ValidateAntiForgeryToken
§§	 !
]
§§! "
public
•• 
ActionResult
•• 
	LinkLogin
•• %
(
••% &
string
••& ,
provider
••- 5
)
••5 6
{
¶¶ 	
return
®® 
new
®® 
AccountController
®® (
.
®®( )
ChallengeResult
®®) 8
(
®®8 9
provider
®®9 A
,
®®A B
Url
®®C F
.
®®F G
Action
®®G M
(
®®M N
$str
®®N a
,
®®a b
$str
®®c k
)
®®k l
,
®®l m
User
®®n r
.
®®r s
Identity
®®s {
.
®®{ |
	GetUserId®®| Ö
(®®Ö Ü
)®®Ü á
)®®á à
;®®à â
}
©© 	
public
≠≠ 
async
≠≠ 
Task
≠≠ 
<
≠≠ 
ActionResult
≠≠ &
>
≠≠& '
LinkLoginCallback
≠≠( 9
(
≠≠9 :
)
≠≠: ;
{
ÆÆ 	
var
ØØ 
	loginInfo
ØØ 
=
ØØ 
await
ØØ !#
AuthenticationManager
ØØ" 7
.
ØØ7 8'
GetExternalLoginInfoAsync
ØØ8 Q
(
ØØQ R
XsrfKey
ØØR Y
,
ØØY Z
User
ØØ[ _
.
ØØ_ `
Identity
ØØ` h
.
ØØh i
	GetUserId
ØØi r
(
ØØr s
)
ØØs t
)
ØØt u
;
ØØu v
if
∞∞ 
(
∞∞ 
	loginInfo
∞∞ 
==
∞∞ 
null
∞∞ !
)
∞∞! "
{
±± 
return
≤≤ 
RedirectToAction
≤≤ '
(
≤≤' (
$str
≤≤( 6
,
≤≤6 7
new
≤≤8 ;
{
≤≤< =
Message
≤≤> E
=
≤≤F G
ManageMessageId
≤≤H W
.
≤≤W X
Error
≤≤X ]
}
≤≤^ _
)
≤≤_ `
;
≤≤` a
}
≥≥ 
var
¥¥ 
result
¥¥ 
=
¥¥ 
await
¥¥ 
UserManager
¥¥ *
.
¥¥* +
AddLoginAsync
¥¥+ 8
(
¥¥8 9
User
¥¥9 =
.
¥¥= >
Identity
¥¥> F
.
¥¥F G
	GetUserId
¥¥G P
(
¥¥P Q
)
¥¥Q R
,
¥¥R S
	loginInfo
¥¥T ]
.
¥¥] ^
Login
¥¥^ c
)
¥¥c d
;
¥¥d e
return
µµ 
result
µµ 
.
µµ 
	Succeeded
µµ #
?
µµ$ %
RedirectToAction
µµ& 6
(
µµ6 7
$str
µµ7 E
)
µµE F
:
µµG H
RedirectToAction
µµI Y
(
µµY Z
$str
µµZ h
,
µµh i
new
µµj m
{
µµn o
Message
µµp w
=
µµx y
ManageMessageIdµµz â
.µµâ ä
Errorµµä è
}µµê ë
)µµë í
;µµí ì
}
∂∂ 	
	protected
∏∏ 
override
∏∏ 
void
∏∏ 
Dispose
∏∏  '
(
∏∏' (
bool
∏∏( ,
	disposing
∏∏- 6
)
∏∏6 7
{
ππ 	
if
∫∫ 
(
∫∫ 
	disposing
∫∫ 
&&
∫∫ 
_userManager
∫∫ )
!=
∫∫* ,
null
∫∫- 1
)
∫∫1 2
{
ªª 
_userManager
ºº 
.
ºº 
Dispose
ºº $
(
ºº$ %
)
ºº% &
;
ºº& '
_userManager
ΩΩ 
=
ΩΩ 
null
ΩΩ #
;
ΩΩ# $
}
ææ 
base
¿¿ 
.
¿¿ 
Dispose
¿¿ 
(
¿¿ 
	disposing
¿¿ "
)
¿¿" #
;
¿¿# $
}
¡¡ 	
private
≈≈ 
const
≈≈ 
string
≈≈ 
XsrfKey
≈≈ $
=
≈≈% &
$str
≈≈' /
;
≈≈/ 0
private
«« $
IAuthenticationManager
«« &#
AuthenticationManager
««' <
=>
««= ?
HttpContext
««@ K
.
««K L
GetOwinContext
««L Z
(
««Z [
)
««[ \
.
««\ ]
Authentication
««] k
;
««k l
private
…… 
void
…… 
	AddErrors
…… 
(
…… 
IdentityResult
…… -
result
……. 4
)
……4 5
{
   	
foreach
ÀÀ 
(
ÀÀ 
var
ÀÀ 
error
ÀÀ 
in
ÀÀ !
result
ÀÀ" (
.
ÀÀ( )
Errors
ÀÀ) /
)
ÀÀ/ 0
{
ÃÃ 

ModelState
ÕÕ 
.
ÕÕ 
AddModelError
ÕÕ (
(
ÕÕ( )
$str
ÕÕ) +
,
ÕÕ+ ,
error
ÕÕ- 2
)
ÕÕ2 3
;
ÕÕ3 4
}
ŒŒ 
}
œœ 	
private
—— 
bool
—— 
HasPassword
——  
(
——  !
)
——! "
{
““ 	
var
”” 
user
”” 
=
”” 
UserManager
”” "
.
””" #
FindById
””# +
(
””+ ,
User
””, 0
.
””0 1
Identity
””1 9
.
””9 :
	GetUserId
””: C
(
””C D
)
””D E
)
””E F
;
””F G
return
‘‘ 
user
‘‘ 
?
‘‘ 
.
‘‘ 
PasswordHash
‘‘ %
!=
‘‘& (
null
‘‘) -
;
‘‘- .
}
’’ 	
public
◊◊ 
enum
◊◊ 
ManageMessageId
◊◊ #
{
ÿÿ 	
AddPhoneSuccess
ŸŸ 
,
ŸŸ #
ChangePasswordSuccess
⁄⁄ !
,
⁄⁄! "!
SetTwoFactorSuccess
€€ 
,
€€   
SetPasswordSuccess
‹‹ 
,
‹‹  
RemoveLoginSuccess
›› 
,
››  
RemovePhoneSuccess
ﬁﬁ 
,
ﬁﬁ 
Error
ﬂﬂ 
}
‡‡ 	
}
„„ 
}‰‰ ∞Ì
NC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\RicetteController.cs
	namespace 	
BrewDay2
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
RicetteController "
:# $

Controller% /
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
_db 
. 
Ricette #
.# $
ToList$ *
(* +
)+ ,
), -
;- .
} 	
["" 	
HttpGet""	 
]"" 
public## 
ActionResult## 
	MyRecipes## %
(##% &
)##& '
{$$ 	
var%% 
me%% 
=%% 
User%% 
.%% 
Identity%% "
.%%" #
	GetUserId%%# ,
(%%, -
)%%- .
;%%. /
var&& 
daRestituire&& 
=&& 
_db&& "
.&&" #
Ricette&&# *
.&&* +
Where&&+ 0
(&&0 1
x&&1 2
=>&&3 5
x&&6 7
.&&7 8
UserId&&8 >
==&&? A
me&&B D
)&&D E
;&&E F
return'' 
View'' 
('' 
daRestituire'' $
)''$ %
;''% &
}(( 	
[00 	
HttpGet00	 
]00 
public11 
ActionResult11 
Index11 !
(11! "
String11" (
nomeparametro11) 6
)116 7
{22 	
var33 
lista33 
=33 
!33 
String33 
.33  
IsNullOrEmpty33  -
(33- .
nomeparametro33. ;
)33; <
?33= >
_db33? B
.33B C
Ricette33C J
.33J K
Where33K P
(33P Q
x33Q R
=>33S U
x33V W
.33W X
	Categoria33X a
==33b d
nomeparametro33e r
)33r s
.33s t
ToList33t z
(33z {
)33{ |
:33} ~
_db	33 Ç
.
33Ç É
Ricette
33É ä
.
33ä ã
ToList
33ã ë
(
33ë í
)
33í ì
;
33ì î
return55 
View55 
(55 
lista55 
)55 
;55 
}66 	
public@@ 
ActionResult@@ 
Details@@ #
(@@# $
int@@$ '
?@@' (
id@@) +
)@@+ ,
{AA 	
ifBB 
(BB 
idBB 
==BB 
nullBB 
)BB 
{CC 

PathConfigDD 
cDD 
=DD 
newDD "

PathConfigDD# -
(DD- .
)DD. /
;DD/ 0
returnEE 
RedirectEE 
(EE  
cEE  !
.EE! "
errorEE" '
)EE' (
;EE( )
}FF 
RicetteGG 
ricetteGG 
=GG 
_dbGG !
.GG! "
RicetteGG" )
.GG) *
FindGG* .
(GG. /
idGG/ 1
)GG1 2
;GG2 3
ifHH 
(HH 
ricetteHH 
==HH 
nullHH 
)HH  
{II 
returnJJ 
HttpNotFoundJJ #
(JJ# $
)JJ$ %
;JJ% &
}KK 
returnLL 
ViewLL 
(LL 
ricetteLL 
)LL  
;LL  !
}MM 	
publicQQ 
ActionResultQQ 
CreateQQ "
(QQ" #
)QQ# $
{RR 	

SelectListSS 
slSS 
=SS 
newSS 

SelectListSS  *
(SS* +
_dbSS+ .
.SS. /
CategoriaBirresSS/ >
,SS> ?
$strSS? E
,SSE F
$strSSF L
)SSL M
;SSM N
ViewBagTT 
.TT 
	categorieTT 
=TT 
slTT  "
;TT" #
returnUU 
ViewUU 
(UU 
)UU 
;UU 
}VV 	
publicYY 
ActionResultYY 
WhatShoudIBrewTodayYY /
(YY/ 0
)YY0 1
{ZZ 	
var[[ 
me[[ 
=[[ 
User[[ 
.[[ 
Identity[[ "
.[[" #
	GetUserId[[# ,
([[, -
)[[- .
;[[. /
List\\ 
<\\ 
Ricette\\ 
>\\ 
additivi\\ "
=\\# $
new\\% (
List\\) -
<\\- .
Ricette\\. 5
>\\5 6
(\\6 7
)\\7 8
;\\8 9
List]] 
<]] 
Ricette]] 
>]] 
luppoli]] !
=]]" #
new]]$ '
List]]( ,
<]], -
Ricette]]- 4
>]]4 5
(]]5 6
)]]6 7
;]]7 8
List^^ 
<^^ 
Ricette^^ 
>^^ 
lieviti^^ !
=^^" #
new^^$ '
List^^( ,
<^^, -
Ricette^^- 4
>^^4 5
(^^5 6
)^^6 7
;^^7 8
List__ 
<__ 
Ricette__ 
>__ 
malti__ 
=__  !
new__" %
List__& *
<__* +
Ricette__+ 2
>__2 3
(__3 4
)__4 5
;__5 6
List`` 
<`` 
Ricette`` 
>`` 
zuccheri`` "
=``# $
new``% (
List``) -
<``- .
Ricette``. 5
>``5 6
(``6 7
)``7 8
;``8 9
	Magazzinoaa 
maa 
=aa 
_dbaa 
.aa 
Magazzinoesaa )
.aa) *
FirstOrDefaultaa* 8
(aa8 9
xaa9 :
=>aa; =
xaa> ?
.aa? @
UserIdaa@ F
==aaG I
meaaJ L
)aaL M
;aaM N
Listcc 
<cc 
Additivicc 
>cc 
acc 
=cc 
newcc "
Listcc# '
<cc' (
Additivicc( 0
>cc0 1
(cc1 2
)cc2 3
;cc3 4
ifdd 
(dd 
mdd 
?dd 
.dd 
AdditiviUtentedd !
!=dd" $
nulldd% )
)dd) *
foreachee 
(ee 
varee 
additiviMagazzinoee .
inee/ 1
mee2 3
.ee3 4
AdditiviUtenteee4 B
)eeB C
{ff 
agg 
.gg 
Addgg 
(gg 
_dbgg 
.gg 
Additivigg &
.gg& '
FirstOrDefaultgg' 5
(gg5 6
xgg6 7
=>gg8 :
xgg; <
.gg< =

AdditiviIdgg= G
==ggH J
additiviMagazzinoggK \
.gg\ ]

AdditiviIdgg] g
)ggg h
)ggh i
;ggi j
}hh 
foreachii 
(ii 
varii 
ricetteii  
inii! #
_dbii$ '
.ii' (
Ricetteii( /
)ii/ 0
{jj 
ifkk 
(kk 
akk 
.kk 
Allkk 
(kk 
xkk 
=>kk 
ricettekk &
.kk& '
	Additiviskk' 0
.kk0 1
Containskk1 9
(kk9 :
xkk: ;
)kk; <
)kk< =
)kk= >
{ll 
additivimm 
.mm 
Addmm  
(mm  !
ricettemm! (
)mm( )
;mm) *
}nn 
}oo 
Listqq 
<qq 
Luppoliqq 
>qq 
lqq 
=qq 
newqq !
Listqq" &
<qq& '
Luppoliqq' .
>qq. /
(qq/ 0
)qq0 1
;qq1 2
ifrr 
(rr 
mrr 
!=rr 
nullrr 
)rr 
{ss 
foreachtt 
(tt 
vartt 
additiviMagazzinott .
intt/ 1
mtt2 3
.tt3 4
LuppoliUtentett4 A
)ttA B
{uu 
lvv 
.vv 
Addvv 
(vv 
_dbvv 
.vv 
Luppolivv %
.vv% &
FirstOrDefaultvv& 4
(vv4 5
xvv5 6
=>vv7 9
xvv: ;
.vv; <
	LuppoliIdvv< E
==vvF H
additiviMagazzinovvI Z
.vvZ [
	LuppoliIdvv[ d
)vvd e
)vve f
;vvf g
}ww 
foreachxx 
(xx 
varxx 
ricettexx $
inxx% '
_dbxx( +
.xx+ ,
Ricettexx, 3
)xx3 4
{yy 
ifzz 
(zz 
lzz 
.zz 
Allzz 
(zz 
xzz 
=>zz  "
ricettezz# *
.zz* +
Luppoliszz+ 3
.zz3 4
Containszz4 <
(zz< =
xzz= >
)zz> ?
)zz? @
)zz@ A
{{{ 
luppoli|| 
.||  
Add||  #
(||# $
ricette||$ +
)||+ ,
;||, -
}}} 
}~~ 
List
ÄÄ 
<
ÄÄ 
Lieviti
ÄÄ 
>
ÄÄ 
li
ÄÄ  
=
ÄÄ! "
new
ÄÄ# &
List
ÄÄ' +
<
ÄÄ+ ,
Lieviti
ÄÄ, 3
>
ÄÄ3 4
(
ÄÄ4 5
)
ÄÄ5 6
;
ÄÄ6 7
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
additiviMagazzino
ÅÅ .
in
ÅÅ/ 1
m
ÅÅ2 3
.
ÅÅ3 4
LievitiUtente
ÅÅ4 A
)
ÅÅA B
{
ÇÇ 
li
ÉÉ 
.
ÉÉ 
Add
ÉÉ 
(
ÉÉ 
_db
ÉÉ 
.
ÉÉ 
Lieviti
ÉÉ &
.
ÉÉ& '
FirstOrDefault
ÉÉ' 5
(
ÉÉ5 6
x
ÉÉ6 7
=>
ÉÉ8 :
x
ÉÉ; <
.
ÉÉ< =
	LievitiId
ÉÉ= F
==
ÉÉG I
additiviMagazzino
ÉÉJ [
.
ÉÉ[ \
	LievitiId
ÉÉ\ e
)
ÉÉe f
)
ÉÉf g
;
ÉÉg h
}
ÑÑ 
foreach
ÖÖ 
(
ÖÖ 
var
ÖÖ 
ricette
ÖÖ $
in
ÖÖ% '
_db
ÖÖ( +
.
ÖÖ+ ,
Ricette
ÖÖ, 3
)
ÖÖ3 4
{
ÜÜ 
if
áá 
(
áá 
li
áá 
.
áá 
All
áá 
(
áá 
x
áá  
=>
áá! #
ricette
áá$ +
.
áá+ ,
Lievitis
áá, 4
.
áá4 5
Contains
áá5 =
(
áá= >
x
áá> ?
)
áá? @
)
áá@ A
)
ááA B
{
àà 
lieviti
ââ 
.
ââ  
Add
ââ  #
(
ââ# $
ricette
ââ$ +
)
ââ+ ,
;
ââ, -
}
ää 
}
ãã 
List
çç 
<
çç 
Malti
çç 
>
çç 
ma
çç 
=
çç  
new
çç! $
List
çç% )
<
çç) *
Malti
çç* /
>
çç/ 0
(
çç0 1
)
çç1 2
;
çç2 3
foreach
éé 
(
éé 
var
éé 
additiviMagazzino
éé .
in
éé/ 1
m
éé2 3
.
éé3 4
MaltiUtente
éé4 ?
)
éé? @
{
èè 
ma
êê 
.
êê 
Add
êê 
(
êê 
_db
êê 
.
êê 
Malti
êê $
.
êê$ %
Where
êê% *
(
êê* +
x
êê+ ,
=>
êê- /
x
êê0 1
.
êê1 2
MaltiId
êê2 9
==
êê: <
additiviMagazzino
êê= N
.
êêN O
MaltiId
êêO V
)
êêV W
.
êêW X
FirstOrDefault
êêX f
(
êêf g
)
êêg h
)
êêh i
;
êêi j
}
ëë 
foreach
íí 
(
íí 
var
íí 
ricette
íí $
in
íí% '
_db
íí( +
.
íí+ ,
Ricette
íí, 3
)
íí3 4
{
ìì 
if
îî 
(
îî 
ma
îî 
.
îî 
All
îî 
(
îî 
x
îî  
=>
îî! #
ricette
îî$ +
.
îî+ ,
Maltis
îî, 2
.
îî2 3
Contains
îî3 ;
(
îî; <
x
îî< =
)
îî= >
)
îî> ?
)
îî? @
{
ïï 
malti
ññ 
.
ññ 
Add
ññ !
(
ññ! "
ricette
ññ" )
)
ññ) *
;
ññ* +
}
óó 
}
òò 
List
öö 
<
öö 
Zuccheri
öö 
>
öö 
z
öö  
=
öö! "
new
öö# &
List
öö' +
<
öö+ ,
Zuccheri
öö, 4
>
öö4 5
(
öö5 6
)
öö6 7
;
öö7 8
foreach
õõ 
(
õõ 
var
õõ 
additiviMagazzino
õõ .
in
õõ/ 1
m
õõ2 3
.
õõ3 4
ZuccheriUtente
õõ4 B
)
õõB C
{
úú 
z
ùù 
.
ùù 
Add
ùù 
(
ùù 
_db
ùù 
.
ùù 
Zuccheri
ùù &
.
ùù& '
Where
ùù' ,
(
ùù, -
x
ùù- .
=>
ùù/ 1
x
ùù2 3
.
ùù3 4

ZuccheriId
ùù4 >
==
ùù? A
additiviMagazzino
ùùB S
.
ùùS T

ZuccheriId
ùùT ^
)
ùù^ _
.
ùù_ `
FirstOrDefault
ùù` n
(
ùùn o
)
ùùo p
)
ùùp q
;
ùùq r
}
ûû 
foreach
üü 
(
üü 
var
üü 
ricette
üü $
in
üü% '
_db
üü( +
.
üü+ ,
Ricette
üü, 3
)
üü3 4
{
†† 
if
°° 
(
°° 
z
°° 
.
°° 
All
°° 
(
°° 
x
°° 
=>
°°  "
ricette
°°# *
.
°°* +
	Zuccheris
°°+ 4
.
°°4 5
Contains
°°5 =
(
°°= >
x
°°> ?
)
°°? @
)
°°@ A
)
°°A B
{
¢¢ 
zuccheri
££  
.
££  !
Add
££! $
(
££$ %
ricette
££% ,
)
££, -
;
££- .
}
§§ 
}
•• 
}
¶¶ 
var
ßß 
valide
ßß 
=
ßß 
additivi
ßß !
.
ßß! "
	Intersect
ßß" +
(
ßß+ ,
malti
ßß, 1
)
ßß1 2
.
ßß2 3
	Intersect
ßß3 <
(
ßß< =
luppoli
ßß= D
)
ßßD E
.
ßßE F
	Intersect
ßßF O
(
ßßO P
lieviti
ßßP W
)
ßßW X
.
ßßX Y
	Intersect
ßßY b
(
ßßb c
zuccheri
ßßc k
)
ßßk l
;
ßßl m
Random
®® 
r
®® 
=
®® 
new
®® 
Random
®® !
(
®®! "
)
®®" #
;
®®# $
int
©© 
quale
©© 
=
©© 
r
©© 
.
©© 
Next
©© 
(
©© 
$num
©©  
,
©©  !
valide
©©" (
.
©©( )
Count
©©) .
(
©©. /
)
©©/ 0
)
©©0 1
;
©©1 2
return
™™ 
View
™™ 
(
™™ 
valide
™™ 
.
™™ 
	ElementAt
™™ (
(
™™( )
quale
™™) .
)
™™. /
)
™™/ 0
;
™™0 1
}
´´ 	
[
∂∂ 	
HttpPost
∂∂	 
]
∂∂ 
[
∑∑ 	&
ValidateAntiForgeryToken
∑∑	 !
]
∑∑! "
public
∏∏ 
ActionResult
∏∏ 
Create
∏∏ "
(
∏∏" #
Ricette
∏∏# *
ricette
∏∏+ 2
)
∏∏2 3
{
ππ 	
ricette
∫∫ 
.
∫∫ 
UserId
∫∫ 
=
∫∫ 
User
∫∫ !
.
∫∫! "
Identity
∫∫" *
.
∫∫* +
	GetUserId
∫∫+ 4
(
∫∫4 5
)
∫∫5 6
;
∫∫6 7
if
ªª 
(
ªª 

ModelState
ªª 
.
ªª 
IsValid
ªª "
)
ªª" #
{
ºº 
_db
ΩΩ 
.
ΩΩ 
Ricette
ΩΩ 
.
ΩΩ 
Add
ΩΩ 
(
ΩΩ  
ricette
ΩΩ  '
)
ΩΩ' (
;
ΩΩ( )
_db
ææ 
.
ææ 
SaveChanges
ææ 
(
ææ  
)
ææ  !
;
ææ! "
return
øø 
RedirectToAction
øø '
(
øø' (
$str
øø( /
)
øø/ 0
;
øø0 1
}
¿¿ 
return
¬¬ 
View
¬¬ 
(
¬¬ 
ricette
¬¬ 
)
¬¬  
;
¬¬  !
}
√√ 	
public
ÕÕ 
ActionResult
ÕÕ 
Edit
ÕÕ  
(
ÕÕ  !
int
ÕÕ! $
?
ÕÕ$ %
id
ÕÕ& (
)
ÕÕ( )
{
ŒŒ 	
if
œœ 
(
œœ 
id
œœ 
==
œœ 
null
œœ 
)
œœ 
{
–– 
return
—— 
new
—— "
HttpStatusCodeResult
—— /
(
——/ 0
HttpStatusCode
——0 >
.
——> ?

BadRequest
——? I
)
——I J
;
——J K
}
““ 
Ricette
”” 
ricette
”” 
=
”” 
_db
”” !
.
””! "
Ricette
””" )
.
””) *
Find
””* .
(
””. /
id
””/ 1
)
””1 2
;
””2 3
if
‘‘ 
(
‘‘ 
ricette
‘‘ 
==
‘‘ 
null
‘‘ 
)
‘‘  
{
’’ 
return
÷÷ 
HttpNotFound
÷÷ #
(
÷÷# $
)
÷÷$ %
;
÷÷% &
}
◊◊ 
return
ÿÿ 
View
ÿÿ 
(
ÿÿ 
ricette
ÿÿ 
)
ÿÿ  
;
ÿÿ  !
}
ŸŸ 	
[
ÂÂ 	
HttpPost
ÂÂ	 
]
ÂÂ 
[
ÊÊ 	&
ValidateAntiForgeryToken
ÊÊ	 !
]
ÊÊ! "
public
ÁÁ 
ActionResult
ÁÁ 
Edit
ÁÁ  
(
ÁÁ  !
Ricette
ÁÁ! (
ricette
ÁÁ) 0
)
ÁÁ0 1
{
ËË 	
if
ÈÈ 
(
ÈÈ 

ModelState
ÈÈ 
.
ÈÈ 
IsValid
ÈÈ "
)
ÈÈ" #
{
ÍÍ 
_db
ÎÎ 
.
ÎÎ 
Entry
ÎÎ 
(
ÎÎ 
ricette
ÎÎ !
)
ÎÎ! "
.
ÎÎ" #
State
ÎÎ# (
=
ÎÎ) *
EntityState
ÎÎ+ 6
.
ÎÎ6 7
Modified
ÎÎ7 ?
;
ÎÎ? @
_db
ÏÏ 
.
ÏÏ 
SaveChanges
ÏÏ 
(
ÏÏ  
)
ÏÏ  !
;
ÏÏ! "
return
ÌÌ 
RedirectToAction
ÌÌ '
(
ÌÌ' (
$str
ÌÌ( /
)
ÌÌ/ 0
;
ÌÌ0 1
}
ÓÓ 
return
ÔÔ 
View
ÔÔ 
(
ÔÔ 
ricette
ÔÔ 
)
ÔÔ  
;
ÔÔ  !
}
 	
public
˚˚ 
ActionResult
˚˚ 
Delete
˚˚ "
(
˚˚" #
int
˚˚# &
?
˚˚& '
id
˚˚( *
)
˚˚* +
{
¸¸ 	
if
˝˝ 
(
˝˝ 
id
˝˝ 
==
˝˝ 
null
˝˝ 
)
˝˝ 
{
˛˛ 

PathConfig
ˇˇ 
c
ˇˇ 
=
ˇˇ 
new
ˇˇ "

PathConfig
ˇˇ# -
(
ˇˇ- .
)
ˇˇ. /
;
ˇˇ/ 0
return
ÄÄ 
Redirect
ÄÄ 
(
ÄÄ  
c
ÄÄ  !
.
ÄÄ! "
error2
ÄÄ" (
)
ÄÄ( )
;
ÄÄ) *
}
ÅÅ 
Ricette
ÇÇ 
ricette
ÇÇ 
=
ÇÇ 
_db
ÇÇ !
.
ÇÇ! "
Ricette
ÇÇ" )
.
ÇÇ) *
Find
ÇÇ* .
(
ÇÇ. /
id
ÇÇ/ 1
)
ÇÇ1 2
;
ÇÇ2 3
if
ÉÉ 
(
ÉÉ 
ricette
ÉÉ 
==
ÉÉ 
null
ÉÉ 
)
ÉÉ  
{
ÑÑ 
return
ÖÖ 
HttpNotFound
ÖÖ #
(
ÖÖ# $
)
ÖÖ$ %
;
ÖÖ% &
}
ÜÜ 
return
áá 
View
áá 
(
áá 
ricette
áá 
)
áá  
;
áá  !
}
àà 	
[
íí 	
HttpPost
íí	 
,
íí 

ActionName
íí 
(
íí 
$str
íí &
)
íí& '
]
íí' (
[
ìì 	&
ValidateAntiForgeryToken
ìì	 !
]
ìì! "
public
îî 
ActionResult
îî 
DeleteConfirmed
îî +
(
îî+ ,
int
îî, /
id
îî0 2
)
îî2 3
{
ïï 	
Ricette
ññ 
ricette
ññ 
=
ññ 
_db
ññ !
.
ññ! "
Ricette
ññ" )
.
ññ) *
Find
ññ* .
(
ññ. /
id
ññ/ 1
)
ññ1 2
;
ññ2 3
_db
óó 
.
óó 
Ricette
óó 
.
óó 
Remove
óó 
(
óó 
ricette
óó &
)
óó& '
;
óó' (
_db
òò 
.
òò 
SaveChanges
òò 
(
òò 
)
òò 
;
òò 
return
ôô 
RedirectToAction
ôô #
(
ôô# $
$str
ôô$ +
)
ôô+ ,
;
ôô, -
}
öö 	
	protected
úú 
override
úú 
void
úú 
Dispose
úú  '
(
úú' (
bool
úú( ,
	disposing
úú- 6
)
úú6 7
{
ùù 	
if
ûû 
(
ûû 
	disposing
ûû 
)
ûû 
{
üü 
_db
†† 
.
†† 
Dispose
†† 
(
†† 
)
†† 
;
†† 
}
°° 
base
¢¢ 
.
¢¢ 
Dispose
¢¢ 
(
¢¢ 
	disposing
¢¢ "
)
¢¢" #
;
¢¢# $
}
££ 	
public
¨¨ 
ActionResult
¨¨ 
AggiungiAdditivo
¨¨ ,
(
¨¨, -
int
¨¨- 0
id
¨¨1 3
)
¨¨3 4
{
≠≠ 	
AdditiviRicetta
ÆÆ 
ar
ÆÆ 
=
ÆÆ  
new
ÆÆ! $
AdditiviRicetta
ÆÆ% 4
{
ÆÆ5 6
	RicettaId
ÆÆ7 @
=
ÆÆA B
id
ÆÆC E
}
ÆÆF G
;
ÆÆG H

SelectList
ØØ 

additiviId
ØØ !
=
ØØ" #
new
ØØ$ '

SelectList
ØØ( 2
(
ØØ2 3
_db
ØØ3 6
.
ØØ6 7
Additivi
ØØ7 ?
,
ØØ? @
$str
ØØA M
,
ØØM N
$str
ØØO U
)
ØØU V
;
ØØV W
ViewBag
∞∞ 
.
∞∞ 
additivi
∞∞ 
=
∞∞ 

additiviId
∞∞ )
;
∞∞) *
return
±± 
View
±± 
(
±± 
ar
±± 
)
±± 
;
±± 
}
≤≤ 	
[
ºº 	
HttpPost
ºº	 
]
ºº 
public
ΩΩ 
ActionResult
ΩΩ 
AggiungiAdditivo
ΩΩ ,
(
ΩΩ, -
AdditiviRicetta
ΩΩ- <
ar
ΩΩ= ?
)
ΩΩ? @
{
ææ 	
if
øø 
(
øø 

ModelState
øø 
.
øø 
IsValid
øø "
)
øø" #
{
¿¿ 
_db
¡¡ 
.
¡¡ 
AdditiviRicettas
¡¡ $
.
¡¡$ %
Add
¡¡% (
(
¡¡( )
ar
¡¡) +
)
¡¡+ ,
;
¡¡, -
_db
¬¬ 
.
¬¬ 
SaveChanges
¬¬ 
(
¬¬  
)
¬¬  !
;
¬¬! "
return
√√ 
RedirectToAction
√√ '
(
√√' (
$str
√√( /
)
√√/ 0
;
√√0 1
}
ƒƒ 

SelectList
≈≈ 

additiviId
≈≈ !
=
≈≈" #
new
≈≈$ '

SelectList
≈≈( 2
(
≈≈2 3
_db
≈≈3 6
.
≈≈6 7
Additivi
≈≈7 ?
,
≈≈? @
$str
≈≈A M
,
≈≈M N
$str
≈≈O U
)
≈≈U V
;
≈≈V W
ViewBag
∆∆ 
.
∆∆ 
additivi
∆∆ 
=
∆∆ 

additiviId
∆∆ )
;
∆∆) *
return
«« 
View
«« 
(
«« 
ar
«« 
)
«« 
;
«« 
}
»» 	
public
—— 
ActionResult
—— 
AggiungiLievito
—— +
(
——+ ,
int
——, /
id
——0 2
)
——2 3
{
““ 	
LievitiRicetta
”” 
lr
”” 
=
”” 
new
””  #
LievitiRicetta
””$ 2
{
””3 4
	RicettaId
””5 >
=
””? @
id
””A C
}
””D E
;
””E F

SelectList
‘‘ 
	lievitiId
‘‘  
=
‘‘! "
new
‘‘# &

SelectList
‘‘' 1
(
‘‘1 2
_db
‘‘2 5
.
‘‘5 6
Lieviti
‘‘6 =
,
‘‘= >
$str
‘‘? J
,
‘‘J K
$str
‘‘L R
)
‘‘R S
;
‘‘S T
ViewBag
’’ 
.
’’ 
lieviti
’’ 
=
’’ 
	lievitiId
’’ '
;
’’' (
return
÷÷ 
View
÷÷ 
(
÷÷ 
lr
÷÷ 
)
÷÷ 
;
÷÷ 
}
◊◊ 	
[
·· 	
HttpPost
··	 
]
·· 
public
‚‚ 
ActionResult
‚‚ 
AggiungiLievito
‚‚ +
(
‚‚+ ,
LievitiRicetta
‚‚, :
lr
‚‚; =
)
‚‚= >
{
„„ 	
if
‰‰ 
(
‰‰ 

ModelState
‰‰ 
.
‰‰ 
IsValid
‰‰ "
)
‰‰" #
{
ÂÂ 
_db
ÊÊ 
.
ÊÊ 
LievitiRicettas
ÊÊ #
.
ÊÊ# $
Add
ÊÊ$ '
(
ÊÊ' (
lr
ÊÊ( *
)
ÊÊ* +
;
ÊÊ+ ,
_db
ÁÁ 
.
ÁÁ 
SaveChanges
ÁÁ 
(
ÁÁ  
)
ÁÁ  !
;
ÁÁ! "
return
ËË 
RedirectToAction
ËË '
(
ËË' (
$str
ËË( /
)
ËË/ 0
;
ËË0 1
}
ÈÈ 

SelectList
ÍÍ 
	lievitiId
ÍÍ  
=
ÍÍ! "
new
ÍÍ# &

SelectList
ÍÍ' 1
(
ÍÍ1 2
_db
ÍÍ2 5
.
ÍÍ5 6
Lieviti
ÍÍ6 =
,
ÍÍ= >
$str
ÍÍ? J
,
ÍÍJ K
$str
ÍÍL R
)
ÍÍR S
;
ÍÍS T
ViewBag
ÎÎ 
.
ÎÎ 
lieviti
ÎÎ 
=
ÎÎ 
	lievitiId
ÎÎ '
;
ÎÎ' (
return
ÏÏ 
View
ÏÏ 
(
ÏÏ 
lr
ÏÏ 
)
ÏÏ 
;
ÏÏ 
}
ÌÌ 	
public
ˆˆ 
ActionResult
ˆˆ 
AggiungiLuppolo
ˆˆ +
(
ˆˆ+ ,
int
ˆˆ, /
id
ˆˆ0 2
)
ˆˆ2 3
{
˜˜ 	
LuppoliRicetta
¯¯ 
lr
¯¯ 
=
¯¯ 
new
¯¯  #
LuppoliRicetta
¯¯$ 2
{
¯¯3 4
	RicettaId
¯¯5 >
=
¯¯? @
id
¯¯A C
}
¯¯D E
;
¯¯E F

SelectList
˘˘ 
	luppoliId
˘˘  
=
˘˘! "
new
˘˘# &

SelectList
˘˘' 1
(
˘˘1 2
_db
˘˘2 5
.
˘˘5 6
Luppoli
˘˘6 =
,
˘˘= >
$str
˘˘? J
,
˘˘J K
$str
˘˘L R
)
˘˘R S
;
˘˘S T
ViewBag
˙˙ 
.
˙˙ 
luppoli
˙˙ 
=
˙˙ 
	luppoliId
˙˙ '
;
˙˙' (
return
˚˚ 
View
˚˚ 
(
˚˚ 
lr
˚˚ 
)
˚˚ 
;
˚˚ 
}
¸¸ 	
[
ÜÜ 	
HttpPost
ÜÜ	 
]
ÜÜ 
public
áá 
ActionResult
áá 
AggiungiLuppolo
áá +
(
áá+ ,
LuppoliRicetta
áá, :
lr
áá; =
)
áá= >
{
àà 	
if
ââ 
(
ââ 

ModelState
ââ 
.
ââ 
IsValid
ââ "
)
ââ" #
{
ää 
_db
ãã 
.
ãã 
LuppoliRicettas
ãã #
.
ãã# $
Add
ãã$ '
(
ãã' (
lr
ãã( *
)
ãã* +
;
ãã+ ,
_db
åå 
.
åå 
SaveChanges
åå 
(
åå  
)
åå  !
;
åå! "
return
çç 
RedirectToAction
çç '
(
çç' (
$str
çç( /
)
çç/ 0
;
çç0 1
}
éé 

SelectList
èè 
	luppoliId
èè  
=
èè! "
new
èè# &

SelectList
èè' 1
(
èè1 2
_db
èè2 5
.
èè5 6
Luppoli
èè6 =
,
èè= >
$str
èè? J
,
èèJ K
$str
èèL R
)
èèR S
;
èèS T
ViewBag
êê 
.
êê 
luppoli
êê 
=
êê 
	luppoliId
êê '
;
êê' (
return
ëë 
View
ëë 
(
ëë 
lr
ëë 
)
ëë 
;
ëë 
}
íí 	
public
õõ 
ActionResult
õõ 
AggiungiMalti
õõ )
(
õõ) *
int
õõ* -
id
õõ. 0
)
õõ0 1
{
úú 	
MaltiRicetta
ùù 
mr
ùù 
=
ùù 
new
ùù !
MaltiRicetta
ùù" .
{
ùù/ 0
MaltiId
ùù1 8
=
ùù9 :
id
ùù; =
}
ùù> ?
;
ùù? @

SelectList
ûû 
maltiId
ûû 
=
ûû  
new
ûû! $

SelectList
ûû% /
(
ûû/ 0
_db
ûû0 3
.
ûû3 4
Malti
ûû4 9
,
ûû9 :
$str
ûû; D
,
ûûD E
$str
ûûF L
)
ûûL M
;
ûûM N
ViewBag
üü 
.
üü 
malti
üü 
=
üü 
maltiId
üü #
;
üü# $
return
†† 
View
†† 
(
†† 
mr
†† 
)
†† 
;
†† 
}
°° 	
[
´´ 	
HttpPost
´´	 
]
´´ 
public
¨¨ 
ActionResult
¨¨ 
AggiungiMalti
¨¨ )
(
¨¨) *
MaltiRicetta
¨¨* 6
mr
¨¨7 9
)
¨¨9 :
{
≠≠ 	
if
ÆÆ 
(
ÆÆ 

ModelState
ÆÆ 
.
ÆÆ 
IsValid
ÆÆ "
)
ÆÆ" #
{
ØØ 
_db
∞∞ 
.
∞∞ 
MaltiRicettas
∞∞ !
.
∞∞! "
Add
∞∞" %
(
∞∞% &
mr
∞∞& (
)
∞∞( )
;
∞∞) *
_db
±± 
.
±± 
SaveChanges
±± 
(
±±  
)
±±  !
;
±±! "
return
≤≤ 
RedirectToAction
≤≤ '
(
≤≤' (
$str
≤≤( /
)
≤≤/ 0
;
≤≤0 1
}
≥≥ 

SelectList
¥¥ 
maltiId
¥¥ 
=
¥¥  
new
¥¥! $

SelectList
¥¥% /
(
¥¥/ 0
_db
¥¥0 3
.
¥¥3 4
Malti
¥¥4 9
,
¥¥9 :
$str
¥¥; D
,
¥¥D E
$str
¥¥F L
)
¥¥L M
;
¥¥M N
ViewBag
µµ 
.
µµ 
malti
µµ 
=
µµ 
maltiId
µµ #
;
µµ# $
return
∂∂ 
View
∂∂ 
(
∂∂ 
mr
∂∂ 
)
∂∂ 
;
∂∂ 
}
∑∑ 	
public
¿¿ 
ActionResult
¿¿ 
AggiungiZuccheri
¿¿ ,
(
¿¿, -
int
¿¿- 0
id
¿¿1 3
)
¿¿3 4
{
¡¡ 	
ZuccheriRicetta
¬¬ 
zr
¬¬ 
=
¬¬  
new
¬¬! $
ZuccheriRicetta
¬¬% 4
{
¬¬5 6
	RicettaId
¬¬7 @
=
¬¬A B
id
¬¬C E
}
¬¬F G
;
¬¬G H

SelectList
√√ 

zuccheriId
√√ !
=
√√" #
new
√√$ '

SelectList
√√( 2
(
√√2 3
_db
√√3 6
.
√√6 7
Zuccheri
√√7 ?
,
√√? @
$str
√√A M
,
√√M N
$str
√√O U
)
√√U V
;
√√V W
ViewBag
ƒƒ 
.
ƒƒ 
zuccheri
ƒƒ 
=
ƒƒ 

zuccheriId
ƒƒ )
;
ƒƒ) *
return
≈≈ 
View
≈≈ 
(
≈≈ 
zr
≈≈ 
)
≈≈ 
;
≈≈ 
}
∆∆ 	
[
–– 	
HttpPost
––	 
]
–– 
public
—— 
ActionResult
—— 
AggiungiZuccheri
—— ,
(
——, -
ZuccheriRicetta
——- <
zr
——= ?
)
——? @
{
““ 	
if
”” 
(
”” 

ModelState
”” 
.
”” 
IsValid
”” "
)
””" #
{
‘‘ 
_db
’’ 
.
’’ 
ZuccheriRicettas
’’ $
.
’’$ %
Add
’’% (
(
’’( )
zr
’’) +
)
’’+ ,
;
’’, -
_db
÷÷ 
.
÷÷ 
SaveChanges
÷÷ 
(
÷÷  
)
÷÷  !
;
÷÷! "
return
◊◊ 
RedirectToAction
◊◊ '
(
◊◊' (
$str
◊◊( /
)
◊◊/ 0
;
◊◊0 1
}
ÿÿ 

SelectList
ŸŸ 

zuccheriId
ŸŸ !
=
ŸŸ" #
new
ŸŸ$ '

SelectList
ŸŸ( 2
(
ŸŸ2 3
_db
ŸŸ3 6
.
ŸŸ6 7
Zuccheri
ŸŸ7 ?
,
ŸŸ? @
$str
ŸŸA M
,
ŸŸM N
$str
ŸŸO U
)
ŸŸU V
;
ŸŸV W
ViewBag
⁄⁄ 
.
⁄⁄ 
zuccheri
⁄⁄ 
=
⁄⁄ 

zuccheriId
⁄⁄ )
;
⁄⁄) *
return
€€ 
View
€€ 
(
€€ 
zr
€€ 
)
€€ 
;
€€ 
}
‹‹ 	
public
ÊÊ 
ActionResult
ÊÊ 
EditAdditivo
ÊÊ (
(
ÊÊ( )
int
ÊÊ) ,
id
ÊÊ- /
,
ÊÊ/ 0
int
ÊÊ1 4
idr
ÊÊ5 8
)
ÊÊ8 9
{
ÁÁ 	
AdditiviRicetta
ËË 
ar
ËË 
=
ËË  
_db
ËË! $
.
ËË$ %
AdditiviRicettas
ËË% 5
.
ËË5 6
Where
ËË6 ;
(
ËË; <
x
ËË< =
=>
ËË> @
x
ËËA B
.
ËËB C

AdditiviId
ËËC M
==
ËËN P
id
ËËQ S
&&
ËËT V
x
ËËW X
.
ËËX Y
	RicettaId
ËËY b
==
ËËc e
idr
ËËf i
)
ËËi j
.
ËËj k
FirstOrDefault
ËËk y
(
ËËy z
)
ËËz {
;
ËË{ |
return
ÍÍ 
View
ÍÍ 
(
ÍÍ 
ar
ÍÍ 
)
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
[
ÙÙ 	
HttpPost
ÙÙ	 
]
ÙÙ 
public
ıı 
ActionResult
ıı 
EditAdditivo
ıı (
(
ıı( )
AdditiviRicetta
ıı) 8
ar
ıı9 ;
)
ıı; <
{
ˆˆ 	
AdditiviRicetta
˜˜ 
ar2
˜˜ 
=
˜˜  !
_db
˜˜" %
.
˜˜% &
AdditiviRicettas
˜˜& 6
.
˜˜6 7
Where
˜˜7 <
(
˜˜< =
x
˜˜= >
=>
˜˜? A
x
˜˜B C
.
˜˜C D

AdditiviId
˜˜D N
==
˜˜O Q
ar
˜˜R T
.
˜˜T U

AdditiviId
˜˜U _
&&
˜˜` b
x
˜˜c d
.
˜˜d e
	RicettaId
˜˜e n
==
˜˜o q
ar
˜˜r t
.
˜˜t u
	RicettaId
˜˜u ~
)
˜˜~ 
.˜˜ Ä
FirstOrDefault˜˜Ä é
(˜˜é è
)˜˜è ê
;˜˜ê ë
ar2
¯¯ 
.
¯¯ 
Quantita
¯¯ 
=
¯¯ 
ar
¯¯ 
.
¯¯ 
Quantita
¯¯ &
;
¯¯& '
if
˘˘ 
(
˘˘ 

ModelState
˘˘ 
.
˘˘ 
IsValid
˘˘ "
)
˘˘" #
{
˙˙ 
_db
˚˚ 
.
˚˚ 
SaveChanges
˚˚ 
(
˚˚  
)
˚˚  !
;
˚˚! "
return
¸¸ 
RedirectToAction
¸¸ '
(
¸¸' (
$str
¸¸( /
)
¸¸/ 0
;
¸¸0 1
}
˝˝ 

SelectList
˛˛ 

additiviId
˛˛ !
=
˛˛" #
new
˛˛$ '

SelectList
˛˛( 2
(
˛˛2 3
_db
˛˛3 6
.
˛˛6 7
Additivi
˛˛7 ?
,
˛˛? @
$str
˛˛A M
,
˛˛M N
$str
˛˛O U
)
˛˛U V
;
˛˛V W
ViewBag
ˇˇ 
.
ˇˇ 
additivi
ˇˇ 
=
ˇˇ 

additiviId
ˇˇ )
;
ˇˇ) *
return
ÄÄ 
View
ÄÄ 
(
ÄÄ 
ar
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
public
ãã 
ActionResult
ãã 
EditLievito
ãã '
(
ãã' (
int
ãã( +
id
ãã, .
,
ãã. /
int
ãã0 3
idr
ãã4 7
)
ãã7 8
{
åå 	
LievitiRicetta
çç 
lr
çç 
=
çç 
_db
çç  #
.
çç# $
LievitiRicettas
çç$ 3
.
çç3 4
Where
çç4 9
(
çç9 :
x
çç: ;
=>
çç< >
x
çç? @
.
çç@ A
	LievitoId
ççA J
==
ççK M
id
ççN P
&&
ççQ S
x
ççT U
.
ççU V
	RicettaId
ççV _
==
çç` b
idr
ççc f
)
ççf g
.
ççg h
FirstOrDefault
ççh v
(
ççv w
)
ççw x
;
ççx y
return
éé 
View
éé 
(
éé 
lr
éé 
)
éé 
;
éé 
}
èè 	
[
òò 	
HttpPost
òò	 
]
òò 
public
ôô 
ActionResult
ôô 
EditLievito
ôô '
(
ôô' (
LievitiRicetta
ôô( 6
lr
ôô7 9
)
ôô9 :
{
öö 	
LievitiRicetta
õõ 
lr2
õõ 
=
õõ  
_db
õõ! $
.
õõ$ %
LievitiRicettas
õõ% 4
.
õõ4 5
Where
õõ5 :
(
õõ: ;
x
õõ; <
=>
õõ= ?
x
õõ@ A
.
õõA B
	LievitoId
õõB K
==
õõL N
lr
õõO Q
.
õõQ R
	LievitoId
õõR [
&&
õõ\ ^
x
õõ_ `
.
õõ` a
	RicettaId
õõa j
==
õõk m
lr
õõn p
.
õõp q
	RicettaId
õõq z
)
õõz {
.
õõ{ |
FirstOrDefaultõõ| ä
(õõä ã
)õõã å
;õõå ç
lr2
úú 
.
úú 
Quantita
úú 
=
úú 
lr
úú 
.
úú 
Quantita
úú &
;
úú& '
if
ùù 
(
ùù 

ModelState
ùù 
.
ùù 
IsValid
ùù "
)
ùù" #
{
ûû 
_db
üü 
.
üü 
SaveChanges
üü 
(
üü  
)
üü  !
;
üü! "
return
†† 
RedirectToAction
†† '
(
††' (
$str
††( /
)
††/ 0
;
††0 1
}
°° 

SelectList
¢¢ 
	lievitiId
¢¢  
=
¢¢! "
new
¢¢# &

SelectList
¢¢' 1
(
¢¢1 2
_db
¢¢2 5
.
¢¢5 6
Lieviti
¢¢6 =
,
¢¢= >
$str
¢¢? J
,
¢¢J K
$str
¢¢L R
)
¢¢R S
;
¢¢S T
ViewBag
££ 
.
££ 
lieviti
££ 
=
££ 
	lievitiId
££ '
;
££' (
return
§§ 
View
§§ 
(
§§ 
lr
§§ 
)
§§ 
;
§§ 
}
•• 	
public
ØØ 
ActionResult
ØØ 
EditLuppolo
ØØ '
(
ØØ' (
int
ØØ( +
id
ØØ, .
,
ØØ. /
int
ØØ0 3
idr
ØØ4 7
)
ØØ7 8
{
∞∞ 	
LuppoliRicetta
±± 
lr
±± 
=
±± 
_db
±±  #
.
±±# $
LuppoliRicettas
±±$ 3
.
±±3 4
Where
±±4 9
(
±±9 :
x
±±: ;
=>
±±< >
x
±±? @
.
±±@ A
	LuppoliId
±±A J
==
±±K M
id
±±N P
&&
±±Q S
x
±±T U
.
±±U V
	RicettaId
±±V _
==
±±` b
idr
±±c f
)
±±f g
.
±±g h
FirstOrDefault
±±h v
(
±±v w
)
±±w x
;
±±x y
return
≤≤ 
View
≤≤ 
(
≤≤ 
lr
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 	
[
ºº 	
HttpPost
ºº	 
]
ºº 
public
ΩΩ 
ActionResult
ΩΩ 
EditLuppolo
ΩΩ '
(
ΩΩ' (
LuppoliRicetta
ΩΩ( 6
lr
ΩΩ7 9
)
ΩΩ9 :
{
ææ 	
if
øø 
(
øø 

ModelState
øø 
.
øø 
IsValid
øø "
)
øø" #
{
¿¿ 
_db
¡¡ 
.
¡¡ 
SaveChanges
¡¡ 
(
¡¡  
)
¡¡  !
;
¡¡! "
return
¬¬ 
RedirectToAction
¬¬ '
(
¬¬' (
$str
¬¬( /
)
¬¬/ 0
;
¬¬0 1
}
√√ 

SelectList
ƒƒ 
	luppoliId
ƒƒ  
=
ƒƒ! "
new
ƒƒ# &

SelectList
ƒƒ' 1
(
ƒƒ1 2
_db
ƒƒ2 5
.
ƒƒ5 6
Luppoli
ƒƒ6 =
,
ƒƒ= >
$str
ƒƒ? J
,
ƒƒJ K
$str
ƒƒL R
)
ƒƒR S
;
ƒƒS T
ViewBag
≈≈ 
.
≈≈ 
luppoli
≈≈ 
=
≈≈ 
	luppoliId
≈≈ '
;
≈≈' (
return
∆∆ 
View
∆∆ 
(
∆∆ 
lr
∆∆ 
)
∆∆ 
;
∆∆ 
}
«« 	
public
—— 
ActionResult
—— 
	EditMalti
—— %
(
——% &
int
——& )
id
——* ,
,
——, -
int
——. 1
idr
——2 5
)
——5 6
{
““ 	
MaltiRicetta
”” 
mr
”” 
=
”” 
_db
”” !
.
””! "
MaltiRicettas
””" /
.
””/ 0
Where
””0 5
(
””5 6
x
””6 7
=>
””8 :
x
””; <
.
””< =
MaltiId
””= D
==
””E G
id
””H J
&&
””K M
x
””N O
.
””O P
	RicettaId
””P Y
==
””Z \
idr
””] `
)
””` a
.
””a b
FirstOrDefault
””b p
(
””p q
)
””q r
;
””r s
return
‘‘ 
View
‘‘ 
(
‘‘ 
mr
‘‘ 
)
‘‘ 
;
‘‘ 
}
’’ 	
[
ﬁﬁ 	
HttpPost
ﬁﬁ	 
]
ﬁﬁ 
public
ﬂﬂ 
ActionResult
ﬂﬂ 
	EditMalti
ﬂﬂ %
(
ﬂﬂ% &
MaltiRicetta
ﬂﬂ& 2
mr
ﬂﬂ3 5
)
ﬂﬂ5 6
{
‡‡ 	
MaltiRicetta
·· 
mr2
·· 
=
·· 
_db
·· "
.
··" #
MaltiRicettas
··# 0
.
··0 1
Where
··1 6
(
··6 7
x
··7 8
=>
··9 ;
x
··< =
.
··= >
MaltiId
··> E
==
··F H
mr
··I K
.
··K L
MaltiId
··L S
&&
··T V
x
··W X
.
··X Y
	RicettaId
··Y b
==
··c e
mr
··f h
.
··h i
	RicettaId
··i r
)
··r s
.
··s t
FirstOrDefault··t Ç
(··Ç É
)··É Ñ
;··Ñ Ö
mr2
‚‚ 
.
‚‚ 
Quantita
‚‚ 
=
‚‚ 
mr
‚‚ 
.
‚‚ 
Quantita
‚‚ &
;
‚‚& '
if
„„ 
(
„„ 

ModelState
„„ 
.
„„ 
IsValid
„„ "
)
„„" #
{
‰‰ 
_db
ÂÂ 
.
ÂÂ 
SaveChanges
ÂÂ 
(
ÂÂ  
)
ÂÂ  !
;
ÂÂ! "
return
ÊÊ 
RedirectToAction
ÊÊ '
(
ÊÊ' (
$str
ÊÊ( /
)
ÊÊ/ 0
;
ÊÊ0 1
}
ÁÁ 

SelectList
ËË 
maltiId
ËË 
=
ËË  
new
ËË! $

SelectList
ËË% /
(
ËË/ 0
_db
ËË0 3
.
ËË3 4
Malti
ËË4 9
,
ËË9 :
$str
ËË; D
,
ËËD E
$str
ËËF L
)
ËËL M
;
ËËM N
ViewBag
ÈÈ 
.
ÈÈ 
malti
ÈÈ 
=
ÈÈ 
maltiId
ÈÈ #
;
ÈÈ# $
return
ÍÍ 
View
ÍÍ 
(
ÍÍ 
mr
ÍÍ 
)
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
public
ıı 
ActionResult
ıı 
EditZuccheri
ıı (
(
ıı( )
int
ıı) ,
id
ıı- /
,
ıı/ 0
int
ıı1 4
idr
ıı5 8
)
ıı8 9
{
ˆˆ 	
ZuccheriRicetta
˜˜ 
zr
˜˜ 
=
˜˜  
_db
˜˜! $
.
˜˜$ %
ZuccheriRicettas
˜˜% 5
.
˜˜5 6
Where
˜˜6 ;
(
˜˜; <
x
˜˜< =
=>
˜˜> @
x
˜˜A B
.
˜˜B C
	RicettaId
˜˜C L
==
˜˜M O
idr
˜˜P S
&&
˜˜T V
x
˜˜W X
.
˜˜X Y

ZuccheriId
˜˜Y c
==
˜˜d f
id
˜˜g i
)
˜˜i j
.
˜˜j k
FirstOrDefault
˜˜k y
(
˜˜y z
)
˜˜z {
;
˜˜{ |
return
¯¯ 
View
¯¯ 
(
¯¯ 
zr
¯¯ 
)
¯¯ 
;
¯¯ 
}
˘˘ 	
[
ÇÇ 	
HttpPost
ÇÇ	 
]
ÇÇ 
public
ÉÉ 
ActionResult
ÉÉ 
EditZuccheri
ÉÉ (
(
ÉÉ( )
ZuccheriRicetta
ÉÉ) 8
zr
ÉÉ9 ;
,
ÉÉ; <
int
ÉÉ= @
idr
ÉÉA D
)
ÉÉD E
{
ÑÑ 	
ZuccheriRicetta
ÖÖ 
zr2
ÖÖ 
=
ÖÖ  !
_db
ÖÖ" %
.
ÖÖ% &
ZuccheriRicettas
ÖÖ& 6
.
ÖÖ6 7
Where
ÖÖ7 <
(
ÖÖ< =
x
ÖÖ= >
=>
ÖÖ? A
x
ÖÖB C
.
ÖÖC D

ZuccheriId
ÖÖD N
==
ÖÖO Q
zr
ÖÖR T
.
ÖÖT U

ZuccheriId
ÖÖU _
&&
ÖÖ` b
x
ÖÖc d
.
ÖÖd e
	RicettaId
ÖÖe n
==
ÖÖo q
idr
ÖÖr u
)
ÖÖu v
.
ÖÖv w
FirstOrDefaultÖÖw Ö
(ÖÖÖ Ü
)ÖÖÜ á
;ÖÖá à
zr2
ÜÜ 
.
ÜÜ 
Quantita
ÜÜ 
=
ÜÜ 
zr
ÜÜ 
.
ÜÜ 
Quantita
ÜÜ &
;
ÜÜ& '
if
áá 
(
áá 

ModelState
áá 
.
áá 
IsValid
áá "
)
áá" #
{
àà 
_db
ââ 
.
ââ 
SaveChanges
ââ 
(
ââ  
)
ââ  !
;
ââ! "
return
ää 
RedirectToAction
ää '
(
ää' (
$str
ää( /
)
ää/ 0
;
ää0 1
}
ãã 

SelectList
åå 

zuccheriId
åå !
=
åå" #
new
åå$ '

SelectList
åå( 2
(
åå2 3
_db
åå3 6
.
åå6 7
Zuccheri
åå7 ?
,
åå? @
$str
ååA M
,
ååM N
$str
ååO U
)
ååU V
;
ååV W
ViewBag
çç 
.
çç 
zuccheri
çç 
=
çç 

zuccheriId
çç )
;
çç) *
return
éé 
View
éé 
(
éé 
zr
éé 
)
éé 
;
éé 
}
èè 	
}
êê 
}ëë E
PC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\ZuccherisController.cs
	namespace

 	
BrewDay2


 
.

 
Controllers

 
{ 
[ 
	Authorize 
] 
public 

class 
ZuccherisController $
:% &

Controller' 1
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
_db 
. 
Zuccheri $
.$ %
ToList% +
(+ ,
), -
)- .
;. /
} 	
public&& 
ActionResult&& 
Details&& #
(&&# $
int&&$ '
?&&' (
id&&) +
)&&+ ,
{'' 	
if(( 
((( 
id(( 
==(( 
null(( 
)(( 
{)) 

PathConfig** 
c** 
=** 
new** "

PathConfig**# -
(**- .
)**. /
;**/ 0
return++ 
Redirect++ 
(++  
c++  !
.++! "
error++" '
)++' (
;++( )
},, 
Zuccheri-- 
zuccheri-- 
=-- 
_db--  #
.--# $
Zuccheri--$ ,
.--, -
Find--- 1
(--1 2
id--2 4
)--4 5
;--5 6
if.. 
(.. 
zuccheri.. 
==.. 
null..  
)..  !
{// 
return00 
HttpNotFound00 #
(00# $
)00$ %
;00% &
}11 
return22 
View22 
(22 
zuccheri22  
)22  !
;22! "
}33 	
public<< 
ActionResult<< 
Create<< "
(<<" #
)<<# $
{== 	
Zuccheri>> 
z>> 
=>> 
new>> 
Zuccheri>> %
{>>& '
UserId>>' -
=>>. /
User>>0 4
.>>4 5
Identity>>5 =
.>>= >
	GetUserId>>> G
(>>G H
)>>H I
}>>I J
;>>J K
return?? 
View?? 
(?? 
z?? 
)?? 
;?? 
}@@ 	
[KK 	
HttpPostKK	 
]KK 
[LL 	$
ValidateAntiForgeryTokenLL	 !
]LL! "
publicMM 
ActionResultMM 
CreateMM "
(MM" #
[MM# $
BindMM$ (
(MM( )
IncludeMM) 0
=MM1 2
$strMM3 Z
)MMZ [
]MM[ \
ZuccheriMM] e
zuccheriMMf n
)MMn o
{NN 	
ifOO 
(OO 

ModelStateOO 
.OO 
IsValidOO "
)OO" #
{PP 
_dbQQ 
.QQ 
ZuccheriQQ 
.QQ 
AddQQ  
(QQ  !
zuccheriQQ! )
)QQ) *
;QQ* +
_dbRR 
.RR 
SaveChangesRR 
(RR  
)RR  !
;RR! "
returnSS 
RedirectToActionSS '
(SS' (
$strSS( /
)SS/ 0
;SS0 1
}TT 
returnVV 
ViewVV 
(VV 
zuccheriVV  
)VV  !
;VV! "
}WW 	
publicaa 
ActionResultaa 
Editaa  
(aa  !
intaa! $
?aa$ %
idaa& (
)aa( )
{bb 	
ifcc 
(cc 
idcc 
==cc 
nullcc 
)cc 
{dd 
returnee 
newee  
HttpStatusCodeResultee /
(ee/ 0
HttpStatusCodeee0 >
.ee> ?

BadRequestee? I
)eeI J
;eeJ K
}ff 
Zuccherigg 
zuccherigg 
=gg 
_dbgg  #
.gg# $
Zuccherigg$ ,
.gg, -
Findgg- 1
(gg1 2
idgg2 4
)gg4 5
;gg5 6
ifhh 
(hh 
zuccherihh 
==hh 
nullhh  
)hh  !
{ii 
returnjj 
HttpNotFoundjj #
(jj# $
)jj$ %
;jj% &
}kk 
returnll 
Viewll 
(ll 
zuccherill  
)ll  !
;ll! "
}mm 	
[yy 	
HttpPostyy	 
]yy 
[zz 	$
ValidateAntiForgeryTokenzz	 !
]zz! "
public{{ 
ActionResult{{ 
Edit{{  
({{  !
[{{! "
Bind{{" &
({{& '
Include{{' .
={{/ 0
$str{{1 X
){{X Y
]{{Y Z
Zuccheri{{[ c
zuccheri{{d l
){{l m
{|| 	
if}} 
(}} 

ModelState}} 
.}} 
IsValid}} "
)}}" #
{~~ 
_db 
. 
Entry 
( 
zuccheri "
)" #
.# $
State$ )
=* +
EntityState, 7
.7 8
Modified8 @
;@ A
_db
ÄÄ 
.
ÄÄ 
SaveChanges
ÄÄ 
(
ÄÄ  
)
ÄÄ  !
;
ÄÄ! "
return
ÅÅ 
RedirectToAction
ÅÅ '
(
ÅÅ' (
$str
ÅÅ( /
)
ÅÅ/ 0
;
ÅÅ0 1
}
ÇÇ 
return
ÉÉ 
View
ÉÉ 
(
ÉÉ 
zuccheri
ÉÉ  
)
ÉÉ  !
;
ÉÉ! "
}
ÑÑ 	
public
èè 
ActionResult
èè 
Delete
èè "
(
èè" #
int
èè# &
?
èè& '
id
èè( *
)
èè* +
{
êê 	
if
ëë 
(
ëë 
id
ëë 
==
ëë 
null
ëë 
)
ëë 
{
íí 

PathConfig
ìì 
c
ìì 
=
ìì 
new
ìì "

PathConfig
ìì# -
(
ìì- .
)
ìì. /
;
ìì/ 0
return
îî 
Redirect
îî 
(
îî  
c
îî  !
.
îî! "
error2
îî" (
)
îî( )
;
îî) *
}
ïï 
Zuccheri
ññ 
zuccheri
ññ 
=
ññ 
_db
ññ  #
.
ññ# $
Zuccheri
ññ$ ,
.
ññ, -
Find
ññ- 1
(
ññ1 2
id
ññ2 4
)
ññ4 5
;
ññ5 6
if
óó 
(
óó 
zuccheri
óó 
==
óó 
null
óó  
)
óó  !
{
òò 
return
ôô 
HttpNotFound
ôô #
(
ôô# $
)
ôô$ %
;
ôô% &
}
öö 
return
õõ 
View
õõ 
(
õõ 
zuccheri
õõ  
)
õõ  !
;
õõ! "
}
úú 	
[
¶¶ 	
HttpPost
¶¶	 
,
¶¶ 

ActionName
¶¶ 
(
¶¶ 
$str
¶¶ &
)
¶¶& '
]
¶¶' (
[
ßß 	&
ValidateAntiForgeryToken
ßß	 !
]
ßß! "
public
®® 
ActionResult
®® 
DeleteConfirmed
®® +
(
®®+ ,
int
®®, /
id
®®0 2
)
®®2 3
{
©© 	
Zuccheri
™™ 
zuccheri
™™ 
=
™™ 
_db
™™  #
.
™™# $
Zuccheri
™™$ ,
.
™™, -
Find
™™- 1
(
™™1 2
id
™™2 4
)
™™4 5
;
™™5 6
_db
´´ 
.
´´ 
Zuccheri
´´ 
.
´´ 
Remove
´´ 
(
´´  
zuccheri
´´  (
??
´´) +
throw
´´, 1
new
´´2 5'
InvalidOperationException
´´6 O
(
´´O P
)
´´P Q
)
´´Q R
;
´´R S
_db
¨¨ 
.
¨¨ 
SaveChanges
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
return
≠≠ 
RedirectToAction
≠≠ #
(
≠≠# $
$str
≠≠$ +
)
≠≠+ ,
;
≠≠, -
}
ÆÆ 	
	protected
∞∞ 
override
∞∞ 
void
∞∞ 
Dispose
∞∞  '
(
∞∞' (
bool
∞∞( ,
	disposing
∞∞- 6
)
∞∞6 7
{
±± 	
if
≤≤ 
(
≤≤ 
	disposing
≤≤ 
)
≤≤ 
{
≥≥ 
_db
¥¥ 
.
¥¥ 
Dispose
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 
}
µµ 
base
∂∂ 
.
∂∂ 
Dispose
∂∂ 
(
∂∂ 
	disposing
∂∂ "
)
∂∂" #
;
∂∂# $
}
∑∑ 	
}
∏∏ 
}ππ „
<C:\Users\david\Source\Repos\Brewday2\BrewDay2\Global.asax.cs
	namespace 	
BrewDay2
 
{ 
public 

class 
MvcApplication 
:  !
System" (
.( )
Web) ,
., -
HttpApplication- <
{ 
	protected		 
void		 
Application_Start		 (
(		( )
)		) *
{

 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} ÌF
IC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\AccountViewModels.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class .
"ExternalLoginConfirmationViewModel 3
{ 
[ 	
Required	 
] 
[		 	
Display			 
(		 
Name		 
=		 
$str		 +
)		+ ,
]		, -
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
public 

class &
ExternalLoginListViewModel +
{ 
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
} 
public 

class 
SendCodeViewModel "
{ 
public 
string 
SelectedProvider &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
ICollection 
< 
System !
.! "
Web" %
.% &
Mvc& )
.) *
SelectListItem* 8
>8 9
	Providers: C
{D E
getF I
;I J
setK N
;N O
}P Q
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class 
VerifyCodeViewModel $
{ 
[ 	
Required	 
] 
public 
string 
Provider 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[   	
Display  	 
(   
Name   
=   
$str    
)    !
]  ! "
public!! 
string!! 
Code!! 
{!! 
get!!  
;!!  !
set!!" %
;!!% &
}!!' (
public"" 
string"" 
	ReturnUrl"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
[$$ 	
Display$$	 
($$ 
Name$$ 
=$$ 
$str$$ 5
)$$5 6
]$$6 7
public%% 
bool%% 
RememberBrowser%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
public'' 
bool'' 

RememberMe'' 
{''  
get''! $
;''$ %
set''& )
;'') *
}''+ ,
}(( 
public** 

class** 
ForgotViewModel**  
{++ 
[,, 	
Required,,	 
],, 
[-- 	
Display--	 
(-- 
Name-- 
=-- 
$str-- +
)--+ ,
]--, -
public.. 
string.. 
Email.. 
{.. 
get.. !
;..! "
set..# &
;..& '
}..( )
}// 
public11 

class11 
LoginViewModel11 
{22 
[33 	
Required33	 
]33 
[44 	
Display44	 
(44 
Name44 
=44 
$str44 +
)44+ ,
]44, -
[55 	
EmailAddress55	 
]55 
public66 
string66 
Email66 
{66 
get66 !
;66! "
set66# &
;66& '
}66( )
[88 	
Required88	 
]88 
[99 	
DataType99	 
(99 
DataType99 
.99 
Password99 #
)99# $
]99$ %
[:: 	
Display::	 
(:: 
Name:: 
=:: 
$str:: "
)::" #
]::# $
public;; 
string;; 
Password;; 
{;;  
get;;! $
;;;$ %
set;;& )
;;;) *
};;+ ,
[== 	
Display==	 
(== 
Name== 
=== 
$str== +
)==+ ,
]==, -
public>> 
bool>> 

RememberMe>> 
{>>  
get>>! $
;>>$ %
set>>& )
;>>) *
}>>+ ,
}?? 
publicAA 

classAA 
RegisterViewModelAA "
{BB 
[CC 	
RequiredCC	 
]CC 
[DD 	
EmailAddressDD	 
]DD 
[EE 	
DisplayEE	 
(EE 
NameEE 
=EE 
$strEE +
)EE+ ,
]EE, -
publicFF 
stringFF 
EmailFF 
{FF 
getFF !
;FF! "
setFF# &
;FF& '
}FF( )
[HH 	
RequiredHH	 
]HH 
[II 	
StringLengthII	 
(II 
$numII 
,II 
ErrorMessageII '
=II( )
$strII* d
,IId e
MinimumLengthIIf s
=IIt u
$numIIv w
)IIw x
]IIx y
[JJ 	
DataTypeJJ	 
(JJ 
DataTypeJJ 
.JJ 
PasswordJJ #
)JJ# $
]JJ$ %
[KK 	
DisplayKK	 
(KK 
NameKK 
=KK 
$strKK "
)KK" #
]KK# $
publicLL 
stringLL 
PasswordLL 
{LL  
getLL! $
;LL$ %
setLL& )
;LL) *
}LL+ ,
[NN 	
DataTypeNN	 
(NN 
DataTypeNN 
.NN 
PasswordNN #
)NN# $
]NN$ %
[OO 	
DisplayOO	 
(OO 
NameOO 
=OO 
$strOO +
)OO+ ,
]OO, -
[PP 	
ComparePP	 
(PP 
$strPP 
,PP 
ErrorMessagePP )
=PP* +
$strPP, f
)PPf g
]PPg h
publicQQ 
stringQQ 
ConfirmPasswordQQ %
{QQ& '
getQQ( +
;QQ+ ,
setQQ- 0
;QQ0 1
}QQ2 3
}RR 
publicTT 

classTT "
ResetPasswordViewModelTT '
{UU 
[VV 	
RequiredVV	 
]VV 
[WW 	
EmailAddressWW	 
]WW 
[XX 	
DisplayXX	 
(XX 
NameXX 
=XX 
$strXX +
)XX+ ,
]XX, -
publicYY 
stringYY 
EmailYY 
{YY 
getYY !
;YY! "
setYY# &
;YY& '
}YY( )
[[[ 	
Required[[	 
][[ 
[\\ 	
StringLength\\	 
(\\ 
$num\\ 
,\\ 
ErrorMessage\\ '
=\\( )
$str\\* d
,\\d e
MinimumLength\\f s
=\\t u
$num\\v w
)\\w x
]\\x y
[]] 	
DataType]]	 
(]] 
DataType]] 
.]] 
Password]] #
)]]# $
]]]$ %
[^^ 	
Display^^	 
(^^ 
Name^^ 
=^^ 
$str^^ "
)^^" #
]^^# $
public__ 
string__ 
Password__ 
{__  
get__! $
;__$ %
set__& )
;__) *
}__+ ,
[aa 	
DataTypeaa	 
(aa 
DataTypeaa 
.aa 
Passwordaa #
)aa# $
]aa$ %
[bb 	
Displaybb	 
(bb 
Namebb 
=bb 
$strbb +
)bb+ ,
]bb, -
[cc 	
Comparecc	 
(cc 
$strcc 
,cc 
ErrorMessagecc )
=cc* +
$strcc, f
)ccf g
]ccg h
publicdd 
stringdd 
ConfirmPassworddd %
{dd& '
getdd( +
;dd+ ,
setdd- 0
;dd0 1
}dd2 3
publicff 
stringff 
Codeff 
{ff 
getff  
;ff  !
setff" %
;ff% &
}ff' (
}gg 
publicii 

classii #
ForgotPasswordViewModelii (
{jj 
[kk 	
Requiredkk	 
]kk 
[ll 	
EmailAddressll	 
]ll 
[mm 	
Displaymm	 
(mm 
Namemm 
=mm 
$strmm +
)mm+ ,
]mm, -
publicnn 
stringnn 
Emailnn 
{nn 
getnn !
;nn! "
setnn# &
;nn& '
}nn( )
}oo 
}pp ô
@C:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\Additivi.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
[ 
Table 

(
 
$str 
) 
] 
public 

class 
Additivi 
{		 
[

 	
DatabaseGenerated

	 
(

 #
DatabaseGeneratedOption

 2
.

2 3
Identity

3 ;
)

; <
]

< =
[ 	
Display	 
( 
Name 
= 
$str "
)" #
]# $
[ 	
Key	 
] 
public 
int 

AdditiviId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
String 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
String 
Descrizione !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
String 

Produttore  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Decimal 
Prezzo 
{ 
get  #
;# $
set% (
;( )
}* +
public 
String 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
ApplicationUser &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} õ
IC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\AdditiviMagazzino.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
AdditiviMagazzino "
{ 
[		 	
Key			 
,		 
Column		 
(		 
Order		 
=		 
$num		 
)		 
]		  
public

 
int

 
MagazzinoId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 

AdditiviId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
	Magazzino  
	Magazzino! *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
virtual 
Additivi 
Additivo  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Decimal 
Quantita 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ï
GC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\AdditiviRicetta.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
AdditiviRicetta  
{ 
[		 	
Key			 
,		 
Column		 
(		 
Order		 
=		 
$num		 
)		 
]		  
public

 
int

 
	RicettaId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
[ 	
Display	 
( 
Name 
= 
$str "
)" #
]# $
public 
int 

AdditiviId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
Ricette 
Ricetta &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
Additivi 
Additivo  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Decimal 
Quantita 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Ò
FC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\CategoriaBirre.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
[ 
Table 

(
 
$str 
) 
] 
public 

class 
CategoriaBirre 
{		 
[

 	
Key

	 
]

 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
String 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
} 
} §
EC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\DecimalBinder.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
DecimalModelBinder #
:$ %
IModelBinder& 2
{ 
public		 
object		 
	BindModel		 
(		  
ControllerContext		  1
controllerContext		2 C
,		C D
ModelBindingContext

 
bindingContext

  .
)

. /
{ 	
ValueProviderResult 
valueResult  +
=, -
bindingContext. <
.< =
ValueProvider= J
. 
GetValue 
( 
bindingContext (
.( )
	ModelName) 2
)2 3
;3 4

ModelState 

modelState !
=" #
new$ '

ModelState( 2
{3 4
Value5 :
=; <
valueResult= H
}I J
;J K
object 
actualValue 
=  
null! %
;% &
try 
{ 
actualValue 
= 
Convert %
.% &
	ToDecimal& /
(/ 0
valueResult0 ;
.; <
AttemptedValue< J
.J K
ReplaceK R
(R S
$strS V
,V W
$strW Z
)Z [
,[ \
CultureInfo 
.  
CurrentCulture  .
). /
;/ 0
} 
catch 
( 
FormatException "
e# $
)$ %
{ 

modelState 
. 
Errors !
.! "
Add" %
(% &
e& '
)' (
;( )
} 
bindingContext 
. 

ModelState %
.% &
Add& )
() *
bindingContext* 8
.8 9
	ModelName9 B
,B C

modelStateD N
)N O
;O P
return 
actualValue 
; 
} 	
} 
} ¿,
FC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\IdentityModels.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public

 

class

 
ApplicationUser

  
:

! "
IdentityUser

# /
{ 
public 
async 
Task 
< 
ClaimsIdentity (
>( )%
GenerateUserIdentityAsync* C
(C D
UserManagerD O
<O P
ApplicationUserP _
>_ `
managera h
)h i
{ 	
var 
userIdentity 
= 
await $
manager% ,
., -
CreateIdentityAsync- @
(@ A
thisA E
,E F&
DefaultAuthenticationTypesG a
.a b
ApplicationCookieb s
)s t
;t u
return 
userIdentity 
;  
} 	
} 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
<9 :
ApplicationUser: I
>I J
{ 
public  
ApplicationDbContext #
(# $
)$ %
: 
base 
( 
$str &
,& '
false( -
)- .
{ 	
} 	
public 
DbSet 
< 
Additivi 
> 
Additivi '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 
Lieviti 
> 
Lieviti %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DbSet 
< 
Luppoli 
> 
Luppoli %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DbSet 
< 
Malti 
> 
Malti !
{" #
get$ '
;' (
set) ,
;, -
}. /
public   
DbSet   
<   
Zuccheri   
>   
Zuccheri   '
{  ( )
get  * -
;  - .
set  / 2
;  2 3
}  4 5
public!! 
DbSet!! 
<!! 
Ricette!! 
>!! 
Ricette!! %
{!!& '
get!!( +
;!!+ ,
set!!- 0
;!!0 1
}!!2 3
public"" 
DbSet"" 
<"" 
AdditiviRicetta"" $
>""$ %
AdditiviRicettas""& 6
{""7 8
get""9 <
;""< =
set""> A
;""A B
}""C D
public## 
DbSet## 
<## 
LievitiRicetta## #
>### $
LievitiRicettas##% 4
{##5 6
get##7 :
;##: ;
set##< ?
;##? @
}##A B
public$$ 
DbSet$$ 
<$$ 
LuppoliRicetta$$ #
>$$# $
LuppoliRicettas$$% 4
{$$5 6
get$$7 :
;$$: ;
set$$< ?
;$$? @
}$$A B
public%% 
DbSet%% 
<%% 
MaltiRicetta%% !
>%%! "
MaltiRicettas%%# 0
{%%1 2
get%%3 6
;%%6 7
set%%8 ;
;%%; <
}%%= >
public&& 
DbSet&& 
<&& 
ZuccheriRicetta&& $
>&&$ %
ZuccheriRicettas&&& 6
{&&7 8
get&&9 <
;&&< =
set&&> A
;&&A B
}&&C D
public(( 
DbSet(( 
<(( 
MaltiMagazzino(( #
>((# $
MaltiMagazzinos((% 4
{((5 6
get((7 :
;((: ;
set((< ?
;((? @
}((A B
public)) 
DbSet)) 
<)) 
ZuccheriMagazzino)) &
>))& '
ZuccheriMagazzinos))( :
{)); <
get))= @
;))@ A
set))B E
;))E F
}))G H
public** 
DbSet** 
<** 
AdditiviMagazzino** &
>**& '
AdditiviMagazzinos**( :
{**; <
get**= @
;**@ A
set**B E
;**E F
}**G H
public++ 
DbSet++ 
<++ 
LuppoliMagazzino++ %
>++% &
LuppoliMagazzinos++' 8
{++9 :
get++; >
;++> ?
set++@ C
;++C D
}++E F
public,, 
DbSet,, 
<,, 
LievitiMagazzino,, %
>,,% &
LievitiMagazzinos,,' 8
{,,9 :
get,,; >
;,,> ?
set,,@ C
;,,C D
},,E F
public-- 
DbSet-- 
<-- 
CategoriaBirre-- #
>--# $
CategoriaBirres--% 4
{--5 6
get--7 :
;--: ;
set--< ?
;--? @
}--A B
public.. 
static..  
ApplicationDbContext.. *
Create..+ 1
(..1 2
)..2 3
{// 	
return00 
new00  
ApplicationDbContext00 +
(00+ ,
)00, -
;00- .
}11 	
public33 
System33 
.33 
Data33 
.33 
Entity33 !
.33! "
DbSet33" '
<33' (
	Magazzino33( 1
>331 2
Magazzinoes333 >
{33? @
get33A D
;33D E
set33F I
;33I J
}33K L
}44 
}66 í
?C:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\Lieviti.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
[ 
Table 

(
 
$str 
) 
] 
public 

class 
Lieviti 
{		 
[

 	
DatabaseGenerated

	 
(

 #
DatabaseGeneratedOption

 2
.

2 3
Identity

3 ;
)

; <
]

< =
[ 	
Key	 
] 
public 
int 
	LievitiId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
String 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
String 
Descrizione !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
String 

Produttore  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Decimal 
Prezzo 
{ 
get  #
;# $
set% (
;( )
}* +
public 
String 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
ApplicationUser &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} ñ
HC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\LievitiMagazzino.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
LievitiMagazzino !
{ 
[		 	
Key			 
,		 
Column		 
(		 
Order		 
=		 
$num		 
)		 
]		  
public

 
int

 
MagazzinoId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 
	LievitiId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
	Magazzino  
	Magazzino! *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
virtual 
Lieviti 
Lievito &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
Decimal 
Quantita 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} å
FC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\LievitiRicetta.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
LievitiRicetta 
{ 
[		 	
Key			 
,		 
Column		 
(		 
Order		 
=		 
$num		 
)		 
]		  
public

 
int

 
	RicettaId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 
	LievitoId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
Ricette 
Ricetta &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
Lieviti 
Lievito &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
Decimal 
Quantita 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} í
?C:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\Luppoli.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
[ 
Table 

(
 
$str 
) 
] 
public 

class 
Luppoli 
{		 
[

 	
DatabaseGenerated

	 
(

 #
DatabaseGeneratedOption

 2
.

2 3
Identity

3 ;
)

; <
]

< =
[ 	
Key	 
] 
public 
int 
	LuppoliId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
String 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
String 
Descrizione !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
String 

Produttore  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Decimal 
Prezzo 
{ 
get  #
;# $
set% (
;( )
}* +
public 
String 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
ApplicationUser &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} ñ
HC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\LuppoliMagazzino.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
LuppoliMagazzino !
{ 
[		 	
Key			 
,		 
Column		 
(		 
Order		 
=		 
$num		 
)		 
]		  
public

 
int

 
MagazzinoId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 
	LuppoliId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
	Magazzino  
	Magazzino! *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
virtual 
Luppoli 
Luppolo &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
Decimal 
Quantita 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} å
FC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\LuppoliRicetta.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
LuppoliRicetta 
{ 
[		 	
Key			 
,		 
Column		 
(		 
Order		 
=		 
$num		 
)		 
]		  
public

 
int

 
	RicettaId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 
	LuppoliId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
Ricette 
Ricetta &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
Luppoli 
Luppolo &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
Decimal 
Quantita 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ö
AC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\Magazzino.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
	Magazzino 
{		 
[

 	
Key

	 
]

 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
int 
MagazzinoId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
String 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
ApplicationUser &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
virtual 
ICollection "
<" #
AdditiviMagazzino# 4
>4 5
AdditiviUtente6 D
{E F
getG J
;J K
setL O
;O P
}Q R
public 
virtual 
ICollection "
<" #
LievitiMagazzino# 3
>3 4
LievitiUtente5 B
{C D
getE H
;H I
setJ M
;M N
}O P
public 
virtual 
ICollection "
<" #
LuppoliMagazzino# 3
>3 4
LuppoliUtente5 B
{C D
getE H
;H I
setJ M
;M N
}O P
public 
virtual 
ICollection "
<" #
MaltiMagazzino# 1
>1 2
MaltiUtente3 >
{? @
getA D
;D E
setF I
;I J
}K L
public 
virtual 
ICollection "
<" #
ZuccheriMagazzino# 4
>4 5
ZuccheriUtente6 D
{E F
getG J
;J K
setL O
;O P
}Q R
} 
} å
=C:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\Malti.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
[ 
Table 

(
 
$str 
) 
] 
public 

class 
Malti 
{		 
[

 	
DatabaseGenerated

	 
(

 #
DatabaseGeneratedOption

 2
.

2 3
Identity

3 ;
)

; <
]

< =
[ 	
Key	 
] 
public 
int 
MaltiId 
{ 
get  
;  !
set" %
;% &
}' (
public 
String 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
String 

Produttore  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
String 
Descrizione !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Decimal 
Prezzo 
{ 
get  #
;# $
set% (
;( )
}* +
public 
String 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
ApplicationUser &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} å
FC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\MaltiMagazzino.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
MaltiMagazzino 
{ 
[		 	
Key			 
,		 
Column		 
(		 
Order		 
=		 
$num		 
)		 
]		  
public

 
int

 
MagazzinoId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 
MaltiId 
{ 
get  
;  !
set" %
;% &
}' (
public 
virtual 
	Magazzino  
	Magazzino! *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
virtual 
Malti 
Malto "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
Decimal 
Quantita 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Ç
DC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\MaltiRicetta.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
MaltiRicetta 
{ 
[		 	
Key			 
,		 
Column		 
(		 
Order		 
=		 
$num		 
)		 
]		  
public

 
int

 
	RicettaId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 
MaltiId 
{ 
get  
;  !
set" %
;% &
}' (
public 
virtual 
Ricette 
Ricetta &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
Malti 
Malto "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
Decimal 
Quantita 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} º8
HC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\ManageViewModels.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
IndexViewModel 
{		 
public

 
bool

 
HasPassword

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
IList 
< 
UserLoginInfo "
>" #
Logins$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
	TwoFactor 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
BrowserRemembered %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
public 

class !
ManageLoginsViewModel &
{ 
public 
IList 
< 
UserLoginInfo "
>" #
CurrentLogins$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
IList 
< %
AuthenticationDescription .
>. /
OtherLogins0 ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
public 

class 
FactorViewModel  
{ 
public 
string 
Purpose 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class  
SetPasswordViewModel %
{ 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* d
,d e
MinimumLengthf s
=t u
$numv w
)w x
]x y
[   	
DataType  	 
(   
DataType   
.   
Password   #
)  # $
]  $ %
[!! 	
Display!!	 
(!! 
Name!! 
=!! 
$str!! (
)!!( )
]!!) *
public"" 
string"" 
NewPassword"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
[$$ 	
DataType$$	 
($$ 
DataType$$ 
.$$ 
Password$$ #
)$$# $
]$$$ %
[%% 	
Display%%	 
(%% 
Name%% 
=%% 
$str%% 1
)%%1 2
]%%2 3
[&& 	
Compare&&	 
(&& 
$str&& 
,&& 
ErrorMessage&&  ,
=&&- .
$str&&/ o
)&&o p
]&&p q
public'' 
string'' 
ConfirmPassword'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
}(( 
public** 

class** #
ChangePasswordViewModel** (
{++ 
[,, 	
Required,,	 
],, 
[-- 	
DataType--	 
(-- 
DataType-- 
.-- 
Password-- #
)--# $
]--$ %
[.. 	
Display..	 
(.. 
Name.. 
=.. 
$str.. +
)..+ ,
].., -
public// 
string// 
OldPassword// !
{//" #
get//$ '
;//' (
set//) ,
;//, -
}//. /
[11 	
Required11	 
]11 
[22 	
StringLength22	 
(22 
$num22 
,22 
ErrorMessage22 '
=22( )
$str22* d
,22d e
MinimumLength22f s
=22t u
$num22v w
)22w x
]22x y
[33 	
DataType33	 
(33 
DataType33 
.33 
Password33 #
)33# $
]33$ %
[44 	
Display44	 
(44 
Name44 
=44 
$str44 (
)44( )
]44) *
public55 
string55 
NewPassword55 !
{55" #
get55$ '
;55' (
set55) ,
;55, -
}55. /
[77 	
DataType77	 
(77 
DataType77 
.77 
Password77 #
)77# $
]77$ %
[88 	
Display88	 
(88 
Name88 
=88 
$str88 1
)881 2
]882 3
[99 	
Compare99	 
(99 
$str99 
,99 
ErrorMessage99  ,
=99- .
$str99/ o
)99o p
]99p q
public:: 
string:: 
ConfirmPassword:: %
{::& '
get::( +
;::+ ,
set::- 0
;::0 1
}::2 3
};; 
public== 

class== #
AddPhoneNumberViewModel== (
{>> 
[?? 	
Required??	 
]?? 
[@@ 	
Phone@@	 
]@@ 
[AA 	
DisplayAA	 
(AA 
NameAA 
=AA 
$strAA ,
)AA, -
]AA- .
publicBB 
stringBB 
NumberBB 
{BB 
getBB "
;BB" #
setBB$ '
;BB' (
}BB) *
}CC 
publicEE 

classEE &
VerifyPhoneNumberViewModelEE +
{FF 
[GG 	
RequiredGG	 
]GG 
[HH 	
DisplayHH	 
(HH 
NameHH 
=HH 
$strHH  
)HH  !
]HH! "
publicII 
stringII 
CodeII 
{II 
getII  
;II  !
setII" %
;II% &
}II' (
[KK 	
RequiredKK	 
]KK 
[LL 	
PhoneLL	 
]LL 
[MM 	
DisplayMM	 
(MM 
NameMM 
=MM 
$strMM ,
)MM, -
]MM- .
publicNN 
stringNN 
PhoneNumberNN !
{NN" #
getNN$ '
;NN' (
setNN) ,
;NN, -
}NN. /
}OO 
publicQQ 

classQQ '
ConfigureTwoFactorViewModelQQ ,
{RR 
publicSS 
stringSS 
SelectedProviderSS &
{SS' (
getSS) ,
;SS, -
setSS. 1
;SS1 2
}SS3 4
publicTT 
ICollectionTT 
<TT 
SystemTT !
.TT! "
WebTT" %
.TT% &
MvcTT& )
.TT) *
SelectListItemTT* 8
>TT8 9
	ProvidersTT: C
{TTD E
getTTF I
;TTI J
setTTK N
;TTN O
}TTP Q
}UU 
}VV À
?C:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\Ricette.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
Ricette 
{		 
[

 	
DatabaseGenerated

	 
(

 #
DatabaseGeneratedOption

 2
.

2 3
Identity

3 ;
)

; <
]

< =
[ 	
Key	 
] 
public 
int 
	RicettaId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
String 
Note 
{ 
get  
;  !
set" %
;% &
}' (
public 
String 
NomeRicetta !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
String 
TempoPreparazione '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
String 
TempoFermentazione (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
String 
	Categoria 
{  !
get" %
;% &
set' *
;* +
}, -
public 
String 
ImmagineScelta $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
CapacitaContenitore *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
bool 
Privata 
{ 
get !
;! "
set# &
;& '
}( )
=* +
false, 1
;1 2
public 
String 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
ICollection "
<" #
Malti# (
>( )
Maltis* 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
virtual 
ICollection "
<" #
Additivi# +
>+ ,
	Additivis- 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
virtual 
ICollection "
<" #
Lieviti# *
>* +
Lievitis, 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
virtual 
ICollection "
<" #
Luppoli# *
>* +
Luppolis, 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
virtual 
ICollection "
<" #
Zuccheri# +
>+ ,
	Zuccheris- 6
{7 8
get9 <
;< =
set> A
;A B
}C D
} 
} ï
@C:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\Zuccheri.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
[ 
Table 

(
 
$str 
) 
] 
public 

class 
Zuccheri 
{		 
[

 	
DatabaseGenerated

	 
(

 #
DatabaseGeneratedOption

 2
.

2 3
Identity

3 ;
)

; <
]

< =
[ 	
Key	 
] 
public 
int 

ZuccheriId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
String 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
String 
Descrizione !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
String 

Produttore  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Decimal 
Prezzo 
{ 
get  #
;# $
set% (
;( )
}* +
public 
String 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
ApplicationUser &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} õ
IC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\ZuccheriMagazzino.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
ZuccheriMagazzino "
{ 
[		 	
Key			 
,		 
Column		 
(		 
Order		 
=		 
$num		 
)		 
]		  
public

 
int

 
MagazzinoId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 

ZuccheriId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
	Magazzino  
	Magazzino! *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
virtual 
Zuccheri 
Zucchero  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Decimal 
Quantita 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ë
GC:\Users\david\Source\Repos\Brewday2\BrewDay2\Models\ZuccheriRicetta.cs
	namespace 	
BrewDay2
 
. 
Models 
{ 
public 

class 
ZuccheriRicetta  
{ 
[		 	
Key			 
,		 
Column		 
(		 
Order		 
=		 
$num		 
)		 
]		  
public

 
int

 
	RicettaId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 

ZuccheriId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
Ricette 
Ricetta &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
Zuccheri 
Zucchero  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Decimal 
Quantita 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Û
HC:\Users\david\Source\Repos\Brewday2\BrewDay2\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[		 
assembly		 	
:			 
!
AssemblyConfiguration		  
(		  !
$str		! #
)		# $
]		$ %
[

 
assembly

 	
:

	 

AssemblyCompany

 
(

 
$str

 
)

 
]

 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str %
)% &
]& '
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[!! 
assembly!! 	
:!!	 

AssemblyVersion!! 
(!! 
$str!! $
)!!$ %
]!!% &
["" 
assembly"" 	
:""	 

AssemblyFileVersion"" 
("" 
$str"" (
)""( )
]"") *∏
8C:\Users\david\Source\Repos\Brewday2\BrewDay2\Startup.cs
[

 
assembly

 	
:

	 
 
OwinStartupAttribute

 
(

  
typeof

  &
(

& '
BrewDay2

' /
.

/ 0
Startup

0 7
)

7 8
)

8 9
]

9 :
	namespace 	
BrewDay2
 
{ 
public 

partial 
class 
Startup  
{ 
public 
Startup 
( 
) 
{ 	
ModelBinders 
. 
Binders  
.  !
Add! $
($ %
typeof% +
(+ ,
decimal, 3
)3 4
,4 5
new6 9
DecimalModelBinder: L
(L M
)M N
)N O
;O P
using 
( 
var 
client 
= 
new  # 
ApplicationDbContext$ 8
(8 9
)9 :
): ;
{ 
if 
( 
! 
client 
. 
Database $
.$ %
Exists% +
(+ ,
), -
)- .
{ 
client 
. 
Database #
.# $
Delete$ *
(* +
)+ ,
;, -
client 
. 
Database #
.# $
CreateIfNotExists$ 5
(5 6
)6 7
;7 8
client 
. 
Database #
.# $

Initialize$ .
(. /
true/ 3
)3 4
;4 5
} 
if 
( 
client 
. 
CategoriaBirres *
.* +
ToList+ 1
(1 2
)2 3
.3 4
Count4 9
==: <
$num= >
)> ?
{ 
List 
< 
String 
>  
	categorie! *
=+ ,
new- 0
List1 5
<5 6
string6 <
>< =
{ 
$str   !
,  ! "
$str!! !
,!!! "
$str"" 
,""  
$str## !
,##! "
$str$$  
,$$  !
$str%%  
,%%  !
$str&& #
,&&# $
$str''  
,''  !
$str(( 
,(( 
$str)) $
,))$ %
$str** 
,**  
$str++  
,++  !
$str,, '
}-- 
;-- 
foreach.. 
(.. 
var..  
c..! "
in..# %
	categorie..& /
)../ 0
{// 
CategoriaBirre00 &
cb00' )
=00* +
new00, /
CategoriaBirre000 >
{11 
Nome22  
=22! "
c22# $
}33 
;33 
client44 
.44 
CategoriaBirres44 .
.44. /
Add44/ 2
(442 3
cb443 5
)445 6
;446 7
}55 
client66 
.66 
SaveChanges66 &
(66& '
)66' (
;66( )
}77 
client88 
.88 
Dispose88 
(88 
)88  
;88  !
}99 
}:: 	
public== 
void== 
Configuration== !
(==! "
IAppBuilder==" -
app==. 1
)==1 2
{>> 	
ConfigureAuth?? 
(?? 
app?? 
)?? 
;?? 
}@@ 	
}AA 
}BB 
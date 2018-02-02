…
GC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\BundleConfig.cs
	namespace 	
BrewDay2
 
{ 
public 

class 
BundleConfig 
{ 
public 
static 
void 
RegisterBundles *
(* +
BundleCollection+ ;
bundles< C
)C D
{		 	
bundles

 
.

 
Add

 
(

 
new

 
ScriptBundle

 (
(

( )
$str

) ;
)

; <
.

< =
Include

= D
(

D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
,. /
$str ,
), -
)- .
;. /
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} Ú
GC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\FilterConfig.cs
	namespace 	
BrewDay2
 
{ 
public 

class 
FilterConfig 
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
}ii Í
FC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\RouteConfig.cs
	namespace 	
BrewDay2
 
{ 
public 

class 
RouteConfig 
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
}AA 	
}BB 
}CC „í
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
îî (
db
îî) +
=
îî, -
new
îî. 1"
ApplicationDbContext
îî2 F
(
îîF G
)
îîG H
;
îîH I
	Magazzino
ïï 
m
ïï 
=
ïï  !
new
ïï" %
	Magazzino
ïï& /
(
ïï/ 0
)
ïï0 1
{
ññ 
UserId
óó 
=
óó  
user
óó! %
.
óó% &
Id
óó& (
}
òò 
;
òò 
db
ôô 
.
ôô 
Magazzinoes
ôô "
.
ôô" #
Add
ôô# &
(
ôô& '
m
ôô' (
)
ôô( )
;
ôô) *
db
öö 
.
öö 
SaveChanges
öö "
(
öö" #
)
öö# $
;
öö$ %
return
õõ 
RedirectToAction
õõ +
(
õõ+ ,
$str
õõ, 3
,
õõ3 4
$str
õõ5 ;
)
õõ; <
;
õõ< =
}
úú 
	AddErrors
ùù 
(
ùù 
result
ùù  
)
ùù  !
;
ùù! "
}
ûû 
return
°° 
View
°° 
(
°° 
model
°° 
)
°° 
;
°° 
}
¢¢ 	
[
¶¶ 	
AllowAnonymous
¶¶	 
]
¶¶ 
public
ßß 
async
ßß 
Task
ßß 
<
ßß 
ActionResult
ßß &
>
ßß& '
ConfirmEmail
ßß( 4
(
ßß4 5
string
ßß5 ;
userId
ßß< B
,
ßßB C
string
ßßD J
code
ßßK O
)
ßßO P
{
®® 	
if
©© 
(
©© 
userId
©© 
==
©© 
null
©© 
||
©© !
code
©©" &
==
©©' )
null
©©* .
)
©©. /
{
™™ 
return
´´ 
View
´´ 
(
´´ 
$str
´´ #
)
´´# $
;
´´$ %
}
¨¨ 
var
≠≠ 
result
≠≠ 
=
≠≠ 
await
≠≠ 
UserManager
≠≠ *
.
≠≠* +
ConfirmEmailAsync
≠≠+ <
(
≠≠< =
userId
≠≠= C
,
≠≠C D
code
≠≠E I
)
≠≠I J
;
≠≠J K
return
ÆÆ 
View
ÆÆ 
(
ÆÆ 
result
ÆÆ 
.
ÆÆ 
	Succeeded
ÆÆ (
?
ÆÆ) *
$str
ÆÆ+ 9
:
ÆÆ: ;
$str
ÆÆ< C
)
ÆÆC D
;
ÆÆD E
}
ØØ 	
[
≥≥ 	
AllowAnonymous
≥≥	 
]
≥≥ 
public
¥¥ 
ActionResult
¥¥ 
ForgotPassword
¥¥ *
(
¥¥* +
)
¥¥+ ,
{
µµ 	
return
∂∂ 
View
∂∂ 
(
∂∂ 
)
∂∂ 
;
∂∂ 
}
∑∑ 	
[
ªª 	
HttpPost
ªª	 
]
ªª 
[
ºº 	
AllowAnonymous
ºº	 
]
ºº 
[
ΩΩ 	&
ValidateAntiForgeryToken
ΩΩ	 !
]
ΩΩ! "
public
ææ 
async
ææ 
Task
ææ 
<
ææ 
ActionResult
ææ &
>
ææ& '
ForgotPassword
ææ( 6
(
ææ6 7%
ForgotPasswordViewModel
ææ7 N
model
ææO T
)
ææT U
{
øø 	
if
¿¿ 
(
¿¿ 

ModelState
¿¿ 
.
¿¿ 
IsValid
¿¿ "
)
¿¿" #
{
¡¡ 
var
¬¬ 
user
¬¬ 
=
¬¬ 
await
¬¬  
UserManager
¬¬! ,
.
¬¬, -
FindByNameAsync
¬¬- <
(
¬¬< =
model
¬¬= B
.
¬¬B C
Email
¬¬C H
)
¬¬H I
;
¬¬I J
if
√√ 
(
√√ 
user
√√ 
==
√√ 
null
√√  
||
√√! #
!
√√$ %
(
√√% &
await
√√& +
UserManager
√√, 7
.
√√7 8#
IsEmailConfirmedAsync
√√8 M
(
√√M N
user
√√N R
.
√√R S
Id
√√S U
)
√√U V
)
√√V W
)
√√W X
{
ƒƒ 
return
∆∆ 
View
∆∆ 
(
∆∆  
$str
∆∆  <
)
∆∆< =
;
∆∆= >
}
«« 
}
œœ 
return
““ 
View
““ 
(
““ 
model
““ 
)
““ 
;
““ 
}
”” 	
[
◊◊ 	
AllowAnonymous
◊◊	 
]
◊◊ 
public
ÿÿ 
ActionResult
ÿÿ (
ForgotPasswordConfirmation
ÿÿ 6
(
ÿÿ6 7
)
ÿÿ7 8
{
ŸŸ 	
return
⁄⁄ 
View
⁄⁄ 
(
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
}
€€ 	
[
ﬂﬂ 	
AllowAnonymous
ﬂﬂ	 
]
ﬂﬂ 
public
‡‡ 
ActionResult
‡‡ 
ResetPassword
‡‡ )
(
‡‡) *
string
‡‡* 0
code
‡‡1 5
)
‡‡5 6
{
·· 	
return
‚‚ 
code
‚‚ 
==
‚‚ 
null
‚‚ 
?
‚‚  !
View
‚‚" &
(
‚‚& '
$str
‚‚' .
)
‚‚. /
:
‚‚0 1
View
‚‚2 6
(
‚‚6 7
)
‚‚7 8
;
‚‚8 9
}
„„ 	
[
ÁÁ 	
HttpPost
ÁÁ	 
]
ÁÁ 
[
ËË 	
AllowAnonymous
ËË	 
]
ËË 
[
ÈÈ 	&
ValidateAntiForgeryToken
ÈÈ	 !
]
ÈÈ! "
public
ÍÍ 
async
ÍÍ 
Task
ÍÍ 
<
ÍÍ 
ActionResult
ÍÍ &
>
ÍÍ& '
ResetPassword
ÍÍ( 5
(
ÍÍ5 6$
ResetPasswordViewModel
ÍÍ6 L
model
ÍÍM R
)
ÍÍR S
{
ÎÎ 	
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 

ModelState
ÏÏ 
.
ÏÏ 
IsValid
ÏÏ #
)
ÏÏ# $
{
ÌÌ 
return
ÓÓ 
View
ÓÓ 
(
ÓÓ 
model
ÓÓ !
)
ÓÓ! "
;
ÓÓ" #
}
ÔÔ 
var
 
user
 
=
 
await
 
UserManager
 (
.
( )
FindByNameAsync
) 8
(
8 9
model
9 >
.
> ?
Email
? D
)
D E
;
E F
if
ÒÒ 
(
ÒÒ 
user
ÒÒ 
==
ÒÒ 
null
ÒÒ 
)
ÒÒ 
{
ÚÚ 
return
ÙÙ 
RedirectToAction
ÙÙ '
(
ÙÙ' (
$str
ÙÙ( C
,
ÙÙC D
$str
ÙÙE N
)
ÙÙN O
;
ÙÙO P
}
ıı 
var
ˆˆ 
result
ˆˆ 
=
ˆˆ 
await
ˆˆ 
UserManager
ˆˆ *
.
ˆˆ* + 
ResetPasswordAsync
ˆˆ+ =
(
ˆˆ= >
user
ˆˆ> B
.
ˆˆB C
Id
ˆˆC E
,
ˆˆE F
model
ˆˆG L
.
ˆˆL M
Code
ˆˆM Q
,
ˆˆQ R
model
ˆˆS X
.
ˆˆX Y
Password
ˆˆY a
)
ˆˆa b
;
ˆˆb c
if
˜˜ 
(
˜˜ 
result
˜˜ 
.
˜˜ 
	Succeeded
˜˜  
)
˜˜  !
{
¯¯ 
return
˘˘ 
RedirectToAction
˘˘ '
(
˘˘' (
$str
˘˘( C
,
˘˘C D
$str
˘˘E N
)
˘˘N O
;
˘˘O P
}
˙˙ 
	AddErrors
˚˚ 
(
˚˚ 
result
˚˚ 
)
˚˚ 
;
˚˚ 
return
¸¸ 
View
¸¸ 
(
¸¸ 
)
¸¸ 
;
¸¸ 
}
˝˝ 	
[
ÅÅ 	
AllowAnonymous
ÅÅ	 
]
ÅÅ 
public
ÇÇ 
ActionResult
ÇÇ '
ResetPasswordConfirmation
ÇÇ 5
(
ÇÇ5 6
)
ÇÇ6 7
{
ÉÉ 	
return
ÑÑ 
View
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
[
ââ 	
HttpPost
ââ	 
]
ââ 
[
ää 	
AllowAnonymous
ää	 
]
ää 
[
ãã 	&
ValidateAntiForgeryToken
ãã	 !
]
ãã! "
public
åå 
ActionResult
åå 
ExternalLogin
åå )
(
åå) *
string
åå* 0
provider
åå1 9
,
åå9 :
string
åå; A
	returnUrl
ååB K
)
ååK L
{
çç 	
return
èè 
new
èè 
ChallengeResult
èè &
(
èè& '
provider
èè' /
,
èè/ 0
Url
èè1 4
.
èè4 5
Action
èè5 ;
(
èè; <
$str
èè< S
,
èèS T
$str
èèU ^
,
èè^ _
new
èè` c
{
èèd e
	ReturnUrl
èèf o
=
èèp q
	returnUrl
èèr {
}
èè| }
)
èè} ~
)
èè~ 
;èè Ä
}
êê 	
[
îî 	
AllowAnonymous
îî	 
]
îî 
public
ïï 
async
ïï 
Task
ïï 
<
ïï 
ActionResult
ïï &
>
ïï& '
SendCode
ïï( 0
(
ïï0 1
string
ïï1 7
	returnUrl
ïï8 A
,
ïïA B
bool
ïïC G

rememberMe
ïïH R
)
ïïR S
{
ññ 	
var
óó 
userId
óó 
=
óó 
await
óó 
SignInManager
óó ,
.
óó, -$
GetVerifiedUserIdAsync
óó- C
(
óóC D
)
óóD E
;
óóE F
if
òò 
(
òò 
userId
òò 
==
òò 
null
òò 
)
òò 
{
ôô 
return
öö 
View
öö 
(
öö 
$str
öö #
)
öö# $
;
öö$ %
}
õõ 
var
úú 
userFactors
úú 
=
úú 
await
úú #
UserManager
úú$ /
.
úú/ 0-
GetValidTwoFactorProvidersAsync
úú0 O
(
úúO P
userId
úúP V
)
úúV W
;
úúW X
var
ùù 
factorOptions
ùù 
=
ùù 
userFactors
ùù  +
.
ùù+ ,
Select
ùù, 2
(
ùù2 3
purpose
ùù3 :
=>
ùù; =
new
ùù> A
SelectListItem
ùùB P
{
ùùQ R
Text
ùùS W
=
ùùX Y
purpose
ùùZ a
,
ùùa b
Value
ùùc h
=
ùùi j
purpose
ùùk r
}
ùùs t
)
ùùt u
.
ùùu v
ToList
ùùv |
(
ùù| }
)
ùù} ~
;
ùù~ 
return
ûû 
View
ûû 
(
ûû 
new
ûû 
SendCodeViewModel
ûû -
{
ûû. /
	Providers
ûû0 9
=
ûû: ;
factorOptions
ûû< I
,
ûûI J
	ReturnUrl
ûûK T
=
ûûU V
	returnUrl
ûûW `
,
ûû` a

RememberMe
ûûb l
=
ûûm n

rememberMe
ûûo y
}
ûûz {
)
ûû{ |
;
ûû| }
}
üü 	
[
££ 	
HttpPost
££	 
]
££ 
[
§§ 	
AllowAnonymous
§§	 
]
§§ 
[
•• 	&
ValidateAntiForgeryToken
••	 !
]
••! "
public
¶¶ 
async
¶¶ 
Task
¶¶ 
<
¶¶ 
ActionResult
¶¶ &
>
¶¶& '
SendCode
¶¶( 0
(
¶¶0 1
SendCodeViewModel
¶¶1 B
model
¶¶C H
)
¶¶H I
{
ßß 	
if
®® 
(
®® 
!
®® 

ModelState
®® 
.
®® 
IsValid
®® #
)
®®# $
{
©© 
return
™™ 
View
™™ 
(
™™ 
)
™™ 
;
™™ 
}
´´ 
if
ÆÆ 
(
ÆÆ 
!
ÆÆ 
await
ÆÆ 
SignInManager
ÆÆ $
.
ÆÆ$ %$
SendTwoFactorCodeAsync
ÆÆ% ;
(
ÆÆ; <
model
ÆÆ< A
.
ÆÆA B
SelectedProvider
ÆÆB R
)
ÆÆR S
)
ÆÆS T
{
ØØ 
return
∞∞ 
View
∞∞ 
(
∞∞ 
$str
∞∞ #
)
∞∞# $
;
∞∞$ %
}
±± 
return
≤≤ 
RedirectToAction
≤≤ #
(
≤≤# $
$str
≤≤$ 0
,
≤≤0 1
new
≤≤2 5
{
≤≤6 7
Provider
≤≤8 @
=
≤≤A B
model
≤≤C H
.
≤≤H I
SelectedProvider
≤≤I Y
,
≤≤Y Z
model
≤≤[ `
.
≤≤` a
	ReturnUrl
≤≤a j
,
≤≤j k
model
≤≤l q
.
≤≤q r

RememberMe
≤≤r |
}
≤≤} ~
)
≤≤~ 
;≤≤ Ä
}
≥≥ 	
[
∑∑ 	
AllowAnonymous
∑∑	 
]
∑∑ 
public
∏∏ 
async
∏∏ 
Task
∏∏ 
<
∏∏ 
ActionResult
∏∏ &
>
∏∏& '#
ExternalLoginCallback
∏∏( =
(
∏∏= >
string
∏∏> D
	returnUrl
∏∏E N
)
∏∏N O
{
ππ 	
var
∫∫ 
	loginInfo
∫∫ 
=
∫∫ 
await
∫∫ !#
AuthenticationManager
∫∫" 7
.
∫∫7 8'
GetExternalLoginInfoAsync
∫∫8 Q
(
∫∫Q R
)
∫∫R S
;
∫∫S T
if
ªª 
(
ªª 
	loginInfo
ªª 
==
ªª 
null
ªª !
)
ªª! "
{
ºº 
return
ΩΩ 
RedirectToAction
ΩΩ '
(
ΩΩ' (
$str
ΩΩ( /
)
ΩΩ/ 0
;
ΩΩ0 1
}
ææ 
var
¡¡ 
result
¡¡ 
=
¡¡ 
await
¡¡ 
SignInManager
¡¡ ,
.
¡¡, -!
ExternalSignInAsync
¡¡- @
(
¡¡@ A
	loginInfo
¡¡A J
,
¡¡J K
false
¡¡L Q
)
¡¡Q R
;
¡¡R S
switch
¬¬ 
(
¬¬ 
result
¬¬ 
)
¬¬ 
{
√√ 
case
ƒƒ 
SignInStatus
ƒƒ !
.
ƒƒ! "
Success
ƒƒ" )
:
ƒƒ) *
return
≈≈ 
RedirectToLocal
≈≈ *
(
≈≈* +
	returnUrl
≈≈+ 4
)
≈≈4 5
;
≈≈5 6
case
∆∆ 
SignInStatus
∆∆ !
.
∆∆! "
	LockedOut
∆∆" +
:
∆∆+ ,
return
«« 
View
«« 
(
««  
$str
««  )
)
««) *
;
««* +
case
»» 
SignInStatus
»» !
.
»»! ""
RequiresVerification
»»" 6
:
»»6 7
return
…… 
RedirectToAction
…… +
(
……+ ,
$str
……, 6
,
……6 7
new
……8 ;
{
……< =
	ReturnUrl
……> G
=
……H I
	returnUrl
……J S
,
……S T

RememberMe
……U _
=
……` a
false
……b g
}
……h i
)
……i j
;
……j k
default
   
:
   
ViewBag
ÃÃ 
.
ÃÃ 
	ReturnUrl
ÃÃ %
=
ÃÃ& '
	returnUrl
ÃÃ( 1
;
ÃÃ1 2
ViewBag
ÕÕ 
.
ÕÕ 
LoginProvider
ÕÕ )
=
ÕÕ* +
	loginInfo
ÕÕ, 5
.
ÕÕ5 6
Login
ÕÕ6 ;
.
ÕÕ; <
LoginProvider
ÕÕ< I
;
ÕÕI J
return
ŒŒ 
View
ŒŒ 
(
ŒŒ  
$str
ŒŒ  ;
,
ŒŒ; <
new
ŒŒ= @0
"ExternalLoginConfirmationViewModel
ŒŒA c
{
ŒŒd e
Email
ŒŒf k
=
ŒŒl m
	loginInfo
ŒŒn w
.
ŒŒw x
Email
ŒŒx }
}
ŒŒ~ 
)ŒŒ Ä
;ŒŒÄ Å
}
œœ 
}
–– 	
[
‘‘ 	
HttpPost
‘‘	 
]
‘‘ 
[
’’ 	
AllowAnonymous
’’	 
]
’’ 
[
÷÷ 	&
ValidateAntiForgeryToken
÷÷	 !
]
÷÷! "
public
◊◊ 
async
◊◊ 
Task
◊◊ 
<
◊◊ 
ActionResult
◊◊ &
>
◊◊& ''
ExternalLoginConfirmation
◊◊( A
(
◊◊A B0
"ExternalLoginConfirmationViewModel
◊◊B d
model
◊◊e j
,
◊◊j k
string
◊◊l r
	returnUrl
◊◊s |
)
◊◊| }
{
ÿÿ 	
if
ŸŸ 
(
ŸŸ 
User
ŸŸ 
.
ŸŸ 
Identity
ŸŸ 
.
ŸŸ 
IsAuthenticated
ŸŸ -
)
ŸŸ- .
{
⁄⁄ 
return
€€ 
RedirectToAction
€€ '
(
€€' (
$str
€€( /
,
€€/ 0
$str
€€1 9
)
€€9 :
;
€€: ;
}
‹‹ 
if
ﬁﬁ 
(
ﬁﬁ 

ModelState
ﬁﬁ 
.
ﬁﬁ 
IsValid
ﬁﬁ "
)
ﬁﬁ" #
{
ﬂﬂ 
var
·· 
info
·· 
=
·· 
await
··  #
AuthenticationManager
··! 6
.
··6 7'
GetExternalLoginInfoAsync
··7 P
(
··P Q
)
··Q R
;
··R S
if
‚‚ 
(
‚‚ 
info
‚‚ 
==
‚‚ 
null
‚‚  
)
‚‚  !
{
„„ 
return
‰‰ 
View
‰‰ 
(
‰‰  
$str
‰‰  6
)
‰‰6 7
;
‰‰7 8
}
ÂÂ 
var
ÊÊ 
user
ÊÊ 
=
ÊÊ 
new
ÊÊ 
ApplicationUser
ÊÊ .
{
ÊÊ/ 0
UserName
ÊÊ1 9
=
ÊÊ: ;
model
ÊÊ< A
.
ÊÊA B
Email
ÊÊB G
,
ÊÊG H
Email
ÊÊI N
=
ÊÊO P
model
ÊÊQ V
.
ÊÊV W
Email
ÊÊW \
}
ÊÊ] ^
;
ÊÊ^ _
var
ÁÁ 
result
ÁÁ 
=
ÁÁ 
await
ÁÁ "
UserManager
ÁÁ# .
.
ÁÁ. /
CreateAsync
ÁÁ/ :
(
ÁÁ: ;
user
ÁÁ; ?
)
ÁÁ? @
;
ÁÁ@ A
if
ËË 
(
ËË 
result
ËË 
.
ËË 
	Succeeded
ËË $
)
ËË$ %
{
ÈÈ 
result
ÍÍ 
=
ÍÍ 
await
ÍÍ "
UserManager
ÍÍ# .
.
ÍÍ. /
AddLoginAsync
ÍÍ/ <
(
ÍÍ< =
user
ÍÍ= A
.
ÍÍA B
Id
ÍÍB D
,
ÍÍD E
info
ÍÍF J
.
ÍÍJ K
Login
ÍÍK P
)
ÍÍP Q
;
ÍÍQ R
if
ÎÎ 
(
ÎÎ 
result
ÎÎ 
.
ÎÎ 
	Succeeded
ÎÎ (
)
ÎÎ( )
{
ÏÏ 
await
ÌÌ 
SignInManager
ÌÌ +
.
ÌÌ+ ,
SignInAsync
ÌÌ, 7
(
ÌÌ7 8
user
ÌÌ8 <
,
ÌÌ< =
false
ÌÌ> C
,
ÌÌC D
false
ÌÌE J
)
ÌÌJ K
;
ÌÌK L
return
ÓÓ 
RedirectToLocal
ÓÓ .
(
ÓÓ. /
	returnUrl
ÓÓ/ 8
)
ÓÓ8 9
;
ÓÓ9 :
}
ÔÔ 
}
 
	AddErrors
ÒÒ 
(
ÒÒ 
result
ÒÒ  
)
ÒÒ  !
;
ÒÒ! "
}
ÚÚ 
ViewBag
ÙÙ 
.
ÙÙ 
	ReturnUrl
ÙÙ 
=
ÙÙ 
	returnUrl
ÙÙ  )
;
ÙÙ) *
return
ıı 
View
ıı 
(
ıı 
model
ıı 
)
ıı 
;
ıı 
}
ˆˆ 	
[
˙˙ 	
HttpPost
˙˙	 
]
˙˙ 
[
˚˚ 	&
ValidateAntiForgeryToken
˚˚	 !
]
˚˚! "
public
¸¸ 
ActionResult
¸¸ 
LogOff
¸¸ "
(
¸¸" #
)
¸¸# $
{
˝˝ 	#
AuthenticationManager
˛˛ !
.
˛˛! "
SignOut
˛˛" )
(
˛˛) *(
DefaultAuthenticationTypes
˛˛* D
.
˛˛D E
ApplicationCookie
˛˛E V
)
˛˛V W
;
˛˛W X
return
ˇˇ 
RedirectToAction
ˇˇ #
(
ˇˇ# $
$str
ˇˇ$ +
,
ˇˇ+ ,
$str
ˇˇ- 3
)
ˇˇ3 4
;
ˇˇ4 5
}
ÄÄ 	
[
ÑÑ 	
AllowAnonymous
ÑÑ	 
]
ÑÑ 
public
ÖÖ 
ActionResult
ÖÖ "
ExternalLoginFailure
ÖÖ 0
(
ÖÖ0 1
)
ÖÖ1 2
{
ÜÜ 	
return
áá 
View
áá 
(
áá 
)
áá 
;
áá 
}
àà 	
	protected
ää 
override
ää 
void
ää 
Dispose
ää  '
(
ää' (
bool
ää( ,
	disposing
ää- 6
)
ää6 7
{
ãã 	
if
åå 
(
åå 
	disposing
åå 
)
åå 
{
çç 
if
éé 
(
éé 
_userManager
éé  
!=
éé! #
null
éé$ (
)
éé( )
{
èè 
_userManager
êê  
.
êê  !
Dispose
êê! (
(
êê( )
)
êê) *
;
êê* +
_userManager
ëë  
=
ëë! "
null
ëë# '
;
ëë' (
}
íí 
if
îî 
(
îî 
_signInManager
îî "
!=
îî# %
null
îî& *
)
îî* +
{
ïï 
_signInManager
ññ "
.
ññ" #
Dispose
ññ# *
(
ññ* +
)
ññ+ ,
;
ññ, -
_signInManager
óó "
=
óó# $
null
óó% )
;
óó) *
}
òò 
}
ôô 
base
õõ 
.
õõ 
Dispose
õõ 
(
õõ 
	disposing
õõ "
)
õõ" #
;
õõ# $
}
úú 	
private
†† 
const
†† 
string
†† 
XsrfKey
†† $
=
††% &
$str
††' /
;
††/ 0
private
¢¢ $
IAuthenticationManager
¢¢ &#
AuthenticationManager
¢¢' <
=>
¢¢= ?
HttpContext
¢¢@ K
.
¢¢K L
GetOwinContext
¢¢L Z
(
¢¢Z [
)
¢¢[ \
.
¢¢\ ]
Authentication
¢¢] k
;
¢¢k l
private
§§ 
void
§§ 
	AddErrors
§§ 
(
§§ 
IdentityResult
§§ -
result
§§. 4
)
§§4 5
{
•• 	
foreach
¶¶ 
(
¶¶ 
var
¶¶ 
error
¶¶ 
in
¶¶ !
result
¶¶" (
.
¶¶( )
Errors
¶¶) /
)
¶¶/ 0
{
ßß 

ModelState
®® 
.
®® 
AddModelError
®® (
(
®®( )
$str
®®) +
,
®®+ ,
error
®®- 2
)
®®2 3
;
®®3 4
}
©© 
}
™™ 	
private
¨¨ 
ActionResult
¨¨ 
RedirectToLocal
¨¨ ,
(
¨¨, -
string
¨¨- 3
	returnUrl
¨¨4 =
)
¨¨= >
{
≠≠ 	
if
ÆÆ 
(
ÆÆ 
Url
ÆÆ 
.
ÆÆ 

IsLocalUrl
ÆÆ 
(
ÆÆ 
	returnUrl
ÆÆ (
)
ÆÆ( )
)
ÆÆ) *
{
ØØ 
return
∞∞ 
Redirect
∞∞ 
(
∞∞  
	returnUrl
∞∞  )
)
∞∞) *
;
∞∞* +
}
±± 
return
≤≤ 
RedirectToAction
≤≤ #
(
≤≤# $
$str
≤≤$ +
,
≤≤+ ,
$str
≤≤- 3
)
≤≤3 4
;
≤≤4 5
}
≥≥ 	
internal
µµ 
class
µµ 
ChallengeResult
µµ &
:
µµ' ($
HttpUnauthorizedResult
µµ) ?
{
∂∂ 	
public
∑∑ 
ChallengeResult
∑∑ "
(
∑∑" #
string
∑∑# )
provider
∑∑* 2
,
∑∑2 3
string
∑∑4 :
redirectUri
∑∑; F
)
∑∑F G
:
∏∏ 
this
∏∏ 
(
∏∏ 
provider
∏∏ 
,
∏∏  
redirectUri
∏∏! ,
,
∏∏, -
null
∏∏. 2
)
∏∏2 3
{
ππ 
}
∫∫ 
public
ºº 
ChallengeResult
ºº "
(
ºº" #
string
ºº# )
provider
ºº* 2
,
ºº2 3
string
ºº4 :
redirectUri
ºº; F
,
ººF G
string
ººH N
userId
ººO U
)
ººU V
{
ΩΩ 
LoginProvider
ææ 
=
ææ 
provider
ææ  (
;
ææ( )
RedirectUri
øø 
=
øø 
redirectUri
øø )
;
øø) *
UserId
¿¿ 
=
¿¿ 
userId
¿¿ 
;
¿¿  
}
¡¡ 
public
√√ 
string
√√ 
LoginProvider
√√ '
{
√√( )
get
√√* -
;
√√- .
set
√√/ 2
;
√√2 3
}
√√4 5
public
ƒƒ 
string
ƒƒ 
RedirectUri
ƒƒ %
{
ƒƒ& '
get
ƒƒ( +
;
ƒƒ+ ,
set
ƒƒ- 0
;
ƒƒ0 1
}
ƒƒ2 3
public
≈≈ 
string
≈≈ 
UserId
≈≈  
{
≈≈! "
get
≈≈# &
;
≈≈& '
set
≈≈( +
;
≈≈+ ,
}
≈≈- .
public
«« 
override
«« 
void
««  
ExecuteResult
««! .
(
««. /
ControllerContext
««/ @
context
««A H
)
««H I
{
»» 
var
…… 

properties
…… 
=
……  
new
……! $&
AuthenticationProperties
……% =
{
……> ?
RedirectUri
……@ K
=
……L M
RedirectUri
……N Y
}
……Z [
;
……[ \
if
   
(
   
UserId
   
!=
   
null
   "
)
  " #
{
ÀÀ 

properties
ÃÃ 
.
ÃÃ 

Dictionary
ÃÃ )
[
ÃÃ) *
XsrfKey
ÃÃ* 1
]
ÃÃ1 2
=
ÃÃ3 4
UserId
ÃÃ5 ;
;
ÃÃ; <
}
ÕÕ 
context
ŒŒ 
.
ŒŒ 
HttpContext
ŒŒ #
.
ŒŒ# $
GetOwinContext
ŒŒ$ 2
(
ŒŒ2 3
)
ŒŒ3 4
.
ŒŒ4 5
Authentication
ŒŒ5 C
.
ŒŒC D
	Challenge
ŒŒD M
(
ŒŒM N

properties
ŒŒN X
,
ŒŒX Y
LoginProvider
ŒŒZ g
)
ŒŒg h
;
ŒŒh i
}
œœ 
}
–– 	
}
““ 
}”” ªC
OC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\AdditiviController.cs
	namespace		 	
BrewDay2		
 
.		 
Controllers		 
{

 
[ 
	Authorize 
] 
public 

class 
AdditiviController #
:$ %

Controller& 0
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
_db 
. 
Additivi $
.$ %
ToList% +
(+ ,
), -
)- .
;. /
} 	
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
}++ 
Additivi,, 
additivi,, 
=,, 
_db,,  #
.,,# $
Additivi,,$ ,
.,,, -
Find,,- 1
(,,1 2
id,,2 4
),,4 5
;,,5 6
if-- 
(-- 
additivi-- 
==-- 
null--  
)--  !
{.. 
return// 
HttpNotFound// #
(//# $
)//$ %
;//% &
}00 
return11 
View11 
(11 
additivi11  
)11  !
;11! "
}22 	
public;; 
ActionResult;; 
Create;; "
(;;" #
);;# $
{<< 	
Additivi== 
a== 
=== 
new== 
Additivi== %
{==& '
UserId==' -
===. /
User==0 4
.==4 5
Identity==5 =
.=== >
	GetUserId==> G
(==G H
)==H I
}==I J
;==J K
return?? 
View?? 
(?? 
a?? 
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
(MM" #
AdditiviMM# +
additiviMM, 4
)MM4 5
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
AdditiviQQ 
.QQ 
AddQQ  
(QQ  !
additiviQQ! )
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
additiviVV  
)VV  !
;VV! "
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
}gg 
Additivihh 
additivihh 
=hh 
_dbhh  #
.hh# $
Additivihh$ ,
.hh, -
Findhh- 1
(hh1 2
idhh2 4
)hh4 5
;hh5 6
ifii 
(ii 
additiviii 
==ii 
nullii  
)ii  !
{jj 
returnkk 
HttpNotFoundkk #
(kk# $
)kk$ %
;kk% &
}ll 
returnmm 
Viewmm 
(mm 
additivimm  
)mm  !
;mm! "
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
]||Y Z
Additivi||[ c
additivi||d l
)||l m
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
ÄÄ 
additivi
ÄÄ "
)
ÄÄ" #
.
ÄÄ# $
State
ÄÄ$ )
=
ÄÄ* +
EntityState
ÄÄ, 7
.
ÄÄ7 8
Modified
ÄÄ8 @
;
ÄÄ@ A
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
ÑÑ 
additivi
ÑÑ  
)
ÑÑ  !
;
ÑÑ! "
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
ìì 
return
îî 
new
îî "
HttpStatusCodeResult
îî /
(
îî/ 0
HttpStatusCode
îî0 >
.
îî> ?

BadRequest
îî? I
)
îîI J
;
îîJ K
}
ïï 
Additivi
ññ 
additivi
ññ 
=
ññ 
_db
ññ  #
.
ññ# $
Additivi
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
additivi
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
additivi
õõ  
)
õõ  !
;
õõ! "
}
úú 	
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
™™ 	
Additivi
´´ 
additivi
´´ 
=
´´ 
_db
´´  #
.
´´# $
Additivi
´´$ ,
.
´´, -
Find
´´- 1
(
´´1 2
id
´´2 4
)
´´4 5
;
´´5 6
_db
¨¨ 
.
¨¨ 
Additivi
¨¨ 
.
¨¨ 
Remove
¨¨ 
(
¨¨  
additivi
¨¨  (
??
¨¨) +
throw
¨¨, 1
new
¨¨2 5'
InvalidOperationException
¨¨6 O
(
¨¨O P
)
¨¨P Q
)
¨¨Q R
;
¨¨R S
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
}∫∫ ”
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
x6 7
.7 8
Privata8 ?
==@ B
falseC H
)H I
;I J
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
}   ˘C
OC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\LievitisController.cs
	namespace		 	
BrewDay2		
 
.		 
Controllers		 
{

 
[ 
	Authorize 
] 
public 

class 
LievitisController #
:$ %

Controller& 0
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
_db 
. 
Lieviti #
.# $
ToList$ *
(* +
)+ ,
), -
;- .
} 	
public%% 
ActionResult%% 
Details%% #
(%%# $
int%%$ '
?%%' (
id%%) +
)%%+ ,
{&& 	
if'' 
('' 
id'' 
=='' 
null'' 
)'' 
{(( 
return)) 
new))  
HttpStatusCodeResult)) /
())/ 0
HttpStatusCode))0 >
.))> ?

BadRequest))? I
)))I J
;))J K
}** 
Lieviti++ 
lieviti++ 
=++ 
_db++ !
.++! "
Lieviti++" )
.++) *
Find++* .
(++. /
id++/ 1
)++1 2
;++2 3
if,, 
(,, 
lieviti,, 
==,, 
null,, 
),,  
{-- 
return.. 
HttpNotFound.. #
(..# $
)..$ %
;..% &
}// 
return00 
View00 
(00 
lieviti00 
)00  
;00  !
}11 	
public:: 
ActionResult:: 
Create:: "
(::" #
)::# $
{;; 	
Lieviti<< 
l<< 
=<< 
new<< 
Lieviti<< #
{<<$ %
UserId<<% +
=<<, -
User<<. 2
.<<2 3
Identity<<3 ;
.<<; <
	GetUserId<<< E
(<<E F
)<<F G
}<<G H
;<<H I
return== 
View== 
(== 
l== 
)== 
;== 
}>> 	
[II 	
HttpPostII	 
]II 
[JJ 	$
ValidateAntiForgeryTokenJJ	 !
]JJ! "
publicKK 
ActionResultKK 
CreateKK "
(KK" #
[KK# $
BindKK$ (
(KK( )
IncludeKK) 0
=KK1 2
$strKK3 Z
)KKZ [
]KK[ \
LievitiKK] d
lievitiKKe l
)KKl m
{LL 	
ifMM 
(MM 

ModelStateMM 
.MM 
IsValidMM "
)MM" #
{NN 
_dbOO 
.OO 
LievitiOO 
.OO 
AddOO 
(OO  
lievitiOO  '
)OO' (
;OO( )
_dbPP 
.PP 
SaveChangesPP 
(PP  
)PP  !
;PP! "
returnQQ 
RedirectToActionQQ '
(QQ' (
$strQQ( /
)QQ/ 0
;QQ0 1
}RR 
returnTT 
ViewTT 
(TT 
lievitiTT 
)TT  
;TT  !
}UU 	
public`` 
ActionResult`` 
Edit``  
(``  !
int``! $
?``$ %
id``& (
)``( )
{aa 	
ifbb 
(bb 
idbb 
==bb 
nullbb 
)bb 
{cc 
returndd 
newdd  
HttpStatusCodeResultdd /
(dd/ 0
HttpStatusCodedd0 >
.dd> ?

BadRequestdd? I
)ddI J
;ddJ K
}ee 
Lievitiff 
lievitiff 
=ff 
_dbff !
.ff! "
Lievitiff" )
.ff) *
Findff* .
(ff. /
idff/ 1
)ff1 2
;ff2 3
ifgg 
(gg 
lievitigg 
==gg 
nullgg 
)gg  
{hh 
returnii 
HttpNotFoundii #
(ii# $
)ii$ %
;ii% &
}jj 
returnkk 
Viewkk 
(kk 
lievitikk 
)kk  
;kk  !
}ll 	
[xx 	
HttpPostxx	 
]xx 
[yy 	$
ValidateAntiForgeryTokenyy	 !
]yy! "
publiczz 
ActionResultzz 
Editzz  
(zz  !
[zz! "
Bindzz" &
(zz& '
Includezz' .
=zz/ 0
$strzz1 X
)zzX Y
]zzY Z
Lievitizz[ b
lievitizzc j
)zzj k
{{{ 	
if|| 
(|| 

ModelState|| 
.|| 
IsValid|| "
)||" #
{}} 
_db~~ 
.~~ 
Entry~~ 
(~~ 
lieviti~~ !
)~~! "
.~~" #
State~~# (
=~~) *
EntityState~~+ 6
.~~6 7
Modified~~7 ?
;~~? @
_db 
. 
SaveChanges 
(  
)  !
;! "
return
ÄÄ 
RedirectToAction
ÄÄ '
(
ÄÄ' (
$str
ÄÄ( /
)
ÄÄ/ 0
;
ÄÄ0 1
}
ÅÅ 
return
ÇÇ 
View
ÇÇ 
(
ÇÇ 
lieviti
ÇÇ 
)
ÇÇ  
;
ÇÇ  !
}
ÉÉ 	
public
éé 
ActionResult
éé 
Delete
éé "
(
éé" #
int
éé# &
?
éé& '
id
éé( *
)
éé* +
{
èè 	
if
êê 
(
êê 
id
êê 
==
êê 
null
êê 
)
êê 
{
ëë 
return
íí 
new
íí "
HttpStatusCodeResult
íí /
(
íí/ 0
HttpStatusCode
íí0 >
.
íí> ?

BadRequest
íí? I
)
ííI J
;
ííJ K
}
ìì 
Lieviti
îî 
lieviti
îî 
=
îî 
_db
îî !
.
îî! "
Lieviti
îî" )
.
îî) *
Find
îî* .
(
îî. /
id
îî/ 1
)
îî1 2
;
îî2 3
if
ïï 
(
ïï 
lieviti
ïï 
==
ïï 
null
ïï 
)
ïï  
{
ññ 
return
óó 
HttpNotFound
óó #
(
óó# $
)
óó$ %
;
óó% &
}
òò 
return
ôô 
View
ôô 
(
ôô 
lieviti
ôô 
)
ôô  
;
ôô  !
}
öö 	
[
§§ 	
HttpPost
§§	 
,
§§ 

ActionName
§§ 
(
§§ 
$str
§§ &
)
§§& '
]
§§' (
[
•• 	&
ValidateAntiForgeryToken
••	 !
]
••! "
public
¶¶ 
ActionResult
¶¶ 
DeleteConfirmed
¶¶ +
(
¶¶+ ,
int
¶¶, /
id
¶¶0 2
)
¶¶2 3
{
ßß 	
Lieviti
®® 
lieviti
®® 
=
®® 
_db
®® !
.
®®! "
Lieviti
®®" )
.
®®) *
Find
®®* .
(
®®. /
id
®®/ 1
)
®®1 2
;
®®2 3
_db
©© 
.
©© 
Lieviti
©© 
.
©© 
Remove
©© 
(
©© 
lieviti
©© &
??
©©' )
throw
©©* /
new
©©0 3'
InvalidOperationException
©©4 M
(
©©M N
)
©©N O
)
©©O P
;
©©P Q
_db
™™ 
.
™™ 
SaveChanges
™™ 
(
™™ 
)
™™ 
;
™™ 
return
´´ 
RedirectToAction
´´ #
(
´´# $
$str
´´$ +
)
´´+ ,
;
´´, -
}
¨¨ 	
	protected
ÆÆ 
override
ÆÆ 
void
ÆÆ 
Dispose
ÆÆ  '
(
ÆÆ' (
bool
ÆÆ( ,
	disposing
ÆÆ- 6
)
ÆÆ6 7
{
ØØ 	
if
∞∞ 
(
∞∞ 
	disposing
∞∞ 
)
∞∞ 
{
±± 
_db
≤≤ 
.
≤≤ 
Dispose
≤≤ 
(
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 
base
¥¥ 
.
¥¥ 
Dispose
¥¥ 
(
¥¥ 
	disposing
¥¥ "
)
¥¥" #
;
¥¥# $
}
µµ 	
}
∂∂ 
}∑∑ ˜C
NC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\LuppoliController.cs
	namespace		 	
BrewDay2		
 
.		 
Controllers		 
{

 
[ 
	Authorize 
] 
public 

class 
LuppoliController "
:# $

Controller% /
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
_db 
. 
Luppoli #
.# $
ToList$ *
(* +
)+ ,
), -
;- .
} 	
public%% 
ActionResult%% 
Details%% #
(%%# $
int%%$ '
?%%' (
id%%) +
)%%+ ,
{&& 	
if'' 
('' 
id'' 
=='' 
null'' 
)'' 
{(( 
return)) 
new))  
HttpStatusCodeResult)) /
())/ 0
HttpStatusCode))0 >
.))> ?

BadRequest))? I
)))I J
;))J K
}** 
Luppoli++ 
luppoli++ 
=++ 
_db++ !
.++! "
Luppoli++" )
.++) *
Find++* .
(++. /
id++/ 1
)++1 2
;++2 3
if,, 
(,, 
luppoli,, 
==,, 
null,, 
),,  
{-- 
return.. 
HttpNotFound.. #
(..# $
)..$ %
;..% &
}// 
return00 
View00 
(00 
luppoli00 
)00  
;00  !
}11 	
public:: 
ActionResult:: 
Create:: "
(::" #
)::# $
{;; 	
Luppoli<< 
l<< 
=<< 
new<< 
Luppoli<< #
{<<$ %
UserId<<% +
=<<, -
User<<. 2
.<<2 3
Identity<<3 ;
.<<; <
	GetUserId<<< E
(<<E F
)<<F G
}<<G H
;<<H I
return== 
View== 
(== 
l== 
)== 
;== 
}>> 	
[II 	
HttpPostII	 
]II 
[JJ 	$
ValidateAntiForgeryTokenJJ	 !
]JJ! "
publicKK 
ActionResultKK 
CreateKK "
(KK" #
[KK# $
BindKK$ (
(KK( )
IncludeKK) 0
=KK1 2
$strKK3 Z
)KKZ [
]KK[ \
LuppoliKK] d
luppoliKKe l
)KKl m
{LL 	
ifMM 
(MM 

ModelStateMM 
.MM 
IsValidMM "
)MM" #
{NN 
_dbOO 
.OO 
LuppoliOO 
.OO 
AddOO 
(OO  
luppoliOO  '
)OO' (
;OO( )
_dbPP 
.PP 
SaveChangesPP 
(PP  
)PP  !
;PP! "
returnQQ 
RedirectToActionQQ '
(QQ' (
$strQQ( /
)QQ/ 0
;QQ0 1
}RR 
returnTT 
ViewTT 
(TT 
luppoliTT 
)TT  
;TT  !
}UU 	
public`` 
ActionResult`` 
Edit``  
(``  !
int``! $
?``$ %
id``& (
)``( )
{aa 	
ifbb 
(bb 
idbb 
==bb 
nullbb 
)bb 
{cc 
returndd 
newdd  
HttpStatusCodeResultdd /
(dd/ 0
HttpStatusCodedd0 >
.dd> ?

BadRequestdd? I
)ddI J
;ddJ K
}ee 
Luppoliff 
luppoliff 
=ff 
_dbff !
.ff! "
Luppoliff" )
.ff) *
Findff* .
(ff. /
idff/ 1
)ff1 2
;ff2 3
ifgg 
(gg 
luppoligg 
==gg 
nullgg 
)gg  
{hh 
returnii 
HttpNotFoundii #
(ii# $
)ii$ %
;ii% &
}jj 
returnkk 
Viewkk 
(kk 
luppolikk 
)kk  
;kk  !
}ll 	
[xx 	
HttpPostxx	 
]xx 
[yy 	$
ValidateAntiForgeryTokenyy	 !
]yy! "
publiczz 
ActionResultzz 
Editzz  
(zz  !
[zz! "
Bindzz" &
(zz& '
Includezz' .
=zz/ 0
$strzz1 X
)zzX Y
]zzY Z
Luppolizz[ b
luppolizzc j
)zzj k
{{{ 	
if|| 
(|| 

ModelState|| 
.|| 
IsValid|| "
)||" #
{}} 
_db~~ 
.~~ 
Entry~~ 
(~~ 
luppoli~~ !
)~~! "
.~~" #
State~~# (
=~~) *
EntityState~~+ 6
.~~6 7
Modified~~7 ?
;~~? @
_db 
. 
SaveChanges 
(  
)  !
;! "
return
ÄÄ 
RedirectToAction
ÄÄ '
(
ÄÄ' (
$str
ÄÄ( /
)
ÄÄ/ 0
;
ÄÄ0 1
}
ÅÅ 
return
ÇÇ 
View
ÇÇ 
(
ÇÇ 
luppoli
ÇÇ 
)
ÇÇ  
;
ÇÇ  !
}
ÉÉ 	
public
éé 
ActionResult
éé 
Delete
éé "
(
éé" #
int
éé# &
?
éé& '
id
éé( *
)
éé* +
{
èè 	
if
êê 
(
êê 
id
êê 
==
êê 
null
êê 
)
êê 
{
ëë 
return
íí 
new
íí "
HttpStatusCodeResult
íí /
(
íí/ 0
HttpStatusCode
íí0 >
.
íí> ?

BadRequest
íí? I
)
ííI J
;
ííJ K
}
ìì 
Luppoli
îî 
luppoli
îî 
=
îî 
_db
îî !
.
îî! "
Luppoli
îî" )
.
îî) *
Find
îî* .
(
îî. /
id
îî/ 1
)
îî1 2
;
îî2 3
if
ïï 
(
ïï 
luppoli
ïï 
==
ïï 
null
ïï 
)
ïï  
{
ññ 
return
óó 
HttpNotFound
óó #
(
óó# $
)
óó$ %
;
óó% &
}
òò 
return
ôô 
View
ôô 
(
ôô 
luppoli
ôô 
)
ôô  
;
ôô  !
}
öö 	
[
§§ 	
HttpPost
§§	 
,
§§ 

ActionName
§§ 
(
§§ 
$str
§§ &
)
§§& '
]
§§' (
[
•• 	&
ValidateAntiForgeryToken
••	 !
]
••! "
public
¶¶ 
ActionResult
¶¶ 
DeleteConfirmed
¶¶ +
(
¶¶+ ,
int
¶¶, /
id
¶¶0 2
)
¶¶2 3
{
ßß 	
Luppoli
®® 
luppoli
®® 
=
®® 
_db
®® !
.
®®! "
Luppoli
®®" )
.
®®) *
Find
®®* .
(
®®. /
id
®®/ 1
)
®®1 2
;
®®2 3
_db
©© 
.
©© 
Luppoli
©© 
.
©© 
Remove
©© 
(
©© 
luppoli
©© &
??
©©' )
throw
©©* /
new
©©0 3'
InvalidOperationException
©©4 M
(
©©M N
)
©©N O
)
©©O P
;
©©P Q
_db
™™ 
.
™™ 
SaveChanges
™™ 
(
™™ 
)
™™ 
;
™™ 
return
´´ 
RedirectToAction
´´ #
(
´´# $
$str
´´$ +
)
´´+ ,
;
´´, -
}
¨¨ 	
	protected
ÆÆ 
override
ÆÆ 
void
ÆÆ 
Dispose
ÆÆ  '
(
ÆÆ' (
bool
ÆÆ( ,
	disposing
ÆÆ- 6
)
ÆÆ6 7
{
ØØ 	
if
∞∞ 
(
∞∞ 
	disposing
∞∞ 
)
∞∞ 
{
±± 
_db
≤≤ 
.
≤≤ 
Dispose
≤≤ 
(
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 
base
¥¥ 
.
¥¥ 
Dispose
¥¥ 
(
¥¥ 
	disposing
¥¥ "
)
¥¥" #
;
¥¥# $
}
µµ 	
}
∂∂ 
}∑∑ Ôd
PC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\MagazzinoController.cs
	namespace 	
BrewDay2
 
. 
Controllers 
{ 
[		 
	Authorize		 
]		 
public

 

class

 
MagazzinoController

 $
:

% &

Controller

' 1
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
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
{## 	
var$$ 
me$$ 
=$$ 
_db$$ 
.$$ 
Users$$ 
.$$ 
First$$ $
($$$ %
x$$% &
=>$$' )
x$$* +
.$$+ ,
UserName$$, 4
==$$5 7
User$$8 <
.$$< =
Identity$$= E
.$$E F
Name$$F J
)$$J K
;$$K L
if%% 
(%% 
id%% 
==%% 
null%% 
)%% 
{&& 
return'' 
new''  
HttpStatusCodeResult'' /
(''/ 0
HttpStatusCode''0 >
.''> ?

BadRequest''? I
)''I J
;''J K
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
{OO 	
varPP 
mePP 
=PP 
_dbPP 
.PP 
UsersPP 
.PP 
FirstPP $
(PP$ %
xPP% &
=>PP' )
xPP* +
.PP+ ,
UserNamePP, 4
==PP5 7
UserPP8 <
.PP< =
IdentityPP= E
.PPE F
NamePPF J
)PPJ K
;PPK L
ifQQ 
(QQ 

ModelStateQQ 
.QQ 
IsValidQQ "
)QQ" #
{RR 
_dbSS 
.SS 
MagazzinoesSS 
.SS  
AddSS  #
(SS# $
	magazzinoSS$ -
)SS- .
;SS. /
_dbTT 
.TT 
SaveChangesTT 
(TT  
)TT  !
;TT! "
returnUU 
RedirectToActionUU '
(UU' (
$strUU( /
)UU/ 0
;UU0 1
}VV 
returnXX 
ViewXX 
(XX 
	magazzinoXX !
)XX! "
;XX" #
}YY 	
publicbb 
ActionResultbb 
Editbb  
(bb  !
intbb! $
?bb$ %
idbb& (
)bb( )
{cc 	
vardd 
medd 
=dd 
_dbdd 
.dd 
Usersdd 
.dd 
Firstdd $
(dd$ %
xdd% &
=>dd' )
xdd* +
.dd+ ,
UserNamedd, 4
==dd5 7
Userdd8 <
.dd< =
Identitydd= E
.ddE F
NameddF J
)ddJ K
;ddK L
ifee 
(ee 
idee 
==ee 
nullee 
)ee 
{ff 
returngg 
newgg  
HttpStatusCodeResultgg /
(gg/ 0
HttpStatusCodegg0 >
.gg> ?

BadRequestgg? I
)ggI J
;ggJ K
}hh 
	Magazzinoii 
	magazzinoii 
=ii  !
_dbii" %
.ii% &
Magazzinoesii& 1
.ii1 2
Findii2 6
(ii6 7
idii7 9
)ii9 :
;ii: ;
ifjj 
(jj 
	magazzinojj 
==jj 
nulljj !
)jj! "
{kk 
returnll 
HttpNotFoundll #
(ll# $
)ll$ %
;ll% &
}mm 
returnnn 
Viewnn 
(nn 
	magazzinonn !
)nn! "
;nn" #
}oo 	
[{{ 	
HttpPost{{	 
]{{ 
[|| 	$
ValidateAntiForgeryToken||	 !
]||! "
public}} 
ActionResult}} 
Edit}}  
(}}  !
[}}! "
Bind}}" &
(}}& '
Include}}' .
=}}/ 0
$str}}1 E
)}}E F
]}}F G
	Magazzino}}H Q
	magazzino}}R [
)}}[ \
{~~ 	
var 
me 
= 
_db 
. 
Users 
. 
First $
($ %
x% &
=>' )
x* +
.+ ,
UserName, 4
==5 7
User8 <
.< =
Identity= E
.E F
NameF J
)J K
;K L
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
ÇÇ 
	magazzino
ÇÇ #
)
ÇÇ# $
.
ÇÇ$ %
State
ÇÇ% *
=
ÇÇ+ ,
EntityState
ÇÇ- 8
.
ÇÇ8 9
Modified
ÇÇ9 A
;
ÇÇA B
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
ÜÜ 
	magazzino
ÜÜ !
)
ÜÜ! "
;
ÜÜ" #
}
áá 	
public
íí 
ActionResult
íí 
AggiungiAdditivo
íí ,
(
íí, -
)
íí- .
{
ìì 	
AdditiviMagazzino
îî 
am
îî  
=
îî! "
new
îî# &
AdditiviMagazzino
îî' 8
(
îî8 9
)
îî9 :
;
îî: ;
var
ïï 
me
ïï 
=
ïï 
_db
ïï 
.
ïï 
Users
ïï 
.
ïï 
First
ïï $
(
ïï$ %
x
ïï% &
=>
ïï' )
x
ïï* +
.
ïï+ ,
UserName
ïï, 4
==
ïï5 7
User
ïï8 <
.
ïï< =
Identity
ïï= E
.
ïïE F
Name
ïïF J
)
ïïJ K
;
ïïK L
	Magazzino
ññ 
	magazzino
ññ 
=
ññ  !
_db
ññ" %
.
ññ% &
Magazzinoes
ññ& 1
.
ññ1 2
FirstOrDefault
ññ2 @
(
ññ@ A
x
ññA B
=>
ññC E
x
ññF G
.
ññG H
UserId
ññH N
==
ññO Q
me
ññR T
.
ññT U
Id
ññU W
)
ññW X
;
ññX Y
am
óó 
.
óó 
	Magazzino
óó 
=
óó 
	magazzino
óó $
;
óó$ %
am
òò 
.
òò 
MagazzinoId
òò 
=
òò 
	magazzino
òò &
.
òò& '
MagazzinoId
òò' 2
;
òò2 3

SelectList
ôô 
additivi
ôô 
=
ôô  !
new
ôô" %

SelectList
ôô& 0
(
ôô0 1
_db
ôô1 4
.
ôô4 5
Additivi
ôô5 =
,
ôô= >
$str
ôô> J
,
ôôJ K
$str
ôôK Q
)
ôôQ R
;
ôôR S
ViewBag
öö 
.
öö 
Additivi
öö 
=
öö 
additivi
öö '
;
öö' (
return
õõ 
View
õõ 
(
õõ 
am
õõ 
)
õõ 
;
õõ 
}
ùù 	
[
ßß 	
HttpPost
ßß	 
]
ßß 
public
®® 
ActionResult
®® 
AggiungiAdditivo
®® ,
(
®®, -
AdditiviMagazzino
®®- >
am
®®? A
)
®®A B
{
©© 	
if
™™ 
(
™™ 

ModelState
™™ 
.
™™ 
IsValid
™™ "
)
™™" #
{
´´ 
_db
¨¨ 
.
¨¨  
AdditiviMagazzinos
¨¨ &
.
¨¨& '
Add
¨¨' *
(
¨¨* +
am
¨¨+ -
)
¨¨- .
;
¨¨. /
_db
≠≠ 
.
≠≠ 
SaveChanges
≠≠ 
(
≠≠  
)
≠≠  !
;
≠≠! "
return
ÆÆ 
RedirectToAction
ÆÆ '
(
ÆÆ' (
$str
ÆÆ( /
)
ÆÆ/ 0
;
ÆÆ0 1
}
ØØ 
var
∞∞ 
me
∞∞ 
=
∞∞ 
_db
∞∞ 
.
∞∞ 
Users
∞∞ 
.
∞∞ 
First
∞∞ $
(
∞∞$ %
x
∞∞% &
=>
∞∞' )
x
∞∞* +
.
∞∞+ ,
UserName
∞∞, 4
==
∞∞5 7
User
∞∞8 <
.
∞∞< =
Identity
∞∞= E
.
∞∞E F
Name
∞∞F J
)
∞∞J K
;
∞∞K L
	Magazzino
±± 
	magazzino
±± 
=
±±  !
_db
±±" %
.
±±% &
Magazzinoes
±±& 1
.
±±1 2
FirstOrDefault
±±2 @
(
±±@ A
x
±±A B
=>
±±C E
x
±±F G
.
±±G H
UserId
±±H N
==
±±O Q
me
±±R T
.
±±T U
Id
±±U W
)
±±W X
;
±±X Y
am
≤≤ 
.
≤≤ 
	Magazzino
≤≤ 
=
≤≤ 
	magazzino
≤≤ $
;
≤≤$ %
am
≥≥ 
.
≥≥ 
MagazzinoId
≥≥ 
=
≥≥ 
	magazzino
≥≥ &
.
≥≥& '
MagazzinoId
≥≥' 2
;
≥≥2 3

SelectList
¥¥ 
additivi
¥¥ 
=
¥¥  !
new
¥¥" %

SelectList
¥¥& 0
(
¥¥0 1
_db
¥¥1 4
.
¥¥4 5
Additivi
¥¥5 =
,
¥¥= >
$str
¥¥? K
,
¥¥K L
$str
¥¥M S
)
¥¥S T
;
¥¥T U
ViewBag
µµ 
.
µµ 
Additivi
µµ 
=
µµ 
additivi
µµ '
;
µµ' (
return
∂∂ 
View
∂∂ 
(
∂∂ 
am
∂∂ 
)
∂∂ 
;
∂∂ 
}
∏∏ 	
	protected
øø 
override
øø 
void
øø 
Dispose
øø  '
(
øø' (
bool
øø( ,
	disposing
øø- 6
)
øø6 7
{
¿¿ 	
if
¡¡ 
(
¡¡ 
	disposing
¡¡ 
)
¡¡ 
{
¬¬ 
_db
√√ 
.
√√ 
Dispose
√√ 
(
√√ 
)
√√ 
;
√√ 
}
ƒƒ 
base
≈≈ 
.
≈≈ 
Dispose
≈≈ 
(
≈≈ 
	disposing
≈≈ "
)
≈≈" #
;
≈≈# $
}
∆∆ 	
}
«« 
}»» µC
MC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\MaltisController.cs
	namespace		 	
BrewDay2		
 
.		 
Controllers		 
{

 
[ 
	Authorize 
] 
public 

class 
MaltisController !
:" #

Controller$ .
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
_db 
. 
Malti !
.! "
ToList" (
(( )
)) *
)* +
;+ ,
} 	
public%% 
ActionResult%% 
Details%% #
(%%# $
int%%$ '
?%%' (
id%%) +
)%%+ ,
{&& 	
if'' 
('' 
id'' 
=='' 
null'' 
)'' 
{(( 
return)) 
new))  
HttpStatusCodeResult)) /
())/ 0
HttpStatusCode))0 >
.))> ?

BadRequest))? I
)))I J
;))J K
}** 
Malti++ 
malti++ 
=++ 
_db++ 
.++ 
Malti++ #
.++# $
Find++$ (
(++( )
id++) +
)+++ ,
;++, -
if,, 
(,, 
malti,, 
==,, 
null,, 
),, 
{-- 
return.. 
HttpNotFound.. #
(..# $
)..$ %
;..% &
}// 
return00 
View00 
(00 
malti00 
)00 
;00 
}11 	
public:: 
ActionResult:: 
Create:: "
(::" #
)::# $
{;; 	
Malti<< 
m<< 
=<< 
new<< 
Malti<< 
{<<  !
UserId<<! '
=<<( )
User<<* .
.<<. /
Identity<</ 7
.<<7 8
	GetUserId<<8 A
(<<A B
)<<B C
}<<C D
;<<D E
return== 
View== 
(== 
m== 
)== 
;== 
}>> 	
[II 	
HttpPostII	 
]II 
[JJ 	$
ValidateAntiForgeryTokenJJ	 !
]JJ! "
publicKK 
ActionResultKK 
CreateKK "
(KK" #
[KK# $
BindKK$ (
(KK( )
IncludeKK) 0
=KK1 2
$strKK3 Z
)KKZ [
]KK[ \
MaltiKK] b
maltiKKc h
)KKh i
{LL 	
ifMM 
(MM 

ModelStateMM 
.MM 
IsValidMM "
)MM" #
{NN 
_dbOO 
.OO 
MaltiOO 
.OO 
AddOO 
(OO 
maltiOO #
)OO# $
;OO$ %
_dbPP 
.PP 
SaveChangesPP 
(PP  
)PP  !
;PP! "
returnQQ 
RedirectToActionQQ '
(QQ' (
$strQQ( /
)QQ/ 0
;QQ0 1
}RR 
returnTT 
ViewTT 
(TT 
maltiTT 
)TT 
;TT 
}UU 	
public`` 
ActionResult`` 
Edit``  
(``  !
int``! $
?``$ %
id``& (
)``( )
{aa 	
ifbb 
(bb 
idbb 
==bb 
nullbb 
)bb 
{cc 
returndd 
newdd  
HttpStatusCodeResultdd /
(dd/ 0
HttpStatusCodedd0 >
.dd> ?

BadRequestdd? I
)ddI J
;ddJ K
}ee 
Maltiff 
maltiff 
=ff 
_dbff 
.ff 
Maltiff #
.ff# $
Findff$ (
(ff( )
idff) +
)ff+ ,
;ff, -
ifgg 
(gg 
maltigg 
==gg 
nullgg 
)gg 
{hh 
returnii 
HttpNotFoundii #
(ii# $
)ii$ %
;ii% &
}jj 
returnkk 
Viewkk 
(kk 
maltikk 
)kk 
;kk 
}ll 	
[xx 	
HttpPostxx	 
]xx 
[yy 	$
ValidateAntiForgeryTokenyy	 !
]yy! "
publiczz 
ActionResultzz 
Editzz  
(zz  !
[zz! "
Bindzz" &
(zz& '
Includezz' .
=zz/ 0
$strzz1 X
)zzX Y
]zzY Z
Maltizz[ `
maltizza f
)zzf g
{{{ 	
if|| 
(|| 

ModelState|| 
.|| 
IsValid|| "
)||" #
{}} 
_db~~ 
.~~ 
Entry~~ 
(~~ 
malti~~ 
)~~  
.~~  !
State~~! &
=~~' (
EntityState~~) 4
.~~4 5
Modified~~5 =
;~~= >
_db 
. 
SaveChanges 
(  
)  !
;! "
return
ÄÄ 
RedirectToAction
ÄÄ '
(
ÄÄ' (
$str
ÄÄ( /
)
ÄÄ/ 0
;
ÄÄ0 1
}
ÅÅ 
return
ÇÇ 
View
ÇÇ 
(
ÇÇ 
malti
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
public
éé 
ActionResult
éé 
Delete
éé "
(
éé" #
int
éé# &
?
éé& '
id
éé( *
)
éé* +
{
èè 	
if
êê 
(
êê 
id
êê 
==
êê 
null
êê 
)
êê 
{
ëë 
return
íí 
new
íí "
HttpStatusCodeResult
íí /
(
íí/ 0
HttpStatusCode
íí0 >
.
íí> ?

BadRequest
íí? I
)
ííI J
;
ííJ K
}
ìì 
Malti
îî 
malti
îî 
=
îî 
_db
îî 
.
îî 
Malti
îî #
.
îî# $
Find
îî$ (
(
îî( )
id
îî) +
)
îî+ ,
;
îî, -
if
ïï 
(
ïï 
malti
ïï 
==
ïï 
null
ïï 
)
ïï 
{
ññ 
return
óó 
HttpNotFound
óó #
(
óó# $
)
óó$ %
;
óó% &
}
òò 
return
ôô 
View
ôô 
(
ôô 
malti
ôô 
)
ôô 
;
ôô 
}
öö 	
[
§§ 	
HttpPost
§§	 
,
§§ 

ActionName
§§ 
(
§§ 
$str
§§ &
)
§§& '
]
§§' (
[
•• 	&
ValidateAntiForgeryToken
••	 !
]
••! "
public
¶¶ 
ActionResult
¶¶ 
DeleteConfirmed
¶¶ +
(
¶¶+ ,
int
¶¶, /
id
¶¶0 2
)
¶¶2 3
{
ßß 	
Malti
®® 
malti
®® 
=
®® 
_db
®® 
.
®® 
Malti
®® #
.
®®# $
Find
®®$ (
(
®®( )
id
®®) +
)
®®+ ,
;
®®, -
_db
©© 
.
©© 
Malti
©© 
.
©© 
Remove
©© 
(
©© 
malti
©© "
??
©©# %
throw
©©& +
new
©©, /'
InvalidOperationException
©©0 I
(
©©I J
)
©©J K
)
©©K L
;
©©L M
_db
™™ 
.
™™ 
SaveChanges
™™ 
(
™™ 
)
™™ 
;
™™ 
return
´´ 
RedirectToAction
´´ #
(
´´# $
$str
´´$ +
)
´´+ ,
;
´´, -
}
¨¨ 	
	protected
ÆÆ 
override
ÆÆ 
void
ÆÆ 
Dispose
ÆÆ  '
(
ÆÆ' (
bool
ÆÆ( ,
	disposing
ÆÆ- 6
)
ÆÆ6 7
{
ØØ 	
if
∞∞ 
(
∞∞ 
	disposing
∞∞ 
)
∞∞ 
{
±± 
_db
≤≤ 
.
≤≤ 
Dispose
≤≤ 
(
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 
base
¥¥ 
.
¥¥ 
Dispose
¥¥ 
(
¥¥ 
	disposing
¥¥ "
)
¥¥" #
;
¥¥# $
}
µµ 	
}
∂∂ 
}∑∑ ëˇ
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
}‰‰ ∂
NC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\RicetteController.cs
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
RicetteController "
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
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
_db 
. 
Ricette #
.# $
ToList$ *
(* +
)+ ,
), -
;- .
} 	
[!! 	
HttpGet!!	 
]!! 
public"" 
ActionResult"" 
	MyRecipes"" %
(""% &
)""& '
{## 	
var$$ 
me$$ 
=$$ 
User$$ 
.$$ 
Identity$$ "
.$$" #
	GetUserId$$# ,
($$, -
)$$- .
;$$. /
var%% 
daRestituire%% 
=%% 
_db%% "
.%%" #
Ricette%%# *
.%%* +
Where%%+ 0
(%%0 1
x%%1 2
=>%%3 5
x%%6 7
.%%7 8
UserId%%8 >
==%%? A
me%%B D
)%%D E
;%%E F
return&& 
View&& 
(&& 
daRestituire&& $
)&&$ %
;&&% &
}'' 	
[// 	
HttpGet//	 
]// 
public00 
ActionResult00 
Index00 !
(00! "
String00" (
nomeparametro00) 6
)006 7
{11 	
var22 
lista22 
=22 
!22 
String22 
.22  
IsNullOrEmpty22  -
(22- .
nomeparametro22. ;
)22; <
?22= >
_db22? B
.22B C
Ricette22C J
.22J K
Where22K P
(22P Q
x22Q R
=>22S U
x22V W
.22W X
	Categoria22X a
==22b d
nomeparametro22e r
)22r s
.22s t
ToList22t z
(22z {
)22{ |
:22} ~
_db	22 Ç
.
22Ç É
Ricette
22É ä
.
22ä ã
ToList
22ã ë
(
22ë í
)
22í ì
;
22ì î
return44 
View44 
(44 
lista44 
)44 
;44 
}55 	
public?? 
ActionResult?? 
Details?? #
(??# $
int??$ '
???' (
id??) +
)??+ ,
{@@ 	
ifAA 
(AA 
idAA 
==AA 
nullAA 
)AA 
{BB 
returnCC 
newCC  
HttpStatusCodeResultCC /
(CC/ 0
HttpStatusCodeCC0 >
.CC> ?

BadRequestCC? I
)CCI J
;CCJ K
}DD 
RicetteEE 
ricetteEE 
=EE 
_dbEE !
.EE! "
RicetteEE" )
.EE) *
FindEE* .
(EE. /
idEE/ 1
)EE1 2
;EE2 3
ifFF 
(FF 
ricetteFF 
==FF 
nullFF 
)FF  
{GG 
returnHH 
HttpNotFoundHH #
(HH# $
)HH$ %
;HH% &
}II 
returnJJ 
ViewJJ 
(JJ 
ricetteJJ 
)JJ  
;JJ  !
}KK 	
publicOO 
ActionResultOO 
CreateOO "
(OO" #
)OO# $
{PP 	

SelectListQQ 
slQQ 
=QQ 
newQQ 

SelectListQQ  *
(QQ* +
_dbQQ+ .
.QQ. /
CategoriaBirresQQ/ >
,QQ> ?
$strQQ? E
,QQE F
$strQQF L
)QQL M
;QQM N
ViewBagRR 
.RR 
	categorieRR 
=RR 
slRR  "
;RR" #
returnSS 
ViewSS 
(SS 
)SS 
;SS 
}TT 	
publicWW 
ActionResultWW 
WhatShoudIBrewTodayWW /
(WW/ 0
)WW0 1
{XX 	
varYY 
meYY 
=YY 
UserYY 
.YY 
IdentityYY "
.YY" #
	GetUserIdYY# ,
(YY, -
)YY- .
;YY. /
ListZZ 
<ZZ 
RicetteZZ 
>ZZ 
additiviZZ "
=ZZ# $
newZZ% (
ListZZ) -
<ZZ- .
RicetteZZ. 5
>ZZ5 6
(ZZ6 7
)ZZ7 8
;ZZ8 9
List[[ 
<[[ 
Ricette[[ 
>[[ 
luppoli[[ !
=[[" #
new[[$ '
List[[( ,
<[[, -
Ricette[[- 4
>[[4 5
([[5 6
)[[6 7
;[[7 8
List\\ 
<\\ 
Ricette\\ 
>\\ 
lieviti\\ !
=\\" #
new\\$ '
List\\( ,
<\\, -
Ricette\\- 4
>\\4 5
(\\5 6
)\\6 7
;\\7 8
List]] 
<]] 
Ricette]] 
>]] 
malti]] 
=]]  !
new]]" %
List]]& *
<]]* +
Ricette]]+ 2
>]]2 3
(]]3 4
)]]4 5
;]]5 6
List^^ 
<^^ 
Ricette^^ 
>^^ 
zuccheri^^ "
=^^# $
new^^% (
List^^) -
<^^- .
Ricette^^. 5
>^^5 6
(^^6 7
)^^7 8
;^^8 9
	Magazzino__ 
m__ 
=__ 
_db__ 
.__ 
Magazzinoes__ )
.__) *
FirstOrDefault__* 8
(__8 9
x__9 :
=>__; =
x__> ?
.__? @
UserId__@ F
==__G I
me__J L
)__L M
;__M N
Listaa 
<aa 
Additiviaa 
>aa 
aaa 
=aa 
newaa "
Listaa# '
<aa' (
Additiviaa( 0
>aa0 1
(aa1 2
)aa2 3
;aa3 4
ifbb 
(bb 
mbb 
?bb 
.bb 
AdditiviUtentebb !
!=bb" $
nullbb% )
)bb) *
foreachcc 
(cc 
varcc 
additiviMagazzinocc .
incc/ 1
mcc2 3
.cc3 4
AdditiviUtentecc4 B
)ccB C
{dd 
aee 
.ee 
Addee 
(ee 
_dbee 
.ee 
Additiviee &
.ee& '
FirstOrDefaultee' 5
(ee5 6
xee6 7
=>ee8 :
xee; <
.ee< =

AdditiviIdee= G
==eeH J
additiviMagazzinoeeK \
.ee\ ]

AdditiviIdee] g
)eeg h
)eeh i
;eei j
}ff 
foreachgg 
(gg 
vargg 
ricettegg  
ingg! #
_dbgg$ '
.gg' (
Ricettegg( /
)gg/ 0
{hh 
ifii 
(ii 
aii 
.ii 
Allii 
(ii 
xii 
=>ii 
ricetteii &
.ii& '
	Additivisii' 0
.ii0 1
Containsii1 9
(ii9 :
xii: ;
)ii; <
)ii< =
)ii= >
{jj 
additivikk 
.kk 
Addkk  
(kk  !
ricettekk! (
)kk( )
;kk) *
}ll 
}mm 
Listoo 
<oo 
Luppolioo 
>oo 
loo 
=oo 
newoo !
Listoo" &
<oo& '
Luppolioo' .
>oo. /
(oo/ 0
)oo0 1
;oo1 2
ifpp 
(pp 
mpp 
!=pp 
nullpp 
)pp 
{qq 
foreachrr 
(rr 
varrr 
additiviMagazzinorr .
inrr/ 1
mrr2 3
.rr3 4
LuppoliUtenterr4 A
)rrA B
{ss 
ltt 
.tt 
Addtt 
(tt 
_dbtt 
.tt 
Luppolitt %
.tt% &
FirstOrDefaulttt& 4
(tt4 5
xtt5 6
=>tt7 9
xtt: ;
.tt; <
	LuppoliIdtt< E
==ttF H
additiviMagazzinottI Z
.ttZ [
	LuppoliIdtt[ d
)ttd e
)tte f
;ttf g
}uu 
foreachvv 
(vv 
varvv 
ricettevv $
invv% '
_dbvv( +
.vv+ ,
Ricettevv, 3
)vv3 4
{ww 
ifxx 
(xx 
lxx 
.xx 
Allxx 
(xx 
xxx 
=>xx  "
ricettexx# *
.xx* +
Luppolisxx+ 3
.xx3 4
Containsxx4 <
(xx< =
xxx= >
)xx> ?
)xx? @
)xx@ A
{yy 
luppolizz 
.zz  
Addzz  #
(zz# $
ricettezz$ +
)zz+ ,
;zz, -
}{{ 
}|| 
List~~ 
<~~ 
Lieviti~~ 
>~~ 
li~~  
=~~! "
new~~# &
List~~' +
<~~+ ,
Lieviti~~, 3
>~~3 4
(~~4 5
)~~5 6
;~~6 7
foreach 
( 
var 
additiviMagazzino .
in/ 1
m2 3
.3 4
LievitiUtente4 A
)A B
{
ÄÄ 
li
ÅÅ 
.
ÅÅ 
Add
ÅÅ 
(
ÅÅ 
_db
ÅÅ 
.
ÅÅ 
Lieviti
ÅÅ &
.
ÅÅ& '
FirstOrDefault
ÅÅ' 5
(
ÅÅ5 6
x
ÅÅ6 7
=>
ÅÅ8 :
x
ÅÅ; <
.
ÅÅ< =
	LievitiId
ÅÅ= F
==
ÅÅG I
additiviMagazzino
ÅÅJ [
.
ÅÅ[ \
	LievitiId
ÅÅ\ e
)
ÅÅe f
)
ÅÅf g
;
ÅÅg h
}
ÇÇ 
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
ricette
ÉÉ $
in
ÉÉ% '
_db
ÉÉ( +
.
ÉÉ+ ,
Ricette
ÉÉ, 3
)
ÉÉ3 4
{
ÑÑ 
if
ÖÖ 
(
ÖÖ 
li
ÖÖ 
.
ÖÖ 
All
ÖÖ 
(
ÖÖ 
x
ÖÖ  
=>
ÖÖ! #
ricette
ÖÖ$ +
.
ÖÖ+ ,
Lievitis
ÖÖ, 4
.
ÖÖ4 5
Contains
ÖÖ5 =
(
ÖÖ= >
x
ÖÖ> ?
)
ÖÖ? @
)
ÖÖ@ A
)
ÖÖA B
{
ÜÜ 
lieviti
áá 
.
áá  
Add
áá  #
(
áá# $
ricette
áá$ +
)
áá+ ,
;
áá, -
}
àà 
}
ââ 
List
ãã 
<
ãã 
Malti
ãã 
>
ãã 
ma
ãã 
=
ãã  
new
ãã! $
List
ãã% )
<
ãã) *
Malti
ãã* /
>
ãã/ 0
(
ãã0 1
)
ãã1 2
;
ãã2 3
foreach
åå 
(
åå 
var
åå 
additiviMagazzino
åå .
in
åå/ 1
m
åå2 3
.
åå3 4
MaltiUtente
åå4 ?
)
åå? @
{
çç 
ma
éé 
.
éé 
Add
éé 
(
éé 
_db
éé 
.
éé 
Malti
éé $
.
éé$ %
Where
éé% *
(
éé* +
x
éé+ ,
=>
éé- /
x
éé0 1
.
éé1 2
MaltiId
éé2 9
==
éé: <
additiviMagazzino
éé= N
.
ééN O
MaltiId
ééO V
)
ééV W
.
ééW X
FirstOrDefault
ééX f
(
ééf g
)
éég h
)
ééh i
;
ééi j
}
èè 
foreach
êê 
(
êê 
var
êê 
ricette
êê $
in
êê% '
_db
êê( +
.
êê+ ,
Ricette
êê, 3
)
êê3 4
{
ëë 
if
íí 
(
íí 
ma
íí 
.
íí 
All
íí 
(
íí 
x
íí  
=>
íí! #
ricette
íí$ +
.
íí+ ,
Maltis
íí, 2
.
íí2 3
Contains
íí3 ;
(
íí; <
x
íí< =
)
íí= >
)
íí> ?
)
íí? @
{
ìì 
malti
îî 
.
îî 
Add
îî !
(
îî! "
ricette
îî" )
)
îî) *
;
îî* +
}
ïï 
}
ññ 
List
òò 
<
òò 
Zuccheri
òò 
>
òò 
z
òò  
=
òò! "
new
òò# &
List
òò' +
<
òò+ ,
Zuccheri
òò, 4
>
òò4 5
(
òò5 6
)
òò6 7
;
òò7 8
foreach
ôô 
(
ôô 
var
ôô 
additiviMagazzino
ôô .
in
ôô/ 1
m
ôô2 3
.
ôô3 4
ZuccheriUtente
ôô4 B
)
ôôB C
{
öö 
z
õõ 
.
õõ 
Add
õõ 
(
õõ 
_db
õõ 
.
õõ 
Zuccheri
õõ &
.
õõ& '
Where
õõ' ,
(
õõ, -
x
õõ- .
=>
õõ/ 1
x
õõ2 3
.
õõ3 4

ZuccheriId
õõ4 >
==
õõ? A
additiviMagazzino
õõB S
.
õõS T

ZuccheriId
õõT ^
)
õõ^ _
.
õõ_ `
FirstOrDefault
õõ` n
(
õõn o
)
õõo p
)
õõp q
;
õõq r
}
úú 
foreach
ùù 
(
ùù 
var
ùù 
ricette
ùù $
in
ùù% '
_db
ùù( +
.
ùù+ ,
Ricette
ùù, 3
)
ùù3 4
{
ûû 
if
üü 
(
üü 
z
üü 
.
üü 
All
üü 
(
üü 
x
üü 
=>
üü  "
ricette
üü# *
.
üü* +
	Zuccheris
üü+ 4
.
üü4 5
Contains
üü5 =
(
üü= >
x
üü> ?
)
üü? @
)
üü@ A
)
üüA B
{
†† 
zuccheri
°°  
.
°°  !
Add
°°! $
(
°°$ %
ricette
°°% ,
)
°°, -
;
°°- .
}
¢¢ 
}
££ 
}
§§ 
var
•• 
valide
•• 
=
•• 
additivi
•• !
.
••! "
	Intersect
••" +
(
••+ ,
malti
••, 1
)
••1 2
.
••2 3
	Intersect
••3 <
(
••< =
luppoli
••= D
)
••D E
.
••E F
	Intersect
••F O
(
••O P
lieviti
••P W
)
••W X
.
••X Y
	Intersect
••Y b
(
••b c
zuccheri
••c k
)
••k l
;
••l m
Random
¶¶ 
r
¶¶ 
=
¶¶ 
new
¶¶ 
Random
¶¶ !
(
¶¶! "
)
¶¶" #
;
¶¶# $
int
ßß 
quale
ßß 
=
ßß 
r
ßß 
.
ßß 
Next
ßß 
(
ßß 
$num
ßß  
,
ßß  !
valide
ßß" (
.
ßß( )
Count
ßß) .
(
ßß. /
)
ßß/ 0
)
ßß0 1
;
ßß1 2
return
®® 
View
®® 
(
®® 
valide
®® 
.
®® 
	ElementAt
®® (
(
®®( )
quale
®®) .
)
®®. /
)
®®/ 0
;
®®0 1
}
©© 	
[
¥¥ 	
HttpPost
¥¥	 
]
¥¥ 
[
µµ 	&
ValidateAntiForgeryToken
µµ	 !
]
µµ! "
public
∂∂ 
ActionResult
∂∂ 
Create
∂∂ "
(
∂∂" #
Ricette
∂∂# *
ricette
∂∂+ 2
)
∂∂2 3
{
∑∑ 	
ricette
∏∏ 
.
∏∏ 
UserId
∏∏ 
=
∏∏ 
User
∏∏ !
.
∏∏! "
Identity
∏∏" *
.
∏∏* +
	GetUserId
∏∏+ 4
(
∏∏4 5
)
∏∏5 6
;
∏∏6 7
if
ππ 
(
ππ 

ModelState
ππ 
.
ππ 
IsValid
ππ "
)
ππ" #
{
∫∫ 
_db
ªª 
.
ªª 
Ricette
ªª 
.
ªª 
Add
ªª 
(
ªª  
ricette
ªª  '
)
ªª' (
;
ªª( )
_db
ºº 
.
ºº 
SaveChanges
ºº 
(
ºº  
)
ºº  !
;
ºº! "
return
ΩΩ 
RedirectToAction
ΩΩ '
(
ΩΩ' (
$str
ΩΩ( /
)
ΩΩ/ 0
;
ΩΩ0 1
}
ææ 
return
¿¿ 
View
¿¿ 
(
¿¿ 
ricette
¿¿ 
)
¿¿  
;
¿¿  !
}
¡¡ 	
public
ÀÀ 
ActionResult
ÀÀ 
Edit
ÀÀ  
(
ÀÀ  !
int
ÀÀ! $
?
ÀÀ$ %
id
ÀÀ& (
)
ÀÀ( )
{
ÃÃ 	
if
ÕÕ 
(
ÕÕ 
id
ÕÕ 
==
ÕÕ 
null
ÕÕ 
)
ÕÕ 
{
ŒŒ 
return
œœ 
new
œœ "
HttpStatusCodeResult
œœ /
(
œœ/ 0
HttpStatusCode
œœ0 >
.
œœ> ?

BadRequest
œœ? I
)
œœI J
;
œœJ K
}
–– 
Ricette
—— 
ricette
—— 
=
—— 
_db
—— !
.
——! "
Ricette
——" )
.
——) *
Find
——* .
(
——. /
id
——/ 1
)
——1 2
;
——2 3
if
““ 
(
““ 
ricette
““ 
==
““ 
null
““ 
)
““  
{
”” 
return
‘‘ 
HttpNotFound
‘‘ #
(
‘‘# $
)
‘‘$ %
;
‘‘% &
}
’’ 
return
÷÷ 
View
÷÷ 
(
÷÷ 
ricette
÷÷ 
)
÷÷  
;
÷÷  !
}
◊◊ 	
[
„„ 	
HttpPost
„„	 
]
„„ 
[
‰‰ 	&
ValidateAntiForgeryToken
‰‰	 !
]
‰‰! "
public
ÂÂ 
ActionResult
ÂÂ 
Edit
ÂÂ  
(
ÂÂ  !
Ricette
ÂÂ! (
ricette
ÂÂ) 0
)
ÂÂ0 1
{
ÊÊ 	
if
ÁÁ 
(
ÁÁ 

ModelState
ÁÁ 
.
ÁÁ 
IsValid
ÁÁ "
)
ÁÁ" #
{
ËË 
_db
ÈÈ 
.
ÈÈ 
Entry
ÈÈ 
(
ÈÈ 
ricette
ÈÈ !
)
ÈÈ! "
.
ÈÈ" #
State
ÈÈ# (
=
ÈÈ) *
EntityState
ÈÈ+ 6
.
ÈÈ6 7
Modified
ÈÈ7 ?
;
ÈÈ? @
_db
ÍÍ 
.
ÍÍ 
SaveChanges
ÍÍ 
(
ÍÍ  
)
ÍÍ  !
;
ÍÍ! "
return
ÎÎ 
RedirectToAction
ÎÎ '
(
ÎÎ' (
$str
ÎÎ( /
)
ÎÎ/ 0
;
ÎÎ0 1
}
ÏÏ 
return
ÌÌ 
View
ÌÌ 
(
ÌÌ 
ricette
ÌÌ 
)
ÌÌ  
;
ÌÌ  !
}
ÓÓ 	
public
˘˘ 
ActionResult
˘˘ 
Delete
˘˘ "
(
˘˘" #
int
˘˘# &
?
˘˘& '
id
˘˘( *
)
˘˘* +
{
˙˙ 	
if
˚˚ 
(
˚˚ 
id
˚˚ 
==
˚˚ 
null
˚˚ 
)
˚˚ 
{
¸¸ 
return
˝˝ 
new
˝˝ "
HttpStatusCodeResult
˝˝ /
(
˝˝/ 0
HttpStatusCode
˝˝0 >
.
˝˝> ?

BadRequest
˝˝? I
)
˝˝I J
;
˝˝J K
}
˛˛ 
Ricette
ˇˇ 
ricette
ˇˇ 
=
ˇˇ 
_db
ˇˇ !
.
ˇˇ! "
Ricette
ˇˇ" )
.
ˇˇ) *
Find
ˇˇ* .
(
ˇˇ. /
id
ˇˇ/ 1
)
ˇˇ1 2
;
ˇˇ2 3
if
ÄÄ 
(
ÄÄ 
ricette
ÄÄ 
==
ÄÄ 
null
ÄÄ 
)
ÄÄ  
{
ÅÅ 
return
ÇÇ 
HttpNotFound
ÇÇ #
(
ÇÇ# $
)
ÇÇ$ %
;
ÇÇ% &
}
ÉÉ 
return
ÑÑ 
View
ÑÑ 
(
ÑÑ 
ricette
ÑÑ 
)
ÑÑ  
;
ÑÑ  !
}
ÖÖ 	
[
èè 	
HttpPost
èè	 
,
èè 

ActionName
èè 
(
èè 
$str
èè &
)
èè& '
]
èè' (
[
êê 	&
ValidateAntiForgeryToken
êê	 !
]
êê! "
public
ëë 
ActionResult
ëë 
DeleteConfirmed
ëë +
(
ëë+ ,
int
ëë, /
id
ëë0 2
)
ëë2 3
{
íí 	
Ricette
ìì 
ricette
ìì 
=
ìì 
_db
ìì !
.
ìì! "
Ricette
ìì" )
.
ìì) *
Find
ìì* .
(
ìì. /
id
ìì/ 1
)
ìì1 2
;
ìì2 3
_db
îî 
.
îî 
Ricette
îî 
.
îî 
Remove
îî 
(
îî 
ricette
îî &
)
îî& '
;
îî' (
_db
ïï 
.
ïï 
SaveChanges
ïï 
(
ïï 
)
ïï 
;
ïï 
return
ññ 
RedirectToAction
ññ #
(
ññ# $
$str
ññ$ +
)
ññ+ ,
;
ññ, -
}
óó 	
	protected
ôô 
override
ôô 
void
ôô 
Dispose
ôô  '
(
ôô' (
bool
ôô( ,
	disposing
ôô- 6
)
ôô6 7
{
öö 	
if
õõ 
(
õõ 
	disposing
õõ 
)
õõ 
{
úú 
_db
ùù 
.
ùù 
Dispose
ùù 
(
ùù 
)
ùù 
;
ùù 
}
ûû 
base
üü 
.
üü 
Dispose
üü 
(
üü 
	disposing
üü "
)
üü" #
;
üü# $
}
†† 	
public
©© 
ActionResult
©© 
AggiungiAdditivo
©© ,
(
©©, -
int
©©- 0
id
©©1 3
)
©©3 4
{
™™ 	
AdditiviRicetta
´´ 
ar
´´ 
=
´´  
new
´´! $
AdditiviRicetta
´´% 4
{
´´5 6
	RicettaId
´´7 @
=
´´A B
id
´´C E
}
´´F G
;
´´G H

SelectList
¨¨ 

additiviId
¨¨ !
=
¨¨" #
new
¨¨$ '

SelectList
¨¨( 2
(
¨¨2 3
_db
¨¨3 6
.
¨¨6 7
Additivi
¨¨7 ?
,
¨¨? @
$str
¨¨A M
,
¨¨M N
$str
¨¨O U
)
¨¨U V
;
¨¨V W
ViewBag
≠≠ 
.
≠≠ 
additivi
≠≠ 
=
≠≠ 

additiviId
≠≠ )
;
≠≠) *
return
ÆÆ 
View
ÆÆ 
(
ÆÆ 
ar
ÆÆ 
)
ÆÆ 
;
ÆÆ 
}
ØØ 	
[
ππ 	
HttpPost
ππ	 
]
ππ 
public
∫∫ 
ActionResult
∫∫ 
AggiungiAdditivo
∫∫ ,
(
∫∫, -
AdditiviRicetta
∫∫- <
ar
∫∫= ?
)
∫∫? @
{
ªª 	
if
ºº 
(
ºº 

ModelState
ºº 
.
ºº 
IsValid
ºº "
)
ºº" #
{
ΩΩ 
_db
ææ 
.
ææ 
AdditiviRicettas
ææ $
.
ææ$ %
Add
ææ% (
(
ææ( )
ar
ææ) +
)
ææ+ ,
;
ææ, -
_db
øø 
.
øø 
SaveChanges
øø 
(
øø  
)
øø  !
;
øø! "
return
¿¿ 
RedirectToAction
¿¿ '
(
¿¿' (
$str
¿¿( /
)
¿¿/ 0
;
¿¿0 1
}
¡¡ 

SelectList
¬¬ 

additiviId
¬¬ !
=
¬¬" #
new
¬¬$ '

SelectList
¬¬( 2
(
¬¬2 3
_db
¬¬3 6
.
¬¬6 7
Additivi
¬¬7 ?
,
¬¬? @
$str
¬¬A M
,
¬¬M N
$str
¬¬O U
)
¬¬U V
;
¬¬V W
ViewBag
√√ 
.
√√ 
additivi
√√ 
=
√√ 

additiviId
√√ )
;
√√) *
return
ƒƒ 
View
ƒƒ 
(
ƒƒ 
ar
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
≈≈ 	
public
ŒŒ 
ActionResult
ŒŒ 
AggiungiLievito
ŒŒ +
(
ŒŒ+ ,
int
ŒŒ, /
id
ŒŒ0 2
)
ŒŒ2 3
{
œœ 	
LievitiRicetta
–– 
lr
–– 
=
–– 
new
––  #
LievitiRicetta
––$ 2
{
––3 4
	RicettaId
––5 >
=
––? @
id
––A C
}
––D E
;
––E F

SelectList
—— 
	lievitiId
——  
=
——! "
new
——# &

SelectList
——' 1
(
——1 2
_db
——2 5
.
——5 6
Lieviti
——6 =
,
——= >
$str
——? J
,
——J K
$str
——L R
)
——R S
;
——S T
ViewBag
““ 
.
““ 
lieviti
““ 
=
““ 
	lievitiId
““ '
;
““' (
return
”” 
View
”” 
(
”” 
lr
”” 
)
”” 
;
”” 
}
‘‘ 	
[
ﬁﬁ 	
HttpPost
ﬁﬁ	 
]
ﬁﬁ 
public
ﬂﬂ 
ActionResult
ﬂﬂ 
AggiungiLievito
ﬂﬂ +
(
ﬂﬂ+ ,
LievitiRicetta
ﬂﬂ, :
lr
ﬂﬂ; =
)
ﬂﬂ= >
{
‡‡ 	
if
·· 
(
·· 

ModelState
·· 
.
·· 
IsValid
·· "
)
··" #
{
‚‚ 
_db
„„ 
.
„„ 
LievitiRicettas
„„ #
.
„„# $
Add
„„$ '
(
„„' (
lr
„„( *
)
„„* +
;
„„+ ,
_db
‰‰ 
.
‰‰ 
SaveChanges
‰‰ 
(
‰‰  
)
‰‰  !
;
‰‰! "
return
ÂÂ 
RedirectToAction
ÂÂ '
(
ÂÂ' (
$str
ÂÂ( /
)
ÂÂ/ 0
;
ÂÂ0 1
}
ÊÊ 

SelectList
ËË 
	lievitiId
ËË  
=
ËË! "
new
ËË# &

SelectList
ËË' 1
(
ËË1 2
_db
ËË2 5
.
ËË5 6
Lieviti
ËË6 =
,
ËË= >
$str
ËË? J
,
ËËJ K
$str
ËËL R
)
ËËR S
;
ËËS T
ViewBag
ÈÈ 
.
ÈÈ 
lieviti
ÈÈ 
=
ÈÈ 
	lievitiId
ÈÈ '
;
ÈÈ' (
return
ÍÍ 
View
ÍÍ 
(
ÍÍ 
lr
ÍÍ 
)
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
public
ÙÙ 
ActionResult
ÙÙ 
AggiungiLuppolo
ÙÙ +
(
ÙÙ+ ,
int
ÙÙ, /
id
ÙÙ0 2
)
ÙÙ2 3
{
ıı 	
LuppoliRicetta
ˆˆ 
lr
ˆˆ 
=
ˆˆ 
new
ˆˆ  #
LuppoliRicetta
ˆˆ$ 2
{
ˆˆ3 4
	RicettaId
ˆˆ5 >
=
ˆˆ? @
id
ˆˆA C
}
ˆˆD E
;
ˆˆE F

SelectList
˜˜ 
	luppoliId
˜˜  
=
˜˜! "
new
˜˜# &

SelectList
˜˜' 1
(
˜˜1 2
_db
˜˜2 5
.
˜˜5 6
Luppoli
˜˜6 =
,
˜˜= >
$str
˜˜? J
,
˜˜J K
$str
˜˜L R
)
˜˜R S
;
˜˜S T
ViewBag
¯¯ 
.
¯¯ 
luppoli
¯¯ 
=
¯¯ 
	luppoliId
¯¯ '
;
¯¯' (
return
˘˘ 
View
˘˘ 
(
˘˘ 
lr
˘˘ 
)
˘˘ 
;
˘˘ 
}
˙˙ 	
[
ÑÑ 	
HttpPost
ÑÑ	 
]
ÑÑ 
public
ÖÖ 
ActionResult
ÖÖ 
AggiungiLuppolo
ÖÖ +
(
ÖÖ+ ,
LuppoliRicetta
ÖÖ, :
lr
ÖÖ; =
)
ÖÖ= >
{
ÜÜ 	
if
áá 
(
áá 

ModelState
áá 
.
áá 
IsValid
áá "
)
áá" #
{
àà 
_db
ââ 
.
ââ 
LuppoliRicettas
ââ #
.
ââ# $
Add
ââ$ '
(
ââ' (
lr
ââ( *
)
ââ* +
;
ââ+ ,
_db
ää 
.
ää 
SaveChanges
ää 
(
ää  
)
ää  !
;
ää! "
return
ãã 
RedirectToAction
ãã '
(
ãã' (
$str
ãã( /
)
ãã/ 0
;
ãã0 1
}
åå 

SelectList
çç 
	luppoliId
çç  
=
çç! "
new
çç# &

SelectList
çç' 1
(
çç1 2
_db
çç2 5
.
çç5 6
Luppoli
çç6 =
,
çç= >
$str
çç? J
,
ççJ K
$str
ççL R
)
ççR S
;
ççS T
ViewBag
éé 
.
éé 
luppoli
éé 
=
éé 
	luppoliId
éé '
;
éé' (
return
èè 
View
èè 
(
èè 
lr
èè 
)
èè 
;
èè 
}
êê 	
public
ôô 
ActionResult
ôô 
AggiungiMalti
ôô )
(
ôô) *
int
ôô* -
id
ôô. 0
)
ôô0 1
{
öö 	
MaltiRicetta
õõ 
mr
õõ 
=
õõ 
new
õõ !
MaltiRicetta
õõ" .
{
õõ/ 0
MaltiId
õõ1 8
=
õõ9 :
id
õõ; =
}
õõ> ?
;
õõ? @

SelectList
úú 
maltiId
úú 
=
úú  
new
úú! $

SelectList
úú% /
(
úú/ 0
_db
úú0 3
.
úú3 4
Malti
úú4 9
,
úú9 :
$str
úú; D
,
úúD E
$str
úúF L
)
úúL M
;
úúM N
ViewBag
ùù 
.
ùù 
malti
ùù 
=
ùù 
maltiId
ùù #
;
ùù# $
return
ûû 
View
ûû 
(
ûû 
mr
ûû 
)
ûû 
;
ûû 
}
üü 	
[
©© 	
HttpPost
©©	 
]
©© 
public
™™ 
ActionResult
™™ 
AggiungiMalti
™™ )
(
™™) *
MaltiRicetta
™™* 6
mr
™™7 9
)
™™9 :
{
´´ 	
if
¨¨ 
(
¨¨ 

ModelState
¨¨ 
.
¨¨ 
IsValid
¨¨ "
)
¨¨" #
{
≠≠ 
_db
ÆÆ 
.
ÆÆ 
MaltiRicettas
ÆÆ !
.
ÆÆ! "
Add
ÆÆ" %
(
ÆÆ% &
mr
ÆÆ& (
)
ÆÆ( )
;
ÆÆ) *
_db
ØØ 
.
ØØ 
SaveChanges
ØØ 
(
ØØ  
)
ØØ  !
;
ØØ! "
return
∞∞ 
RedirectToAction
∞∞ '
(
∞∞' (
$str
∞∞( /
)
∞∞/ 0
;
∞∞0 1
}
±± 

SelectList
≤≤ 
maltiId
≤≤ 
=
≤≤  
new
≤≤! $

SelectList
≤≤% /
(
≤≤/ 0
_db
≤≤0 3
.
≤≤3 4
Malti
≤≤4 9
,
≤≤9 :
$str
≤≤; D
,
≤≤D E
$str
≤≤F L
)
≤≤L M
;
≤≤M N
ViewBag
≥≥ 
.
≥≥ 
malti
≥≥ 
=
≥≥ 
maltiId
≥≥ #
;
≥≥# $
return
¥¥ 
View
¥¥ 
(
¥¥ 
mr
¥¥ 
)
¥¥ 
;
¥¥ 
}
µµ 	
public
ææ 
ActionResult
ææ 
AggiungiZuccheri
ææ ,
(
ææ, -
int
ææ- 0
id
ææ1 3
)
ææ3 4
{
øø 	
ZuccheriRicetta
¿¿ 
zr
¿¿ 
=
¿¿  
new
¿¿! $
ZuccheriRicetta
¿¿% 4
{
¿¿5 6
	RicettaId
¿¿7 @
=
¿¿A B
id
¿¿C E
}
¿¿F G
;
¿¿G H

SelectList
¡¡ 

zuccheriId
¡¡ !
=
¡¡" #
new
¡¡$ '

SelectList
¡¡( 2
(
¡¡2 3
_db
¡¡3 6
.
¡¡6 7
Zuccheri
¡¡7 ?
,
¡¡? @
$str
¡¡A M
,
¡¡M N
$str
¡¡O U
)
¡¡U V
;
¡¡V W
ViewBag
¬¬ 
.
¬¬ 
zuccheri
¬¬ 
=
¬¬ 

zuccheriId
¬¬ )
;
¬¬) *
return
√√ 
View
√√ 
(
√√ 
zr
√√ 
)
√√ 
;
√√ 
}
ƒƒ 	
[
ŒŒ 	
HttpPost
ŒŒ	 
]
ŒŒ 
public
œœ 
ActionResult
œœ 
AggiungiZuccheri
œœ ,
(
œœ, -
ZuccheriRicetta
œœ- <
zr
œœ= ?
)
œœ? @
{
–– 	
if
—— 
(
—— 

ModelState
—— 
.
—— 
IsValid
—— "
)
——" #
{
““ 
_db
”” 
.
”” 
ZuccheriRicettas
”” $
.
””$ %
Add
””% (
(
””( )
zr
””) +
)
””+ ,
;
””, -
_db
‘‘ 
.
‘‘ 
SaveChanges
‘‘ 
(
‘‘  
)
‘‘  !
;
‘‘! "
return
’’ 
RedirectToAction
’’ '
(
’’' (
$str
’’( /
)
’’/ 0
;
’’0 1
}
÷÷ 

SelectList
◊◊ 

zuccheriId
◊◊ !
=
◊◊" #
new
◊◊$ '

SelectList
◊◊( 2
(
◊◊2 3
_db
◊◊3 6
.
◊◊6 7
Zuccheri
◊◊7 ?
,
◊◊? @
$str
◊◊A M
,
◊◊M N
$str
◊◊O U
)
◊◊U V
;
◊◊V W
ViewBag
ÿÿ 
.
ÿÿ 
zuccheri
ÿÿ 
=
ÿÿ 

zuccheriId
ÿÿ )
;
ÿÿ) *
return
ŸŸ 
View
ŸŸ 
(
ŸŸ 
zr
ŸŸ 
)
ŸŸ 
;
ŸŸ 
}
⁄⁄ 	
public
‰‰ 
ActionResult
‰‰ 
EditAdditivo
‰‰ (
(
‰‰( )
int
‰‰) ,
id
‰‰- /
,
‰‰/ 0
int
‰‰1 4
idr
‰‰5 8
)
‰‰8 9
{
ÂÂ 	
AdditiviRicetta
ÊÊ 
ar
ÊÊ 
=
ÊÊ  
_db
ÊÊ! $
.
ÊÊ$ %
AdditiviRicettas
ÊÊ% 5
.
ÊÊ5 6
Where
ÊÊ6 ;
(
ÊÊ; <
x
ÊÊ< =
=>
ÊÊ> @
x
ÊÊA B
.
ÊÊB C

AdditiviId
ÊÊC M
==
ÊÊN P
id
ÊÊQ S
&&
ÊÊT V
x
ÊÊW X
.
ÊÊX Y
	RicettaId
ÊÊY b
==
ÊÊc e
idr
ÊÊf i
)
ÊÊi j
.
ÊÊj k
FirstOrDefault
ÊÊk y
(
ÊÊy z
)
ÊÊz {
;
ÊÊ{ |
return
ËË 
View
ËË 
(
ËË 
ar
ËË 
)
ËË 
;
ËË 
}
ÈÈ 	
[
ÚÚ 	
HttpPost
ÚÚ	 
]
ÚÚ 
public
ÛÛ 
ActionResult
ÛÛ 
EditAdditivo
ÛÛ (
(
ÛÛ( )
AdditiviRicetta
ÛÛ) 8
ar
ÛÛ9 ;
)
ÛÛ; <
{
ÙÙ 	
AdditiviRicetta
ıı 
ar2
ıı 
=
ıı  !
_db
ıı" %
.
ıı% &
AdditiviRicettas
ıı& 6
.
ıı6 7
Where
ıı7 <
(
ıı< =
x
ıı= >
=>
ıı? A
x
ııB C
.
ııC D

AdditiviId
ııD N
==
ııO Q
ar
ııR T
.
ııT U

AdditiviId
ııU _
&&
ıı` b
x
ııc d
.
ııd e
	RicettaId
ııe n
==
ııo q
ar
ıır t
.
ııt u
	RicettaId
ııu ~
)
ıı~ 
.ıı Ä
FirstOrDefaultııÄ é
(ııé è
)ııè ê
;ııê ë
ar2
ˆˆ 
.
ˆˆ 
Quantita
ˆˆ 
=
ˆˆ 
ar
ˆˆ 
.
ˆˆ 
Quantita
ˆˆ &
;
ˆˆ& '
if
˜˜ 
(
˜˜ 

ModelState
˜˜ 
.
˜˜ 
IsValid
˜˜ "
)
˜˜" #
{
¯¯ 
_db
˘˘ 
.
˘˘ 
SaveChanges
˘˘ 
(
˘˘  
)
˘˘  !
;
˘˘! "
return
˙˙ 
RedirectToAction
˙˙ '
(
˙˙' (
$str
˙˙( /
)
˙˙/ 0
;
˙˙0 1
}
˚˚ 

SelectList
¸¸ 

additiviId
¸¸ !
=
¸¸" #
new
¸¸$ '

SelectList
¸¸( 2
(
¸¸2 3
_db
¸¸3 6
.
¸¸6 7
Additivi
¸¸7 ?
,
¸¸? @
$str
¸¸A M
,
¸¸M N
$str
¸¸O U
)
¸¸U V
;
¸¸V W
ViewBag
˝˝ 
.
˝˝ 
additivi
˝˝ 
=
˝˝ 

additiviId
˝˝ )
;
˝˝) *
return
˛˛ 
View
˛˛ 
(
˛˛ 
ar
˛˛ 
)
˛˛ 
;
˛˛ 
}
ˇˇ 	
public
ââ 
ActionResult
ââ 
EditLievito
ââ '
(
ââ' (
int
ââ( +
id
ââ, .
,
ââ. /
int
ââ0 3
idr
ââ4 7
)
ââ7 8
{
ää 	
LievitiRicetta
ãã 
lr
ãã 
=
ãã 
_db
ãã  #
.
ãã# $
LievitiRicettas
ãã$ 3
.
ãã3 4
Where
ãã4 9
(
ãã9 :
x
ãã: ;
=>
ãã< >
x
ãã? @
.
ãã@ A
	LievitoId
ããA J
==
ããK M
id
ããN P
&&
ããQ S
x
ããT U
.
ããU V
	RicettaId
ããV _
==
ãã` b
idr
ããc f
)
ããf g
.
ããg h
FirstOrDefault
ããh v
(
ããv w
)
ããw x
;
ããx y
return
åå 
View
åå 
(
åå 
lr
åå 
)
åå 
;
åå 
}
çç 	
[
ññ 	
HttpPost
ññ	 
]
ññ 
public
óó 
ActionResult
óó 
EditLievito
óó '
(
óó' (
LievitiRicetta
óó( 6
lr
óó7 9
)
óó9 :
{
òò 	
LievitiRicetta
ôô 
lr2
ôô 
=
ôô  
_db
ôô! $
.
ôô$ %
LievitiRicettas
ôô% 4
.
ôô4 5
Where
ôô5 :
(
ôô: ;
x
ôô; <
=>
ôô= ?
x
ôô@ A
.
ôôA B
	LievitoId
ôôB K
==
ôôL N
lr
ôôO Q
.
ôôQ R
	LievitoId
ôôR [
&&
ôô\ ^
x
ôô_ `
.
ôô` a
	RicettaId
ôôa j
==
ôôk m
lr
ôôn p
.
ôôp q
	RicettaId
ôôq z
)
ôôz {
.
ôô{ |
FirstOrDefaultôô| ä
(ôôä ã
)ôôã å
;ôôå ç
lr2
öö 
.
öö 
Quantita
öö 
=
öö 
lr
öö 
.
öö 
Quantita
öö &
;
öö& '
if
õõ 
(
õõ 

ModelState
õõ 
.
õõ 
IsValid
õõ "
)
õõ" #
{
úú 
_db
ùù 
.
ùù 
SaveChanges
ùù 
(
ùù  
)
ùù  !
;
ùù! "
return
ûû 
RedirectToAction
ûû '
(
ûû' (
$str
ûû( /
)
ûû/ 0
;
ûû0 1
}
üü 

SelectList
°° 
	lievitiId
°°  
=
°°! "
new
°°# &

SelectList
°°' 1
(
°°1 2
_db
°°2 5
.
°°5 6
Lieviti
°°6 =
,
°°= >
$str
°°? J
,
°°J K
$str
°°L R
)
°°R S
;
°°S T
ViewBag
¢¢ 
.
¢¢ 
lieviti
¢¢ 
=
¢¢ 
	lievitiId
¢¢ '
;
¢¢' (
return
££ 
View
££ 
(
££ 
lr
££ 
)
££ 
;
££ 
}
§§ 	
public
ÆÆ 
ActionResult
ÆÆ 
EditLuppolo
ÆÆ '
(
ÆÆ' (
int
ÆÆ( +
id
ÆÆ, .
,
ÆÆ. /
int
ÆÆ0 3
idr
ÆÆ4 7
)
ÆÆ7 8
{
ØØ 	
LuppoliRicetta
∞∞ 
lr
∞∞ 
=
∞∞ 
_db
∞∞  #
.
∞∞# $
LuppoliRicettas
∞∞$ 3
.
∞∞3 4
Where
∞∞4 9
(
∞∞9 :
x
∞∞: ;
=>
∞∞< >
x
∞∞? @
.
∞∞@ A
	LuppoliId
∞∞A J
==
∞∞K M
id
∞∞N P
&&
∞∞Q S
x
∞∞T U
.
∞∞U V
	RicettaId
∞∞V _
==
∞∞` b
idr
∞∞c f
)
∞∞f g
.
∞∞g h
FirstOrDefault
∞∞h v
(
∞∞v w
)
∞∞w x
;
∞∞x y
return
±± 
View
±± 
(
±± 
lr
±± 
)
±± 
;
±± 
}
≤≤ 	
[
ªª 	
HttpPost
ªª	 
]
ªª 
public
ºº 
ActionResult
ºº 
EditLuppolo
ºº '
(
ºº' (
LuppoliRicetta
ºº( 6
lr
ºº7 9
)
ºº9 :
{
ΩΩ 	
LuppoliRicetta
ææ 
lr2
ææ 
=
ææ  
_db
ææ! $
.
ææ$ %
LuppoliRicettas
ææ% 4
.
ææ4 5
Where
ææ5 :
(
ææ: ;
x
ææ; <
=>
ææ= ?
x
ææ@ A
.
ææA B
	LuppoliId
ææB K
==
ææL N
lr
ææO Q
.
ææQ R
	LuppoliId
ææR [
&&
ææ\ ^
x
ææ_ `
.
ææ` a
	RicettaId
ææa j
==
ææk m
lr
ææn p
.
ææp q
	RicettaId
ææq z
)
ææz {
.
ææ{ |
FirstOrDefaultææ| ä
(ææä ã
)ææã å
;ææå ç
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
}ëë èD
PC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\ZuccherisController.cs
	namespace		 	
BrewDay2		
 
.		 
Controllers		 
{

 
[ 
	Authorize 
] 
public 

class 
ZuccherisController $
:% &

Controller' 1
{ 
private 
readonly  
ApplicationDbContext -
_db. 1
=2 3
new4 7 
ApplicationDbContext8 L
(L M
)M N
;N O
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
_db 
. 
Zuccheri $
.$ %
ToList% +
(+ ,
), -
)- .
;. /
} 	
public%% 
ActionResult%% 
Details%% #
(%%# $
int%%$ '
?%%' (
id%%) +
)%%+ ,
{&& 	
if'' 
('' 
id'' 
=='' 
null'' 
)'' 
{(( 
return)) 
new))  
HttpStatusCodeResult)) /
())/ 0
HttpStatusCode))0 >
.))> ?

BadRequest))? I
)))I J
;))J K
}** 
Zuccheri++ 
zuccheri++ 
=++ 
_db++  #
.++# $
Zuccheri++$ ,
.++, -
Find++- 1
(++1 2
id++2 4
)++4 5
;++5 6
if,, 
(,, 
zuccheri,, 
==,, 
null,,  
),,  !
{-- 
return.. 
HttpNotFound.. #
(..# $
)..$ %
;..% &
}// 
return00 
View00 
(00 
zuccheri00  
)00  !
;00! "
}11 	
public:: 
ActionResult:: 
Create:: "
(::" #
)::# $
{;; 	
Zuccheri<< 
z<< 
=<< 
new<< 
Zuccheri<< %
{<<& '
UserId<<' -
=<<. /
User<<0 4
.<<4 5
Identity<<5 =
.<<= >
	GetUserId<<> G
(<<G H
)<<H I
}<<I J
;<<J K
return== 
View== 
(== 
z== 
)== 
;== 
}>> 	
[II 	
HttpPostII	 
]II 
[JJ 	$
ValidateAntiForgeryTokenJJ	 !
]JJ! "
publicKK 
ActionResultKK 
CreateKK "
(KK" #
[KK# $
BindKK$ (
(KK( )
IncludeKK) 0
=KK1 2
$strKK3 Z
)KKZ [
]KK[ \
ZuccheriKK] e
zuccheriKKf n
)KKn o
{LL 	
ifMM 
(MM 

ModelStateMM 
.MM 
IsValidMM "
)MM" #
{NN 
_dbOO 
.OO 
ZuccheriOO 
.OO 
AddOO  
(OO  !
zuccheriOO! )
)OO) *
;OO* +
_dbPP 
.PP 
SaveChangesPP 
(PP  
)PP  !
;PP! "
returnQQ 
RedirectToActionQQ '
(QQ' (
$strQQ( /
)QQ/ 0
;QQ0 1
}RR 
returnTT 
ViewTT 
(TT 
zuccheriTT  
)TT  !
;TT! "
}UU 	
public__ 
ActionResult__ 
Edit__  
(__  !
int__! $
?__$ %
id__& (
)__( )
{`` 	
ifaa 
(aa 
idaa 
==aa 
nullaa 
)aa 
{bb 
returncc 
newcc  
HttpStatusCodeResultcc /
(cc/ 0
HttpStatusCodecc0 >
.cc> ?

BadRequestcc? I
)ccI J
;ccJ K
}dd 
Zuccheriee 
zuccheriee 
=ee 
_dbee  #
.ee# $
Zuccheriee$ ,
.ee, -
Findee- 1
(ee1 2
idee2 4
)ee4 5
;ee5 6
ifff 
(ff 
zuccheriff 
==ff 
nullff  
)ff  !
{gg 
returnhh 
HttpNotFoundhh #
(hh# $
)hh$ %
;hh% &
}ii 
returnjj 
Viewjj 
(jj 
zuccherijj  
)jj  !
;jj! "
}kk 	
[ww 	
HttpPostww	 
]ww 
[xx 	$
ValidateAntiForgeryTokenxx	 !
]xx! "
publicyy 
ActionResultyy 
Edityy  
(yy  !
[yy! "
Bindyy" &
(yy& '
Includeyy' .
=yy/ 0
$stryy1 X
)yyX Y
]yyY Z
Zuccheriyy[ c
zuccheriyyd l
)yyl m
{zz 	
if{{ 
({{ 

ModelState{{ 
.{{ 
IsValid{{ "
){{" #
{|| 
_db}} 
.}} 
Entry}} 
(}} 
zuccheri}} "
)}}" #
.}}# $
State}}$ )
=}}* +
EntityState}}, 7
.}}7 8
Modified}}8 @
;}}@ A
_db~~ 
.~~ 
SaveChanges~~ 
(~~  
)~~  !
;~~! "
return 
RedirectToAction '
(' (
$str( /
)/ 0
;0 1
}
ÄÄ 
return
ÅÅ 
View
ÅÅ 
(
ÅÅ 
zuccheri
ÅÅ  
)
ÅÅ  !
;
ÅÅ! "
}
ÇÇ 	
public
çç 
ActionResult
çç 
Delete
çç "
(
çç" #
int
çç# &
?
çç& '
id
çç( *
)
çç* +
{
éé 	
if
èè 
(
èè 
id
èè 
==
èè 
null
èè 
)
èè 
{
êê 
return
ëë 
new
ëë "
HttpStatusCodeResult
ëë /
(
ëë/ 0
HttpStatusCode
ëë0 >
.
ëë> ?

BadRequest
ëë? I
)
ëëI J
;
ëëJ K
}
íí 
Zuccheri
ìì 
zuccheri
ìì 
=
ìì 
_db
ìì  #
.
ìì# $
Zuccheri
ìì$ ,
.
ìì, -
Find
ìì- 1
(
ìì1 2
id
ìì2 4
)
ìì4 5
;
ìì5 6
if
îî 
(
îî 
zuccheri
îî 
==
îî 
null
îî  
)
îî  !
{
ïï 
return
ññ 
HttpNotFound
ññ #
(
ññ# $
)
ññ$ %
;
ññ% &
}
óó 
return
òò 
View
òò 
(
òò 
zuccheri
òò  
)
òò  !
;
òò! "
}
ôô 	
[
££ 	
HttpPost
££	 
,
££ 

ActionName
££ 
(
££ 
$str
££ &
)
££& '
]
££' (
[
§§ 	&
ValidateAntiForgeryToken
§§	 !
]
§§! "
public
•• 
ActionResult
•• 
DeleteConfirmed
•• +
(
••+ ,
int
••, /
id
••0 2
)
••2 3
{
¶¶ 	
Zuccheri
ßß 
zuccheri
ßß 
=
ßß 
_db
ßß  #
.
ßß# $
Zuccheri
ßß$ ,
.
ßß, -
Find
ßß- 1
(
ßß1 2
id
ßß2 4
)
ßß4 5
;
ßß5 6
_db
®® 
.
®® 
Zuccheri
®® 
.
®® 
Remove
®® 
(
®®  
zuccheri
®®  (
??
®®) +
throw
®®, 1
new
®®2 5'
InvalidOperationException
®®6 O
(
®®O P
)
®®P Q
)
®®Q R
;
®®R S
_db
©© 
.
©© 
SaveChanges
©© 
(
©© 
)
©© 
;
©© 
return
™™ 
RedirectToAction
™™ #
(
™™# $
$str
™™$ +
)
™™+ ,
;
™™, -
}
´´ 	
	protected
≠≠ 
override
≠≠ 
void
≠≠ 
Dispose
≠≠  '
(
≠≠' (
bool
≠≠( ,
	disposing
≠≠- 6
)
≠≠6 7
{
ÆÆ 	
if
ØØ 
(
ØØ 
	disposing
ØØ 
)
ØØ 
{
∞∞ 
_db
±± 
.
±± 
Dispose
±± 
(
±± 
)
±± 
;
±± 
}
≤≤ 
base
≥≥ 
.
≥≥ 
Dispose
≥≥ 
(
≥≥ 
	disposing
≥≥ "
)
≥≥" #
;
≥≥# $
}
¥¥ 	
}
µµ 
}∂∂ „
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
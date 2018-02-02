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
}ii –
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
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} ‰
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
(  { |
validateInterval!! (
:!!( )
TimeSpan!!* 2
.!!2 3
FromMinutes!!3 >
(!!> ?
$num!!? A
)!!A B
,!!B C
regenerateIdentity"" *
:""* +
("", -
manager""- 4
,""4 5
user""6 :
)"": ;
=>""< >
user""? C
.""C D%
GenerateUserIdentityAsync""D ]
(""] ^
manager""^ e
)""e f
)""f g
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
}CC Ãú
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
get 
{ 
return   
_signInManager   %
??  & (
HttpContext  ) 4
.  4 5
GetOwinContext  5 C
(  C D
)  D E
.  E F
Get  F I
<  I J$
ApplicationSignInManager  J b
>  b c
(  c d
)  d e
;  e f
}!! 
private"" 
set"" 
{## 
_signInManager$$ 
=$$  
value$$! &
;$$& '
}%% 
}&& 	
public(( "
ApplicationUserManager(( %
UserManager((& 1
{)) 	
get** 
{++ 
return,, 
_userManager,, #
??,,$ &
HttpContext,,' 2
.,,2 3
GetOwinContext,,3 A
(,,A B
),,B C
.,,C D
GetUserManager,,D R
<,,R S"
ApplicationUserManager,,S i
>,,i j
(,,j k
),,k l
;,,l m
}-- 
private.. 
set.. 
{// 
_userManager00 
=00 
value00 $
;00$ %
}11 
}22 	
[== 	
AllowAnonymous==	 
]== 
public>> 
ActionResult>> 
Login>> !
(>>! "
string>>" (
	returnUrl>>) 2
)>>2 3
{?? 	
ViewBag@@ 
.@@ 
	ReturnUrl@@ 
=@@ 
	returnUrl@@  )
;@@) *
returnAA 
ViewAA 
(AA 
)AA 
;AA 
}BB 	
[LL 	
HttpPostLL	 
]LL 
[MM 	
AllowAnonymousMM	 
]MM 
[NN 	$
ValidateAntiForgeryTokenNN	 !
]NN! "
publicOO 
asyncOO 
TaskOO 
<OO 
ActionResultOO &
>OO& '
LoginOO( -
(OO- .
LoginViewModelOO. <
modelOO= B
,OOB C
stringOOD J
	returnUrlOOK T
)OOT U
{PP 	
ifQQ 
(QQ 
!QQ 

ModelStateQQ 
.QQ 
IsValidQQ #
)QQ# $
{RR 
returnSS 
ViewSS 
(SS 
modelSS !
)SS! "
;SS" #
}TT 
varXX 
resultXX 
=XX 
awaitXX 
SignInManagerXX ,
.XX, -
PasswordSignInAsyncXX- @
(XX@ A
modelXXA F
.XXF G
EmailXXG L
,XXL M
modelXXN S
.XXS T
PasswordXXT \
,XX\ ]
modelXX^ c
.XXc d

RememberMeXXd n
,XXn o
shouldLockoutXXp }
:XX} ~
false	XX Ñ
)
XXÑ Ö
;
XXÖ Ü
switchYY 
(YY 
resultYY 
)YY 
{ZZ 
case[[ 
SignInStatus[[ !
.[[! "
Success[[" )
:[[) *
return\\ 
RedirectToLocal\\ *
(\\* +
	returnUrl\\+ 4
)\\4 5
;\\5 6
case]] 
SignInStatus]] !
.]]! "
	LockedOut]]" +
:]]+ ,
return^^ 
View^^ 
(^^  
$str^^  )
)^^) *
;^^* +
case__ 
SignInStatus__ !
.__! " 
RequiresVerification__" 6
:__6 7
return`` 
RedirectToAction`` +
(``+ ,
$str``, 6
,``6 7
new``8 ;
{``< =
	ReturnUrl``> G
=``H I
	returnUrl``J S
,``S T

RememberMe``U _
=``` a
model``b g
.``g h

RememberMe``h r
}``s t
)``t u
;``u v
caseaa 
SignInStatusaa !
.aa! "
Failureaa" )
:aa) *
defaultbb 
:bb 

ModelStatecc 
.cc 
AddModelErrorcc ,
(cc, -
$strcc- /
,cc/ 0
$strcc1 S
)ccS T
;ccT U
returndd 
Viewdd 
(dd  
modeldd  %
)dd% &
;dd& '
}ee 
}ff 	
[qq 	
AllowAnonymousqq	 
]qq 
publicrr 
asyncrr 
Taskrr 
<rr 
ActionResultrr &
>rr& '

VerifyCoderr( 2
(rr2 3
stringrr3 9
providerrr: B
,rrB C
stringrrD J
	returnUrlrrK T
,rrT U
boolrrV Z

rememberMerr[ e
)rre f
{ss 	
ifuu 
(uu 
!uu 
awaituu 
SignInManageruu $
.uu$ % 
HasBeenVerifiedAsyncuu% 9
(uu9 :
)uu: ;
)uu; <
{vv 
returnww 
Viewww 
(ww 
$strww #
)ww# $
;ww$ %
}xx 
returnyy 
Viewyy 
(yy 
newyy 
VerifyCodeViewModelyy /
{yy0 1
Provideryy2 :
=yy; <
provideryy= E
,yyE F
	ReturnUrlyyG P
=yyQ R
	returnUrlyyS \
,yy\ ]

RememberMeyy^ h
=yyi j

rememberMeyyk u
}yyv w
)yyw x
;yyx y
}zz 	
[
ÜÜ 	
HttpPost
ÜÜ	 
]
ÜÜ 
[
áá 	
AllowAnonymous
áá	 
]
áá 
[
àà 	&
ValidateAntiForgeryToken
àà	 !
]
àà! "
public
ââ 
async
ââ 
Task
ââ 
<
ââ 
ActionResult
ââ &
>
ââ& '

VerifyCode
ââ( 2
(
ââ2 3!
VerifyCodeViewModel
ââ3 F
model
ââG L
)
ââL M
{
ää 	
if
ãã 
(
ãã 
!
ãã 

ModelState
ãã 
.
ãã 
IsValid
ãã #
)
ãã# $
{
åå 
return
çç 
View
çç 
(
çç 
model
çç !
)
çç! "
;
çç" #
}
éé 
var
îî 
result
îî 
=
îî 
await
îî 
SignInManager
îî ,
.
îî, -"
TwoFactorSignInAsync
îî- A
(
îîA B
model
îîB G
.
îîG H
Provider
îîH P
,
îîP Q
model
îîR W
.
îîW X
Code
îîX \
,
îî\ ]
isPersistent
îî^ j
:
îîj k
model
îîm r
.
îîr s

RememberMe
îîs }
,
îî} ~
rememberBrowserîî é
:îîé è
modelîîê ï
.îîï ñ
RememberBrowserîîñ •
)îî• ¶
;îî¶ ß
switch
ïï 
(
ïï 
result
ïï 
)
ïï 
{
ññ 
case
óó 
SignInStatus
óó !
.
óó! "
Success
óó" )
:
óó) *
return
òò 
RedirectToLocal
òò *
(
òò* +
model
òò+ 0
.
òò0 1
	ReturnUrl
òò1 :
)
òò: ;
;
òò; <
case
ôô 
SignInStatus
ôô !
.
ôô! "
	LockedOut
ôô" +
:
ôô+ ,
return
öö 
View
öö 
(
öö  
$str
öö  )
)
öö) *
;
öö* +
case
õõ 
SignInStatus
õõ !
.
õõ! "
Failure
õõ" )
:
õõ) *
default
úú 
:
úú 

ModelState
ùù 
.
ùù 
AddModelError
ùù ,
(
ùù, -
$str
ùù- /
,
ùù/ 0
$str
ùù1 E
)
ùùE F
;
ùùF G
return
ûû 
View
ûû 
(
ûû  
model
ûû  %
)
ûû% &
;
ûû& '
}
üü 
}
†† 	
[
©© 	
AllowAnonymous
©©	 
]
©© 
public
™™ 
ActionResult
™™ 
Register
™™ $
(
™™$ %
)
™™% &
{
´´ 	
return
¨¨ 
View
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 	
[
∑∑ 	
HttpPost
∑∑	 
]
∑∑ 
[
∏∏ 	
AllowAnonymous
∏∏	 
]
∏∏ 
[
ππ 	&
ValidateAntiForgeryToken
ππ	 !
]
ππ! "
public
∫∫ 
async
∫∫ 
Task
∫∫ 
<
∫∫ 
ActionResult
∫∫ &
>
∫∫& '
Register
∫∫( 0
(
∫∫0 1
RegisterViewModel
∫∫1 B
model
∫∫C H
)
∫∫H I
{
ªª 	
if
ºº 
(
ºº 

ModelState
ºº 
.
ºº 
IsValid
ºº "
)
ºº" #
{
ΩΩ 
var
ææ 
user
ææ 
=
ææ 
new
ææ 
ApplicationUser
ææ .
{
ææ/ 0
UserName
ææ1 9
=
ææ: ;
model
ææ< A
.
ææA B
Email
ææB G
,
ææG H
Email
ææI N
=
ææO P
model
ææQ V
.
ææV W
Email
ææW \
}
ææ] ^
;
ææ^ _
var
øø 
result
øø 
=
øø 
await
øø "
UserManager
øø# .
.
øø. /
CreateAsync
øø/ :
(
øø: ;
user
øø; ?
,
øø? @
model
øøA F
.
øøF G
Password
øøG O
)
øøO P
;
øøP Q
if
¿¿ 
(
¿¿ 
result
¿¿ 
.
¿¿ 
	Succeeded
¿¿ $
)
¿¿$ %
{
¡¡ 
await
¬¬ 
SignInManager
¬¬ '
.
¬¬' (
SignInAsync
¬¬( 3
(
¬¬3 4
user
¬¬4 8
,
¬¬8 9
isPersistent
¬¬: F
:
¬¬F G
false
¬¬G L
,
¬¬L M
rememberBrowser
¬¬N ]
:
¬¬] ^
false
¬¬^ c
)
¬¬c d
;
¬¬d e"
ApplicationDbContext
…… (
db
……) +
=
……, -
new
……. 1"
ApplicationDbContext
……2 F
(
……F G
)
……G H
;
……H I
	Magazzino
   
m
   
=
    !
new
  " %
	Magazzino
  & /
(
  / 0
)
  0 1
{
ÀÀ 
UserId
ÃÃ 
=
ÃÃ  
user
ÃÃ! %
.
ÃÃ% &
Id
ÃÃ& (
}
ÕÕ 
;
ÕÕ 
db
ŒŒ 
.
ŒŒ 
Magazzinoes
ŒŒ "
.
ŒŒ" #
Add
ŒŒ# &
(
ŒŒ& '
m
ŒŒ' (
)
ŒŒ( )
;
ŒŒ) *
db
œœ 
.
œœ 
SaveChanges
œœ "
(
œœ" #
)
œœ# $
;
œœ$ %
return
–– 
RedirectToAction
–– +
(
––+ ,
$str
––, 3
,
––3 4
$str
––5 ;
)
––; <
;
––< =
}
—— 
	AddErrors
““ 
(
““ 
result
““  
)
““  !
;
““! "
}
”” 
return
÷÷ 
View
÷÷ 
(
÷÷ 
model
÷÷ 
)
÷÷ 
;
÷÷ 
}
◊◊ 	
[
€€ 	
AllowAnonymous
€€	 
]
€€ 
public
‹‹ 
async
‹‹ 
Task
‹‹ 
<
‹‹ 
ActionResult
‹‹ &
>
‹‹& '
ConfirmEmail
‹‹( 4
(
‹‹4 5
string
‹‹5 ;
userId
‹‹< B
,
‹‹B C
string
‹‹D J
code
‹‹K O
)
‹‹O P
{
›› 	
if
ﬁﬁ 
(
ﬁﬁ 
userId
ﬁﬁ 
==
ﬁﬁ 
null
ﬁﬁ 
||
ﬁﬁ !
code
ﬁﬁ" &
==
ﬁﬁ' )
null
ﬁﬁ* .
)
ﬁﬁ. /
{
ﬂﬂ 
return
‡‡ 
View
‡‡ 
(
‡‡ 
$str
‡‡ #
)
‡‡# $
;
‡‡$ %
}
·· 
var
‚‚ 
result
‚‚ 
=
‚‚ 
await
‚‚ 
UserManager
‚‚ *
.
‚‚* +
ConfirmEmailAsync
‚‚+ <
(
‚‚< =
userId
‚‚= C
,
‚‚C D
code
‚‚E I
)
‚‚I J
;
‚‚J K
return
„„ 
View
„„ 
(
„„ 
result
„„ 
.
„„ 
	Succeeded
„„ (
?
„„) *
$str
„„+ 9
:
„„: ;
$str
„„< C
)
„„C D
;
„„D E
}
‰‰ 	
[
ËË 	
AllowAnonymous
ËË	 
]
ËË 
public
ÈÈ 
ActionResult
ÈÈ 
ForgotPassword
ÈÈ *
(
ÈÈ* +
)
ÈÈ+ ,
{
ÍÍ 	
return
ÎÎ 
View
ÎÎ 
(
ÎÎ 
)
ÎÎ 
;
ÎÎ 
}
ÏÏ 	
[
 	
HttpPost
	 
]
 
[
ÒÒ 	
AllowAnonymous
ÒÒ	 
]
ÒÒ 
[
ÚÚ 	&
ValidateAntiForgeryToken
ÚÚ	 !
]
ÚÚ! "
public
ÛÛ 
async
ÛÛ 
Task
ÛÛ 
<
ÛÛ 
ActionResult
ÛÛ &
>
ÛÛ& '
ForgotPassword
ÛÛ( 6
(
ÛÛ6 7%
ForgotPasswordViewModel
ÛÛ7 N
model
ÛÛO T
)
ÛÛT U
{
ÙÙ 	
if
ıı 
(
ıı 

ModelState
ıı 
.
ıı 
IsValid
ıı "
)
ıı" #
{
ˆˆ 
var
˜˜ 
user
˜˜ 
=
˜˜ 
await
˜˜  
UserManager
˜˜! ,
.
˜˜, -
FindByNameAsync
˜˜- <
(
˜˜< =
model
˜˜= B
.
˜˜B C
Email
˜˜C H
)
˜˜H I
;
˜˜I J
if
¯¯ 
(
¯¯ 
user
¯¯ 
==
¯¯ 
null
¯¯  
||
¯¯! #
!
¯¯$ %
(
¯¯% &
await
¯¯& +
UserManager
¯¯, 7
.
¯¯7 8#
IsEmailConfirmedAsync
¯¯8 M
(
¯¯M N
user
¯¯N R
.
¯¯R S
Id
¯¯S U
)
¯¯U V
)
¯¯V W
)
¯¯W X
{
˘˘ 
return
˚˚ 
View
˚˚ 
(
˚˚  
$str
˚˚  <
)
˚˚< =
;
˚˚= >
}
¸¸ 
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
àà 	
[
åå 	
AllowAnonymous
åå	 
]
åå 
public
çç 
ActionResult
çç (
ForgotPasswordConfirmation
çç 6
(
çç6 7
)
çç7 8
{
éé 	
return
èè 
View
èè 
(
èè 
)
èè 
;
èè 
}
êê 	
[
îî 	
AllowAnonymous
îî	 
]
îî 
public
ïï 
ActionResult
ïï 
ResetPassword
ïï )
(
ïï) *
string
ïï* 0
code
ïï1 5
)
ïï5 6
{
ññ 	
return
óó 
code
óó 
==
óó 
null
óó 
?
óó  !
View
óó" &
(
óó& '
$str
óó' .
)
óó. /
:
óó0 1
View
óó2 6
(
óó6 7
)
óó7 8
;
óó8 9
}
òò 	
[
úú 	
HttpPost
úú	 
]
úú 
[
ùù 	
AllowAnonymous
ùù	 
]
ùù 
[
ûû 	&
ValidateAntiForgeryToken
ûû	 !
]
ûû! "
public
üü 
async
üü 
Task
üü 
<
üü 
ActionResult
üü &
>
üü& '
ResetPassword
üü( 5
(
üü5 6$
ResetPasswordViewModel
üü6 L
model
üüM R
)
üüR S
{
†† 	
if
°° 
(
°° 
!
°° 

ModelState
°° 
.
°° 
IsValid
°° #
)
°°# $
{
¢¢ 
return
££ 
View
££ 
(
££ 
model
££ !
)
££! "
;
££" #
}
§§ 
var
•• 
user
•• 
=
•• 
await
•• 
UserManager
•• (
.
••( )
FindByNameAsync
••) 8
(
••8 9
model
••9 >
.
••> ?
Email
••? D
)
••D E
;
••E F
if
¶¶ 
(
¶¶ 
user
¶¶ 
==
¶¶ 
null
¶¶ 
)
¶¶ 
{
ßß 
return
©© 
RedirectToAction
©© '
(
©©' (
$str
©©( C
,
©©C D
$str
©©E N
)
©©N O
;
©©O P
}
™™ 
var
´´ 
result
´´ 
=
´´ 
await
´´ 
UserManager
´´ *
.
´´* + 
ResetPasswordAsync
´´+ =
(
´´= >
user
´´> B
.
´´B C
Id
´´C E
,
´´E F
model
´´G L
.
´´L M
Code
´´M Q
,
´´Q R
model
´´S X
.
´´X Y
Password
´´Y a
)
´´a b
;
´´b c
if
¨¨ 
(
¨¨ 
result
¨¨ 
.
¨¨ 
	Succeeded
¨¨  
)
¨¨  !
{
≠≠ 
return
ÆÆ 
RedirectToAction
ÆÆ '
(
ÆÆ' (
$str
ÆÆ( C
,
ÆÆC D
$str
ÆÆE N
)
ÆÆN O
;
ÆÆO P
}
ØØ 
	AddErrors
∞∞ 
(
∞∞ 
result
∞∞ 
)
∞∞ 
;
∞∞ 
return
±± 
View
±± 
(
±± 
)
±± 
;
±± 
}
≤≤ 	
[
∂∂ 	
AllowAnonymous
∂∂	 
]
∂∂ 
public
∑∑ 
ActionResult
∑∑ '
ResetPasswordConfirmation
∑∑ 5
(
∑∑5 6
)
∑∑6 7
{
∏∏ 	
return
ππ 
View
ππ 
(
ππ 
)
ππ 
;
ππ 
}
∫∫ 	
[
ææ 	
HttpPost
ææ	 
]
ææ 
[
øø 	
AllowAnonymous
øø	 
]
øø 
[
¿¿ 	&
ValidateAntiForgeryToken
¿¿	 !
]
¿¿! "
public
¡¡ 
ActionResult
¡¡ 
ExternalLogin
¡¡ )
(
¡¡) *
string
¡¡* 0
provider
¡¡1 9
,
¡¡9 :
string
¡¡; A
	returnUrl
¡¡B K
)
¡¡K L
{
¬¬ 	
return
ƒƒ 
new
ƒƒ 
ChallengeResult
ƒƒ &
(
ƒƒ& '
provider
ƒƒ' /
,
ƒƒ/ 0
Url
ƒƒ1 4
.
ƒƒ4 5
Action
ƒƒ5 ;
(
ƒƒ; <
$str
ƒƒ< S
,
ƒƒS T
$str
ƒƒU ^
,
ƒƒ^ _
new
ƒƒ` c
{
ƒƒd e
	ReturnUrl
ƒƒf o
=
ƒƒp q
	returnUrl
ƒƒr {
}
ƒƒ| }
)
ƒƒ} ~
)
ƒƒ~ 
;ƒƒ Ä
}
≈≈ 	
[
…… 	
AllowAnonymous
……	 
]
…… 
public
   
async
   
Task
   
<
   
ActionResult
   &
>
  & '
SendCode
  ( 0
(
  0 1
string
  1 7
	returnUrl
  8 A
,
  A B
bool
  C G

rememberMe
  H R
)
  R S
{
ÀÀ 	
var
ÃÃ 
userId
ÃÃ 
=
ÃÃ 
await
ÃÃ 
SignInManager
ÃÃ ,
.
ÃÃ, -$
GetVerifiedUserIdAsync
ÃÃ- C
(
ÃÃC D
)
ÃÃD E
;
ÃÃE F
if
ÕÕ 
(
ÕÕ 
userId
ÕÕ 
==
ÕÕ 
null
ÕÕ 
)
ÕÕ 
{
ŒŒ 
return
œœ 
View
œœ 
(
œœ 
$str
œœ #
)
œœ# $
;
œœ$ %
}
–– 
var
—— 
userFactors
—— 
=
—— 
await
—— #
UserManager
——$ /
.
——/ 0-
GetValidTwoFactorProvidersAsync
——0 O
(
——O P
userId
——P V
)
——V W
;
——W X
var
““ 
factorOptions
““ 
=
““ 
userFactors
““  +
.
““+ ,
Select
““, 2
(
““2 3
purpose
““3 :
=>
““; =
new
““> A
SelectListItem
““B P
{
““Q R
Text
““S W
=
““X Y
purpose
““Z a
,
““a b
Value
““c h
=
““i j
purpose
““k r
}
““s t
)
““t u
.
““u v
ToList
““v |
(
““| }
)
““} ~
;
““~ 
return
”” 
View
”” 
(
”” 
new
”” 
SendCodeViewModel
”” -
{
””. /
	Providers
””0 9
=
””: ;
factorOptions
””< I
,
””I J
	ReturnUrl
””K T
=
””U V
	returnUrl
””W `
,
””` a

RememberMe
””b l
=
””m n

rememberMe
””o y
}
””z {
)
””{ |
;
””| }
}
‘‘ 	
[
ÿÿ 	
HttpPost
ÿÿ	 
]
ÿÿ 
[
ŸŸ 	
AllowAnonymous
ŸŸ	 
]
ŸŸ 
[
⁄⁄ 	&
ValidateAntiForgeryToken
⁄⁄	 !
]
⁄⁄! "
public
€€ 
async
€€ 
Task
€€ 
<
€€ 
ActionResult
€€ &
>
€€& '
SendCode
€€( 0
(
€€0 1
SendCodeViewModel
€€1 B
model
€€C H
)
€€H I
{
‹‹ 	
if
›› 
(
›› 
!
›› 

ModelState
›› 
.
›› 
IsValid
›› #
)
››# $
{
ﬁﬁ 
return
ﬂﬂ 
View
ﬂﬂ 
(
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
if
„„ 
(
„„ 
!
„„ 
await
„„ 
SignInManager
„„ $
.
„„$ %$
SendTwoFactorCodeAsync
„„% ;
(
„„; <
model
„„< A
.
„„A B
SelectedProvider
„„B R
)
„„R S
)
„„S T
{
‰‰ 
return
ÂÂ 
View
ÂÂ 
(
ÂÂ 
$str
ÂÂ #
)
ÂÂ# $
;
ÂÂ$ %
}
ÊÊ 
return
ÁÁ 
RedirectToAction
ÁÁ #
(
ÁÁ# $
$str
ÁÁ$ 0
,
ÁÁ0 1
new
ÁÁ2 5
{
ÁÁ6 7
Provider
ÁÁ8 @
=
ÁÁA B
model
ÁÁC H
.
ÁÁH I
SelectedProvider
ÁÁI Y
,
ÁÁY Z
	ReturnUrl
ÁÁ[ d
=
ÁÁe f
model
ÁÁg l
.
ÁÁl m
	ReturnUrl
ÁÁm v
,
ÁÁv w

RememberMeÁÁx Ç
=ÁÁÉ Ñ
modelÁÁÖ ä
.ÁÁä ã

RememberMeÁÁã ï
}ÁÁñ ó
)ÁÁó ò
;ÁÁò ô
}
ËË 	
[
ÏÏ 	
AllowAnonymous
ÏÏ	 
]
ÏÏ 
public
ÌÌ 
async
ÌÌ 
Task
ÌÌ 
<
ÌÌ 
ActionResult
ÌÌ &
>
ÌÌ& '#
ExternalLoginCallback
ÌÌ( =
(
ÌÌ= >
string
ÌÌ> D
	returnUrl
ÌÌE N
)
ÌÌN O
{
ÓÓ 	
var
ÔÔ 
	loginInfo
ÔÔ 
=
ÔÔ 
await
ÔÔ !#
AuthenticationManager
ÔÔ" 7
.
ÔÔ7 8'
GetExternalLoginInfoAsync
ÔÔ8 Q
(
ÔÔQ R
)
ÔÔR S
;
ÔÔS T
if
 
(
 
	loginInfo
 
==
 
null
 !
)
! "
{
ÒÒ 
return
ÚÚ 
RedirectToAction
ÚÚ '
(
ÚÚ' (
$str
ÚÚ( /
)
ÚÚ/ 0
;
ÚÚ0 1
}
ÛÛ 
var
ˆˆ 
result
ˆˆ 
=
ˆˆ 
await
ˆˆ 
SignInManager
ˆˆ ,
.
ˆˆ, -!
ExternalSignInAsync
ˆˆ- @
(
ˆˆ@ A
	loginInfo
ˆˆA J
,
ˆˆJ K
isPersistent
ˆˆL X
:
ˆˆX Y
false
ˆˆZ _
)
ˆˆ_ `
;
ˆˆ` a
switch
˜˜ 
(
˜˜ 
result
˜˜ 
)
˜˜ 
{
¯¯ 
case
˘˘ 
SignInStatus
˘˘ !
.
˘˘! "
Success
˘˘" )
:
˘˘) *
return
˙˙ 
RedirectToLocal
˙˙ *
(
˙˙* +
	returnUrl
˙˙+ 4
)
˙˙4 5
;
˙˙5 6
case
˚˚ 
SignInStatus
˚˚ !
.
˚˚! "
	LockedOut
˚˚" +
:
˚˚+ ,
return
¸¸ 
View
¸¸ 
(
¸¸  
$str
¸¸  )
)
¸¸) *
;
¸¸* +
case
˝˝ 
SignInStatus
˝˝ !
.
˝˝! ""
RequiresVerification
˝˝" 6
:
˝˝6 7
return
˛˛ 
RedirectToAction
˛˛ +
(
˛˛+ ,
$str
˛˛, 6
,
˛˛6 7
new
˛˛8 ;
{
˛˛< =
	ReturnUrl
˛˛> G
=
˛˛H I
	returnUrl
˛˛J S
,
˛˛S T

RememberMe
˛˛U _
=
˛˛` a
false
˛˛b g
}
˛˛h i
)
˛˛i j
;
˛˛j k
case
ˇˇ 
SignInStatus
ˇˇ !
.
ˇˇ! "
Failure
ˇˇ" )
:
ˇˇ) *
default
ÄÄ 
:
ÄÄ 
ViewBag
ÇÇ 
.
ÇÇ 
	ReturnUrl
ÇÇ %
=
ÇÇ& '
	returnUrl
ÇÇ( 1
;
ÇÇ1 2
ViewBag
ÉÉ 
.
ÉÉ 
LoginProvider
ÉÉ )
=
ÉÉ* +
	loginInfo
ÉÉ, 5
.
ÉÉ5 6
Login
ÉÉ6 ;
.
ÉÉ; <
LoginProvider
ÉÉ< I
;
ÉÉI J
return
ÑÑ 
View
ÑÑ 
(
ÑÑ  
$str
ÑÑ  ;
,
ÑÑ; <
new
ÑÑ= @0
"ExternalLoginConfirmationViewModel
ÑÑA c
{
ÑÑd e
Email
ÑÑf k
=
ÑÑl m
	loginInfo
ÑÑn w
.
ÑÑw x
Email
ÑÑx }
}
ÑÑ~ 
)ÑÑ Ä
;ÑÑÄ Å
}
ÖÖ 
}
ÜÜ 	
[
ää 	
HttpPost
ää	 
]
ää 
[
ãã 	
AllowAnonymous
ãã	 
]
ãã 
[
åå 	&
ValidateAntiForgeryToken
åå	 !
]
åå! "
public
çç 
async
çç 
Task
çç 
<
çç 
ActionResult
çç &
>
çç& ''
ExternalLoginConfirmation
çç( A
(
ççA B0
"ExternalLoginConfirmationViewModel
ççB d
model
ççe j
,
ççj k
string
ççl r
	returnUrl
ççs |
)
çç| }
{
éé 	
if
èè 
(
èè 
User
èè 
.
èè 
Identity
èè 
.
èè 
IsAuthenticated
èè -
)
èè- .
{
êê 
return
ëë 
RedirectToAction
ëë '
(
ëë' (
$str
ëë( /
,
ëë/ 0
$str
ëë1 9
)
ëë9 :
;
ëë: ;
}
íí 
if
îî 
(
îî 

ModelState
îî 
.
îî 
IsValid
îî "
)
îî" #
{
ïï 
var
óó 
info
óó 
=
óó 
await
óó  #
AuthenticationManager
óó! 6
.
óó6 7'
GetExternalLoginInfoAsync
óó7 P
(
óóP Q
)
óóQ R
;
óóR S
if
òò 
(
òò 
info
òò 
==
òò 
null
òò  
)
òò  !
{
ôô 
return
öö 
View
öö 
(
öö  
$str
öö  6
)
öö6 7
;
öö7 8
}
õõ 
var
úú 
user
úú 
=
úú 
new
úú 
ApplicationUser
úú .
{
úú/ 0
UserName
úú1 9
=
úú: ;
model
úú< A
.
úúA B
Email
úúB G
,
úúG H
Email
úúI N
=
úúO P
model
úúQ V
.
úúV W
Email
úúW \
}
úú] ^
;
úú^ _
var
ùù 
result
ùù 
=
ùù 
await
ùù "
UserManager
ùù# .
.
ùù. /
CreateAsync
ùù/ :
(
ùù: ;
user
ùù; ?
)
ùù? @
;
ùù@ A
if
ûû 
(
ûû 
result
ûû 
.
ûû 
	Succeeded
ûû $
)
ûû$ %
{
üü 
result
†† 
=
†† 
await
†† "
UserManager
††# .
.
††. /
AddLoginAsync
††/ <
(
††< =
user
††= A
.
††A B
Id
††B D
,
††D E
info
††F J
.
††J K
Login
††K P
)
††P Q
;
††Q R
if
°° 
(
°° 
result
°° 
.
°° 
	Succeeded
°° (
)
°°( )
{
¢¢ 
await
££ 
SignInManager
££ +
.
££+ ,
SignInAsync
££, 7
(
££7 8
user
££8 <
,
££< =
isPersistent
££> J
:
££J K
false
££L Q
,
££Q R
rememberBrowser
££S b
:
££b c
false
££d i
)
££i j
;
££j k
return
§§ 
RedirectToLocal
§§ .
(
§§. /
	returnUrl
§§/ 8
)
§§8 9
;
§§9 :
}
•• 
}
¶¶ 
	AddErrors
ßß 
(
ßß 
result
ßß  
)
ßß  !
;
ßß! "
}
®® 
ViewBag
™™ 
.
™™ 
	ReturnUrl
™™ 
=
™™ 
	returnUrl
™™  )
;
™™) *
return
´´ 
View
´´ 
(
´´ 
model
´´ 
)
´´ 
;
´´ 
}
¨¨ 	
[
∞∞ 	
HttpPost
∞∞	 
]
∞∞ 
[
±± 	&
ValidateAntiForgeryToken
±±	 !
]
±±! "
public
≤≤ 
ActionResult
≤≤ 
LogOff
≤≤ "
(
≤≤" #
)
≤≤# $
{
≥≥ 	#
AuthenticationManager
¥¥ !
.
¥¥! "
SignOut
¥¥" )
(
¥¥) *(
DefaultAuthenticationTypes
¥¥* D
.
¥¥D E
ApplicationCookie
¥¥E V
)
¥¥V W
;
¥¥W X
return
µµ 
RedirectToAction
µµ #
(
µµ# $
$str
µµ$ +
,
µµ+ ,
$str
µµ- 3
)
µµ3 4
;
µµ4 5
}
∂∂ 	
[
∫∫ 	
AllowAnonymous
∫∫	 
]
∫∫ 
public
ªª 
ActionResult
ªª "
ExternalLoginFailure
ªª 0
(
ªª0 1
)
ªª1 2
{
ºº 	
return
ΩΩ 
View
ΩΩ 
(
ΩΩ 
)
ΩΩ 
;
ΩΩ 
}
ææ 	
	protected
¿¿ 
override
¿¿ 
void
¿¿ 
Dispose
¿¿  '
(
¿¿' (
bool
¿¿( ,
	disposing
¿¿- 6
)
¿¿6 7
{
¡¡ 	
if
¬¬ 
(
¬¬ 
	disposing
¬¬ 
)
¬¬ 
{
√√ 
if
ƒƒ 
(
ƒƒ 
_userManager
ƒƒ  
!=
ƒƒ! #
null
ƒƒ$ (
)
ƒƒ( )
{
≈≈ 
_userManager
∆∆  
.
∆∆  !
Dispose
∆∆! (
(
∆∆( )
)
∆∆) *
;
∆∆* +
_userManager
««  
=
««! "
null
««# '
;
««' (
}
»» 
if
   
(
   
_signInManager
   "
!=
  # %
null
  & *
)
  * +
{
ÀÀ 
_signInManager
ÃÃ "
.
ÃÃ" #
Dispose
ÃÃ# *
(
ÃÃ* +
)
ÃÃ+ ,
;
ÃÃ, -
_signInManager
ÕÕ "
=
ÕÕ# $
null
ÕÕ% )
;
ÕÕ) *
}
ŒŒ 
}
œœ 
base
—— 
.
—— 
Dispose
—— 
(
—— 
	disposing
—— "
)
——" #
;
——# $
}
““ 	
private
÷÷ 
const
÷÷ 
string
÷÷ 
XsrfKey
÷÷ $
=
÷÷% &
$str
÷÷' /
;
÷÷/ 0
private
ÿÿ $
IAuthenticationManager
ÿÿ &#
AuthenticationManager
ÿÿ' <
{
ŸŸ 	
get
⁄⁄ 
{
€€ 
return
‹‹ 
HttpContext
‹‹ "
.
‹‹" #
GetOwinContext
‹‹# 1
(
‹‹1 2
)
‹‹2 3
.
‹‹3 4
Authentication
‹‹4 B
;
‹‹B C
}
›› 
}
ﬁﬁ 	
private
‡‡ 
void
‡‡ 
	AddErrors
‡‡ 
(
‡‡ 
IdentityResult
‡‡ -
result
‡‡. 4
)
‡‡4 5
{
·· 	
foreach
‚‚ 
(
‚‚ 
var
‚‚ 
error
‚‚ 
in
‚‚ !
result
‚‚" (
.
‚‚( )
Errors
‚‚) /
)
‚‚/ 0
{
„„ 

ModelState
‰‰ 
.
‰‰ 
AddModelError
‰‰ (
(
‰‰( )
$str
‰‰) +
,
‰‰+ ,
error
‰‰- 2
)
‰‰2 3
;
‰‰3 4
}
ÂÂ 
}
ÊÊ 	
private
ËË 
ActionResult
ËË 
RedirectToLocal
ËË ,
(
ËË, -
string
ËË- 3
	returnUrl
ËË4 =
)
ËË= >
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ 
Url
ÍÍ 
.
ÍÍ 

IsLocalUrl
ÍÍ 
(
ÍÍ 
	returnUrl
ÍÍ (
)
ÍÍ( )
)
ÍÍ) *
{
ÎÎ 
return
ÏÏ 
Redirect
ÏÏ 
(
ÏÏ  
	returnUrl
ÏÏ  )
)
ÏÏ) *
;
ÏÏ* +
}
ÌÌ 
return
ÓÓ 
RedirectToAction
ÓÓ #
(
ÓÓ# $
$str
ÓÓ$ +
,
ÓÓ+ ,
$str
ÓÓ- 3
)
ÓÓ3 4
;
ÓÓ4 5
}
ÔÔ 	
internal
ÒÒ 
class
ÒÒ 
ChallengeResult
ÒÒ &
:
ÒÒ' ($
HttpUnauthorizedResult
ÒÒ) ?
{
ÚÚ 	
public
ÛÛ 
ChallengeResult
ÛÛ "
(
ÛÛ" #
string
ÛÛ# )
provider
ÛÛ* 2
,
ÛÛ2 3
string
ÛÛ4 :
redirectUri
ÛÛ; F
)
ÛÛF G
:
ÙÙ 
this
ÙÙ 
(
ÙÙ 
provider
ÙÙ 
,
ÙÙ  
redirectUri
ÙÙ! ,
,
ÙÙ, -
null
ÙÙ. 2
)
ÙÙ2 3
{
ıı 
}
ˆˆ 
public
¯¯ 
ChallengeResult
¯¯ "
(
¯¯" #
string
¯¯# )
provider
¯¯* 2
,
¯¯2 3
string
¯¯4 :
redirectUri
¯¯; F
,
¯¯F G
string
¯¯H N
userId
¯¯O U
)
¯¯U V
{
˘˘ 
LoginProvider
˙˙ 
=
˙˙ 
provider
˙˙  (
;
˙˙( )
RedirectUri
˚˚ 
=
˚˚ 
redirectUri
˚˚ )
;
˚˚) *
UserId
¸¸ 
=
¸¸ 
userId
¸¸ 
;
¸¸  
}
˝˝ 
public
ˇˇ 
string
ˇˇ 
LoginProvider
ˇˇ '
{
ˇˇ( )
get
ˇˇ* -
;
ˇˇ- .
set
ˇˇ/ 2
;
ˇˇ2 3
}
ˇˇ4 5
public
ÄÄ 
string
ÄÄ 
RedirectUri
ÄÄ %
{
ÄÄ& '
get
ÄÄ( +
;
ÄÄ+ ,
set
ÄÄ- 0
;
ÄÄ0 1
}
ÄÄ2 3
public
ÅÅ 
string
ÅÅ 
UserId
ÅÅ  
{
ÅÅ! "
get
ÅÅ# &
;
ÅÅ& '
set
ÅÅ( +
;
ÅÅ+ ,
}
ÅÅ- .
public
ÉÉ 
override
ÉÉ 
void
ÉÉ  
ExecuteResult
ÉÉ! .
(
ÉÉ. /
ControllerContext
ÉÉ/ @
context
ÉÉA H
)
ÉÉH I
{
ÑÑ 
var
ÖÖ 

properties
ÖÖ 
=
ÖÖ  
new
ÖÖ! $&
AuthenticationProperties
ÖÖ% =
{
ÖÖ> ?
RedirectUri
ÖÖ@ K
=
ÖÖL M
RedirectUri
ÖÖN Y
}
ÖÖZ [
;
ÖÖ[ \
if
ÜÜ 
(
ÜÜ 
UserId
ÜÜ 
!=
ÜÜ 
null
ÜÜ "
)
ÜÜ" #
{
áá 

properties
àà 
.
àà 

Dictionary
àà )
[
àà) *
XsrfKey
àà* 1
]
àà1 2
=
àà3 4
UserId
àà5 ;
;
àà; <
}
ââ 
context
ää 
.
ää 
HttpContext
ää #
.
ää# $
GetOwinContext
ää$ 2
(
ää2 3
)
ää3 4
.
ää4 5
Authentication
ää5 C
.
ääC D
	Challenge
ääD M
(
ääM N

properties
ääN X
,
ääX Y
LoginProvider
ääZ g
)
ääg h
;
ääh i
}
ãã 
}
åå 	
}
éé 
}èè Ù@
OC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\AdditiviController.cs
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
AdditiviController #
:$ %

Controller& 0
{ 
private  
ApplicationDbContext $
db% '
=( )
new* - 
ApplicationDbContext. B
(B C
)C D
;D E
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
( 
db 
. 
Additivi #
.# $
ToList$ *
(* +
)+ ,
), -
;- .
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
=-- 
db--  "
.--" #
Additivi--# +
.--+ ,
Find--, 0
(--0 1
id--1 3
)--3 4
;--4 5
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
public66 
ActionResult66 
Create66 "
(66" #
)66# $
{77 	
Additivi88 
a88 
=88 
new88 
Additivi88 %
(88% &
)88& '
;88' (
a99 
.99 
UserId99 
=99 
User99 
.99 
Identity99 $
.99$ %
	GetUserId99% .
(99. /
)99/ 0
;990 1
return;; 
View;; 
(;; 
a;; 
);; 
;;; 
}<< 	
[AA 	
HttpPostAA	 
]AA 
[BB 	$
ValidateAntiForgeryTokenBB	 !
]BB! "
publicCC 
ActionResultCC 
CreateCC "
(CC" #
AdditiviCC# +
additiviCC, 4
)CC4 5
{DD 	
ifEE 
(EE 

ModelStateEE 
.EE 
IsValidEE "
)EE" #
{FF 
dbGG 
.GG 
AdditiviGG 
.GG 
AddGG 
(GG  
additiviGG  (
)GG( )
;GG) *
dbHH 
.HH 
SaveChangesHH 
(HH 
)HH  
;HH  !
returnII 
RedirectToActionII '
(II' (
$strII( /
)II/ 0
;II0 1
}JJ 
returnLL 
ViewLL 
(LL 
additiviLL  
)LL  !
;LL! "
}MM 	
publicPP 
ActionResultPP 
EditPP  
(PP  !
intPP! $
?PP$ %
idPP& (
)PP( )
{QQ 	
ifRR 
(RR 
idRR 
==RR 
nullRR 
)RR 
{SS 
returnTT 
newTT  
HttpStatusCodeResultTT /
(TT/ 0
HttpStatusCodeTT0 >
.TT> ?

BadRequestTT? I
)TTI J
;TTJ K
}UU 
AdditiviVV 
additiviVV 
=VV 
dbVV  "
.VV" #
AdditiviVV# +
.VV+ ,
FindVV, 0
(VV0 1
idVV1 3
)VV3 4
;VV4 5
ifWW 
(WW 
additiviWW 
==WW 
nullWW  
)WW  !
{XX 
returnYY 
HttpNotFoundYY #
(YY# $
)YY$ %
;YY% &
}ZZ 
return[[ 
View[[ 
([[ 
additivi[[  
)[[  !
;[[! "
}\\ 	
[aa 	
HttpPostaa	 
]aa 
[bb 	$
ValidateAntiForgeryTokenbb	 !
]bb! "
publiccc 
ActionResultcc 
Editcc  
(cc  !
[cc! "
Bindcc" &
(cc& '
Includecc' .
=cc/ 0
$strcc1 X
)ccX Y
]ccY Z
Additivicc[ c
additiviccd l
)ccl m
{dd 	
ifee 
(ee 

ModelStateee 
.ee 
IsValidee "
)ee" #
{ff 
dbgg 
.gg 
Entrygg 
(gg 
additivigg !
)gg! "
.gg" #
Stategg# (
=gg) *
EntityStategg+ 6
.gg6 7
Modifiedgg7 ?
;gg? @
dbhh 
.hh 
SaveChangeshh 
(hh 
)hh  
;hh  !
returnii 
RedirectToActionii '
(ii' (
$strii( /
)ii/ 0
;ii0 1
}jj 
returnkk 
Viewkk 
(kk 
additivikk  
)kk  !
;kk! "
}ll 	
publicoo 
ActionResultoo 
Deleteoo "
(oo" #
intoo# &
?oo& '
idoo( *
)oo* +
{pp 	
ifqq 
(qq 
idqq 
==qq 
nullqq 
)qq 
{rr 
returnss 
newss  
HttpStatusCodeResultss /
(ss/ 0
HttpStatusCodess0 >
.ss> ?

BadRequestss? I
)ssI J
;ssJ K
}tt 
Additiviuu 
additiviuu 
=uu 
dbuu  "
.uu" #
Additiviuu# +
.uu+ ,
Finduu, 0
(uu0 1
iduu1 3
)uu3 4
;uu4 5
ifvv 
(vv 
additivivv 
==vv 
nullvv  
)vv  !
{ww 
returnxx 
HttpNotFoundxx #
(xx# $
)xx$ %
;xx% &
}yy 
returnzz 
Viewzz 
(zz 
additivizz  
)zz  !
;zz! "
}{{ 	
[~~ 	
HttpPost~~	 
,~~ 

ActionName~~ 
(~~ 
$str~~ &
)~~& '
]~~' (
[ 	$
ValidateAntiForgeryToken	 !
]! "
public
ÄÄ 
ActionResult
ÄÄ 
DeleteConfirmed
ÄÄ +
(
ÄÄ+ ,
int
ÄÄ, /
id
ÄÄ0 2
)
ÄÄ2 3
{
ÅÅ 	
Additivi
ÇÇ 
additivi
ÇÇ 
=
ÇÇ 
db
ÇÇ  "
.
ÇÇ" #
Additivi
ÇÇ# +
.
ÇÇ+ ,
Find
ÇÇ, 0
(
ÇÇ0 1
id
ÇÇ1 3
)
ÇÇ3 4
;
ÇÇ4 5
db
ÉÉ 
.
ÉÉ 
Additivi
ÉÉ 
.
ÉÉ 
Remove
ÉÉ 
(
ÉÉ 
additivi
ÉÉ '
)
ÉÉ' (
;
ÉÉ( )
db
ÑÑ 
.
ÑÑ 
SaveChanges
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
return
ÖÖ 
RedirectToAction
ÖÖ #
(
ÖÖ# $
$str
ÖÖ$ +
)
ÖÖ+ ,
;
ÖÖ, -
}
ÜÜ 	
	protected
àà 
override
àà 
void
àà 
Dispose
àà  '
(
àà' (
bool
àà( ,
	disposing
àà- 6
)
àà6 7
{
ââ 	
if
ää 
(
ää 
	disposing
ää 
)
ää 
{
ãã 
db
åå 
.
åå 
Dispose
åå 
(
åå 
)
åå 
;
åå 
}
çç 
base
éé 
.
éé 
Dispose
éé 
(
éé 
	disposing
éé "
)
éé" #
;
éé# $
}
èè 	
}
êê 
}ëë ª
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
private		  
ApplicationDbContext		 $
db		% '
=		( )
new		* - 
ApplicationDbContext		. B
(		B C
)		C D
;		D E
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
= 
db !
.! "
Ricette" )
.) *
Where* /
(/ 0
x0 1
=>2 4
x5 6
.6 7
Privata7 >
==? A
falseB G
)G H
;H I
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
}   »@
OC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\LievitisController.cs
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
LievitisController #
:$ %

Controller& 0
{ 
private  
ApplicationDbContext $
db% '
=( )
new* - 
ApplicationDbContext. B
(B C
)C D
;D E
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
db 
. 
Lieviti "
." #
ToList# )
() *
)* +
)+ ,
;, -
} 	
public 
ActionResult 
Details #
(# $
int$ '
?' (
id) +
)+ ,
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
new  
HttpStatusCodeResult /
(/ 0
HttpStatusCode0 >
.> ?

BadRequest? I
)I J
;J K
} 
Lieviti 
lieviti 
= 
db  
.  !
Lieviti! (
.( )
Find) -
(- .
id. 0
)0 1
;1 2
if 
( 
lieviti 
== 
null 
)  
{ 
return   
HttpNotFound   #
(  # $
)  $ %
;  % &
}!! 
return"" 
View"" 
("" 
lieviti"" 
)""  
;""  !
}## 	
public&& 
ActionResult&& 
Create&& "
(&&" #
)&&# $
{'' 	
Lieviti(( 
l(( 
=(( 
new(( 
Lieviti(( #
(((# $
)(($ %
;((% &
l)) 
.)) 
UserId)) 
=)) 
User)) 
.)) 
Identity)) $
.))$ %
	GetUserId))% .
()). /
)))/ 0
;))0 1
return** 
View** 
(** 
l** 
)** 
;** 
}++ 	
[00 	
HttpPost00	 
]00 
[11 	$
ValidateAntiForgeryToken11	 !
]11! "
public22 
ActionResult22 
Create22 "
(22" #
[22# $
Bind22$ (
(22( )
Include22) 0
=221 2
$str223 Z
)22Z [
]22[ \
Lieviti22] d
lieviti22e l
)22l m
{33 	
if44 
(44 

ModelState44 
.44 
IsValid44 "
)44" #
{55 
db66 
.66 
Lieviti66 
.66 
Add66 
(66 
lieviti66 &
)66& '
;66' (
db77 
.77 
SaveChanges77 
(77 
)77  
;77  !
return88 
RedirectToAction88 '
(88' (
$str88( /
)88/ 0
;880 1
}99 
return;; 
View;; 
(;; 
lieviti;; 
);;  
;;;  !
}<< 	
public?? 
ActionResult?? 
Edit??  
(??  !
int??! $
???$ %
id??& (
)??( )
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
LievitiEE 
lievitiEE 
=EE 
dbEE  
.EE  !
LievitiEE! (
.EE( )
FindEE) -
(EE- .
idEE. 0
)EE0 1
;EE1 2
ifFF 
(FF 
lievitiFF 
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
lievitiJJ 
)JJ  
;JJ  !
}KK 	
[PP 	
HttpPostPP	 
]PP 
[QQ 	$
ValidateAntiForgeryTokenQQ	 !
]QQ! "
publicRR 
ActionResultRR 
EditRR  
(RR  !
[RR! "
BindRR" &
(RR& '
IncludeRR' .
=RR/ 0
$strRR1 X
)RRX Y
]RRY Z
LievitiRR[ b
lievitiRRc j
)RRj k
{SS 	
ifTT 
(TT 

ModelStateTT 
.TT 
IsValidTT "
)TT" #
{UU 
dbVV 
.VV 
EntryVV 
(VV 
lievitiVV  
)VV  !
.VV! "
StateVV" '
=VV( )
EntityStateVV* 5
.VV5 6
ModifiedVV6 >
;VV> ?
dbWW 
.WW 
SaveChangesWW 
(WW 
)WW  
;WW  !
returnXX 
RedirectToActionXX '
(XX' (
$strXX( /
)XX/ 0
;XX0 1
}YY 
returnZZ 
ViewZZ 
(ZZ 
lievitiZZ 
)ZZ  
;ZZ  !
}[[ 	
public^^ 
ActionResult^^ 
Delete^^ "
(^^" #
int^^# &
?^^& '
id^^( *
)^^* +
{__ 	
if`` 
(`` 
id`` 
==`` 
null`` 
)`` 
{aa 
returnbb 
newbb  
HttpStatusCodeResultbb /
(bb/ 0
HttpStatusCodebb0 >
.bb> ?

BadRequestbb? I
)bbI J
;bbJ K
}cc 
Lievitidd 
lievitidd 
=dd 
dbdd  
.dd  !
Lievitidd! (
.dd( )
Finddd) -
(dd- .
iddd. 0
)dd0 1
;dd1 2
ifee 
(ee 
lievitiee 
==ee 
nullee 
)ee  
{ff 
returngg 
HttpNotFoundgg #
(gg# $
)gg$ %
;gg% &
}hh 
returnii 
Viewii 
(ii 
lievitiii 
)ii  
;ii  !
}jj 	
[mm 	
HttpPostmm	 
,mm 

ActionNamemm 
(mm 
$strmm &
)mm& '
]mm' (
[nn 	$
ValidateAntiForgeryTokennn	 !
]nn! "
publicoo 
ActionResultoo 
DeleteConfirmedoo +
(oo+ ,
intoo, /
idoo0 2
)oo2 3
{pp 	
Lievitiqq 
lievitiqq 
=qq 
dbqq  
.qq  !
Lievitiqq! (
.qq( )
Findqq) -
(qq- .
idqq. 0
)qq0 1
;qq1 2
dbrr 
.rr 
Lievitirr 
.rr 
Removerr 
(rr 
lievitirr %
)rr% &
;rr& '
dbss 
.ss 
SaveChangesss 
(ss 
)ss 
;ss 
returntt 
RedirectToActiontt #
(tt# $
$strtt$ +
)tt+ ,
;tt, -
}uu 	
	protectedww 
overrideww 
voidww 
Disposeww  '
(ww' (
boolww( ,
	disposingww- 6
)ww6 7
{xx 	
ifyy 
(yy 
	disposingyy 
)yy 
{zz 
db{{ 
.{{ 
Dispose{{ 
({{ 
){{ 
;{{ 
}|| 
base}} 
.}} 
Dispose}} 
(}} 
	disposing}} "
)}}" #
;}}# $
}~~ 	
} 
}ÄÄ ∆@
NC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\LuppoliController.cs
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
LuppoliController "
:# $

Controller% /
{ 
private  
ApplicationDbContext $
db% '
=( )
new* - 
ApplicationDbContext. B
(B C
)C D
;D E
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
db 
. 
Luppoli "
." #
ToList# )
() *
)* +
)+ ,
;, -
} 	
public 
ActionResult 
Details #
(# $
int$ '
?' (
id) +
)+ ,
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
new  
HttpStatusCodeResult /
(/ 0
HttpStatusCode0 >
.> ?

BadRequest? I
)I J
;J K
} 
Luppoli 
luppoli 
= 
db  
.  !
Luppoli! (
.( )
Find) -
(- .
id. 0
)0 1
;1 2
if 
( 
luppoli 
== 
null 
)  
{ 
return   
HttpNotFound   #
(  # $
)  $ %
;  % &
}!! 
return"" 
View"" 
("" 
luppoli"" 
)""  
;""  !
}## 	
public&& 
ActionResult&& 
Create&& "
(&&" #
)&&# $
{'' 	
Luppoli(( 
l(( 
=(( 
new(( 
Luppoli(( #
(((# $
)(($ %
;((% &
l)) 
.)) 
UserId)) 
=)) 
User)) 
.)) 
Identity)) $
.))$ %
	GetUserId))% .
()). /
)))/ 0
;))0 1
return** 
View** 
(** 
l** 
)** 
;** 
}++ 	
[00 	
HttpPost00	 
]00 
[11 	$
ValidateAntiForgeryToken11	 !
]11! "
public22 
ActionResult22 
Create22 "
(22" #
[22# $
Bind22$ (
(22( )
Include22) 0
=221 2
$str223 Z
)22Z [
]22[ \
Luppoli22] d
luppoli22e l
)22l m
{33 	
if44 
(44 

ModelState44 
.44 
IsValid44 "
)44" #
{55 
db66 
.66 
Luppoli66 
.66 
Add66 
(66 
luppoli66 &
)66& '
;66' (
db77 
.77 
SaveChanges77 
(77 
)77  
;77  !
return88 
RedirectToAction88 '
(88' (
$str88( /
)88/ 0
;880 1
}99 
return;; 
View;; 
(;; 
luppoli;; 
);;  
;;;  !
}<< 	
public?? 
ActionResult?? 
Edit??  
(??  !
int??! $
???$ %
id??& (
)??( )
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
LuppoliEE 
luppoliEE 
=EE 
dbEE  
.EE  !
LuppoliEE! (
.EE( )
FindEE) -
(EE- .
idEE. 0
)EE0 1
;EE1 2
ifFF 
(FF 
luppoliFF 
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
luppoliJJ 
)JJ  
;JJ  !
}KK 	
[PP 	
HttpPostPP	 
]PP 
[QQ 	$
ValidateAntiForgeryTokenQQ	 !
]QQ! "
publicRR 
ActionResultRR 
EditRR  
(RR  !
[RR! "
BindRR" &
(RR& '
IncludeRR' .
=RR/ 0
$strRR1 X
)RRX Y
]RRY Z
LuppoliRR[ b
luppoliRRc j
)RRj k
{SS 	
ifTT 
(TT 

ModelStateTT 
.TT 
IsValidTT "
)TT" #
{UU 
dbVV 
.VV 
EntryVV 
(VV 
luppoliVV  
)VV  !
.VV! "
StateVV" '
=VV( )
EntityStateVV* 5
.VV5 6
ModifiedVV6 >
;VV> ?
dbWW 
.WW 
SaveChangesWW 
(WW 
)WW  
;WW  !
returnXX 
RedirectToActionXX '
(XX' (
$strXX( /
)XX/ 0
;XX0 1
}YY 
returnZZ 
ViewZZ 
(ZZ 
luppoliZZ 
)ZZ  
;ZZ  !
}[[ 	
public^^ 
ActionResult^^ 
Delete^^ "
(^^" #
int^^# &
?^^& '
id^^( *
)^^* +
{__ 	
if`` 
(`` 
id`` 
==`` 
null`` 
)`` 
{aa 
returnbb 
newbb  
HttpStatusCodeResultbb /
(bb/ 0
HttpStatusCodebb0 >
.bb> ?

BadRequestbb? I
)bbI J
;bbJ K
}cc 
Luppolidd 
luppolidd 
=dd 
dbdd  
.dd  !
Luppolidd! (
.dd( )
Finddd) -
(dd- .
iddd. 0
)dd0 1
;dd1 2
ifee 
(ee 
luppoliee 
==ee 
nullee 
)ee  
{ff 
returngg 
HttpNotFoundgg #
(gg# $
)gg$ %
;gg% &
}hh 
returnii 
Viewii 
(ii 
luppoliii 
)ii  
;ii  !
}jj 	
[mm 	
HttpPostmm	 
,mm 

ActionNamemm 
(mm 
$strmm &
)mm& '
]mm' (
[nn 	$
ValidateAntiForgeryTokennn	 !
]nn! "
publicoo 
ActionResultoo 
DeleteConfirmedoo +
(oo+ ,
intoo, /
idoo0 2
)oo2 3
{pp 	
Luppoliqq 
luppoliqq 
=qq 
dbqq  
.qq  !
Luppoliqq! (
.qq( )
Findqq) -
(qq- .
idqq. 0
)qq0 1
;qq1 2
dbrr 
.rr 
Luppolirr 
.rr 
Removerr 
(rr 
luppolirr %
)rr% &
;rr& '
dbss 
.ss 
SaveChangesss 
(ss 
)ss 
;ss 
returntt 
RedirectToActiontt #
(tt# $
$strtt$ +
)tt+ ,
;tt, -
}uu 	
	protectedww 
overrideww 
voidww 
Disposeww  '
(ww' (
boolww( ,
	disposingww- 6
)ww6 7
{xx 	
ifyy 
(yy 
	disposingyy 
)yy 
{zz 
db{{ 
.{{ 
Dispose{{ 
({{ 
){{ 
;{{ 
}|| 
base}} 
.}} 
Dispose}} 
(}} 
	disposing}} "
)}}" #
;}}# $
}~~ 	
} 
}ÄÄ è|
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
private  
ApplicationDbContext $
db% '
=( )
new* - 
ApplicationDbContext. B
(B C
)C D
;D E
public 
ActionResult 
Index !
(! "
)" #
{ 	
var 
me 
= 
db 
. 
Users 
. 
First #
(# $
x$ %
=>& (
x) *
.* +
UserName+ 3
==4 6
User7 ;
.; <
Identity< D
.D E
NameE I
)I J
;J K
return 
View 
( 
db 
. 
Magazzinoes &
.& '
First' ,
(, -
f- .
=>/ 1
f2 3
.3 4
UserId4 :
==; =
me> @
.@ A
IdA C
)C D
)D E
;E F
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
=$$ 
db$$ 
.$$ 
Users$$ 
.$$ 
First$$ #
($$# $
x$$$ %
=>$$& (
x$$) *
.$$* +
UserName$$+ 3
==$$4 6
User$$7 ;
.$$; <
Identity$$< D
.$$D E
Name$$E I
)$$I J
;$$J K
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
=))  !
db))" $
.))$ %
Magazzinoes))% 0
.))0 1
Find))1 5
())5 6
id))6 8
)))8 9
;))9 :
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
=;; 
db;; 
.;; 
Users;; 
.;; 
First;; #
(;;# $
x;;$ %
=>;;& (
x;;) *
.;;* +
UserName;;+ 3
==;;4 6
User;;7 ;
.;;; <
Identity;;< D
.;;D E
Name;;E I
);;I J
;;;J K
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
=PP 
dbPP 
.PP 
UsersPP 
.PP 
FirstPP #
(PP# $
xPP$ %
=>PP& (
xPP) *
.PP* +
UserNamePP+ 3
==PP4 6
UserPP7 ;
.PP; <
IdentityPP< D
.PPD E
NamePPE I
)PPI J
;PPJ K
ifQQ 
(QQ 

ModelStateQQ 
.QQ 
IsValidQQ "
)QQ" #
{RR 
dbSS 
.SS 
MagazzinoesSS 
.SS 
AddSS "
(SS" #
	magazzinoSS# ,
)SS, -
;SS- .
dbTT 
.TT 
SaveChangesTT 
(TT 
)TT  
;TT  !
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
=dd 
dbdd 
.dd 
Usersdd 
.dd 
Firstdd #
(dd# $
xdd$ %
=>dd& (
xdd) *
.dd* +
UserNamedd+ 3
==dd4 6
Userdd7 ;
.dd; <
Identitydd< D
.ddD E
NameddE I
)ddI J
;ddJ K
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
=ii  !
dbii" $
.ii$ %
Magazzinoesii% 0
.ii0 1
Findii1 5
(ii5 6
idii6 8
)ii8 9
;ii9 :
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
= 
db 
. 
Users 
. 
First #
(# $
x$ %
=>& (
x) *
.* +
UserName+ 3
==4 6
User7 ;
.; <
Identity< D
.D E
NameE I
)I J
;J K
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
ÅÅ 
db
ÇÇ 
.
ÇÇ 
Entry
ÇÇ 
(
ÇÇ 
	magazzino
ÇÇ "
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
ÇÇ@ A
db
ÉÉ 
.
ÉÉ 
SaveChanges
ÉÉ 
(
ÉÉ 
)
ÉÉ  
;
ÉÉ  !
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
ìì 	
var
îî 
me
îî 
=
îî 
db
îî 
.
îî 
Users
îî 
.
îî 
First
îî #
(
îî# $
x
îî$ %
=>
îî& (
x
îî) *
.
îî* +
UserName
îî+ 3
==
îî4 6
User
îî7 ;
.
îî; <
Identity
îî< D
.
îîD E
Name
îîE I
)
îîI J
;
îîJ K
if
ïï 
(
ïï 
id
ïï 
==
ïï 
null
ïï 
)
ïï 
{
ññ 
return
óó 
new
óó "
HttpStatusCodeResult
óó /
(
óó/ 0
HttpStatusCode
óó0 >
.
óó> ?

BadRequest
óó? I
)
óóI J
;
óóJ K
}
òò 
	Magazzino
ôô 
	magazzino
ôô 
=
ôô  !
db
ôô" $
.
ôô$ %
Magazzinoes
ôô% 0
.
ôô0 1
Find
ôô1 5
(
ôô5 6
id
ôô6 8
)
ôô8 9
;
ôô9 :
if
öö 
(
öö 
	magazzino
öö 
==
öö 
null
öö !
)
öö! "
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
ûû 
	magazzino
ûû !
)
ûû! "
;
ûû" #
}
üü 	
[
©© 	
HttpPost
©©	 
,
©© 

ActionName
©© 
(
©© 
$str
©© &
)
©©& '
]
©©' (
[
™™ 	&
ValidateAntiForgeryToken
™™	 !
]
™™! "
public
´´ 
ActionResult
´´ 
DeleteConfirmed
´´ +
(
´´+ ,
int
´´, /
id
´´0 2
)
´´2 3
{
¨¨ 	
var
≠≠ 
me
≠≠ 
=
≠≠ 
db
≠≠ 
.
≠≠ 
Users
≠≠ 
.
≠≠ 
First
≠≠ #
(
≠≠# $
x
≠≠$ %
=>
≠≠& (
x
≠≠) *
.
≠≠* +
UserName
≠≠+ 3
==
≠≠4 6
User
≠≠7 ;
.
≠≠; <
Identity
≠≠< D
.
≠≠D E
Name
≠≠E I
)
≠≠I J
;
≠≠J K
	Magazzino
ÆÆ 
	magazzino
ÆÆ 
=
ÆÆ  !
db
ÆÆ" $
.
ÆÆ$ %
Magazzinoes
ÆÆ% 0
.
ÆÆ0 1
Find
ÆÆ1 5
(
ÆÆ5 6
id
ÆÆ6 8
)
ÆÆ8 9
;
ÆÆ9 :
db
ØØ 
.
ØØ 
Magazzinoes
ØØ 
.
ØØ 
Remove
ØØ !
(
ØØ! "
	magazzino
ØØ" +
)
ØØ+ ,
;
ØØ, -
db
∞∞ 
.
∞∞ 
SaveChanges
∞∞ 
(
∞∞ 
)
∞∞ 
;
∞∞ 
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
≤≤ 	
public
ªª 
ActionResult
ªª 
AggiungiAdditivo
ªª ,
(
ªª, -
)
ªª- .
{
ºº 	
AdditiviMagazzino
ΩΩ 
am
ΩΩ  
=
ΩΩ! "
new
ΩΩ# &
AdditiviMagazzino
ΩΩ' 8
(
ΩΩ8 9
)
ΩΩ9 :
;
ΩΩ: ;
var
ææ 
me
ææ 
=
ææ 
db
ææ 
.
ææ 
Users
ææ 
.
ææ 
First
ææ #
(
ææ# $
x
ææ$ %
=>
ææ& (
x
ææ) *
.
ææ* +
UserName
ææ+ 3
==
ææ4 6
User
ææ7 ;
.
ææ; <
Identity
ææ< D
.
ææD E
Name
ææE I
)
ææI J
;
ææJ K
	Magazzino
øø 
	magazzino
øø 
=
øø  !
db
øø" $
.
øø$ %
Magazzinoes
øø% 0
.
øø0 1
FirstOrDefault
øø1 ?
(
øø? @
x
øø@ A
=>
øøB D
x
øøE F
.
øøF G
UserId
øøG M
==
øøN P
me
øøQ S
.
øøS T
Id
øøT V
)
øøV W
;
øøW X
am
¿¿ 
.
¿¿ 
	Magazzino
¿¿ 
=
¿¿ 
	magazzino
¿¿ $
;
¿¿$ %
am
¡¡ 
.
¡¡ 
MagazzinoId
¡¡ 
=
¡¡ 
	magazzino
¡¡ &
.
¡¡& '
MagazzinoId
¡¡' 2
;
¡¡2 3

SelectList
¬¬ 
Additivi
¬¬ 
=
¬¬  !
new
¬¬" %

SelectList
¬¬& 0
(
¬¬0 1
db
¬¬1 3
.
¬¬3 4
Additivi
¬¬4 <
,
¬¬< =
$str
¬¬= I
,
¬¬I J
$str
¬¬J P
)
¬¬P Q
;
¬¬Q R
ViewBag
√√ 
.
√√ 
Additivi
√√ 
=
√√ 
Additivi
√√ '
;
√√' (
return
ƒƒ 
View
ƒƒ 
(
ƒƒ 
am
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
∆∆ 	
[
–– 	
HttpPost
––	 
]
–– 
public
—— 
ActionResult
—— 
AggiungiAdditivo
—— ,
(
——, -
AdditiviMagazzino
——- >
am
——? A
)
——A B
{
““ 	
if
”” 
(
”” 

ModelState
”” 
.
”” 
IsValid
”” "
)
””" #
{
‘‘ 
db
’’ 
.
’’  
AdditiviMagazzinos
’’ %
.
’’% &
Add
’’& )
(
’’) *
am
’’* ,
)
’’, -
;
’’- .
db
÷÷ 
.
÷÷ 
SaveChanges
÷÷ 
(
÷÷ 
)
÷÷  
;
÷÷  !
return
◊◊ 
RedirectToAction
◊◊ '
(
◊◊' (
$str
◊◊( /
)
◊◊/ 0
;
◊◊0 1
}
ÿÿ 
var
ŸŸ 
me
ŸŸ 
=
ŸŸ 
db
ŸŸ 
.
ŸŸ 
Users
ŸŸ 
.
ŸŸ 
First
ŸŸ #
(
ŸŸ# $
x
ŸŸ$ %
=>
ŸŸ& (
x
ŸŸ) *
.
ŸŸ* +
UserName
ŸŸ+ 3
==
ŸŸ4 6
User
ŸŸ7 ;
.
ŸŸ; <
Identity
ŸŸ< D
.
ŸŸD E
Name
ŸŸE I
)
ŸŸI J
;
ŸŸJ K
	Magazzino
⁄⁄ 
	magazzino
⁄⁄ 
=
⁄⁄  !
db
⁄⁄" $
.
⁄⁄$ %
Magazzinoes
⁄⁄% 0
.
⁄⁄0 1
FirstOrDefault
⁄⁄1 ?
(
⁄⁄? @
x
⁄⁄@ A
=>
⁄⁄B D
x
⁄⁄E F
.
⁄⁄F G
UserId
⁄⁄G M
==
⁄⁄N P
me
⁄⁄Q S
.
⁄⁄S T
Id
⁄⁄T V
)
⁄⁄V W
;
⁄⁄W X
am
€€ 
.
€€ 
	Magazzino
€€ 
=
€€ 
	magazzino
€€ $
;
€€$ %
am
‹‹ 
.
‹‹ 
MagazzinoId
‹‹ 
=
‹‹ 
	magazzino
‹‹ &
.
‹‹& '
MagazzinoId
‹‹' 2
;
‹‹2 3

SelectList
›› 
Additivi
›› 
=
››  !
new
››" %

SelectList
››& 0
(
››0 1
db
››1 3
.
››3 4
Additivi
››4 <
,
››< =
$str
››> J
,
››J K
$str
››L R
)
››R S
;
››S T
ViewBag
ﬁﬁ 
.
ﬁﬁ 
Additivi
ﬁﬁ 
=
ﬁﬁ 
Additivi
ﬁﬁ '
;
ﬁﬁ' (
return
ﬂﬂ 
View
ﬂﬂ 
(
ﬂﬂ 
am
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
}
·· 	
	protected
ËË 
override
ËË 
void
ËË 
Dispose
ËË  '
(
ËË' (
bool
ËË( ,
	disposing
ËË- 6
)
ËË6 7
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ 
	disposing
ÍÍ 
)
ÍÍ 
{
ÎÎ 
db
ÏÏ 
.
ÏÏ 
Dispose
ÏÏ 
(
ÏÏ 
)
ÏÏ 
;
ÏÏ 
}
ÌÌ 
base
ÓÓ 
.
ÓÓ 
Dispose
ÓÓ 
(
ÓÓ 
	disposing
ÓÓ "
)
ÓÓ" #
;
ÓÓ# $
}
ÔÔ 	
}
 
}ÒÒ Ñ@
MC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\MaltisController.cs
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
MaltisController !
:" #

Controller$ .
{ 
private  
ApplicationDbContext $
db% '
=( )
new* - 
ApplicationDbContext. B
(B C
)C D
;D E
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
db 
. 
Malti  
.  !
ToList! '
(' (
)( )
)) *
;* +
} 	
public 
ActionResult 
Details #
(# $
int$ '
?' (
id) +
)+ ,
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
new  
HttpStatusCodeResult /
(/ 0
HttpStatusCode0 >
.> ?

BadRequest? I
)I J
;J K
} 
Malti 
malti 
= 
db 
. 
Malti "
." #
Find# '
(' (
id( *
)* +
;+ ,
if 
( 
malti 
== 
null 
) 
{ 
return   
HttpNotFound   #
(  # $
)  $ %
;  % &
}!! 
return"" 
View"" 
("" 
malti"" 
)"" 
;"" 
}## 	
public&& 
ActionResult&& 
Create&& "
(&&" #
)&&# $
{'' 	
Malti(( 
m(( 
=(( 
new(( 
Malti(( 
(((  
)((  !
;((! "
m)) 
.)) 
UserId)) 
=)) 
User)) 
.)) 
Identity)) $
.))$ %
	GetUserId))% .
()). /
)))/ 0
;))0 1
return** 
View** 
(** 
m** 
)** 
;** 
}++ 	
[00 	
HttpPost00	 
]00 
[11 	$
ValidateAntiForgeryToken11	 !
]11! "
public22 
ActionResult22 
Create22 "
(22" #
[22# $
Bind22$ (
(22( )
Include22) 0
=221 2
$str223 Z
)22Z [
]22[ \
Malti22] b
malti22c h
)22h i
{33 	
if44 
(44 

ModelState44 
.44 
IsValid44 "
)44" #
{55 
db66 
.66 
Malti66 
.66 
Add66 
(66 
malti66 "
)66" #
;66# $
db77 
.77 
SaveChanges77 
(77 
)77  
;77  !
return88 
RedirectToAction88 '
(88' (
$str88( /
)88/ 0
;880 1
}99 
return;; 
View;; 
(;; 
malti;; 
);; 
;;; 
}<< 	
public?? 
ActionResult?? 
Edit??  
(??  !
int??! $
???$ %
id??& (
)??( )
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
}DD 
MaltiEE 
maltiEE 
=EE 
dbEE 
.EE 
MaltiEE "
.EE" #
FindEE# '
(EE' (
idEE( *
)EE* +
;EE+ ,
ifFF 
(FF 
maltiFF 
==FF 
nullFF 
)FF 
{GG 
returnHH 
HttpNotFoundHH #
(HH# $
)HH$ %
;HH% &
}II 
returnJJ 
ViewJJ 
(JJ 
maltiJJ 
)JJ 
;JJ 
}KK 	
[PP 	
HttpPostPP	 
]PP 
[QQ 	$
ValidateAntiForgeryTokenQQ	 !
]QQ! "
publicRR 
ActionResultRR 
EditRR  
(RR  !
[RR! "
BindRR" &
(RR& '
IncludeRR' .
=RR/ 0
$strRR1 X
)RRX Y
]RRY Z
MaltiRR[ `
maltiRRa f
)RRf g
{SS 	
ifTT 
(TT 

ModelStateTT 
.TT 
IsValidTT "
)TT" #
{UU 
dbVV 
.VV 
EntryVV 
(VV 
maltiVV 
)VV 
.VV  
StateVV  %
=VV& '
EntityStateVV( 3
.VV3 4
ModifiedVV4 <
;VV< =
dbWW 
.WW 
SaveChangesWW 
(WW 
)WW  
;WW  !
returnXX 
RedirectToActionXX '
(XX' (
$strXX( /
)XX/ 0
;XX0 1
}YY 
returnZZ 
ViewZZ 
(ZZ 
maltiZZ 
)ZZ 
;ZZ 
}[[ 	
public^^ 
ActionResult^^ 
Delete^^ "
(^^" #
int^^# &
?^^& '
id^^( *
)^^* +
{__ 	
if`` 
(`` 
id`` 
==`` 
null`` 
)`` 
{aa 
returnbb 
newbb  
HttpStatusCodeResultbb /
(bb/ 0
HttpStatusCodebb0 >
.bb> ?

BadRequestbb? I
)bbI J
;bbJ K
}cc 
Maltidd 
maltidd 
=dd 
dbdd 
.dd 
Maltidd "
.dd" #
Finddd# '
(dd' (
iddd( *
)dd* +
;dd+ ,
ifee 
(ee 
maltiee 
==ee 
nullee 
)ee 
{ff 
returngg 
HttpNotFoundgg #
(gg# $
)gg$ %
;gg% &
}hh 
returnii 
Viewii 
(ii 
maltiii 
)ii 
;ii 
}jj 	
[mm 	
HttpPostmm	 
,mm 

ActionNamemm 
(mm 
$strmm &
)mm& '
]mm' (
[nn 	$
ValidateAntiForgeryTokennn	 !
]nn! "
publicoo 
ActionResultoo 
DeleteConfirmedoo +
(oo+ ,
intoo, /
idoo0 2
)oo2 3
{pp 	
Maltiqq 
maltiqq 
=qq 
dbqq 
.qq 
Maltiqq "
.qq" #
Findqq# '
(qq' (
idqq( *
)qq* +
;qq+ ,
dbrr 
.rr 
Maltirr 
.rr 
Removerr 
(rr 
maltirr !
)rr! "
;rr" #
dbss 
.ss 
SaveChangesss 
(ss 
)ss 
;ss 
returntt 
RedirectToActiontt #
(tt# $
$strtt$ +
)tt+ ,
;tt, -
}uu 	
	protectedww 
overrideww 
voidww 
Disposeww  '
(ww' (
boolww( ,
	disposingww- 6
)ww6 7
{xx 	
ifyy 
(yy 
	disposingyy 
)yy 
{zz 
db{{ 
.{{ 
Dispose{{ 
({{ 
){{ 
;{{ 
}|| 
base}} 
.}} 
Dispose}} 
(}} 
	disposing}} "
)}}" #
;}}# $
}~~ 	
} 
}ÄÄ ‰é
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
get 
{ 
return   
_signInManager   %
??  & (
HttpContext  ) 4
.  4 5
GetOwinContext  5 C
(  C D
)  D E
.  E F
Get  F I
<  I J$
ApplicationSignInManager  J b
>  b c
(  c d
)  d e
;  e f
}!! 
private"" 
set"" 
{## 
_signInManager$$ 
=$$  
value$$! &
;$$& '
}%% 
}&& 	
public(( "
ApplicationUserManager(( %
UserManager((& 1
{)) 	
get** 
{++ 
return,, 
_userManager,, #
??,,$ &
HttpContext,,' 2
.,,2 3
GetOwinContext,,3 A
(,,A B
),,B C
.,,C D
GetUserManager,,D R
<,,R S"
ApplicationUserManager,,S i
>,,i j
(,,j k
),,k l
;,,l m
}-- 
private.. 
set.. 
{// 
_userManager00 
=00 
value00 $
;00$ %
}11 
}22 	
public66 
async66 
Task66 
<66 
ActionResult66 &
>66& '
Index66( -
(66- .
ManageMessageId66. =
?66= >
message66? F
)66F G
{77 	
ViewBag88 
.88 
StatusMessage88 !
=88" #
message99 
==99 
ManageMessageId99 *
.99* +!
ChangePasswordSuccess99+ @
?99A B
$str99C b
::: 
message:: 
==:: 
ManageMessageId:: ,
.::, -
SetPasswordSuccess::- ?
?::@ A
$str::B b
:;; 
message;; 
==;; 
ManageMessageId;; ,
.;;, -
SetTwoFactorSuccess;;- @
?;;A B
$str	;;C É
:<< 
message<< 
==<< 
ManageMessageId<< ,
.<<, -
Error<<- 2
?<<3 4
$str<<5 Q
:== 
message== 
==== 
ManageMessageId== ,
.==, -
AddPhoneSuccess==- <
?=== >
$str==? h
:>> 
message>> 
==>> 
ManageMessageId>> ,
.>>, -
RemovePhoneSuccess>>- ?
?>>@ A
$str>>B j
:?? 
$str?? 
;?? 
varAA 
userIdAA 
=AA 
UserAA 
.AA 
IdentityAA &
.AA& '
	GetUserIdAA' 0
(AA0 1
)AA1 2
;AA2 3
varBB 
modelBB 
=BB 
newBB 
IndexViewModelBB *
{CC 
HasPasswordDD 
=DD 
HasPasswordDD )
(DD) *
)DD* +
,DD+ ,
PhoneNumberEE 
=EE 
awaitEE #
UserManagerEE$ /
.EE/ 0
GetPhoneNumberAsyncEE0 C
(EEC D
userIdEED J
)EEJ K
,EEK L
	TwoFactorFF 
=FF 
awaitFF !
UserManagerFF" -
.FF- .$
GetTwoFactorEnabledAsyncFF. F
(FFF G
userIdFFG M
)FFM N
,FFN O
LoginsGG 
=GG 
awaitGG 
UserManagerGG *
.GG* +
GetLoginsAsyncGG+ 9
(GG9 :
userIdGG: @
)GG@ A
,GGA B
BrowserRememberedHH !
=HH" #
awaitHH$ )!
AuthenticationManagerHH* ?
.HH? @+
TwoFactorBrowserRememberedAsyncHH@ _
(HH_ `
userIdHH` f
)HHf g
}II 
;II 
returnJJ 
ViewJJ 
(JJ 
modelJJ 
)JJ 
;JJ 
}KK 	
[OO 	
HttpPostOO	 
]OO 
[PP 	$
ValidateAntiForgeryTokenPP	 !
]PP! "
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
ActionResultQQ &
>QQ& '
RemoveLoginQQ( 3
(QQ3 4
stringQQ4 :
loginProviderQQ; H
,QQH I
stringQQJ P
providerKeyQQQ \
)QQ\ ]
{RR 	
ManageMessageIdSS 
?SS 
messageSS $
;SS$ %
varTT 
resultTT 
=TT 
awaitTT 
UserManagerTT *
.TT* +
RemoveLoginAsyncTT+ ;
(TT; <
UserTT< @
.TT@ A
IdentityTTA I
.TTI J
	GetUserIdTTJ S
(TTS T
)TTT U
,TTU V
newTTW Z
UserLoginInfoTT[ h
(TTh i
loginProviderTTi v
,TTv w
providerKey	TTx É
)
TTÉ Ñ
)
TTÑ Ö
;
TTÖ Ü
ifUU 
(UU 
resultUU 
.UU 
	SucceededUU  
)UU  !
{VV 
varWW 
userWW 
=WW 
awaitWW  
UserManagerWW! ,
.WW, -
FindByIdAsyncWW- :
(WW: ;
UserWW; ?
.WW? @
IdentityWW@ H
.WWH I
	GetUserIdWWI R
(WWR S
)WWS T
)WWT U
;WWU V
ifXX 
(XX 
userXX 
!=XX 
nullXX  
)XX  !
{YY 
awaitZZ 
SignInManagerZZ '
.ZZ' (
SignInAsyncZZ( 3
(ZZ3 4
userZZ4 8
,ZZ8 9
isPersistentZZ: F
:ZZF G
falseZZH M
,ZZM N
rememberBrowserZZO ^
:ZZ^ _
falseZZ` e
)ZZe f
;ZZf g
}[[ 
message\\ 
=\\ 
ManageMessageId\\ )
.\\) *
RemoveLoginSuccess\\* <
;\\< =
}]] 
else^^ 
{__ 
message`` 
=`` 
ManageMessageId`` )
.``) *
Error``* /
;``/ 0
}aa 
returnbb 
RedirectToActionbb #
(bb# $
$strbb$ 2
,bb2 3
newbb4 7
{bb8 9
Messagebb: A
=bbB C
messagebbD K
}bbL M
)bbM N
;bbN O
}cc 	
publicgg 
ActionResultgg 
AddPhoneNumbergg *
(gg* +
)gg+ ,
{hh 	
returnii 
Viewii 
(ii 
)ii 
;ii 
}jj 	
[nn 	
HttpPostnn	 
]nn 
[oo 	$
ValidateAntiForgeryTokenoo	 !
]oo! "
publicpp 
asyncpp 
Taskpp 
<pp 
ActionResultpp &
>pp& '
AddPhoneNumberpp( 6
(pp6 7#
AddPhoneNumberViewModelpp7 N
modelppO T
)ppT U
{qq 	
ifrr 
(rr 
!rr 

ModelStaterr 
.rr 
IsValidrr #
)rr# $
{ss 
returntt 
Viewtt 
(tt 
modeltt !
)tt! "
;tt" #
}uu 
varww 
codeww 
=ww 
awaitww 
UserManagerww (
.ww( )/
#GenerateChangePhoneNumberTokenAsyncww) L
(wwL M
UserwwM Q
.wwQ R
IdentitywwR Z
.wwZ [
	GetUserIdww[ d
(wwd e
)wwe f
,wwf g
modelwwh m
.wwm n
Numberwwn t
)wwt u
;wwu v
ifxx 
(xx 
UserManagerxx 
.xx 

SmsServicexx &
!=xx' )
nullxx* .
)xx. /
{yy 
varzz 
messagezz 
=zz 
newzz !
IdentityMessagezz" 1
{{{ 
Destination|| 
=||  !
model||" '
.||' (
Number||( .
,||. /
Body}} 
=}} 
$str}} 7
+}}8 9
code}}: >
}~~ 
;~~ 
await 
UserManager !
.! "

SmsService" ,
., -
	SendAsync- 6
(6 7
message7 >
)> ?
;? @
}
ÄÄ 
return
ÅÅ 
RedirectToAction
ÅÅ #
(
ÅÅ# $
$str
ÅÅ$ 7
,
ÅÅ7 8
new
ÅÅ9 <
{
ÅÅ= >
PhoneNumber
ÅÅ? J
=
ÅÅK L
model
ÅÅM R
.
ÅÅR S
Number
ÅÅS Y
}
ÅÅZ [
)
ÅÅ[ \
;
ÅÅ\ ]
}
ÇÇ 	
[
ÜÜ 	
HttpPost
ÜÜ	 
]
ÜÜ 
[
áá 	&
ValidateAntiForgeryToken
áá	 !
]
áá! "
public
àà 
async
àà 
Task
àà 
<
àà 
ActionResult
àà &
>
àà& '+
EnableTwoFactorAuthentication
àà( E
(
ààE F
)
ààF G
{
ââ 	
await
ää 
UserManager
ää 
.
ää &
SetTwoFactorEnabledAsync
ää 6
(
ää6 7
User
ää7 ;
.
ää; <
Identity
ää< D
.
ääD E
	GetUserId
ääE N
(
ääN O
)
ääO P
,
ääP Q
true
ääR V
)
ääV W
;
ääW X
var
ãã 
user
ãã 
=
ãã 
await
ãã 
UserManager
ãã (
.
ãã( )
FindByIdAsync
ãã) 6
(
ãã6 7
User
ãã7 ;
.
ãã; <
Identity
ãã< D
.
ããD E
	GetUserId
ããE N
(
ããN O
)
ããO P
)
ããP Q
;
ããQ R
if
åå 
(
åå 
user
åå 
!=
åå 
null
åå 
)
åå 
{
çç 
await
éé 
SignInManager
éé #
.
éé# $
SignInAsync
éé$ /
(
éé/ 0
user
éé0 4
,
éé4 5
isPersistent
éé6 B
:
ééB C
false
ééD I
,
ééI J
rememberBrowser
ééK Z
:
ééZ [
false
éé\ a
)
ééa b
;
ééb c
}
èè 
return
êê 
RedirectToAction
êê #
(
êê# $
$str
êê$ +
,
êê+ ,
$str
êê- 5
)
êê5 6
;
êê6 7
}
ëë 	
[
ïï 	
HttpPost
ïï	 
]
ïï 
[
ññ 	&
ValidateAntiForgeryToken
ññ	 !
]
ññ! "
public
óó 
async
óó 
Task
óó 
<
óó 
ActionResult
óó &
>
óó& ',
DisableTwoFactorAuthentication
óó( F
(
óóF G
)
óóG H
{
òò 	
await
ôô 
UserManager
ôô 
.
ôô &
SetTwoFactorEnabledAsync
ôô 6
(
ôô6 7
User
ôô7 ;
.
ôô; <
Identity
ôô< D
.
ôôD E
	GetUserId
ôôE N
(
ôôN O
)
ôôO P
,
ôôP Q
false
ôôR W
)
ôôW X
;
ôôX Y
var
öö 
user
öö 
=
öö 
await
öö 
UserManager
öö (
.
öö( )
FindByIdAsync
öö) 6
(
öö6 7
User
öö7 ;
.
öö; <
Identity
öö< D
.
ööD E
	GetUserId
ööE N
(
ööN O
)
ööO P
)
ööP Q
;
ööQ R
if
õõ 
(
õõ 
user
õõ 
!=
õõ 
null
õõ 
)
õõ 
{
úú 
await
ùù 
SignInManager
ùù #
.
ùù# $
SignInAsync
ùù$ /
(
ùù/ 0
user
ùù0 4
,
ùù4 5
isPersistent
ùù6 B
:
ùùB C
false
ùùD I
,
ùùI J
rememberBrowser
ùùK Z
:
ùùZ [
false
ùù\ a
)
ùùa b
;
ùùb c
}
ûû 
return
üü 
RedirectToAction
üü #
(
üü# $
$str
üü$ +
,
üü+ ,
$str
üü- 5
)
üü5 6
;
üü6 7
}
†† 	
public
§§ 
async
§§ 
Task
§§ 
<
§§ 
ActionResult
§§ &
>
§§& '
VerifyPhoneNumber
§§( 9
(
§§9 :
string
§§: @
phoneNumber
§§A L
)
§§L M
{
•• 	
var
¶¶ 
code
¶¶ 
=
¶¶ 
await
¶¶ 
UserManager
¶¶ (
.
¶¶( )1
#GenerateChangePhoneNumberTokenAsync
¶¶) L
(
¶¶L M
User
¶¶M Q
.
¶¶Q R
Identity
¶¶R Z
.
¶¶Z [
	GetUserId
¶¶[ d
(
¶¶d e
)
¶¶e f
,
¶¶f g
phoneNumber
¶¶h s
)
¶¶s t
;
¶¶t u
return
®® 
phoneNumber
®® 
==
®® !
null
®®" &
?
®®' (
View
®®) -
(
®®- .
$str
®®. 5
)
®®5 6
:
®®7 8
View
®®9 =
(
®®= >
new
®®> A(
VerifyPhoneNumberViewModel
®®B \
{
®®] ^
PhoneNumber
®®_ j
=
®®k l
phoneNumber
®®m x
}
®®y z
)
®®z {
;
®®{ |
}
©© 	
[
≠≠ 	
HttpPost
≠≠	 
]
≠≠ 
[
ÆÆ 	&
ValidateAntiForgeryToken
ÆÆ	 !
]
ÆÆ! "
public
ØØ 
async
ØØ 
Task
ØØ 
<
ØØ 
ActionResult
ØØ &
>
ØØ& '
VerifyPhoneNumber
ØØ( 9
(
ØØ9 :(
VerifyPhoneNumberViewModel
ØØ: T
model
ØØU Z
)
ØØZ [
{
∞∞ 	
if
±± 
(
±± 
!
±± 

ModelState
±± 
.
±± 
IsValid
±± #
)
±±# $
{
≤≤ 
return
≥≥ 
View
≥≥ 
(
≥≥ 
model
≥≥ !
)
≥≥! "
;
≥≥" #
}
¥¥ 
var
µµ 
result
µµ 
=
µµ 
await
µµ 
UserManager
µµ *
.
µµ* +$
ChangePhoneNumberAsync
µµ+ A
(
µµA B
User
µµB F
.
µµF G
Identity
µµG O
.
µµO P
	GetUserId
µµP Y
(
µµY Z
)
µµZ [
,
µµ[ \
model
µµ] b
.
µµb c
PhoneNumber
µµc n
,
µµn o
model
µµp u
.
µµu v
Code
µµv z
)
µµz {
;
µµ{ |
if
∂∂ 
(
∂∂ 
result
∂∂ 
.
∂∂ 
	Succeeded
∂∂  
)
∂∂  !
{
∑∑ 
var
∏∏ 
user
∏∏ 
=
∏∏ 
await
∏∏  
UserManager
∏∏! ,
.
∏∏, -
FindByIdAsync
∏∏- :
(
∏∏: ;
User
∏∏; ?
.
∏∏? @
Identity
∏∏@ H
.
∏∏H I
	GetUserId
∏∏I R
(
∏∏R S
)
∏∏S T
)
∏∏T U
;
∏∏U V
if
ππ 
(
ππ 
user
ππ 
!=
ππ 
null
ππ  
)
ππ  !
{
∫∫ 
await
ªª 
SignInManager
ªª '
.
ªª' (
SignInAsync
ªª( 3
(
ªª3 4
user
ªª4 8
,
ªª8 9
isPersistent
ªª: F
:
ªªF G
false
ªªH M
,
ªªM N
rememberBrowser
ªªO ^
:
ªª^ _
false
ªª` e
)
ªªe f
;
ªªf g
}
ºº 
return
ΩΩ 
RedirectToAction
ΩΩ '
(
ΩΩ' (
$str
ΩΩ( /
,
ΩΩ/ 0
new
ΩΩ1 4
{
ΩΩ5 6
Message
ΩΩ7 >
=
ΩΩ? @
ManageMessageId
ΩΩA P
.
ΩΩP Q
AddPhoneSuccess
ΩΩQ `
}
ΩΩa b
)
ΩΩb c
;
ΩΩc d
}
ææ 

ModelState
¿¿ 
.
¿¿ 
AddModelError
¿¿ $
(
¿¿$ %
$str
¿¿% '
,
¿¿' (
$str
¿¿) W
)
¿¿W X
;
¿¿X Y
return
¡¡ 
View
¡¡ 
(
¡¡ 
model
¡¡ 
)
¡¡ 
;
¡¡ 
}
¬¬ 	
[
∆∆ 	
HttpPost
∆∆	 
]
∆∆ 
[
«« 	&
ValidateAntiForgeryToken
««	 !
]
««! "
public
»» 
async
»» 
Task
»» 
<
»» 
ActionResult
»» &
>
»»& '
RemovePhoneNumber
»»( 9
(
»»9 :
)
»»: ;
{
…… 	
var
   
result
   
=
   
await
   
UserManager
   *
.
  * +!
SetPhoneNumberAsync
  + >
(
  > ?
User
  ? C
.
  C D
Identity
  D L
.
  L M
	GetUserId
  M V
(
  V W
)
  W X
,
  X Y
null
  Z ^
)
  ^ _
;
  _ `
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 
result
ÀÀ 
.
ÀÀ 
	Succeeded
ÀÀ !
)
ÀÀ! "
{
ÃÃ 
return
ÕÕ 
RedirectToAction
ÕÕ '
(
ÕÕ' (
$str
ÕÕ( /
,
ÕÕ/ 0
new
ÕÕ1 4
{
ÕÕ5 6
Message
ÕÕ7 >
=
ÕÕ? @
ManageMessageId
ÕÕA P
.
ÕÕP Q
Error
ÕÕQ V
}
ÕÕW X
)
ÕÕX Y
;
ÕÕY Z
}
ŒŒ 
var
œœ 
user
œœ 
=
œœ 
await
œœ 
UserManager
œœ (
.
œœ( )
FindByIdAsync
œœ) 6
(
œœ6 7
User
œœ7 ;
.
œœ; <
Identity
œœ< D
.
œœD E
	GetUserId
œœE N
(
œœN O
)
œœO P
)
œœP Q
;
œœQ R
if
–– 
(
–– 
user
–– 
!=
–– 
null
–– 
)
–– 
{
—— 
await
““ 
SignInManager
““ #
.
““# $
SignInAsync
““$ /
(
““/ 0
user
““0 4
,
““4 5
isPersistent
““6 B
:
““B C
false
““D I
,
““I J
rememberBrowser
““K Z
:
““Z [
false
““\ a
)
““a b
;
““b c
}
”” 
return
‘‘ 
RedirectToAction
‘‘ #
(
‘‘# $
$str
‘‘$ +
,
‘‘+ ,
new
‘‘- 0
{
‘‘1 2
Message
‘‘3 :
=
‘‘; <
ManageMessageId
‘‘= L
.
‘‘L M 
RemovePhoneSuccess
‘‘M _
}
‘‘` a
)
‘‘a b
;
‘‘b c
}
’’ 	
public
ŸŸ 
ActionResult
ŸŸ 
ChangePassword
ŸŸ *
(
ŸŸ* +
)
ŸŸ+ ,
{
⁄⁄ 	
return
€€ 
View
€€ 
(
€€ 
)
€€ 
;
€€ 
}
‹‹ 	
[
‡‡ 	
HttpPost
‡‡	 
]
‡‡ 
[
·· 	&
ValidateAntiForgeryToken
··	 !
]
··! "
public
‚‚ 
async
‚‚ 
Task
‚‚ 
<
‚‚ 
ActionResult
‚‚ &
>
‚‚& '
ChangePassword
‚‚( 6
(
‚‚6 7%
ChangePasswordViewModel
‚‚7 N
model
‚‚O T
)
‚‚T U
{
„„ 	
if
‰‰ 
(
‰‰ 
!
‰‰ 

ModelState
‰‰ 
.
‰‰ 
IsValid
‰‰ #
)
‰‰# $
{
ÂÂ 
return
ÊÊ 
View
ÊÊ 
(
ÊÊ 
model
ÊÊ !
)
ÊÊ! "
;
ÊÊ" #
}
ÁÁ 
var
ËË 
result
ËË 
=
ËË 
await
ËË 
UserManager
ËË *
.
ËË* +!
ChangePasswordAsync
ËË+ >
(
ËË> ?
User
ËË? C
.
ËËC D
Identity
ËËD L
.
ËËL M
	GetUserId
ËËM V
(
ËËV W
)
ËËW X
,
ËËX Y
model
ËËZ _
.
ËË_ `
OldPassword
ËË` k
,
ËËk l
model
ËËm r
.
ËËr s
NewPassword
ËËs ~
)
ËË~ 
;ËË Ä
if
ÈÈ 
(
ÈÈ 
result
ÈÈ 
.
ÈÈ 
	Succeeded
ÈÈ  
)
ÈÈ  !
{
ÍÍ 
var
ÎÎ 
user
ÎÎ 
=
ÎÎ 
await
ÎÎ  
UserManager
ÎÎ! ,
.
ÎÎ, -
FindByIdAsync
ÎÎ- :
(
ÎÎ: ;
User
ÎÎ; ?
.
ÎÎ? @
Identity
ÎÎ@ H
.
ÎÎH I
	GetUserId
ÎÎI R
(
ÎÎR S
)
ÎÎS T
)
ÎÎT U
;
ÎÎU V
if
ÏÏ 
(
ÏÏ 
user
ÏÏ 
!=
ÏÏ 
null
ÏÏ  
)
ÏÏ  !
{
ÌÌ 
await
ÓÓ 
SignInManager
ÓÓ '
.
ÓÓ' (
SignInAsync
ÓÓ( 3
(
ÓÓ3 4
user
ÓÓ4 8
,
ÓÓ8 9
isPersistent
ÓÓ: F
:
ÓÓF G
false
ÓÓH M
,
ÓÓM N
rememberBrowser
ÓÓO ^
:
ÓÓ^ _
false
ÓÓ` e
)
ÓÓe f
;
ÓÓf g
}
ÔÔ 
return
 
RedirectToAction
 '
(
' (
$str
( /
,
/ 0
new
1 4
{
5 6
Message
7 >
=
? @
ManageMessageId
A P
.
P Q#
ChangePasswordSuccess
Q f
}
g h
)
h i
;
i j
}
ÒÒ 
	AddErrors
ÚÚ 
(
ÚÚ 
result
ÚÚ 
)
ÚÚ 
;
ÚÚ 
return
ÛÛ 
View
ÛÛ 
(
ÛÛ 
model
ÛÛ 
)
ÛÛ 
;
ÛÛ 
}
ÙÙ 	
public
¯¯ 
ActionResult
¯¯ 
SetPassword
¯¯ '
(
¯¯' (
)
¯¯( )
{
˘˘ 	
return
˙˙ 
View
˙˙ 
(
˙˙ 
)
˙˙ 
;
˙˙ 
}
˚˚ 	
[
ˇˇ 	
HttpPost
ˇˇ	 
]
ˇˇ 
[
ÄÄ 	&
ValidateAntiForgeryToken
ÄÄ	 !
]
ÄÄ! "
public
ÅÅ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
ActionResult
ÅÅ &
>
ÅÅ& '
SetPassword
ÅÅ( 3
(
ÅÅ3 4"
SetPasswordViewModel
ÅÅ4 H
model
ÅÅI N
)
ÅÅN O
{
ÇÇ 	
if
ÉÉ 
(
ÉÉ 

ModelState
ÉÉ 
.
ÉÉ 
IsValid
ÉÉ "
)
ÉÉ" #
{
ÑÑ 
var
ÖÖ 
result
ÖÖ 
=
ÖÖ 
await
ÖÖ "
UserManager
ÖÖ# .
.
ÖÖ. /
AddPasswordAsync
ÖÖ/ ?
(
ÖÖ? @
User
ÖÖ@ D
.
ÖÖD E
Identity
ÖÖE M
.
ÖÖM N
	GetUserId
ÖÖN W
(
ÖÖW X
)
ÖÖX Y
,
ÖÖY Z
model
ÖÖ[ `
.
ÖÖ` a
NewPassword
ÖÖa l
)
ÖÖl m
;
ÖÖm n
if
ÜÜ 
(
ÜÜ 
result
ÜÜ 
.
ÜÜ 
	Succeeded
ÜÜ $
)
ÜÜ$ %
{
áá 
var
àà 
user
àà 
=
àà 
await
àà $
UserManager
àà% 0
.
àà0 1
FindByIdAsync
àà1 >
(
àà> ?
User
àà? C
.
ààC D
Identity
ààD L
.
ààL M
	GetUserId
ààM V
(
ààV W
)
ààW X
)
ààX Y
;
ààY Z
if
ââ 
(
ââ 
user
ââ 
!=
ââ 
null
ââ  $
)
ââ$ %
{
ää 
await
ãã 
SignInManager
ãã +
.
ãã+ ,
SignInAsync
ãã, 7
(
ãã7 8
user
ãã8 <
,
ãã< =
isPersistent
ãã> J
:
ããJ K
false
ããL Q
,
ããQ R
rememberBrowser
ããS b
:
ããb c
false
ããd i
)
ããi j
;
ããj k
}
åå 
return
çç 
RedirectToAction
çç +
(
çç+ ,
$str
çç, 3
,
çç3 4
new
çç5 8
{
çç9 :
Message
çç; B
=
ççC D
ManageMessageId
ççE T
.
ççT U 
SetPasswordSuccess
ççU g
}
ççh i
)
ççi j
;
ççj k
}
éé 
	AddErrors
èè 
(
èè 
result
èè  
)
èè  !
;
èè! "
}
êê 
return
ìì 
View
ìì 
(
ìì 
model
ìì 
)
ìì 
;
ìì 
}
îî 	
public
òò 
async
òò 
Task
òò 
<
òò 
ActionResult
òò &
>
òò& '
ManageLogins
òò( 4
(
òò4 5
ManageMessageId
òò5 D
?
òòD E
message
òòF M
)
òòM N
{
ôô 	
ViewBag
öö 
.
öö 
StatusMessage
öö !
=
öö" #
message
õõ 
==
õõ 
ManageMessageId
õõ *
.
õõ* + 
RemoveLoginSuccess
õõ+ =
?
õõ> ?
$str
õõ@ o
:
úú 
message
úú 
==
úú 
ManageMessageId
úú ,
.
úú, -
Error
úú- 2
?
úú3 4
$str
úú5 Q
:
ùù 
$str
ùù 
;
ùù 
var
ûû 
user
ûû 
=
ûû 
await
ûû 
UserManager
ûû (
.
ûû( )
FindByIdAsync
ûû) 6
(
ûû6 7
User
ûû7 ;
.
ûû; <
Identity
ûû< D
.
ûûD E
	GetUserId
ûûE N
(
ûûN O
)
ûûO P
)
ûûP Q
;
ûûQ R
if
üü 
(
üü 
user
üü 
==
üü 
null
üü 
)
üü 
{
†† 
return
°° 
View
°° 
(
°° 
$str
°° #
)
°°# $
;
°°$ %
}
¢¢ 
var
££ 

userLogins
££ 
=
££ 
await
££ "
UserManager
££# .
.
££. /
GetLoginsAsync
££/ =
(
££= >
User
££> B
.
££B C
Identity
££C K
.
££K L
	GetUserId
££L U
(
££U V
)
££V W
)
££W X
;
££X Y
var
§§ 
otherLogins
§§ 
=
§§ #
AuthenticationManager
§§ 3
.
§§3 4,
GetExternalAuthenticationTypes
§§4 R
(
§§R S
)
§§S T
.
§§T U
Where
§§U Z
(
§§Z [
auth
§§[ _
=>
§§` b

userLogins
§§c m
.
§§m n
All
§§n q
(
§§q r
ul
§§r t
=>
§§u w
auth
§§x |
.
§§| }!
AuthenticationType§§} è
!=§§ê í
ul§§ì ï
.§§ï ñ
LoginProvider§§ñ £
)§§£ §
)§§§ •
.§§• ¶
ToList§§¶ ¨
(§§¨ ≠
)§§≠ Æ
;§§Æ Ø
ViewBag
•• 
.
•• 
ShowRemoveButton
•• $
=
••% &
user
••' +
.
••+ ,
PasswordHash
••, 8
!=
••9 ;
null
••< @
||
••A C

userLogins
••D N
.
••N O
Count
••O T
>
••U V
$num
••W X
;
••X Y
return
¶¶ 
View
¶¶ 
(
¶¶ 
new
¶¶ #
ManageLoginsViewModel
¶¶ 1
{
ßß 
CurrentLogins
®® 
=
®® 

userLogins
®®  *
,
®®* +
OtherLogins
©© 
=
©© 
otherLogins
©© )
}
™™ 
)
™™ 
;
™™ 
}
´´ 	
[
ØØ 	
HttpPost
ØØ	 
]
ØØ 
[
∞∞ 	&
ValidateAntiForgeryToken
∞∞	 !
]
∞∞! "
public
±± 
ActionResult
±± 
	LinkLogin
±± %
(
±±% &
string
±±& ,
provider
±±- 5
)
±±5 6
{
≤≤ 	
return
¥¥ 
new
¥¥ 
AccountController
¥¥ (
.
¥¥( )
ChallengeResult
¥¥) 8
(
¥¥8 9
provider
¥¥9 A
,
¥¥A B
Url
¥¥C F
.
¥¥F G
Action
¥¥G M
(
¥¥M N
$str
¥¥N a
,
¥¥a b
$str
¥¥c k
)
¥¥k l
,
¥¥l m
User
¥¥n r
.
¥¥r s
Identity
¥¥s {
.
¥¥{ |
	GetUserId¥¥| Ö
(¥¥Ö Ü
)¥¥Ü á
)¥¥á à
;¥¥à â
}
µµ 	
public
ππ 
async
ππ 
Task
ππ 
<
ππ 
ActionResult
ππ &
>
ππ& '
LinkLoginCallback
ππ( 9
(
ππ9 :
)
ππ: ;
{
∫∫ 	
var
ªª 
	loginInfo
ªª 
=
ªª 
await
ªª !#
AuthenticationManager
ªª" 7
.
ªª7 8'
GetExternalLoginInfoAsync
ªª8 Q
(
ªªQ R
XsrfKey
ªªR Y
,
ªªY Z
User
ªª[ _
.
ªª_ `
Identity
ªª` h
.
ªªh i
	GetUserId
ªªi r
(
ªªr s
)
ªªs t
)
ªªt u
;
ªªu v
if
ºº 
(
ºº 
	loginInfo
ºº 
==
ºº 
null
ºº !
)
ºº! "
{
ΩΩ 
return
ææ 
RedirectToAction
ææ '
(
ææ' (
$str
ææ( 6
,
ææ6 7
new
ææ8 ;
{
ææ< =
Message
ææ> E
=
ææF G
ManageMessageId
ææH W
.
ææW X
Error
ææX ]
}
ææ^ _
)
ææ_ `
;
ææ` a
}
øø 
var
¿¿ 
result
¿¿ 
=
¿¿ 
await
¿¿ 
UserManager
¿¿ *
.
¿¿* +
AddLoginAsync
¿¿+ 8
(
¿¿8 9
User
¿¿9 =
.
¿¿= >
Identity
¿¿> F
.
¿¿F G
	GetUserId
¿¿G P
(
¿¿P Q
)
¿¿Q R
,
¿¿R S
	loginInfo
¿¿T ]
.
¿¿] ^
Login
¿¿^ c
)
¿¿c d
;
¿¿d e
return
¡¡ 
result
¡¡ 
.
¡¡ 
	Succeeded
¡¡ #
?
¡¡$ %
RedirectToAction
¡¡& 6
(
¡¡6 7
$str
¡¡7 E
)
¡¡E F
:
¡¡G H
RedirectToAction
¡¡I Y
(
¡¡Y Z
$str
¡¡Z h
,
¡¡h i
new
¡¡j m
{
¡¡n o
Message
¡¡p w
=
¡¡x y
ManageMessageId¡¡z â
.¡¡â ä
Error¡¡ä è
}¡¡ê ë
)¡¡ë í
;¡¡í ì
}
¬¬ 	
	protected
ƒƒ 
override
ƒƒ 
void
ƒƒ 
Dispose
ƒƒ  '
(
ƒƒ' (
bool
ƒƒ( ,
	disposing
ƒƒ- 6
)
ƒƒ6 7
{
≈≈ 	
if
∆∆ 
(
∆∆ 
	disposing
∆∆ 
&&
∆∆ 
_userManager
∆∆ )
!=
∆∆* ,
null
∆∆- 1
)
∆∆1 2
{
«« 
_userManager
»» 
.
»» 
Dispose
»» $
(
»»$ %
)
»»% &
;
»»& '
_userManager
…… 
=
…… 
null
…… #
;
……# $
}
   
base
ÃÃ 
.
ÃÃ 
Dispose
ÃÃ 
(
ÃÃ 
	disposing
ÃÃ "
)
ÃÃ" #
;
ÃÃ# $
}
ÕÕ 	
private
—— 
const
—— 
string
—— 
XsrfKey
—— $
=
——% &
$str
——' /
;
——/ 0
private
”” $
IAuthenticationManager
”” &#
AuthenticationManager
””' <
{
‘‘ 	
get
’’ 
{
÷÷ 
return
◊◊ 
HttpContext
◊◊ "
.
◊◊" #
GetOwinContext
◊◊# 1
(
◊◊1 2
)
◊◊2 3
.
◊◊3 4
Authentication
◊◊4 B
;
◊◊B C
}
ÿÿ 
}
ŸŸ 	
private
€€ 
void
€€ 
	AddErrors
€€ 
(
€€ 
IdentityResult
€€ -
result
€€. 4
)
€€4 5
{
‹‹ 	
foreach
›› 
(
›› 
var
›› 
error
›› 
in
›› !
result
››" (
.
››( )
Errors
››) /
)
››/ 0
{
ﬁﬁ 

ModelState
ﬂﬂ 
.
ﬂﬂ 
AddModelError
ﬂﬂ (
(
ﬂﬂ( )
$str
ﬂﬂ) +
,
ﬂﬂ+ ,
error
ﬂﬂ- 2
)
ﬂﬂ2 3
;
ﬂﬂ3 4
}
‡‡ 
}
·· 	
private
„„ 
bool
„„ 
HasPassword
„„  
(
„„  !
)
„„! "
{
‰‰ 	
var
ÂÂ 
user
ÂÂ 
=
ÂÂ 
UserManager
ÂÂ "
.
ÂÂ" #
FindById
ÂÂ# +
(
ÂÂ+ ,
User
ÂÂ, 0
.
ÂÂ0 1
Identity
ÂÂ1 9
.
ÂÂ9 :
	GetUserId
ÂÂ: C
(
ÂÂC D
)
ÂÂD E
)
ÂÂE F
;
ÂÂF G
if
ÊÊ 
(
ÊÊ 
user
ÊÊ 
!=
ÊÊ 
null
ÊÊ 
)
ÊÊ 
{
ÁÁ 
return
ËË 
user
ËË 
.
ËË 
PasswordHash
ËË (
!=
ËË) +
null
ËË, 0
;
ËË0 1
}
ÈÈ 
return
ÍÍ 
false
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
private
ÌÌ 
bool
ÌÌ 
HasPhoneNumber
ÌÌ #
(
ÌÌ# $
)
ÌÌ$ %
{
ÓÓ 	
var
ÔÔ 
user
ÔÔ 
=
ÔÔ 
UserManager
ÔÔ "
.
ÔÔ" #
FindById
ÔÔ# +
(
ÔÔ+ ,
User
ÔÔ, 0
.
ÔÔ0 1
Identity
ÔÔ1 9
.
ÔÔ9 :
	GetUserId
ÔÔ: C
(
ÔÔC D
)
ÔÔD E
)
ÔÔE F
;
ÔÔF G
if
 
(
 
user
 
!=
 
null
 
)
 
{
ÒÒ 
return
ÚÚ 
user
ÚÚ 
.
ÚÚ 
PhoneNumber
ÚÚ '
!=
ÚÚ( *
null
ÚÚ+ /
;
ÚÚ/ 0
}
ÛÛ 
return
ÙÙ 
false
ÙÙ 
;
ÙÙ 
}
ıı 	
public
˜˜ 
enum
˜˜ 
ManageMessageId
˜˜ #
{
¯¯ 	
AddPhoneSuccess
˘˘ 
,
˘˘ #
ChangePasswordSuccess
˙˙ !
,
˙˙! "!
SetTwoFactorSuccess
˚˚ 
,
˚˚   
SetPasswordSuccess
¸¸ 
,
¸¸  
RemoveLoginSuccess
˝˝ 
,
˝˝  
RemovePhoneSuccess
˛˛ 
,
˛˛ 
Error
ˇˇ 
}
ÄÄ 	
}
ÉÉ 
}ÑÑ ≥Ó
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
private  
ApplicationDbContext $
db% '
=( )
new* - 
ApplicationDbContext. B
(B C
)C D
;D E
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
db 
. 
Ricette "
." #
ToList# )
() *
)* +
)+ ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
ActionResult 
	MyRecipes %
(% &
)& '
{ 	
var 
me 
= 
User 
. 
Identity "
." #
	GetUserId# ,
(, -
)- .
;. /
var 
daRestituire 
= 
db !
.! "
Ricette" )
.) *
Where* /
(/ 0
x0 1
=>2 4
x5 6
.6 7
UserId7 =
==> @
meA C
)C D
;D E
return 
View 
( 
daRestituire $
)$ %
;% &
} 	
[ 	
HttpGet	 
] 
public 
ActionResult 
Index !
(! "
String" (
nomeparametro) 6
)6 7
{   	
List!! 
<!! 
Ricette!! 
>!! 
lista!! 
=!!  !
null!!" &
;!!& '
if"" 
("" 
!"" 
String"" 
."" 
IsNullOrEmpty"" %
(""% &
nomeparametro""& 3
)""3 4
)""4 5
lista## 
=## 
db## 
.## 
Ricette## "
.##" #
Where### (
(##( )
x##) *
=>##+ -
x##. /
.##/ 0
	Categoria##0 9
==##: <
nomeparametro##= J
)##J K
.##K L
ToList##L R
(##R S
)##S T
;##T U
else$$ 
lista%% 
=%% 
db%% 
.%% 
Ricette%% "
.%%" #
ToList%%# )
(%%) *
)%%* +
;%%+ ,
return'' 
View'' 
('' 
lista'' 
)'' 
;'' 
}(( 	
public++ 
ActionResult++ 
Details++ #
(++# $
int++$ '
?++' (
id++) +
)+++ ,
{,, 	
if-- 
(-- 
id-- 
==-- 
null-- 
)-- 
{.. 
return// 
new//  
HttpStatusCodeResult// /
(/// 0
HttpStatusCode//0 >
.//> ?

BadRequest//? I
)//I J
;//J K
}00 
Ricette11 
ricette11 
=11 
db11  
.11  !
Ricette11! (
.11( )
Find11) -
(11- .
id11. 0
)110 1
;111 2
if22 
(22 
ricette22 
==22 
null22 
)22  
{33 
return44 
HttpNotFound44 #
(44# $
)44$ %
;44% &
}55 
return66 
View66 
(66 
ricette66 
)66  
;66  !
}77 	
public:: 
ActionResult:: 
Create:: "
(::" #
)::# $
{;; 	

SelectList<< 
sl<< 
=<< 
new<< 

SelectList<<  *
(<<* +
db<<+ -
.<<- .
CategoriaBirres<<. =
,<<= >
$str<<> D
,<<D E
$str<<E K
)<<K L
;<<L M
ViewBag== 
.== 
	categorie== 
=== 
sl==  "
;==" #
return>> 
View>> 
(>> 
)>> 
;>> 
}?? 	
publicAA 
ActionResultAA 
WhatShoudIBrewTodayAA /
(AA/ 0
)AA0 1
{BB 	
varCC 
meCC 
=CC 
UserCC 
.CC 
IdentityCC "
.CC" #
	GetUserIdCC# ,
(CC, -
)CC- .
;CC. /
ListDD 
<DD 
RicetteDD 
>DD 
AdditiviDD "
=DD# $
newDD% (
ListDD) -
<DD- .
RicetteDD. 5
>DD5 6
(DD6 7
)DD7 8
;DD8 9
ListEE 
<EE 
RicetteEE 
>EE 
LuppoliEE !
=EE" #
newEE$ '
ListEE( ,
<EE, -
RicetteEE- 4
>EE4 5
(EE5 6
)EE6 7
;EE7 8
ListFF 
<FF 
RicetteFF 
>FF 
LievitiFF !
=FF" #
newFF$ '
ListFF( ,
<FF, -
RicetteFF- 4
>FF4 5
(FF5 6
)FF6 7
;FF7 8
ListGG 
<GG 
RicetteGG 
>GG 
MaltiGG 
=GG  !
newGG" %
ListGG& *
<GG* +
RicetteGG+ 2
>GG2 3
(GG3 4
)GG4 5
;GG5 6
ListHH 
<HH 
RicetteHH 
>HH 
ZuccheriHH "
=HH# $
newHH% (
ListHH) -
<HH- .
RicetteHH. 5
>HH5 6
(HH6 7
)HH7 8
;HH8 9
	MagazzinoII 
mII 
=II 
dbII 
.II 
MagazzinoesII (
.II( )
WhereII) .
(II. /
xII/ 0
=>II1 3
xII4 5
.II5 6
UserIdII6 <
==II= ?
meII@ B
)IIB C
.IIC D
FirstOrDefaultIID R
(IIR S
)IIS T
;IIT U
ListKK 
<KK 
AdditiviKK 
>KK 
aKK 
=KK 
newKK "
ListKK# '
<KK' (
AdditiviKK( 0
>KK0 1
(KK1 2
)KK2 3
;KK3 4
foreachLL 
(LL 
varLL 
additiviMagazzinoLL *
inLL+ -
mLL. /
.LL/ 0
AdditiviUtenteLL0 >
)LL> ?
{MM 
aNN 
.NN 
AddNN 
(NN 
dbNN 
.NN 
AdditiviNN !
.NN! "
WhereNN" '
(NN' (
xNN( )
=>NN) +
xNN+ ,
.NN, -

AdditiviIdNN- 7
==NN7 9
additiviMagazzinoNN9 J
.NNJ K

AdditiviIdNNK U
)NNU V
.NNV W
FirstOrDefaultNNW e
(NNe f
)NNf g
)NNg h
;NNh i
}OO 
foreachPP 
(PP 
varPP 
ricettePP  
inPP! #
dbPP$ &
.PP& '
RicettePP' .
)PP. /
{QQ 
ifRR 
(RR 
aRR 
.RR 
AllRR 
(RR 
xRR 
=>RR 
ricetteRR &
.RR& '
	AdditivisRR' 0
.RR0 1
ContainsRR1 9
(RR9 :
xRR: ;
)RR; <
)RR< =
)RR= >
{SS 
AdditiviTT 
.TT 
AddTT  
(TT  !
ricetteTT! (
)TT( )
;TT) *
}UU 
}VV 
ListXX 
<XX 
LuppoliXX 
>XX 
lXX 
=XX 
newXX !
ListXX" &
<XX& '
LuppoliXX' .
>XX. /
(XX/ 0
)XX0 1
;XX1 2
foreachYY 
(YY 
varYY 
additiviMagazzinoYY *
inYY+ -
mYY. /
.YY/ 0
LuppoliUtenteYY0 =
)YY= >
{ZZ 
l[[ 
.[[ 
Add[[ 
([[ 
db[[ 
.[[ 
Luppoli[[  
.[[  !
Where[[! &
([[& '
x[[' (
=>[[) +
x[[, -
.[[- .
	LuppoliId[[. 7
==[[8 :
additiviMagazzino[[; L
.[[L M
	LuppoliId[[M V
)[[V W
.[[W X
FirstOrDefault[[X f
([[f g
)[[g h
)[[h i
;[[i j
}\\ 
foreach]] 
(]] 
var]] 
ricette]]  
in]]! #
db]]$ &
.]]& '
Ricette]]' .
)]]. /
{^^ 
if__ 
(__ 
l__ 
.__ 
All__ 
(__ 
x__ 
=>__ 
ricette__ &
.__& '
Luppolis__' /
.__/ 0
Contains__0 8
(__8 9
x__9 :
)__: ;
)__; <
)__< =
{`` 
Luppoliaa 
.aa 
Addaa 
(aa  
ricetteaa  '
)aa' (
;aa( )
}bb 
}cc 
Listee 
<ee 
Lievitiee 
>ee 
liee 
=ee 
newee "
Listee# '
<ee' (
Lievitiee( /
>ee/ 0
(ee0 1
)ee1 2
;ee2 3
foreachff 
(ff 
varff 
additiviMagazzinoff *
inff+ -
mff. /
.ff/ 0
LievitiUtenteff0 =
)ff= >
{gg 
lihh 
.hh 
Addhh 
(hh 
dbhh 
.hh 
Lievitihh !
.hh! "
Wherehh" '
(hh' (
xhh( )
=>hh* ,
xhh- .
.hh. /
	LievitiIdhh/ 8
==hh9 ;
additiviMagazzinohh< M
.hhM N
	LievitiIdhhN W
)hhW X
.hhX Y
FirstOrDefaulthhY g
(hhg h
)hhh i
)hhi j
;hhj k
}ii 
foreachjj 
(jj 
varjj 
ricettejj  
injj! #
dbjj$ &
.jj& '
Ricettejj' .
)jj. /
{kk 
ifll 
(ll 
lill 
.ll 
Allll 
(ll 
xll 
=>ll 
ricettell  '
.ll' (
Lievitisll( 0
.ll0 1
Containsll1 9
(ll9 :
xll: ;
)ll; <
)ll< =
)ll= >
{mm 
Lievitinn 
.nn 
Addnn 
(nn  
ricettenn  '
)nn' (
;nn( )
}oo 
}pp 
Listrr 
<rr 
Maltirr 
>rr 
marr 
=rr 
newrr  
Listrr! %
<rr% &
Maltirr& +
>rr+ ,
(rr, -
)rr- .
;rr. /
foreachss 
(ss 
varss 
additiviMagazzinoss *
inss+ -
mss. /
.ss/ 0
MaltiUtentess0 ;
)ss; <
{tt 
mauu 
.uu 
Adduu 
(uu 
dbuu 
.uu 
Maltiuu 
.uu  
Whereuu  %
(uu% &
xuu& '
=>uu( *
xuu+ ,
.uu, -
MaltiIduu- 4
==uu5 7
additiviMagazzinouu8 I
.uuI J
MaltiIduuJ Q
)uuQ R
.uuR S
FirstOrDefaultuuS a
(uua b
)uub c
)uuc d
;uud e
}vv 
foreachww 
(ww 
varww 
ricetteww  
inww! #
dbww$ &
.ww& '
Ricetteww' .
)ww. /
{xx 
ifyy 
(yy 
mayy 
.yy 
Allyy 
(yy 
xyy 
=>yy 
ricetteyy  '
.yy' (
Maltisyy( .
.yy. /
Containsyy/ 7
(yy7 8
xyy8 9
)yy9 :
)yy: ;
)yy; <
{zz 
Malti{{ 
.{{ 
Add{{ 
({{ 
ricette{{ %
){{% &
;{{& '
}|| 
}}} 
List 
< 
Zuccheri 
> 
z 
= 
new "
List# '
<' (
Zuccheri( 0
>0 1
(1 2
)2 3
;3 4
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
additiviMagazzino
ÄÄ *
in
ÄÄ+ -
m
ÄÄ. /
.
ÄÄ/ 0
ZuccheriUtente
ÄÄ0 >
)
ÄÄ> ?
{
ÅÅ 
z
ÇÇ 
.
ÇÇ 
Add
ÇÇ 
(
ÇÇ 
db
ÇÇ 
.
ÇÇ 
Zuccheri
ÇÇ !
.
ÇÇ! "
Where
ÇÇ" '
(
ÇÇ' (
x
ÇÇ( )
=>
ÇÇ* ,
x
ÇÇ- .
.
ÇÇ. /

ZuccheriId
ÇÇ/ 9
==
ÇÇ: <
additiviMagazzino
ÇÇ= N
.
ÇÇN O

ZuccheriId
ÇÇO Y
)
ÇÇY Z
.
ÇÇZ [
FirstOrDefault
ÇÇ[ i
(
ÇÇi j
)
ÇÇj k
)
ÇÇk l
;
ÇÇl m
}
ÉÉ 
foreach
ÑÑ 
(
ÑÑ 
var
ÑÑ 
ricette
ÑÑ  
in
ÑÑ! #
db
ÑÑ$ &
.
ÑÑ& '
Ricette
ÑÑ' .
)
ÑÑ. /
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
z
ÜÜ 
.
ÜÜ 
All
ÜÜ 
(
ÜÜ 
x
ÜÜ 
=>
ÜÜ 
ricette
ÜÜ &
.
ÜÜ& '
	Zuccheris
ÜÜ' 0
.
ÜÜ0 1
Contains
ÜÜ1 9
(
ÜÜ9 :
x
ÜÜ: ;
)
ÜÜ; <
)
ÜÜ< =
)
ÜÜ= >
{
áá 
Zuccheri
àà 
.
àà 
Add
àà  
(
àà  !
ricette
àà! (
)
àà( )
;
àà) *
}
ââ 
}
ää 
var
ãã 
valide
ãã 
=
ãã 
Additivi
ãã !
.
ãã! "
	Intersect
ãã" +
(
ãã+ ,
Malti
ãã, 1
)
ãã1 2
.
ãã2 3
	Intersect
ãã3 <
(
ãã< =
Luppoli
ãã= D
)
ããD E
.
ããE F
	Intersect
ããF O
(
ããO P
Lieviti
ããP W
)
ããW X
.
ããX Y
	Intersect
ããY b
(
ããb c
Zuccheri
ããc k
)
ããk l
;
ããl m
Random
åå 
r
åå 
=
åå 
new
åå 
Random
åå !
(
åå! "
)
åå" #
;
åå# $
int
çç 
quale
çç 
=
çç 
r
çç 
.
çç 
Next
çç 
(
çç 
$num
çç  
,
çç  !
valide
çç" (
.
çç( )
Count
çç) .
(
çç. /
)
çç/ 0
)
çç0 1
;
çç1 2
return
éé 
View
éé 
(
éé 
valide
éé 
.
éé 
	ElementAt
éé (
(
éé( )
quale
éé) .
)
éé. /
)
éé/ 0
;
éé0 1
}
èè 	
[
ìì 	
HttpPost
ìì	 
]
ìì 
[
îî 	&
ValidateAntiForgeryToken
îî	 !
]
îî! "
public
ïï 
ActionResult
ïï 
Create
ïï "
(
ïï" #
Ricette
ïï# *
ricette
ïï+ 2
)
ïï2 3
{
ññ 	
ricette
óó 
.
óó 
UserId
óó 
=
óó 
User
óó !
.
óó! "
Identity
óó" *
.
óó* +
	GetUserId
óó+ 4
(
óó4 5
)
óó5 6
;
óó6 7
if
òò 
(
òò 

ModelState
òò 
.
òò 
IsValid
òò "
)
òò" #
{
ôô 
db
öö 
.
öö 
Ricette
öö 
.
öö 
Add
öö 
(
öö 
ricette
öö &
)
öö& '
;
öö' (
db
õõ 
.
õõ 
SaveChanges
õõ 
(
õõ 
)
õõ  
;
õõ  !
return
úú 
RedirectToAction
úú '
(
úú' (
$str
úú( /
)
úú/ 0
;
úú0 1
}
ùù 
return
üü 
View
üü 
(
üü 
ricette
üü 
)
üü  
;
üü  !
}
†† 	
public
££ 
ActionResult
££ 
Edit
££  
(
££  !
int
££! $
?
££$ %
id
££& (
)
££( )
{
§§ 	
if
•• 
(
•• 
id
•• 
==
•• 
null
•• 
)
•• 
{
¶¶ 
return
ßß 
new
ßß "
HttpStatusCodeResult
ßß /
(
ßß/ 0
HttpStatusCode
ßß0 >
.
ßß> ?

BadRequest
ßß? I
)
ßßI J
;
ßßJ K
}
®® 
Ricette
©© 
ricette
©© 
=
©© 
db
©©  
.
©©  !
Ricette
©©! (
.
©©( )
Find
©©) -
(
©©- .
id
©©. 0
)
©©0 1
;
©©1 2
if
™™ 
(
™™ 
ricette
™™ 
==
™™ 
null
™™ 
)
™™  
{
´´ 
return
¨¨ 
HttpNotFound
¨¨ #
(
¨¨# $
)
¨¨$ %
;
¨¨% &
}
≠≠ 
return
ÆÆ 
View
ÆÆ 
(
ÆÆ 
ricette
ÆÆ 
)
ÆÆ  
;
ÆÆ  !
}
ØØ 	
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
∂∂ 
Edit
∂∂  
(
∂∂  !
Ricette
∂∂! (
ricette
∂∂) 0
)
∂∂0 1
{
∑∑ 	
if
∏∏ 
(
∏∏ 

ModelState
∏∏ 
.
∏∏ 
IsValid
∏∏ "
)
∏∏" #
{
ππ 
db
∫∫ 
.
∫∫ 
Entry
∫∫ 
(
∫∫ 
ricette
∫∫  
)
∫∫  !
.
∫∫! "
State
∫∫" '
=
∫∫( )
EntityState
∫∫* 5
.
∫∫5 6
Modified
∫∫6 >
;
∫∫> ?
db
ªª 
.
ªª 
SaveChanges
ªª 
(
ªª 
)
ªª  
;
ªª  !
return
ºº 
RedirectToAction
ºº '
(
ºº' (
$str
ºº( /
)
ºº/ 0
;
ºº0 1
}
ΩΩ 
return
ææ 
View
ææ 
(
ææ 
ricette
ææ 
)
ææ  
;
ææ  !
}
øø 	
public
¬¬ 
ActionResult
¬¬ 
Delete
¬¬ "
(
¬¬" #
int
¬¬# &
?
¬¬& '
id
¬¬( *
)
¬¬* +
{
√√ 	
if
ƒƒ 
(
ƒƒ 
id
ƒƒ 
==
ƒƒ 
null
ƒƒ 
)
ƒƒ 
{
≈≈ 
return
∆∆ 
new
∆∆ "
HttpStatusCodeResult
∆∆ /
(
∆∆/ 0
HttpStatusCode
∆∆0 >
.
∆∆> ?

BadRequest
∆∆? I
)
∆∆I J
;
∆∆J K
}
«« 
Ricette
»» 
ricette
»» 
=
»» 
db
»»  
.
»»  !
Ricette
»»! (
.
»»( )
Find
»») -
(
»»- .
id
»». 0
)
»»0 1
;
»»1 2
if
…… 
(
…… 
ricette
…… 
==
…… 
null
…… 
)
……  
{
   
return
ÀÀ 
HttpNotFound
ÀÀ #
(
ÀÀ# $
)
ÀÀ$ %
;
ÀÀ% &
}
ÃÃ 
return
ÕÕ 
View
ÕÕ 
(
ÕÕ 
ricette
ÕÕ 
)
ÕÕ  
;
ÕÕ  !
}
ŒŒ 	
[
—— 	
HttpPost
——	 
,
—— 

ActionName
—— 
(
—— 
$str
—— &
)
——& '
]
——' (
[
““ 	&
ValidateAntiForgeryToken
““	 !
]
““! "
public
”” 
ActionResult
”” 
DeleteConfirmed
”” +
(
””+ ,
int
””, /
id
””0 2
)
””2 3
{
‘‘ 	
Ricette
’’ 
ricette
’’ 
=
’’ 
db
’’  
.
’’  !
Ricette
’’! (
.
’’( )
Find
’’) -
(
’’- .
id
’’. 0
)
’’0 1
;
’’1 2
db
÷÷ 
.
÷÷ 
Ricette
÷÷ 
.
÷÷ 
Remove
÷÷ 
(
÷÷ 
ricette
÷÷ %
)
÷÷% &
;
÷÷& '
db
◊◊ 
.
◊◊ 
SaveChanges
◊◊ 
(
◊◊ 
)
◊◊ 
;
◊◊ 
return
ÿÿ 
RedirectToAction
ÿÿ #
(
ÿÿ# $
$str
ÿÿ$ +
)
ÿÿ+ ,
;
ÿÿ, -
}
ŸŸ 	
	protected
€€ 
override
€€ 
void
€€ 
Dispose
€€  '
(
€€' (
bool
€€( ,
	disposing
€€- 6
)
€€6 7
{
‹‹ 	
if
›› 
(
›› 
	disposing
›› 
)
›› 
{
ﬁﬁ 
db
ﬂﬂ 
.
ﬂﬂ 
Dispose
ﬂﬂ 
(
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
base
·· 
.
·· 
Dispose
·· 
(
·· 
	disposing
·· "
)
··" #
;
··# $
}
‚‚ 	
public
‰‰ 
ActionResult
‰‰ 
AggiungiAdditivo
‰‰ ,
(
‰‰, -
int
‰‰- 0
id
‰‰1 3
)
‰‰3 4
{
ÂÂ 	
AdditiviRicetta
ÊÊ 
ar
ÊÊ 
=
ÊÊ  
new
ÊÊ! $
AdditiviRicetta
ÊÊ% 4
{
ÊÊ5 6
	RicettaId
ÊÊ7 @
=
ÊÊA B
id
ÊÊC E
}
ÊÊF G
;
ÊÊG H

SelectList
ÁÁ 

AdditiviId
ÁÁ !
=
ÁÁ" #
new
ÁÁ$ '

SelectList
ÁÁ( 2
(
ÁÁ2 3
db
ÁÁ3 5
.
ÁÁ5 6
Additivi
ÁÁ6 >
,
ÁÁ> ?
$str
ÁÁ@ L
,
ÁÁL M
$str
ÁÁN T
)
ÁÁT U
;
ÁÁU V
ViewBag
ËË 
.
ËË 
additivi
ËË 
=
ËË 

AdditiviId
ËË )
;
ËË) *
return
ÈÈ 
View
ÈÈ 
(
ÈÈ 
ar
ÈÈ 
)
ÈÈ 
;
ÈÈ 
}
ÍÍ 	
[
ÏÏ 	
HttpPost
ÏÏ	 
]
ÏÏ 
public
ÌÌ 
ActionResult
ÌÌ 
AggiungiAdditivo
ÌÌ ,
(
ÌÌ, -
AdditiviRicetta
ÌÌ- <
ar
ÌÌ= ?
)
ÌÌ? @
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ 

ModelState
ÔÔ 
.
ÔÔ 
IsValid
ÔÔ "
)
ÔÔ" #
{
 
db
ÒÒ 
.
ÒÒ 
AdditiviRicettas
ÒÒ #
.
ÒÒ# $
Add
ÒÒ$ '
(
ÒÒ' (
ar
ÒÒ( *
)
ÒÒ* +
;
ÒÒ+ ,
db
ÚÚ 
.
ÚÚ 
SaveChanges
ÚÚ 
(
ÚÚ 
)
ÚÚ  
;
ÚÚ  !
return
ÛÛ 
RedirectToAction
ÛÛ '
(
ÛÛ' (
$str
ÛÛ( /
)
ÛÛ/ 0
;
ÛÛ0 1
}
ÙÙ 

SelectList
ıı 

AdditiviId
ıı !
=
ıı" #
new
ıı$ '

SelectList
ıı( 2
(
ıı2 3
db
ıı3 5
.
ıı5 6
Additivi
ıı6 >
,
ıı> ?
$str
ıı@ L
,
ııL M
$str
ııN T
)
ııT U
;
ııU V
ViewBag
ˆˆ 
.
ˆˆ 
additivi
ˆˆ 
=
ˆˆ 

AdditiviId
ˆˆ )
;
ˆˆ) *
return
˜˜ 
View
˜˜ 
(
˜˜ 
ar
˜˜ 
)
˜˜ 
;
˜˜ 
}
¯¯ 	
public
˙˙ 
ActionResult
˙˙ 
AggiungiLievito
˙˙ +
(
˙˙+ ,
int
˙˙, /
id
˙˙0 2
)
˙˙2 3
{
˚˚ 	
LievitiRicetta
¸¸ 
lr
¸¸ 
=
¸¸ 
new
¸¸  #
LievitiRicetta
¸¸$ 2
{
¸¸3 4
	RicettaId
¸¸5 >
=
¸¸? @
id
¸¸A C
}
¸¸D E
;
¸¸E F

SelectList
˝˝ 
	LievitiId
˝˝  
=
˝˝! "
new
˝˝# &

SelectList
˝˝' 1
(
˝˝1 2
db
˝˝2 4
.
˝˝4 5
Lieviti
˝˝5 <
,
˝˝< =
$str
˝˝> I
,
˝˝I J
$str
˝˝K Q
)
˝˝Q R
;
˝˝R S
ViewBag
˛˛ 
.
˛˛ 
lieviti
˛˛ 
=
˛˛ 
	LievitiId
˛˛ '
;
˛˛' (
return
ˇˇ 
View
ˇˇ 
(
ˇˇ 
lr
ˇˇ 
)
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
[
ÇÇ 	
HttpPost
ÇÇ	 
]
ÇÇ 
public
ÉÉ 
ActionResult
ÉÉ 
AggiungiLievito
ÉÉ +
(
ÉÉ+ ,
LievitiRicetta
ÉÉ, :
lr
ÉÉ; =
)
ÉÉ= >
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 

ModelState
ÖÖ 
.
ÖÖ 
IsValid
ÖÖ "
)
ÖÖ" #
{
ÜÜ 
db
áá 
.
áá 
LievitiRicettas
áá "
.
áá" #
Add
áá# &
(
áá& '
lr
áá' )
)
áá) *
;
áá* +
db
àà 
.
àà 
SaveChanges
àà 
(
àà 
)
àà  
;
àà  !
return
ââ 
RedirectToAction
ââ '
(
ââ' (
$str
ââ( /
)
ââ/ 0
;
ââ0 1
}
ää 

SelectList
åå 
	LievitiId
åå  
=
åå! "
new
åå# &

SelectList
åå' 1
(
åå1 2
db
åå2 4
.
åå4 5
Lieviti
åå5 <
,
åå< =
$str
åå> I
,
ååI J
$str
ååK Q
)
ååQ R
;
ååR S
ViewBag
çç 
.
çç 
lieviti
çç 
=
çç 
	LievitiId
çç '
;
çç' (
return
éé 
View
éé 
(
éé 
lr
éé 
)
éé 
;
éé 
}
èè 	
public
ëë 
ActionResult
ëë 
AggiungiLuppolo
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
íí 	
LuppoliRicetta
ìì 
lr
ìì 
=
ìì 
new
ìì  #
LuppoliRicetta
ìì$ 2
{
ìì3 4
	RicettaId
ìì5 >
=
ìì? @
id
ììA C
}
ììD E
;
ììE F

SelectList
îî 
	LuppoliId
îî  
=
îî! "
new
îî# &

SelectList
îî' 1
(
îî1 2
db
îî2 4
.
îî4 5
Luppoli
îî5 <
,
îî< =
$str
îî> I
,
îîI J
$str
îîK Q
)
îîQ R
;
îîR S
ViewBag
ïï 
.
ïï 
luppoli
ïï 
=
ïï 
	LuppoliId
ïï '
;
ïï' (
return
ññ 
View
ññ 
(
ññ 
lr
ññ 
)
ññ 
;
ññ 
}
óó 	
[
ôô 	
HttpPost
ôô	 
]
ôô 
public
öö 
ActionResult
öö 
AggiungiLuppolo
öö +
(
öö+ ,
LuppoliRicetta
öö, :
lr
öö; =
)
öö= >
{
õõ 	
if
úú 
(
úú 

ModelState
úú 
.
úú 
IsValid
úú "
)
úú" #
{
ùù 
db
ûû 
.
ûû 
LuppoliRicettas
ûû "
.
ûû" #
Add
ûû# &
(
ûû& '
lr
ûû' )
)
ûû) *
;
ûû* +
db
üü 
.
üü 
SaveChanges
üü 
(
üü 
)
üü  
;
üü  !
return
†† 
RedirectToAction
†† '
(
††' (
$str
††( /
)
††/ 0
;
††0 1
}
°° 

SelectList
¢¢ 
	LuppoliId
¢¢  
=
¢¢! "
new
¢¢# &

SelectList
¢¢' 1
(
¢¢1 2
db
¢¢2 4
.
¢¢4 5
Luppoli
¢¢5 <
,
¢¢< =
$str
¢¢> I
,
¢¢I J
$str
¢¢K Q
)
¢¢Q R
;
¢¢R S
ViewBag
££ 
.
££ 
luppoli
££ 
=
££ 
	LuppoliId
££ '
;
££' (
return
§§ 
View
§§ 
(
§§ 
lr
§§ 
)
§§ 
;
§§ 
}
•• 	
public
ßß 
ActionResult
ßß 
AggiungiMalti
ßß )
(
ßß) *
int
ßß* -
id
ßß. 0
)
ßß0 1
{
®® 	
MaltiRicetta
©© 
mr
©© 
=
©© 
new
©© !
MaltiRicetta
©©" .
{
©©/ 0
MaltiId
©©1 8
=
©©9 :
id
©©; =
}
©©> ?
;
©©? @

SelectList
™™ 
MaltiId
™™ 
=
™™  
new
™™! $

SelectList
™™% /
(
™™/ 0
db
™™0 2
.
™™2 3
Malti
™™3 8
,
™™8 9
$str
™™: C
,
™™C D
$str
™™E K
)
™™K L
;
™™L M
ViewBag
´´ 
.
´´ 
malti
´´ 
=
´´ 
MaltiId
´´ #
;
´´# $
return
¨¨ 
View
¨¨ 
(
¨¨ 
mr
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 	
[
ØØ 	
HttpPost
ØØ	 
]
ØØ 
public
∞∞ 
ActionResult
∞∞ 
AggiungiMalti
∞∞ )
(
∞∞) *
MaltiRicetta
∞∞* 6
mr
∞∞7 9
)
∞∞9 :
{
±± 	
if
≤≤ 
(
≤≤ 

ModelState
≤≤ 
.
≤≤ 
IsValid
≤≤ "
)
≤≤" #
{
≥≥ 
db
¥¥ 
.
¥¥ 
MaltiRicettas
¥¥  
.
¥¥  !
Add
¥¥! $
(
¥¥$ %
mr
¥¥% '
)
¥¥' (
;
¥¥( )
db
µµ 
.
µµ 
SaveChanges
µµ 
(
µµ 
)
µµ  
;
µµ  !
return
∂∂ 
RedirectToAction
∂∂ '
(
∂∂' (
$str
∂∂( /
)
∂∂/ 0
;
∂∂0 1
}
∑∑ 

SelectList
∏∏ 
MaltiId
∏∏ 
=
∏∏  
new
∏∏! $

SelectList
∏∏% /
(
∏∏/ 0
db
∏∏0 2
.
∏∏2 3
Malti
∏∏3 8
,
∏∏8 9
$str
∏∏: C
,
∏∏C D
$str
∏∏E K
)
∏∏K L
;
∏∏L M
ViewBag
ππ 
.
ππ 
malti
ππ 
=
ππ 
MaltiId
ππ #
;
ππ# $
return
∫∫ 
View
∫∫ 
(
∫∫ 
mr
∫∫ 
)
∫∫ 
;
∫∫ 
}
ªª 	
public
ΩΩ 
ActionResult
ΩΩ 
AggiungiZuccheri
ΩΩ ,
(
ΩΩ, -
int
ΩΩ- 0
id
ΩΩ1 3
)
ΩΩ3 4
{
ææ 	
ZuccheriRicetta
øø 
zr
øø 
=
øø  
new
øø! $
ZuccheriRicetta
øø% 4
{
øø5 6
	RicettaId
øø7 @
=
øøA B
id
øøC E
}
øøF G
;
øøG H

SelectList
¿¿ 

ZuccheriId
¿¿ !
=
¿¿" #
new
¿¿$ '

SelectList
¿¿( 2
(
¿¿2 3
db
¿¿3 5
.
¿¿5 6
Zuccheri
¿¿6 >
,
¿¿> ?
$str
¿¿@ L
,
¿¿L M
$str
¿¿N T
)
¿¿T U
;
¿¿U V
ViewBag
¡¡ 
.
¡¡ 
zuccheri
¡¡ 
=
¡¡ 

ZuccheriId
¡¡ )
;
¡¡) *
return
¬¬ 
View
¬¬ 
(
¬¬ 
zr
¬¬ 
)
¬¬ 
;
¬¬ 
}
√√ 	
[
≈≈ 	
HttpPost
≈≈	 
]
≈≈ 
public
∆∆ 
ActionResult
∆∆ 
AggiungiZuccheri
∆∆ ,
(
∆∆, -
ZuccheriRicetta
∆∆- <
zr
∆∆= ?
)
∆∆? @
{
«« 	
if
»» 
(
»» 

ModelState
»» 
.
»» 
IsValid
»» "
)
»»" #
{
…… 
db
   
.
   
ZuccheriRicettas
   #
.
  # $
Add
  $ '
(
  ' (
zr
  ( *
)
  * +
;
  + ,
db
ÀÀ 
.
ÀÀ 
SaveChanges
ÀÀ 
(
ÀÀ 
)
ÀÀ  
;
ÀÀ  !
return
ÃÃ 
RedirectToAction
ÃÃ '
(
ÃÃ' (
$str
ÃÃ( /
)
ÃÃ/ 0
;
ÃÃ0 1
}
ÕÕ 

SelectList
ŒŒ 

ZuccheriId
ŒŒ !
=
ŒŒ" #
new
ŒŒ$ '

SelectList
ŒŒ( 2
(
ŒŒ2 3
db
ŒŒ3 5
.
ŒŒ5 6
Zuccheri
ŒŒ6 >
,
ŒŒ> ?
$str
ŒŒ@ L
,
ŒŒL M
$str
ŒŒN T
)
ŒŒT U
;
ŒŒU V
ViewBag
œœ 
.
œœ 
zuccheri
œœ 
=
œœ 

ZuccheriId
œœ )
;
œœ) *
return
–– 
View
–– 
(
–– 
zr
–– 
)
–– 
;
–– 
}
—— 	
public
”” 
ActionResult
”” 
EditAdditivo
”” (
(
””( )
int
””) ,
id
””- /
,
””/ 0
int
””1 4
idr
””5 8
)
””8 9
{
‘‘ 	
AdditiviRicetta
’’ 
ar
’’ 
=
’’  
db
’’! #
.
’’# $
AdditiviRicettas
’’$ 4
.
’’4 5
Where
’’5 :
(
’’: ;
x
’’; <
=>
’’= ?
x
’’@ A
.
’’A B

AdditiviId
’’B L
==
’’M O
id
’’P R
&&
’’S U
x
’’V W
.
’’W X
	RicettaId
’’X a
==
’’b d
idr
’’e h
)
’’h i
.
’’i j
FirstOrDefault
’’j x
(
’’x y
)
’’y z
;
’’z {
return
◊◊ 
View
◊◊ 
(
◊◊ 
ar
◊◊ 
)
◊◊ 
;
◊◊ 
}
ÿÿ 	
[
⁄⁄ 	
HttpPost
⁄⁄	 
]
⁄⁄ 
public
€€ 
ActionResult
€€ 
EditAdditivo
€€ (
(
€€( )
AdditiviRicetta
€€) 8
ar
€€9 ;
)
€€; <
{
‹‹ 	
AdditiviRicetta
›› 
ar2
›› 
=
››  !
db
››" $
.
››$ %
AdditiviRicettas
››% 5
.
››5 6
Where
››6 ;
(
››; <
x
››< =
=>
››> @
x
››A B
.
››B C

AdditiviId
››C M
==
››N P
ar
››Q S
.
››S T

AdditiviId
››T ^
&&
››_ a
x
››b c
.
››c d
	RicettaId
››d m
==
››n p
ar
››q s
.
››s t
	RicettaId
››t }
)
››} ~
.
››~ 
FirstOrDefault›› ç
(››ç é
)››é è
;››è ê
ar2
ﬁﬁ 
.
ﬁﬁ 
Quantita
ﬁﬁ 
=
ﬁﬁ 
ar
ﬁﬁ 
.
ﬁﬁ 
Quantita
ﬁﬁ &
;
ﬁﬁ& '
if
ﬂﬂ 
(
ﬂﬂ 

ModelState
ﬂﬂ 
.
ﬂﬂ 
IsValid
ﬂﬂ "
)
ﬂﬂ" #
{
‡‡ 
db
·· 
.
·· 
SaveChanges
·· 
(
·· 
)
··  
;
··  !
return
‚‚ 
RedirectToAction
‚‚ '
(
‚‚' (
$str
‚‚( /
)
‚‚/ 0
;
‚‚0 1
}
„„ 

SelectList
‰‰ 

AdditiviId
‰‰ !
=
‰‰" #
new
‰‰$ '

SelectList
‰‰( 2
(
‰‰2 3
db
‰‰3 5
.
‰‰5 6
Additivi
‰‰6 >
,
‰‰> ?
$str
‰‰@ L
,
‰‰L M
$str
‰‰N T
)
‰‰T U
;
‰‰U V
ViewBag
ÂÂ 
.
ÂÂ 
additivi
ÂÂ 
=
ÂÂ 

AdditiviId
ÂÂ )
;
ÂÂ) *
return
ÊÊ 
View
ÊÊ 
(
ÊÊ 
ar
ÊÊ 
)
ÊÊ 
;
ÊÊ 
}
ÁÁ 	
public
ÈÈ 
ActionResult
ÈÈ 
EditLievito
ÈÈ '
(
ÈÈ' (
int
ÈÈ( +
id
ÈÈ, .
,
ÈÈ. /
int
ÈÈ0 3
idr
ÈÈ4 7
)
ÈÈ7 8
{
ÍÍ 	
LievitiRicetta
ÎÎ 
lr
ÎÎ 
=
ÎÎ 
db
ÎÎ  "
.
ÎÎ" #
LievitiRicettas
ÎÎ# 2
.
ÎÎ2 3
Where
ÎÎ3 8
(
ÎÎ8 9
x
ÎÎ9 :
=>
ÎÎ; =
x
ÎÎ> ?
.
ÎÎ? @
	LievitoId
ÎÎ@ I
==
ÎÎJ L
id
ÎÎM O
&&
ÎÎP R
x
ÎÎS T
.
ÎÎT U
	RicettaId
ÎÎU ^
==
ÎÎ_ a
idr
ÎÎb e
)
ÎÎe f
.
ÎÎf g
FirstOrDefault
ÎÎg u
(
ÎÎu v
)
ÎÎv w
;
ÎÎw x
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
ÌÌ 	
[
ÔÔ 	
HttpPost
ÔÔ	 
]
ÔÔ 
public
 
ActionResult
 
EditLievito
 '
(
' (
LievitiRicetta
( 6
lr
7 9
)
9 :
{
ÒÒ 	
LievitiRicetta
ÚÚ 
lr2
ÚÚ 
=
ÚÚ  
db
ÚÚ! #
.
ÚÚ# $
LievitiRicettas
ÚÚ$ 3
.
ÚÚ3 4
Where
ÚÚ4 9
(
ÚÚ9 :
x
ÚÚ: ;
=>
ÚÚ< >
x
ÚÚ? @
.
ÚÚ@ A
	LievitoId
ÚÚA J
==
ÚÚK M
lr
ÚÚN P
.
ÚÚP Q
	LievitoId
ÚÚQ Z
&&
ÚÚ[ ]
x
ÚÚ^ _
.
ÚÚ_ `
	RicettaId
ÚÚ` i
==
ÚÚj l
lr
ÚÚm o
.
ÚÚo p
	RicettaId
ÚÚp y
)
ÚÚy z
.
ÚÚz {
FirstOrDefaultÚÚ{ â
(ÚÚâ ä
)ÚÚä ã
;ÚÚã å
lr2
ÛÛ 
.
ÛÛ 
Quantita
ÛÛ 
=
ÛÛ 
lr
ÛÛ 
.
ÛÛ 
Quantita
ÛÛ &
;
ÛÛ& '
if
ÙÙ 
(
ÙÙ 

ModelState
ÙÙ 
.
ÙÙ 
IsValid
ÙÙ "
)
ÙÙ" #
{
ıı 
db
ˆˆ 
.
ˆˆ 
SaveChanges
ˆˆ 
(
ˆˆ 
)
ˆˆ  
;
ˆˆ  !
return
˜˜ 
RedirectToAction
˜˜ '
(
˜˜' (
$str
˜˜( /
)
˜˜/ 0
;
˜˜0 1
}
¯¯ 

SelectList
˙˙ 
	LievitiId
˙˙  
=
˙˙! "
new
˙˙# &

SelectList
˙˙' 1
(
˙˙1 2
db
˙˙2 4
.
˙˙4 5
Lieviti
˙˙5 <
,
˙˙< =
$str
˙˙> I
,
˙˙I J
$str
˙˙K Q
)
˙˙Q R
;
˙˙R S
ViewBag
˚˚ 
.
˚˚ 
lieviti
˚˚ 
=
˚˚ 
	LievitiId
˚˚ '
;
˚˚' (
return
¸¸ 
View
¸¸ 
(
¸¸ 
lr
¸¸ 
)
¸¸ 
;
¸¸ 
}
˝˝ 	
public
ˇˇ 
ActionResult
ˇˇ 
EditLuppolo
ˇˇ '
(
ˇˇ' (
int
ˇˇ( +
id
ˇˇ, .
,
ˇˇ. /
int
ˇˇ0 3
idr
ˇˇ4 7
)
ˇˇ7 8
{
ÄÄ 	
LuppoliRicetta
ÅÅ 
lr
ÅÅ 
=
ÅÅ 
db
ÅÅ  "
.
ÅÅ" #
LuppoliRicettas
ÅÅ# 2
.
ÅÅ2 3
Where
ÅÅ3 8
(
ÅÅ8 9
x
ÅÅ9 :
=>
ÅÅ; =
x
ÅÅ> ?
.
ÅÅ? @
	LuppoliId
ÅÅ@ I
==
ÅÅJ L
id
ÅÅM O
&&
ÅÅP R
x
ÅÅS T
.
ÅÅT U
	RicettaId
ÅÅU ^
==
ÅÅ_ a
idr
ÅÅb e
)
ÅÅe f
.
ÅÅf g
FirstOrDefault
ÅÅg u
(
ÅÅu v
)
ÅÅv w
;
ÅÅw x
return
ÇÇ 
View
ÇÇ 
(
ÇÇ 
lr
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
[
ÖÖ 	
HttpPost
ÖÖ	 
]
ÖÖ 
public
ÜÜ 
ActionResult
ÜÜ 
EditLuppolo
ÜÜ '
(
ÜÜ' (
LuppoliRicetta
ÜÜ( 6
lr
ÜÜ7 9
)
ÜÜ9 :
{
áá 	
LuppoliRicetta
àà 
lr2
àà 
=
àà  
db
àà! #
.
àà# $
LuppoliRicettas
àà$ 3
.
àà3 4
Where
àà4 9
(
àà9 :
x
àà: ;
=>
àà< >
x
àà? @
.
àà@ A
	LuppoliId
ààA J
==
ààK M
lr
ààN P
.
ààP Q
	LuppoliId
ààQ Z
&&
àà[ ]
x
àà^ _
.
àà_ `
	RicettaId
àà` i
==
ààj l
lr
ààm o
.
àào p
	RicettaId
ààp y
)
àày z
.
ààz {
FirstOrDefaultàà{ â
(ààâ ä
)ààä ã
;ààã å
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
ää 
db
ãã 
.
ãã 
SaveChanges
ãã 
(
ãã 
)
ãã  
;
ãã  !
return
åå 
RedirectToAction
åå '
(
åå' (
$str
åå( /
)
åå/ 0
;
åå0 1
}
çç 

SelectList
éé 
	LuppoliId
éé  
=
éé! "
new
éé# &

SelectList
éé' 1
(
éé1 2
db
éé2 4
.
éé4 5
Luppoli
éé5 <
,
éé< =
$str
éé> I
,
ééI J
$str
ééK Q
)
ééQ R
;
ééR S
ViewBag
èè 
.
èè 
luppoli
èè 
=
èè 
	LuppoliId
èè '
;
èè' (
return
êê 
View
êê 
(
êê 
lr
êê 
)
êê 
;
êê 
}
ëë 	
public
ìì 
ActionResult
ìì 
	EditMalti
ìì %
(
ìì% &
int
ìì& )
id
ìì* ,
,
ìì, -
int
ìì. 1
idr
ìì2 5
)
ìì5 6
{
îî 	
MaltiRicetta
ïï 
mr
ïï 
=
ïï 
db
ïï  
.
ïï  !
MaltiRicettas
ïï! .
.
ïï. /
Where
ïï/ 4
(
ïï4 5
x
ïï5 6
=>
ïï7 9
x
ïï: ;
.
ïï; <
MaltiId
ïï< C
==
ïïD F
id
ïïG I
&&
ïïJ L
x
ïïM N
.
ïïN O
	RicettaId
ïïO X
==
ïïY [
idr
ïï\ _
)
ïï_ `
.
ïï` a
FirstOrDefault
ïïa o
(
ïïo p
)
ïïp q
;
ïïq r
return
ññ 
View
ññ 
(
ññ 
mr
ññ 
)
ññ 
;
ññ 
}
óó 	
[
ôô 	
HttpPost
ôô	 
]
ôô 
public
öö 
ActionResult
öö 
	EditMalti
öö %
(
öö% &
MaltiRicetta
öö& 2
mr
öö3 5
)
öö5 6
{
õõ 	
MaltiRicetta
úú 
mr2
úú 
=
úú 
db
úú !
.
úú! "
MaltiRicettas
úú" /
.
úú/ 0
Where
úú0 5
(
úú5 6
x
úú6 7
=>
úú8 :
x
úú; <
.
úú< =
MaltiId
úú= D
==
úúE G
mr
úúH J
.
úúJ K
MaltiId
úúK R
&&
úúS U
x
úúV W
.
úúW X
	RicettaId
úúX a
==
úúb d
mr
úúe g
.
úúg h
	RicettaId
úúh q
)
úúq r
.
úúr s
FirstOrDefaultúús Å
(úúÅ Ç
)úúÇ É
;úúÉ Ñ
mr2
ùù 
.
ùù 
Quantita
ùù 
=
ùù 
mr
ùù 
.
ùù 
Quantita
ùù &
;
ùù& '
if
ûû 
(
ûû 

ModelState
ûû 
.
ûû 
IsValid
ûû "
)
ûû" #
{
üü 
db
†† 
.
†† 
SaveChanges
†† 
(
†† 
)
††  
;
††  !
return
°° 
RedirectToAction
°° '
(
°°' (
$str
°°( /
)
°°/ 0
;
°°0 1
}
¢¢ 

SelectList
££ 
MaltiId
££ 
=
££  
new
££! $

SelectList
££% /
(
££/ 0
db
££0 2
.
££2 3
Malti
££3 8
,
££8 9
$str
££: C
,
££C D
$str
££E K
)
££K L
;
££L M
ViewBag
§§ 
.
§§ 
malti
§§ 
=
§§ 
MaltiId
§§ #
;
§§# $
return
•• 
View
•• 
(
•• 
mr
•• 
)
•• 
;
•• 
}
¶¶ 	
public
®® 
ActionResult
®® 
EditZuccheri
®® (
(
®®( )
int
®®) ,
id
®®- /
,
®®/ 0
int
®®1 4
idr
®®5 8
)
®®8 9
{
©© 	
ZuccheriRicetta
™™ 
zr
™™ 
=
™™  
db
™™! #
.
™™# $
ZuccheriRicettas
™™$ 4
.
™™4 5
Where
™™5 :
(
™™: ;
x
™™; <
=>
™™= ?
x
™™@ A
.
™™A B
	RicettaId
™™B K
==
™™L N
idr
™™O R
&&
™™S U
x
™™V W
.
™™W X

ZuccheriId
™™X b
==
™™c e
id
™™f h
)
™™h i
.
™™i j
FirstOrDefault
™™j x
(
™™x y
)
™™y z
;
™™z {
return
´´ 
View
´´ 
(
´´ 
zr
´´ 
)
´´ 
;
´´ 
}
¨¨ 	
[
ÆÆ 	
HttpPost
ÆÆ	 
]
ÆÆ 
public
ØØ 
ActionResult
ØØ 
EditZuccheri
ØØ (
(
ØØ( )
ZuccheriRicetta
ØØ) 8
zr
ØØ9 ;
,
ØØ; <
int
ØØ= @
idr
ØØA D
)
ØØD E
{
∞∞ 	
ZuccheriRicetta
±± 
zr2
±± 
=
±±  !
db
±±" $
.
±±$ %
ZuccheriRicettas
±±% 5
.
±±5 6
Where
±±6 ;
(
±±; <
x
±±< =
=>
±±> @
x
±±A B
.
±±B C

ZuccheriId
±±C M
==
±±N P
zr
±±Q S
.
±±S T

ZuccheriId
±±T ^
&&
±±_ a
x
±±b c
.
±±c d
	RicettaId
±±d m
==
±±n p
idr
±±q t
)
±±t u
.
±±u v
FirstOrDefault±±v Ñ
(±±Ñ Ö
)±±Ö Ü
;±±Ü á
zr2
≤≤ 
.
≤≤ 
Quantita
≤≤ 
=
≤≤ 
zr
≤≤ 
.
≤≤ 
Quantita
≤≤ &
;
≤≤& '
if
≥≥ 
(
≥≥ 

ModelState
≥≥ 
.
≥≥ 
IsValid
≥≥ "
)
≥≥" #
{
¥¥ 
db
µµ 
.
µµ 
SaveChanges
µµ 
(
µµ 
)
µµ  
;
µµ  !
return
∂∂ 
RedirectToAction
∂∂ '
(
∂∂' (
$str
∂∂( /
)
∂∂/ 0
;
∂∂0 1
}
∑∑ 

SelectList
∏∏ 

ZuccheriId
∏∏ !
=
∏∏" #
new
∏∏$ '

SelectList
∏∏( 2
(
∏∏2 3
db
∏∏3 5
.
∏∏5 6
Zuccheri
∏∏6 >
,
∏∏> ?
$str
∏∏@ L
,
∏∏L M
$str
∏∏N T
)
∏∏T U
;
∏∏U V
ViewBag
ππ 
.
ππ 
zuccheri
ππ 
=
ππ 

ZuccheriId
ππ )
;
ππ) *
return
∫∫ 
View
∫∫ 
(
∫∫ 
zr
∫∫ 
)
∫∫ 
;
∫∫ 
}
ªª 	
}
ºº 
}ΩΩ Í@
PC:\Users\david\Source\Repos\Brewday2\BrewDay2\Controllers\ZuccherisController.cs
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
ZuccherisController $
:% &

Controller' 1
{ 
private  
ApplicationDbContext $
db% '
=( )
new* - 
ApplicationDbContext. B
(B C
)C D
;D E
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
me 
= 
User 
. 
Identity &
.& '
	GetUserId' 0
(0 1
)1 2
;2 3
return 
View 
( 
db 
. 
Zuccheri #
.# $
ToList$ *
(* +
)+ ,
), -
;- .
} 	
public 
ActionResult 
Details #
(# $
int$ '
?' (
id) +
)+ ,
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
new  
HttpStatusCodeResult /
(/ 0
HttpStatusCode0 >
.> ?

BadRequest? I
)I J
;J K
} 
Zuccheri 
zuccheri 
= 
db  "
." #
Zuccheri# +
.+ ,
Find, 0
(0 1
id1 3
)3 4
;4 5
if 
( 
zuccheri 
== 
null  
)  !
{ 
return   
HttpNotFound   #
(  # $
)  $ %
;  % &
}!! 
return"" 
View"" 
("" 
zuccheri""  
)""  !
;""! "
}## 	
public&& 
ActionResult&& 
Create&& "
(&&" #
)&&# $
{'' 	
Zuccheri(( 
z(( 
=(( 
new(( 
Zuccheri(( %
(((% &
)((& '
;((' (
z)) 
.)) 
UserId)) 
=)) 
User)) 
.)) 
Identity)) $
.))$ %
	GetUserId))% .
()). /
)))/ 0
;))0 1
return** 
View** 
(** 
z** 
)** 
;** 
}++ 	
[00 	
HttpPost00	 
]00 
[11 	$
ValidateAntiForgeryToken11	 !
]11! "
public22 
ActionResult22 
Create22 "
(22" #
[22# $
Bind22$ (
(22( )
Include22) 0
=221 2
$str223 Z
)22Z [
]22[ \
Zuccheri22] e
zuccheri22f n
)22n o
{33 	
if44 
(44 

ModelState44 
.44 
IsValid44 "
)44" #
{55 
db66 
.66 
Zuccheri66 
.66 
Add66 
(66  
zuccheri66  (
)66( )
;66) *
db77 
.77 
SaveChanges77 
(77 
)77  
;77  !
return88 
RedirectToAction88 '
(88' (
$str88( /
)88/ 0
;880 1
}99 
return;; 
View;; 
(;; 
zuccheri;;  
);;  !
;;;! "
}<< 	
public?? 
ActionResult?? 
Edit??  
(??  !
int??! $
???$ %
id??& (
)??( )
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
}DD 
ZuccheriEE 
zuccheriEE 
=EE 
dbEE  "
.EE" #
ZuccheriEE# +
.EE+ ,
FindEE, 0
(EE0 1
idEE1 3
)EE3 4
;EE4 5
ifFF 
(FF 
zuccheriFF 
==FF 
nullFF  
)FF  !
{GG 
returnHH 
HttpNotFoundHH #
(HH# $
)HH$ %
;HH% &
}II 
returnJJ 
ViewJJ 
(JJ 
zuccheriJJ  
)JJ  !
;JJ! "
}KK 	
[PP 	
HttpPostPP	 
]PP 
[QQ 	$
ValidateAntiForgeryTokenQQ	 !
]QQ! "
publicRR 
ActionResultRR 
EditRR  
(RR  !
[RR! "
BindRR" &
(RR& '
IncludeRR' .
=RR/ 0
$strRR1 X
)RRX Y
]RRY Z
ZuccheriRR[ c
zuccheriRRd l
)RRl m
{SS 	
ifTT 
(TT 

ModelStateTT 
.TT 
IsValidTT "
)TT" #
{UU 
dbVV 
.VV 
EntryVV 
(VV 
zuccheriVV !
)VV! "
.VV" #
StateVV# (
=VV) *
EntityStateVV+ 6
.VV6 7
ModifiedVV7 ?
;VV? @
dbWW 
.WW 
SaveChangesWW 
(WW 
)WW  
;WW  !
returnXX 
RedirectToActionXX '
(XX' (
$strXX( /
)XX/ 0
;XX0 1
}YY 
returnZZ 
ViewZZ 
(ZZ 
zuccheriZZ  
)ZZ  !
;ZZ! "
}[[ 	
public^^ 
ActionResult^^ 
Delete^^ "
(^^" #
int^^# &
?^^& '
id^^( *
)^^* +
{__ 	
if`` 
(`` 
id`` 
==`` 
null`` 
)`` 
{aa 
returnbb 
newbb  
HttpStatusCodeResultbb /
(bb/ 0
HttpStatusCodebb0 >
.bb> ?

BadRequestbb? I
)bbI J
;bbJ K
}cc 
Zuccheridd 
zuccheridd 
=dd 
dbdd  "
.dd" #
Zuccheridd# +
.dd+ ,
Finddd, 0
(dd0 1
iddd1 3
)dd3 4
;dd4 5
ifee 
(ee 
zuccheriee 
==ee 
nullee  
)ee  !
{ff 
returngg 
HttpNotFoundgg #
(gg# $
)gg$ %
;gg% &
}hh 
returnii 
Viewii 
(ii 
zuccheriii  
)ii  !
;ii! "
}jj 	
[mm 	
HttpPostmm	 
,mm 

ActionNamemm 
(mm 
$strmm &
)mm& '
]mm' (
[nn 	$
ValidateAntiForgeryTokennn	 !
]nn! "
publicoo 
ActionResultoo 
DeleteConfirmedoo +
(oo+ ,
intoo, /
idoo0 2
)oo2 3
{pp 	
Zuccheriqq 
zuccheriqq 
=qq 
dbqq  "
.qq" #
Zuccheriqq# +
.qq+ ,
Findqq, 0
(qq0 1
idqq1 3
)qq3 4
;qq4 5
dbrr 
.rr 
Zuccherirr 
.rr 
Removerr 
(rr 
zuccherirr '
)rr' (
;rr( )
dbss 
.ss 
SaveChangesss 
(ss 
)ss 
;ss 
returntt 
RedirectToActiontt #
(tt# $
$strtt$ +
)tt+ ,
;tt, -
}uu 	
	protectedww 
overrideww 
voidww 
Disposeww  '
(ww' (
boolww( ,
	disposingww- 6
)ww6 7
{xx 	
ifyy 
(yy 
	disposingyy 
)yy 
{zz 
db{{ 
.{{ 
Dispose{{ 
({{ 
){{ 
;{{ 
}|| 
base}} 
.}} 
Dispose}} 
(}} 
	disposing}} "
)}}" #
;}}# $
}~~ 	
} 
}ÄÄ „
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
id 
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
} Ï,
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
,& '
throwIfV1Schema( 7
:7 8
false9 >
)> ?
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
]"") *ö+
8C:\Users\david\Source\Repos\Brewday2\BrewDay2\Startup.cs
[ 
assembly 	
:	 
 
OwinStartupAttribute 
(  
typeof  &
(& '
BrewDay2' /
./ 0
Startup0 7
)7 8
)8 9
]9 :
	namespace 	
BrewDay2
 
{ 
public 

partial 
class 
Startup  
{ 
public 
Startup 
( 
) 
{ 	
ModelBinders 
. 
Binders  
.  !
Add! $
($ %
typeof% +
(+ ,
decimal, 3
)3 4
,4 5
new6 9
DecimalModelBinder: L
(L M
)M N
)N O
;O P
using 
( 
var 
client 
= 
new  # 
ApplicationDbContext$ 8
(8 9
)9 :
): ;
{ 
if 
( 
! 
client 
. 
Database $
.$ %
Exists% +
(+ ,
), -
)- .
{ 
client 
. 
Database #
.# $
Delete$ *
(* +
)+ ,
;, -
client 
. 
Database #
.# $
CreateIfNotExists$ 5
(5 6
)6 7
;7 8
client 
. 
Database #
.# $

Initialize$ .
(. /
true/ 3
)3 4
;4 5
} 
if 
( 
client 
. 
CategoriaBirres *
.* +
ToList+ 1
(1 2
)2 3
.3 4
Count4 9
==: <
$num= >
)> ?
{ 
List 
< 
String 
>  
	categorie! *
=+ ,
new- 0
List1 5
<5 6
string6 <
>< =
(= >
)> ?
;? @
	categorie   
.   
Add   !
(  ! "
$str  " +
)  + ,
;  , -
	categorie!! 
.!! 
Add!! !
(!!! "
$str!!" +
)!!+ ,
;!!, -
	categorie"" 
."" 
Add"" !
(""! "
$str""" )
)"") *
;""* +
	categorie## 
.## 
Add## !
(##! "
$str##" +
)##+ ,
;##, -
	categorie$$ 
.$$ 
Add$$ !
($$! "
$str$$" *
)$$* +
;$$+ ,
	categorie%% 
.%% 
Add%% !
(%%! "
$str%%" *
)%%* +
;%%+ ,
	categorie&& 
.&& 
Add&& !
(&&! "
$str&&" -
)&&- .
;&&. /
	categorie'' 
.'' 
Add'' !
(''! "
$str''" *
)''* +
;''+ ,
	categorie(( 
.(( 
Add(( !
(((! "
$str((" (
)((( )
;(() *
	categorie)) 
.)) 
Add)) !
())! "
$str))" .
))). /
;))/ 0
	categorie** 
.** 
Add** !
(**! "
$str**" )
)**) *
;*** +
	categorie++ 
.++ 
Add++ !
(++! "
$str++" *
)++* +
;+++ ,
	categorie,, 
.,, 
Add,, !
(,,! "
$str,," 1
),,1 2
;,,2 3
foreach-- 
(-- 
var--  
c--! "
in--# %
	categorie--& /
)--/ 0
{.. 
CategoriaBirre// &
cb//' )
=//* +
new//, /
CategoriaBirre//0 >
{00 
Nome11  
=11! "
c11# $
}22 
;22 
client33 
.33 
CategoriaBirres33 .
.33. /
Add33/ 2
(332 3
cb333 5
)335 6
;336 7
}44 
client55 
.55 
SaveChanges55 &
(55& '
)55' (
;55( )
}66 
client77 
.77 
Dispose77 
(77 
)77  
;77  !
}88 
}99 	
public;; 
Startup;; 
(;; 
HostingEnvironment;; )
env;;* -
);;- .
{<< 	
using== 
(== 
var== 
client== 
=== 
new==  # 
ApplicationDbContext==$ 8
(==8 9
)==9 :
)==: ;
{>> 
client?? 
.?? 
Database?? 
.??  

Initialize??  *
(??* +
true??+ /
)??/ 0
;??0 1
client@@ 
.@@ 
Database@@ 
.@@  
CreateIfNotExists@@  1
(@@1 2
)@@2 3
;@@3 4
clientAA 
.AA 
DisposeAA 
(AA 
)AA  
;AA  !
}BB 
}CC 	
publicEE 
voidEE 
ConfigurationEE !
(EE! "
IAppBuilderEE" -
appEE. 1
)EE1 2
{FF 	
ConfigureAuthGG 
(GG 
appGG 
)GG 
;GG 
}HH 	
}II 
}JJ 
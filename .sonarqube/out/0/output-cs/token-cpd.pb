�
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
} �
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
} �:
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
context	''y �
)
''� �
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
context	dd} �
)
dd� �
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
}ii �
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
} �
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
}CC ̜
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
false	XX �
)
XX� �
;
XX� �
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
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '

VerifyCode
��( 2
(
��2 3!
VerifyCodeViewModel
��3 F
model
��G L
)
��L M
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
SignInManager
�� ,
.
��, -"
TwoFactorSignInAsync
��- A
(
��A B
model
��B G
.
��G H
Provider
��H P
,
��P Q
model
��R W
.
��W X
Code
��X \
,
��\ ]
isPersistent
��^ j
:
��j k
model
��m r
.
��r s

RememberMe
��s }
,
��} ~
rememberBrowser�� �
:��� �
model��� �
.��� �
RememberBrowser��� �
)��� �
;��� �
switch
�� 
(
�� 
result
�� 
)
�� 
{
�� 
case
�� 
SignInStatus
�� !
.
��! "
Success
��" )
:
��) *
return
�� 
RedirectToLocal
�� *
(
��* +
model
��+ 0
.
��0 1
	ReturnUrl
��1 :
)
��: ;
;
��; <
case
�� 
SignInStatus
�� !
.
��! "
	LockedOut
��" +
:
��+ ,
return
�� 
View
�� 
(
��  
$str
��  )
)
��) *
;
��* +
case
�� 
SignInStatus
�� !
.
��! "
Failure
��" )
:
��) *
default
�� 
:
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
$str
��- /
,
��/ 0
$str
��1 E
)
��E F
;
��F G
return
�� 
View
�� 
(
��  
model
��  %
)
��% &
;
��& '
}
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
Register
�� $
(
��$ %
)
��% &
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
Register
��( 0
(
��0 1
RegisterViewModel
��1 B
model
��C H
)
��H I
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 
new
�� 
ApplicationUser
�� .
{
��/ 0
UserName
��1 9
=
��: ;
model
��< A
.
��A B
Email
��B G
,
��G H
Email
��I N
=
��O P
model
��Q V
.
��V W
Email
��W \
}
��] ^
;
��^ _
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
CreateAsync
��/ :
(
��: ;
user
��; ?
,
��? @
model
��A F
.
��F G
Password
��G O
)
��O P
;
��P Q
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��G L
,
��L M
rememberBrowser
��N ]
:
��] ^
false
��^ c
)
��c d
;
��d e"
ApplicationDbContext
�� (
db
��) +
=
��, -
new
��. 1"
ApplicationDbContext
��2 F
(
��F G
)
��G H
;
��H I
	Magazzino
�� 
m
�� 
=
��  !
new
��" %
	Magazzino
��& /
(
��/ 0
)
��0 1
{
�� 
UserId
�� 
=
��  
user
��! %
.
��% &
Id
��& (
}
�� 
;
�� 
db
�� 
.
�� 
Magazzinoes
�� "
.
��" #
Add
��# &
(
��& '
m
��' (
)
��( )
;
��) *
db
�� 
.
�� 
SaveChanges
�� "
(
��" #
)
��# $
;
��$ %
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 ;
)
��; <
;
��< =
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ConfirmEmail
��( 4
(
��4 5
string
��5 ;
userId
��< B
,
��B C
string
��D J
code
��K O
)
��O P
{
�� 	
if
�� 
(
�� 
userId
�� 
==
�� 
null
�� 
||
�� !
code
��" &
==
��' )
null
��* .
)
��. /
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +
ConfirmEmailAsync
��+ <
(
��< =
userId
��= C
,
��C D
code
��E I
)
��I J
;
��J K
return
�� 
View
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
?
��) *
$str
��+ 9
:
��: ;
$str
��< C
)
��C D
;
��D E
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
ForgotPassword
�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ForgotPassword
��( 6
(
��6 7%
ForgotPasswordViewModel
��7 N
model
��O T
)
��T U
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByNameAsync
��- <
(
��< =
model
��= B
.
��B C
Email
��C H
)
��H I
;
��I J
if
�� 
(
�� 
user
�� 
==
�� 
null
��  
||
��! #
!
��$ %
(
��% &
await
��& +
UserManager
��, 7
.
��7 8#
IsEmailConfirmedAsync
��8 M
(
��M N
user
��N R
.
��R S
Id
��S U
)
��U V
)
��V W
)
��W X
{
�� 
return
�� 
View
�� 
(
��  
$str
��  <
)
��< =
;
��= >
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� (
ForgotPasswordConfirmation
�� 6
(
��6 7
)
��7 8
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
ResetPassword
�� )
(
��) *
string
��* 0
code
��1 5
)
��5 6
{
�� 	
return
�� 
code
�� 
==
�� 
null
�� 
?
��  !
View
��" &
(
��& '
$str
��' .
)
��. /
:
��0 1
View
��2 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ResetPassword
��( 5
(
��5 6$
ResetPasswordViewModel
��6 L
model
��M R
)
��R S
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByNameAsync
��) 8
(
��8 9
model
��9 >
.
��> ?
Email
��? D
)
��D E
;
��E F
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( C
,
��C D
$str
��E N
)
��N O
;
��O P
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* + 
ResetPasswordAsync
��+ =
(
��= >
user
��> B
.
��B C
Id
��C E
,
��E F
model
��G L
.
��L M
Code
��M Q
,
��Q R
model
��S X
.
��X Y
Password
��Y a
)
��a b
;
��b c
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( C
,
��C D
$str
��E N
)
��N O
;
��O P
}
�� 
	AddErrors
�� 
(
�� 
result
�� 
)
�� 
;
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� '
ResetPasswordConfirmation
�� 5
(
��5 6
)
��6 7
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
ExternalLogin
�� )
(
��) *
string
��* 0
provider
��1 9
,
��9 :
string
��; A
	returnUrl
��B K
)
��K L
{
�� 	
return
�� 
new
�� 
ChallengeResult
�� &
(
��& '
provider
��' /
,
��/ 0
Url
��1 4
.
��4 5
Action
��5 ;
(
��; <
$str
��< S
,
��S T
$str
��U ^
,
��^ _
new
��` c
{
��d e
	ReturnUrl
��f o
=
��p q
	returnUrl
��r {
}
��| }
)
��} ~
)
��~ 
;�� �
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SendCode
��( 0
(
��0 1
string
��1 7
	returnUrl
��8 A
,
��A B
bool
��C G

rememberMe
��H R
)
��R S
{
�� 	
var
�� 
userId
�� 
=
�� 
await
�� 
SignInManager
�� ,
.
��, -$
GetVerifiedUserIdAsync
��- C
(
��C D
)
��D E
;
��E F
if
�� 
(
�� 
userId
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 
userFactors
�� 
=
�� 
await
�� #
UserManager
��$ /
.
��/ 0-
GetValidTwoFactorProvidersAsync
��0 O
(
��O P
userId
��P V
)
��V W
;
��W X
var
�� 
factorOptions
�� 
=
�� 
userFactors
��  +
.
��+ ,
Select
��, 2
(
��2 3
purpose
��3 :
=>
��; =
new
��> A
SelectListItem
��B P
{
��Q R
Text
��S W
=
��X Y
purpose
��Z a
,
��a b
Value
��c h
=
��i j
purpose
��k r
}
��s t
)
��t u
.
��u v
ToList
��v |
(
��| }
)
��} ~
;
��~ 
return
�� 
View
�� 
(
�� 
new
�� 
SendCodeViewModel
�� -
{
��. /
	Providers
��0 9
=
��: ;
factorOptions
��< I
,
��I J
	ReturnUrl
��K T
=
��U V
	returnUrl
��W `
,
��` a

RememberMe
��b l
=
��m n

rememberMe
��o y
}
��z {
)
��{ |
;
��| }
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SendCode
��( 0
(
��0 1
SendCodeViewModel
��1 B
model
��C H
)
��H I
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
await
�� 
SignInManager
�� $
.
��$ %$
SendTwoFactorCodeAsync
��% ;
(
��; <
model
��< A
.
��A B
SelectedProvider
��B R
)
��R S
)
��S T
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ 0
,
��0 1
new
��2 5
{
��6 7
Provider
��8 @
=
��A B
model
��C H
.
��H I
SelectedProvider
��I Y
,
��Y Z
	ReturnUrl
��[ d
=
��e f
model
��g l
.
��l m
	ReturnUrl
��m v
,
��v w

RememberMe��x �
=��� �
model��� �
.��� �

RememberMe��� �
}��� �
)��� �
;��� �
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '#
ExternalLoginCallback
��( =
(
��= >
string
��> D
	returnUrl
��E N
)
��N O
{
�� 	
var
�� 
	loginInfo
�� 
=
�� 
await
�� !#
AuthenticationManager
��" 7
.
��7 8'
GetExternalLoginInfoAsync
��8 Q
(
��Q R
)
��R S
;
��S T
if
�� 
(
�� 
	loginInfo
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
SignInManager
�� ,
.
��, -!
ExternalSignInAsync
��- @
(
��@ A
	loginInfo
��A J
,
��J K
isPersistent
��L X
:
��X Y
false
��Z _
)
��_ `
;
��` a
switch
�� 
(
�� 
result
�� 
)
�� 
{
�� 
case
�� 
SignInStatus
�� !
.
��! "
Success
��" )
:
��) *
return
�� 
RedirectToLocal
�� *
(
��* +
	returnUrl
��+ 4
)
��4 5
;
��5 6
case
�� 
SignInStatus
�� !
.
��! "
	LockedOut
��" +
:
��+ ,
return
�� 
View
�� 
(
��  
$str
��  )
)
��) *
;
��* +
case
�� 
SignInStatus
�� !
.
��! ""
RequiresVerification
��" 6
:
��6 7
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 6
,
��6 7
new
��8 ;
{
��< =
	ReturnUrl
��> G
=
��H I
	returnUrl
��J S
,
��S T

RememberMe
��U _
=
��` a
false
��b g
}
��h i
)
��i j
;
��j k
case
�� 
SignInStatus
�� !
.
��! "
Failure
��" )
:
��) *
default
�� 
:
�� 
ViewBag
�� 
.
�� 
	ReturnUrl
�� %
=
��& '
	returnUrl
��( 1
;
��1 2
ViewBag
�� 
.
�� 
LoginProvider
�� )
=
��* +
	loginInfo
��, 5
.
��5 6
Login
��6 ;
.
��; <
LoginProvider
��< I
;
��I J
return
�� 
View
�� 
(
��  
$str
��  ;
,
��; <
new
��= @0
"ExternalLoginConfirmationViewModel
��A c
{
��d e
Email
��f k
=
��l m
	loginInfo
��n w
.
��w x
Email
��x }
}
��~ 
)�� �
;��� �
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& ''
ExternalLoginConfirmation
��( A
(
��A B0
"ExternalLoginConfirmationViewModel
��B d
model
��e j
,
��j k
string
��l r
	returnUrl
��s |
)
��| }
{
�� 	
if
�� 
(
�� 
User
�� 
.
�� 
Identity
�� 
.
�� 
IsAuthenticated
�� -
)
��- .
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 9
)
��9 :
;
��: ;
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
info
�� 
=
�� 
await
��  #
AuthenticationManager
��! 6
.
��6 7'
GetExternalLoginInfoAsync
��7 P
(
��P Q
)
��Q R
;
��R S
if
�� 
(
�� 
info
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
View
�� 
(
��  
$str
��  6
)
��6 7
;
��7 8
}
�� 
var
�� 
user
�� 
=
�� 
new
�� 
ApplicationUser
�� .
{
��/ 0
UserName
��1 9
=
��: ;
model
��< A
.
��A B
Email
��B G
,
��G H
Email
��I N
=
��O P
model
��Q V
.
��V W
Email
��W \
}
��] ^
;
��^ _
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
CreateAsync
��/ :
(
��: ;
user
��; ?
)
��? @
;
��@ A
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
AddLoginAsync
��/ <
(
��< =
user
��= A
.
��A B
Id
��B D
,
��D E
info
��F J
.
��J K
Login
��K P
)
��P Q
;
��Q R
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
)
��( )
{
�� 
await
�� 
SignInManager
�� +
.
��+ ,
SignInAsync
��, 7
(
��7 8
user
��8 <
,
��< =
isPersistent
��> J
:
��J K
false
��L Q
,
��Q R
rememberBrowser
��S b
:
��b c
false
��d i
)
��i j
;
��j k
return
�� 
RedirectToLocal
�� .
(
��. /
	returnUrl
��/ 8
)
��8 9
;
��9 :
}
�� 
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
ViewBag
�� 
.
�� 
	ReturnUrl
�� 
=
�� 
	returnUrl
��  )
;
��) *
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
LogOff
�� "
(
��" #
)
��# $
{
�� 	#
AuthenticationManager
�� !
.
��! "
SignOut
��" )
(
��) *(
DefaultAuthenticationTypes
��* D
.
��D E
ApplicationCookie
��E V
)
��V W
;
��W X
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� "
ExternalLoginFailure
�� 0
(
��0 1
)
��1 2
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
)
�� 
{
�� 
if
�� 
(
�� 
_userManager
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
_userManager
��  
.
��  !
Dispose
��! (
(
��( )
)
��) *
;
��* +
_userManager
��  
=
��! "
null
��# '
;
��' (
}
�� 
if
�� 
(
�� 
_signInManager
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
_signInManager
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
;
��, -
_signInManager
�� "
=
��# $
null
��% )
;
��) *
}
�� 
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
private
�� 
const
�� 
string
�� 
XsrfKey
�� $
=
��% &
$str
��' /
;
��/ 0
private
�� $
IAuthenticationManager
�� &#
AuthenticationManager
��' <
{
�� 	
get
�� 
{
�� 
return
�� 
HttpContext
�� "
.
��" #
GetOwinContext
��# 1
(
��1 2
)
��2 3
.
��3 4
Authentication
��4 B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� 
	AddErrors
�� 
(
�� 
IdentityResult
�� -
result
��. 4
)
��4 5
{
�� 	
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
result
��" (
.
��( )
Errors
��) /
)
��/ 0
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) +
,
��+ ,
error
��- 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
ActionResult
�� 
RedirectToLocal
�� ,
(
��, -
string
��- 3
	returnUrl
��4 =
)
��= >
{
�� 	
if
�� 
(
�� 
Url
�� 
.
�� 

IsLocalUrl
�� 
(
�� 
	returnUrl
�� (
)
��( )
)
��) *
{
�� 
return
�� 
Redirect
�� 
(
��  
	returnUrl
��  )
)
��) *
;
��* +
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
}
�� 	
internal
�� 
class
�� 
ChallengeResult
�� &
:
��' ($
HttpUnauthorizedResult
��) ?
{
�� 	
public
�� 
ChallengeResult
�� "
(
��" #
string
��# )
provider
��* 2
,
��2 3
string
��4 :
redirectUri
��; F
)
��F G
:
�� 
this
�� 
(
�� 
provider
�� 
,
��  
redirectUri
��! ,
,
��, -
null
��. 2
)
��2 3
{
�� 
}
�� 
public
�� 
ChallengeResult
�� "
(
��" #
string
��# )
provider
��* 2
,
��2 3
string
��4 :
redirectUri
��; F
,
��F G
string
��H N
userId
��O U
)
��U V
{
�� 
LoginProvider
�� 
=
�� 
provider
��  (
;
��( )
RedirectUri
�� 
=
�� 
redirectUri
�� )
;
��) *
UserId
�� 
=
�� 
userId
�� 
;
��  
}
�� 
public
�� 
string
�� 
LoginProvider
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
RedirectUri
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
UserId
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
override
�� 
void
��  
ExecuteResult
��! .
(
��. /
ControllerContext
��/ @
context
��A H
)
��H I
{
�� 
var
�� 

properties
�� 
=
��  
new
��! $&
AuthenticationProperties
��% =
{
��> ?
RedirectUri
��@ K
=
��L M
RedirectUri
��N Y
}
��Z [
;
��[ \
if
�� 
(
�� 
UserId
�� 
!=
�� 
null
�� "
)
��" #
{
�� 

properties
�� 
.
�� 

Dictionary
�� )
[
��) *
XsrfKey
��* 1
]
��1 2
=
��3 4
UserId
��5 ;
;
��; <
}
�� 
context
�� 
.
�� 
HttpContext
�� #
.
��# $
GetOwinContext
��$ 2
(
��2 3
)
��3 4
.
��4 5
Authentication
��5 C
.
��C D
	Challenge
��D M
(
��M N

properties
��N X
,
��X Y
LoginProvider
��Z g
)
��g h
;
��h i
}
�� 
}
�� 	
}
�� 
}�� �@
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
�� 
ActionResult
�� 
DeleteConfirmed
�� +
(
��+ ,
int
��, /
id
��0 2
)
��2 3
{
�� 	
Additivi
�� 
additivi
�� 
=
�� 
db
��  "
.
��" #
Additivi
��# +
.
��+ ,
Find
��, 0
(
��0 1
id
��1 3
)
��3 4
;
��4 5
db
�� 
.
�� 
Additivi
�� 
.
�� 
Remove
�� 
(
�� 
additivi
�� '
)
��' (
;
��( )
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
)
�� 
{
�� 
db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
}
�� 
}�� �
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
}   �@
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
}�� �@
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
}�� �|
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
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
Entry
�� 
(
�� 
	magazzino
�� "
)
��" #
.
��# $
State
��$ )
=
��* +
EntityState
��, 7
.
��7 8
Modified
��8 @
;
��@ A
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
return
�� 
View
�� 
(
�� 
	magazzino
�� !
)
��! "
;
��" #
}
�� 	
public
�� 
ActionResult
�� 
Delete
�� "
(
��" #
int
��# &
?
��& '
id
��( *
)
��* +
{
�� 	
var
�� 
me
�� 
=
�� 
db
�� 
.
�� 
Users
�� 
.
�� 
First
�� #
(
��# $
x
��$ %
=>
��& (
x
��) *
.
��* +
UserName
��+ 3
==
��4 6
User
��7 ;
.
��; <
Identity
��< D
.
��D E
Name
��E I
)
��I J
;
��J K
if
�� 
(
�� 
id
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� "
HttpStatusCodeResult
�� /
(
��/ 0
HttpStatusCode
��0 >
.
��> ?

BadRequest
��? I
)
��I J
;
��J K
}
�� 
	Magazzino
�� 
	magazzino
�� 
=
��  !
db
��" $
.
��$ %
Magazzinoes
��% 0
.
��0 1
Find
��1 5
(
��5 6
id
��6 8
)
��8 9
;
��9 :
if
�� 
(
�� 
	magazzino
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
HttpNotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
return
�� 
View
�� 
(
�� 
	magazzino
�� !
)
��! "
;
��" #
}
�� 	
[
�� 	
HttpPost
��	 
,
�� 

ActionName
�� 
(
�� 
$str
�� &
)
��& '
]
��' (
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
DeleteConfirmed
�� +
(
��+ ,
int
��, /
id
��0 2
)
��2 3
{
�� 	
var
�� 
me
�� 
=
�� 
db
�� 
.
�� 
Users
�� 
.
�� 
First
�� #
(
��# $
x
��$ %
=>
��& (
x
��) *
.
��* +
UserName
��+ 3
==
��4 6
User
��7 ;
.
��; <
Identity
��< D
.
��D E
Name
��E I
)
��I J
;
��J K
	Magazzino
�� 
	magazzino
�� 
=
��  !
db
��" $
.
��$ %
Magazzinoes
��% 0
.
��0 1
Find
��1 5
(
��5 6
id
��6 8
)
��8 9
;
��9 :
db
�� 
.
�� 
Magazzinoes
�� 
.
�� 
Remove
�� !
(
��! "
	magazzino
��" +
)
��+ ,
;
��, -
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
public
�� 
ActionResult
�� 
AggiungiAdditivo
�� ,
(
��, -
)
��- .
{
�� 	
AdditiviMagazzino
�� 
am
��  
=
��! "
new
��# &
AdditiviMagazzino
��' 8
(
��8 9
)
��9 :
;
��: ;
var
�� 
me
�� 
=
�� 
db
�� 
.
�� 
Users
�� 
.
�� 
First
�� #
(
��# $
x
��$ %
=>
��& (
x
��) *
.
��* +
UserName
��+ 3
==
��4 6
User
��7 ;
.
��; <
Identity
��< D
.
��D E
Name
��E I
)
��I J
;
��J K
	Magazzino
�� 
	magazzino
�� 
=
��  !
db
��" $
.
��$ %
Magazzinoes
��% 0
.
��0 1
FirstOrDefault
��1 ?
(
��? @
x
��@ A
=>
��B D
x
��E F
.
��F G
UserId
��G M
==
��N P
me
��Q S
.
��S T
Id
��T V
)
��V W
;
��W X
am
�� 
.
�� 
	Magazzino
�� 
=
�� 
	magazzino
�� $
;
��$ %
am
�� 
.
�� 
MagazzinoId
�� 
=
�� 
	magazzino
�� &
.
��& '
MagazzinoId
��' 2
;
��2 3

SelectList
�� 
Additivi
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
db
��1 3
.
��3 4
Additivi
��4 <
,
��< =
$str
��= I
,
��I J
$str
��J P
)
��P Q
;
��Q R
ViewBag
�� 
.
�� 
Additivi
�� 
=
�� 
Additivi
�� '
;
��' (
return
�� 
View
�� 
(
�� 
am
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
AggiungiAdditivo
�� ,
(
��, -
AdditiviMagazzino
��- >
am
��? A
)
��A B
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
��  
AdditiviMagazzinos
�� %
.
��% &
Add
��& )
(
��) *
am
��* ,
)
��, -
;
��- .
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
var
�� 
me
�� 
=
�� 
db
�� 
.
�� 
Users
�� 
.
�� 
First
�� #
(
��# $
x
��$ %
=>
��& (
x
��) *
.
��* +
UserName
��+ 3
==
��4 6
User
��7 ;
.
��; <
Identity
��< D
.
��D E
Name
��E I
)
��I J
;
��J K
	Magazzino
�� 
	magazzino
�� 
=
��  !
db
��" $
.
��$ %
Magazzinoes
��% 0
.
��0 1
FirstOrDefault
��1 ?
(
��? @
x
��@ A
=>
��B D
x
��E F
.
��F G
UserId
��G M
==
��N P
me
��Q S
.
��S T
Id
��T V
)
��V W
;
��W X
am
�� 
.
�� 
	Magazzino
�� 
=
�� 
	magazzino
�� $
;
��$ %
am
�� 
.
�� 
MagazzinoId
�� 
=
�� 
	magazzino
�� &
.
��& '
MagazzinoId
��' 2
;
��2 3

SelectList
�� 
Additivi
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
db
��1 3
.
��3 4
Additivi
��4 <
,
��< =
$str
��> J
,
��J K
$str
��L R
)
��R S
;
��S T
ViewBag
�� 
.
�� 
Additivi
�� 
=
�� 
Additivi
�� '
;
��' (
return
�� 
View
�� 
(
�� 
am
�� 
)
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
)
�� 
{
�� 
db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
}
�� 
}�� �@
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
}�� �
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
$str	;;C �
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
providerKey	TTx �
)
TT� �
)
TT� �
;
TT� �
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
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ 7
,
��7 8
new
��9 <
{
��= >
PhoneNumber
��? J
=
��K L
model
��M R
.
��R S
Number
��S Y
}
��Z [
)
��[ \
;
��\ ]
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '+
EnableTwoFactorAuthentication
��( E
(
��E F
)
��F G
{
�� 	
await
�� 
UserManager
�� 
.
�� &
SetTwoFactorEnabledAsync
�� 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
,
��P Q
true
��R V
)
��V W
;
��W X
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 5
)
��5 6
;
��6 7
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& ',
DisableTwoFactorAuthentication
��( F
(
��F G
)
��G H
{
�� 	
await
�� 
UserManager
�� 
.
�� &
SetTwoFactorEnabledAsync
�� 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
,
��P Q
false
��R W
)
��W X
;
��X Y
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
VerifyPhoneNumber
��( 9
(
��9 :
string
��: @
phoneNumber
��A L
)
��L M
{
�� 	
var
�� 
code
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )1
#GenerateChangePhoneNumberTokenAsync
��) L
(
��L M
User
��M Q
.
��Q R
Identity
��R Z
.
��Z [
	GetUserId
��[ d
(
��d e
)
��e f
,
��f g
phoneNumber
��h s
)
��s t
;
��t u
return
�� 
phoneNumber
�� 
==
�� !
null
��" &
?
��' (
View
��) -
(
��- .
$str
��. 5
)
��5 6
:
��7 8
View
��9 =
(
��= >
new
��> A(
VerifyPhoneNumberViewModel
��B \
{
��] ^
PhoneNumber
��_ j
=
��k l
phoneNumber
��m x
}
��y z
)
��z {
;
��{ |
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
VerifyPhoneNumber
��( 9
(
��9 :(
VerifyPhoneNumberViewModel
��: T
model
��U Z
)
��Z [
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +$
ChangePhoneNumberAsync
��+ A
(
��A B
User
��B F
.
��F G
Identity
��G O
.
��O P
	GetUserId
��P Y
(
��Y Z
)
��Z [
,
��[ \
model
��] b
.
��b c
PhoneNumber
��c n
,
��n o
model
��p u
.
��u v
Code
��v z
)
��z {
;
��{ |
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByIdAsync
��- :
(
��: ;
User
��; ?
.
��? @
Identity
��@ H
.
��H I
	GetUserId
��I R
(
��R S
)
��S T
)
��T U
;
��U V
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  
)
��  !
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��H M
,
��M N
rememberBrowser
��O ^
:
��^ _
false
��` e
)
��e f
;
��f g
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q
AddPhoneSuccess
��Q `
}
��a b
)
��b c
;
��c d
}
�� 

ModelState
�� 
.
�� 
AddModelError
�� $
(
��$ %
$str
��% '
,
��' (
$str
��) W
)
��W X
;
��X Y
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
RemovePhoneNumber
��( 9
(
��9 :
)
��: ;
{
�� 	
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +!
SetPhoneNumberAsync
��+ >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
,
��X Y
null
��Z ^
)
��^ _
;
��_ `
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q
Error
��Q V
}
��W X
)
��X Y
;
��Y Z
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
new
��- 0
{
��1 2
Message
��3 :
=
��; <
ManageMessageId
��= L
.
��L M 
RemovePhoneSuccess
��M _
}
��` a
)
��a b
;
��b c
}
�� 	
public
�� 
ActionResult
�� 
ChangePassword
�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ChangePassword
��( 6
(
��6 7%
ChangePasswordViewModel
��7 N
model
��O T
)
��T U
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +!
ChangePasswordAsync
��+ >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
,
��X Y
model
��Z _
.
��_ `
OldPassword
��` k
,
��k l
model
��m r
.
��r s
NewPassword
��s ~
)
��~ 
;�� �
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByIdAsync
��- :
(
��: ;
User
��; ?
.
��? @
Identity
��@ H
.
��H I
	GetUserId
��I R
(
��R S
)
��S T
)
��T U
;
��U V
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  
)
��  !
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��H M
,
��M N
rememberBrowser
��O ^
:
��^ _
false
��` e
)
��e f
;
��f g
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q#
ChangePasswordSuccess
��Q f
}
��g h
)
��h i
;
��i j
}
�� 
	AddErrors
�� 
(
�� 
result
�� 
)
�� 
;
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
SetPassword
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SetPassword
��( 3
(
��3 4"
SetPasswordViewModel
��4 H
model
��I N
)
��N O
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
AddPasswordAsync
��/ ?
(
��? @
User
��@ D
.
��D E
Identity
��E M
.
��M N
	GetUserId
��N W
(
��W X
)
��X Y
,
��Y Z
model
��[ `
.
��` a
NewPassword
��a l
)
��l m
;
��m n
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
var
�� 
user
�� 
=
�� 
await
�� $
UserManager
��% 0
.
��0 1
FindByIdAsync
��1 >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
)
��X Y
;
��Y Z
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
await
�� 
SignInManager
�� +
.
��+ ,
SignInAsync
��, 7
(
��7 8
user
��8 <
,
��< =
isPersistent
��> J
:
��J K
false
��L Q
,
��Q R
rememberBrowser
��S b
:
��b c
false
��d i
)
��i j
;
��j k
}
�� 
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
new
��5 8
{
��9 :
Message
��; B
=
��C D
ManageMessageId
��E T
.
��T U 
SetPasswordSuccess
��U g
}
��h i
)
��i j
;
��j k
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ManageLogins
��( 4
(
��4 5
ManageMessageId
��5 D
?
��D E
message
��F M
)
��M N
{
�� 	
ViewBag
�� 
.
�� 
StatusMessage
�� !
=
��" #
message
�� 
==
�� 
ManageMessageId
�� *
.
��* + 
RemoveLoginSuccess
��+ =
?
��> ?
$str
��@ o
:
�� 
message
�� 
==
�� 
ManageMessageId
�� ,
.
��, -
Error
��- 2
?
��3 4
$str
��5 Q
:
�� 
$str
�� 
;
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 

userLogins
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
GetLoginsAsync
��/ =
(
��= >
User
��> B
.
��B C
Identity
��C K
.
��K L
	GetUserId
��L U
(
��U V
)
��V W
)
��W X
;
��X Y
var
�� 
otherLogins
�� 
=
�� #
AuthenticationManager
�� 3
.
��3 4,
GetExternalAuthenticationTypes
��4 R
(
��R S
)
��S T
.
��T U
Where
��U Z
(
��Z [
auth
��[ _
=>
��` b

userLogins
��c m
.
��m n
All
��n q
(
��q r
ul
��r t
=>
��u w
auth
��x |
.
��| }!
AuthenticationType��} �
!=��� �
ul��� �
.��� �
LoginProvider��� �
)��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
ShowRemoveButton
�� $
=
��% &
user
��' +
.
��+ ,
PasswordHash
��, 8
!=
��9 ;
null
��< @
||
��A C

userLogins
��D N
.
��N O
Count
��O T
>
��U V
$num
��W X
;
��X Y
return
�� 
View
�� 
(
�� 
new
�� #
ManageLoginsViewModel
�� 1
{
�� 
CurrentLogins
�� 
=
�� 

userLogins
��  *
,
��* +
OtherLogins
�� 
=
�� 
otherLogins
�� )
}
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
	LinkLogin
�� %
(
��% &
string
��& ,
provider
��- 5
)
��5 6
{
�� 	
return
�� 
new
�� 
AccountController
�� (
.
��( )
ChallengeResult
��) 8
(
��8 9
provider
��9 A
,
��A B
Url
��C F
.
��F G
Action
��G M
(
��M N
$str
��N a
,
��a b
$str
��c k
)
��k l
,
��l m
User
��n r
.
��r s
Identity
��s {
.
��{ |
	GetUserId��| �
(��� �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
LinkLoginCallback
��( 9
(
��9 :
)
��: ;
{
�� 	
var
�� 
	loginInfo
�� 
=
�� 
await
�� !#
AuthenticationManager
��" 7
.
��7 8'
GetExternalLoginInfoAsync
��8 Q
(
��Q R
XsrfKey
��R Y
,
��Y Z
User
��[ _
.
��_ `
Identity
��` h
.
��h i
	GetUserId
��i r
(
��r s
)
��s t
)
��t u
;
��u v
if
�� 
(
�� 
	loginInfo
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 6
,
��6 7
new
��8 ;
{
��< =
Message
��> E
=
��F G
ManageMessageId
��H W
.
��W X
Error
��X ]
}
��^ _
)
��_ `
;
��` a
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +
AddLoginAsync
��+ 8
(
��8 9
User
��9 =
.
��= >
Identity
��> F
.
��F G
	GetUserId
��G P
(
��P Q
)
��Q R
,
��R S
	loginInfo
��T ]
.
��] ^
Login
��^ c
)
��c d
;
��d e
return
�� 
result
�� 
.
�� 
	Succeeded
�� #
?
��$ %
RedirectToAction
��& 6
(
��6 7
$str
��7 E
)
��E F
:
��G H
RedirectToAction
��I Y
(
��Y Z
$str
��Z h
,
��h i
new
��j m
{
��n o
Message
��p w
=
��x y
ManageMessageId��z �
.��� �
Error��� �
}��� �
)��� �
;��� �
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
&&
�� 
_userManager
�� )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
_userManager
�� 
.
�� 
Dispose
�� $
(
��$ %
)
��% &
;
��& '
_userManager
�� 
=
�� 
null
�� #
;
��# $
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
private
�� 
const
�� 
string
�� 
XsrfKey
�� $
=
��% &
$str
��' /
;
��/ 0
private
�� $
IAuthenticationManager
�� &#
AuthenticationManager
��' <
{
�� 	
get
�� 
{
�� 
return
�� 
HttpContext
�� "
.
��" #
GetOwinContext
��# 1
(
��1 2
)
��2 3
.
��3 4
Authentication
��4 B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� 
	AddErrors
�� 
(
�� 
IdentityResult
�� -
result
��. 4
)
��4 5
{
�� 	
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
result
��" (
.
��( )
Errors
��) /
)
��/ 0
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) +
,
��+ ,
error
��- 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
bool
�� 
HasPassword
��  
(
��  !
)
��! "
{
�� 	
var
�� 
user
�� 
=
�� 
UserManager
�� "
.
��" #
FindById
��# +
(
��+ ,
User
��, 0
.
��0 1
Identity
��1 9
.
��9 :
	GetUserId
��: C
(
��C D
)
��D E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
user
�� 
.
�� 
PasswordHash
�� (
!=
��) +
null
��, 0
;
��0 1
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
HasPhoneNumber
�� #
(
��# $
)
��$ %
{
�� 	
var
�� 
user
�� 
=
�� 
UserManager
�� "
.
��" #
FindById
��# +
(
��+ ,
User
��, 0
.
��0 1
Identity
��1 9
.
��9 :
	GetUserId
��: C
(
��C D
)
��D E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
user
�� 
.
�� 
PhoneNumber
�� '
!=
��( *
null
��+ /
;
��/ 0
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
enum
�� 
ManageMessageId
�� #
{
�� 	
AddPhoneSuccess
�� 
,
�� #
ChangePasswordSuccess
�� !
,
��! "!
SetTwoFactorSuccess
�� 
,
��   
SetPasswordSuccess
�� 
,
��  
RemoveLoginSuccess
�� 
,
��  
RemovePhoneSuccess
�� 
,
�� 
Error
�� 
}
�� 	
}
�� 
}�� ��
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
�� 
(
�� 
var
�� 
additiviMagazzino
�� *
in
��+ -
m
��. /
.
��/ 0
ZuccheriUtente
��0 >
)
��> ?
{
�� 
z
�� 
.
�� 
Add
�� 
(
�� 
db
�� 
.
�� 
Zuccheri
�� !
.
��! "
Where
��" '
(
��' (
x
��( )
=>
��* ,
x
��- .
.
��. /

ZuccheriId
��/ 9
==
��: <
additiviMagazzino
��= N
.
��N O

ZuccheriId
��O Y
)
��Y Z
.
��Z [
FirstOrDefault
��[ i
(
��i j
)
��j k
)
��k l
;
��l m
}
�� 
foreach
�� 
(
�� 
var
�� 
ricette
��  
in
��! #
db
��$ &
.
��& '
Ricette
��' .
)
��. /
{
�� 
if
�� 
(
�� 
z
�� 
.
�� 
All
�� 
(
�� 
x
�� 
=>
�� 
ricette
�� &
.
��& '
	Zuccheris
��' 0
.
��0 1
Contains
��1 9
(
��9 :
x
��: ;
)
��; <
)
��< =
)
��= >
{
�� 
Zuccheri
�� 
.
�� 
Add
��  
(
��  !
ricette
��! (
)
��( )
;
��) *
}
�� 
}
�� 
var
�� 
valide
�� 
=
�� 
Additivi
�� !
.
��! "
	Intersect
��" +
(
��+ ,
Malti
��, 1
)
��1 2
.
��2 3
	Intersect
��3 <
(
��< =
Luppoli
��= D
)
��D E
.
��E F
	Intersect
��F O
(
��O P
Lieviti
��P W
)
��W X
.
��X Y
	Intersect
��Y b
(
��b c
Zuccheri
��c k
)
��k l
;
��l m
Random
�� 
r
�� 
=
�� 
new
�� 
Random
�� !
(
��! "
)
��" #
;
��# $
int
�� 
quale
�� 
=
�� 
r
�� 
.
�� 
Next
�� 
(
�� 
$num
��  
,
��  !
valide
��" (
.
��( )
Count
��) .
(
��. /
)
��/ 0
)
��0 1
;
��1 2
return
�� 
View
�� 
(
�� 
valide
�� 
.
�� 
	ElementAt
�� (
(
��( )
quale
��) .
)
��. /
)
��/ 0
;
��0 1
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
Create
�� "
(
��" #
Ricette
��# *
ricette
��+ 2
)
��2 3
{
�� 	
ricette
�� 
.
�� 
UserId
�� 
=
�� 
User
�� !
.
��! "
Identity
��" *
.
��* +
	GetUserId
��+ 4
(
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
Ricette
�� 
.
�� 
Add
�� 
(
�� 
ricette
�� &
)
��& '
;
��' (
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
return
�� 
View
�� 
(
�� 
ricette
�� 
)
��  
;
��  !
}
�� 	
public
�� 
ActionResult
�� 
Edit
��  
(
��  !
int
��! $
?
��$ %
id
��& (
)
��( )
{
�� 	
if
�� 
(
�� 
id
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� "
HttpStatusCodeResult
�� /
(
��/ 0
HttpStatusCode
��0 >
.
��> ?

BadRequest
��? I
)
��I J
;
��J K
}
�� 
Ricette
�� 
ricette
�� 
=
�� 
db
��  
.
��  !
Ricette
��! (
.
��( )
Find
��) -
(
��- .
id
��. 0
)
��0 1
;
��1 2
if
�� 
(
�� 
ricette
�� 
==
�� 
null
�� 
)
��  
{
�� 
return
�� 
HttpNotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
return
�� 
View
�� 
(
�� 
ricette
�� 
)
��  
;
��  !
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
Edit
��  
(
��  !
Ricette
��! (
ricette
��) 0
)
��0 1
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
Entry
�� 
(
�� 
ricette
��  
)
��  !
.
��! "
State
��" '
=
��( )
EntityState
��* 5
.
��5 6
Modified
��6 >
;
��> ?
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
return
�� 
View
�� 
(
�� 
ricette
�� 
)
��  
;
��  !
}
�� 	
public
�� 
ActionResult
�� 
Delete
�� "
(
��" #
int
��# &
?
��& '
id
��( *
)
��* +
{
�� 	
if
�� 
(
�� 
id
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� "
HttpStatusCodeResult
�� /
(
��/ 0
HttpStatusCode
��0 >
.
��> ?

BadRequest
��? I
)
��I J
;
��J K
}
�� 
Ricette
�� 
ricette
�� 
=
�� 
db
��  
.
��  !
Ricette
��! (
.
��( )
Find
��) -
(
��- .
id
��. 0
)
��0 1
;
��1 2
if
�� 
(
�� 
ricette
�� 
==
�� 
null
�� 
)
��  
{
�� 
return
�� 
HttpNotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
return
�� 
View
�� 
(
�� 
ricette
�� 
)
��  
;
��  !
}
�� 	
[
�� 	
HttpPost
��	 
,
�� 

ActionName
�� 
(
�� 
$str
�� &
)
��& '
]
��' (
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
DeleteConfirmed
�� +
(
��+ ,
int
��, /
id
��0 2
)
��2 3
{
�� 	
Ricette
�� 
ricette
�� 
=
�� 
db
��  
.
��  !
Ricette
��! (
.
��( )
Find
��) -
(
��- .
id
��. 0
)
��0 1
;
��1 2
db
�� 
.
�� 
Ricette
�� 
.
�� 
Remove
�� 
(
�� 
ricette
�� %
)
��% &
;
��& '
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
)
�� 
{
�� 
db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
public
�� 
ActionResult
�� 
AggiungiAdditivo
�� ,
(
��, -
int
��- 0
id
��1 3
)
��3 4
{
�� 	
AdditiviRicetta
�� 
ar
�� 
=
��  
new
��! $
AdditiviRicetta
��% 4
{
��5 6
	RicettaId
��7 @
=
��A B
id
��C E
}
��F G
;
��G H

SelectList
�� 

AdditiviId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
db
��3 5
.
��5 6
Additivi
��6 >
,
��> ?
$str
��@ L
,
��L M
$str
��N T
)
��T U
;
��U V
ViewBag
�� 
.
�� 
additivi
�� 
=
�� 

AdditiviId
�� )
;
��) *
return
�� 
View
�� 
(
�� 
ar
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
AggiungiAdditivo
�� ,
(
��, -
AdditiviRicetta
��- <
ar
��= ?
)
��? @
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
AdditiviRicettas
�� #
.
��# $
Add
��$ '
(
��' (
ar
��( *
)
��* +
;
��+ ,
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 

AdditiviId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
db
��3 5
.
��5 6
Additivi
��6 >
,
��> ?
$str
��@ L
,
��L M
$str
��N T
)
��T U
;
��U V
ViewBag
�� 
.
�� 
additivi
�� 
=
�� 

AdditiviId
�� )
;
��) *
return
�� 
View
�� 
(
�� 
ar
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
AggiungiLievito
�� +
(
��+ ,
int
��, /
id
��0 2
)
��2 3
{
�� 	
LievitiRicetta
�� 
lr
�� 
=
�� 
new
��  #
LievitiRicetta
��$ 2
{
��3 4
	RicettaId
��5 >
=
��? @
id
��A C
}
��D E
;
��E F

SelectList
�� 
	LievitiId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
db
��2 4
.
��4 5
Lieviti
��5 <
,
��< =
$str
��> I
,
��I J
$str
��K Q
)
��Q R
;
��R S
ViewBag
�� 
.
�� 
lieviti
�� 
=
�� 
	LievitiId
�� '
;
��' (
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
AggiungiLievito
�� +
(
��+ ,
LievitiRicetta
��, :
lr
��; =
)
��= >
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
LievitiRicettas
�� "
.
��" #
Add
��# &
(
��& '
lr
��' )
)
��) *
;
��* +
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 
	LievitiId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
db
��2 4
.
��4 5
Lieviti
��5 <
,
��< =
$str
��> I
,
��I J
$str
��K Q
)
��Q R
;
��R S
ViewBag
�� 
.
�� 
lieviti
�� 
=
�� 
	LievitiId
�� '
;
��' (
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
AggiungiLuppolo
�� +
(
��+ ,
int
��, /
id
��0 2
)
��2 3
{
�� 	
LuppoliRicetta
�� 
lr
�� 
=
�� 
new
��  #
LuppoliRicetta
��$ 2
{
��3 4
	RicettaId
��5 >
=
��? @
id
��A C
}
��D E
;
��E F

SelectList
�� 
	LuppoliId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
db
��2 4
.
��4 5
Luppoli
��5 <
,
��< =
$str
��> I
,
��I J
$str
��K Q
)
��Q R
;
��R S
ViewBag
�� 
.
�� 
luppoli
�� 
=
�� 
	LuppoliId
�� '
;
��' (
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
AggiungiLuppolo
�� +
(
��+ ,
LuppoliRicetta
��, :
lr
��; =
)
��= >
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
LuppoliRicettas
�� "
.
��" #
Add
��# &
(
��& '
lr
��' )
)
��) *
;
��* +
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 
	LuppoliId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
db
��2 4
.
��4 5
Luppoli
��5 <
,
��< =
$str
��> I
,
��I J
$str
��K Q
)
��Q R
;
��R S
ViewBag
�� 
.
�� 
luppoli
�� 
=
�� 
	LuppoliId
�� '
;
��' (
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
AggiungiMalti
�� )
(
��) *
int
��* -
id
��. 0
)
��0 1
{
�� 	
MaltiRicetta
�� 
mr
�� 
=
�� 
new
�� !
MaltiRicetta
��" .
{
��/ 0
MaltiId
��1 8
=
��9 :
id
��; =
}
��> ?
;
��? @

SelectList
�� 
MaltiId
�� 
=
��  
new
��! $

SelectList
��% /
(
��/ 0
db
��0 2
.
��2 3
Malti
��3 8
,
��8 9
$str
��: C
,
��C D
$str
��E K
)
��K L
;
��L M
ViewBag
�� 
.
�� 
malti
�� 
=
�� 
MaltiId
�� #
;
��# $
return
�� 
View
�� 
(
�� 
mr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
AggiungiMalti
�� )
(
��) *
MaltiRicetta
��* 6
mr
��7 9
)
��9 :
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
MaltiRicettas
��  
.
��  !
Add
��! $
(
��$ %
mr
��% '
)
��' (
;
��( )
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 
MaltiId
�� 
=
��  
new
��! $

SelectList
��% /
(
��/ 0
db
��0 2
.
��2 3
Malti
��3 8
,
��8 9
$str
��: C
,
��C D
$str
��E K
)
��K L
;
��L M
ViewBag
�� 
.
�� 
malti
�� 
=
�� 
MaltiId
�� #
;
��# $
return
�� 
View
�� 
(
�� 
mr
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
AggiungiZuccheri
�� ,
(
��, -
int
��- 0
id
��1 3
)
��3 4
{
�� 	
ZuccheriRicetta
�� 
zr
�� 
=
��  
new
��! $
ZuccheriRicetta
��% 4
{
��5 6
	RicettaId
��7 @
=
��A B
id
��C E
}
��F G
;
��G H

SelectList
�� 

ZuccheriId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
db
��3 5
.
��5 6
Zuccheri
��6 >
,
��> ?
$str
��@ L
,
��L M
$str
��N T
)
��T U
;
��U V
ViewBag
�� 
.
�� 
zuccheri
�� 
=
�� 

ZuccheriId
�� )
;
��) *
return
�� 
View
�� 
(
�� 
zr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
AggiungiZuccheri
�� ,
(
��, -
ZuccheriRicetta
��- <
zr
��= ?
)
��? @
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
ZuccheriRicettas
�� #
.
��# $
Add
��$ '
(
��' (
zr
��( *
)
��* +
;
��+ ,
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 

ZuccheriId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
db
��3 5
.
��5 6
Zuccheri
��6 >
,
��> ?
$str
��@ L
,
��L M
$str
��N T
)
��T U
;
��U V
ViewBag
�� 
.
�� 
zuccheri
�� 
=
�� 

ZuccheriId
�� )
;
��) *
return
�� 
View
�� 
(
�� 
zr
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
EditAdditivo
�� (
(
��( )
int
��) ,
id
��- /
,
��/ 0
int
��1 4
idr
��5 8
)
��8 9
{
�� 	
AdditiviRicetta
�� 
ar
�� 
=
��  
db
��! #
.
��# $
AdditiviRicettas
��$ 4
.
��4 5
Where
��5 :
(
��: ;
x
��; <
=>
��= ?
x
��@ A
.
��A B

AdditiviId
��B L
==
��M O
id
��P R
&&
��S U
x
��V W
.
��W X
	RicettaId
��X a
==
��b d
idr
��e h
)
��h i
.
��i j
FirstOrDefault
��j x
(
��x y
)
��y z
;
��z {
return
�� 
View
�� 
(
�� 
ar
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
EditAdditivo
�� (
(
��( )
AdditiviRicetta
��) 8
ar
��9 ;
)
��; <
{
�� 	
AdditiviRicetta
�� 
ar2
�� 
=
��  !
db
��" $
.
��$ %
AdditiviRicettas
��% 5
.
��5 6
Where
��6 ;
(
��; <
x
��< =
=>
��> @
x
��A B
.
��B C

AdditiviId
��C M
==
��N P
ar
��Q S
.
��S T

AdditiviId
��T ^
&&
��_ a
x
��b c
.
��c d
	RicettaId
��d m
==
��n p
ar
��q s
.
��s t
	RicettaId
��t }
)
��} ~
.
��~ 
FirstOrDefault�� �
(��� �
)��� �
;��� �
ar2
�� 
.
�� 
Quantita
�� 
=
�� 
ar
�� 
.
�� 
Quantita
�� &
;
��& '
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 

AdditiviId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
db
��3 5
.
��5 6
Additivi
��6 >
,
��> ?
$str
��@ L
,
��L M
$str
��N T
)
��T U
;
��U V
ViewBag
�� 
.
�� 
additivi
�� 
=
�� 

AdditiviId
�� )
;
��) *
return
�� 
View
�� 
(
�� 
ar
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
EditLievito
�� '
(
��' (
int
��( +
id
��, .
,
��. /
int
��0 3
idr
��4 7
)
��7 8
{
�� 	
LievitiRicetta
�� 
lr
�� 
=
�� 
db
��  "
.
��" #
LievitiRicettas
��# 2
.
��2 3
Where
��3 8
(
��8 9
x
��9 :
=>
��; =
x
��> ?
.
��? @
	LievitoId
��@ I
==
��J L
id
��M O
&&
��P R
x
��S T
.
��T U
	RicettaId
��U ^
==
��_ a
idr
��b e
)
��e f
.
��f g
FirstOrDefault
��g u
(
��u v
)
��v w
;
��w x
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
EditLievito
�� '
(
��' (
LievitiRicetta
��( 6
lr
��7 9
)
��9 :
{
�� 	
LievitiRicetta
�� 
lr2
�� 
=
��  
db
��! #
.
��# $
LievitiRicettas
��$ 3
.
��3 4
Where
��4 9
(
��9 :
x
��: ;
=>
��< >
x
��? @
.
��@ A
	LievitoId
��A J
==
��K M
lr
��N P
.
��P Q
	LievitoId
��Q Z
&&
��[ ]
x
��^ _
.
��_ `
	RicettaId
��` i
==
��j l
lr
��m o
.
��o p
	RicettaId
��p y
)
��y z
.
��z {
FirstOrDefault��{ �
(��� �
)��� �
;��� �
lr2
�� 
.
�� 
Quantita
�� 
=
�� 
lr
�� 
.
�� 
Quantita
�� &
;
��& '
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 
	LievitiId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
db
��2 4
.
��4 5
Lieviti
��5 <
,
��< =
$str
��> I
,
��I J
$str
��K Q
)
��Q R
;
��R S
ViewBag
�� 
.
�� 
lieviti
�� 
=
�� 
	LievitiId
�� '
;
��' (
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
EditLuppolo
�� '
(
��' (
int
��( +
id
��, .
,
��. /
int
��0 3
idr
��4 7
)
��7 8
{
�� 	
LuppoliRicetta
�� 
lr
�� 
=
�� 
db
��  "
.
��" #
LuppoliRicettas
��# 2
.
��2 3
Where
��3 8
(
��8 9
x
��9 :
=>
��; =
x
��> ?
.
��? @
	LuppoliId
��@ I
==
��J L
id
��M O
&&
��P R
x
��S T
.
��T U
	RicettaId
��U ^
==
��_ a
idr
��b e
)
��e f
.
��f g
FirstOrDefault
��g u
(
��u v
)
��v w
;
��w x
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
EditLuppolo
�� '
(
��' (
LuppoliRicetta
��( 6
lr
��7 9
)
��9 :
{
�� 	
LuppoliRicetta
�� 
lr2
�� 
=
��  
db
��! #
.
��# $
LuppoliRicettas
��$ 3
.
��3 4
Where
��4 9
(
��9 :
x
��: ;
=>
��< >
x
��? @
.
��@ A
	LuppoliId
��A J
==
��K M
lr
��N P
.
��P Q
	LuppoliId
��Q Z
&&
��[ ]
x
��^ _
.
��_ `
	RicettaId
��` i
==
��j l
lr
��m o
.
��o p
	RicettaId
��p y
)
��y z
.
��z {
FirstOrDefault��{ �
(��� �
)��� �
;��� �
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 
	LuppoliId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
db
��2 4
.
��4 5
Luppoli
��5 <
,
��< =
$str
��> I
,
��I J
$str
��K Q
)
��Q R
;
��R S
ViewBag
�� 
.
�� 
luppoli
�� 
=
�� 
	LuppoliId
�� '
;
��' (
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
	EditMalti
�� %
(
��% &
int
��& )
id
��* ,
,
��, -
int
��. 1
idr
��2 5
)
��5 6
{
�� 	
MaltiRicetta
�� 
mr
�� 
=
�� 
db
��  
.
��  !
MaltiRicettas
��! .
.
��. /
Where
��/ 4
(
��4 5
x
��5 6
=>
��7 9
x
��: ;
.
��; <
MaltiId
��< C
==
��D F
id
��G I
&&
��J L
x
��M N
.
��N O
	RicettaId
��O X
==
��Y [
idr
��\ _
)
��_ `
.
��` a
FirstOrDefault
��a o
(
��o p
)
��p q
;
��q r
return
�� 
View
�� 
(
�� 
mr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
	EditMalti
�� %
(
��% &
MaltiRicetta
��& 2
mr
��3 5
)
��5 6
{
�� 	
MaltiRicetta
�� 
mr2
�� 
=
�� 
db
�� !
.
��! "
MaltiRicettas
��" /
.
��/ 0
Where
��0 5
(
��5 6
x
��6 7
=>
��8 :
x
��; <
.
��< =
MaltiId
��= D
==
��E G
mr
��H J
.
��J K
MaltiId
��K R
&&
��S U
x
��V W
.
��W X
	RicettaId
��X a
==
��b d
mr
��e g
.
��g h
	RicettaId
��h q
)
��q r
.
��r s
FirstOrDefault��s �
(��� �
)��� �
;��� �
mr2
�� 
.
�� 
Quantita
�� 
=
�� 
mr
�� 
.
�� 
Quantita
�� &
;
��& '
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 
MaltiId
�� 
=
��  
new
��! $

SelectList
��% /
(
��/ 0
db
��0 2
.
��2 3
Malti
��3 8
,
��8 9
$str
��: C
,
��C D
$str
��E K
)
��K L
;
��L M
ViewBag
�� 
.
�� 
malti
�� 
=
�� 
MaltiId
�� #
;
��# $
return
�� 
View
�� 
(
�� 
mr
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
EditZuccheri
�� (
(
��( )
int
��) ,
id
��- /
,
��/ 0
int
��1 4
idr
��5 8
)
��8 9
{
�� 	
ZuccheriRicetta
�� 
zr
�� 
=
��  
db
��! #
.
��# $
ZuccheriRicettas
��$ 4
.
��4 5
Where
��5 :
(
��: ;
x
��; <
=>
��= ?
x
��@ A
.
��A B
	RicettaId
��B K
==
��L N
idr
��O R
&&
��S U
x
��V W
.
��W X

ZuccheriId
��X b
==
��c e
id
��f h
)
��h i
.
��i j
FirstOrDefault
��j x
(
��x y
)
��y z
;
��z {
return
�� 
View
�� 
(
�� 
zr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
EditZuccheri
�� (
(
��( )
ZuccheriRicetta
��) 8
zr
��9 ;
,
��; <
int
��= @
idr
��A D
)
��D E
{
�� 	
ZuccheriRicetta
�� 
zr2
�� 
=
��  !
db
��" $
.
��$ %
ZuccheriRicettas
��% 5
.
��5 6
Where
��6 ;
(
��; <
x
��< =
=>
��> @
x
��A B
.
��B C

ZuccheriId
��C M
==
��N P
zr
��Q S
.
��S T

ZuccheriId
��T ^
&&
��_ a
x
��b c
.
��c d
	RicettaId
��d m
==
��n p
idr
��q t
)
��t u
.
��u v
FirstOrDefault��v �
(��� �
)��� �
;��� �
zr2
�� 
.
�� 
Quantita
�� 
=
�� 
zr
�� 
.
�� 
Quantita
�� &
;
��& '
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 

ZuccheriId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
db
��3 5
.
��5 6
Zuccheri
��6 >
,
��> ?
$str
��@ L
,
��L M
$str
��N T
)
��T U
;
��U V
ViewBag
�� 
.
�� 
zuccheri
�� 
=
�� 

ZuccheriId
�� )
;
��) *
return
�� 
View
�� 
(
�� 
zr
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �@
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
}�� �
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
} �F
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
}pp �
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
} �
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
} �
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
} �
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
} �
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
} �,
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
}66 �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �8
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
}VV �
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
} �
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
} �
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
} �
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
} �
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
]"") *�+
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
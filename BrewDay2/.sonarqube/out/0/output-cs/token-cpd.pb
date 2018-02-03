�
GC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\BundleConfig.cs
	namespace 	
BrewDay2
 
{ 
public 

static 
class 
BundleConfig $
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
bundles
.
Add
(
new
ScriptBundle
(
$str
)
.
Include
(
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
} �
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
} �:
IC:\Users\david\Source\Repos\Brewday2\BrewDay2\App_Start\IdentityConfig.cs
	namespace 	
BrewDay2
 
{ 
public

class
EmailService
:
IIdentityMessageService
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
:## 
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

=++" #
new++$ '

<++5 6
ApplicationUser++6 E
>++E F
(++F G
manager++G N
)++N O
{,, 
AllowOnlyAlphanumericUserNames-- .
=--/ 0
false--1 6
,--6 7
RequireUniqueEmail.. "
=..# $
true..% )
}// 
;//
manager22 
.22 
PasswordValidator22 %
=22& '
new22( +
PasswordValidator22, =
{33 
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
}99 
;99
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
{CC 

=DD 
$strDD  >
}EE 
)EE
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
{GG 
SubjectHH 
=HH 
$strHH /
,HH/ 0

BodyFormatII 
=II 
$strII ;
}JJ 
)JJ
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
{OO 
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
}RR 
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
:[[ 
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
}ii �
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
$str
,
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
) 
;
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
{ 
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
}$$ 
)$$
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
}11 �
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
public

class
AccountController
:

Controller
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

)l m
{ 	
UserManager 
= 
userManager %
;% &

= 

;) *
} 	
public $
ApplicationSignInManager '

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
{99 
return:: 
View:: 
(:: 
model:: !
)::! "
;::" #
};; 
var?? 
result?? 
=?? 
await?? 

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
{AA 
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
}KK 
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

.TT$ % 
HasBeenVerifiedAsyncTT% 9
(TT9 :
)TT: ;
)TT; <
{UU 
returnVV 
ViewVV 
(VV 
$strVV #
)VV# $
;VV$ %
}WW 
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
{cc 
returndd 
Viewdd 
(dd 
modeldd !
)dd! "
;dd" #
}ee 
varkk 
resultkk 
=kk 
awaitkk 

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
RememberBrowser	kkv �
)
kk� �
;
kk� �
switchll 
(ll 
resultll 
)ll 
{mm 
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
}uu 
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
�� 
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
��8 9
false
��: ?
,
��? @
false
��A F
)
��F G
;
��G H"
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
ActionResult
�� (
ForgotPasswordConfirmation
�� 6
(
��6 7
)
��7 8
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
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 

�� )
(
��) *
string
��* 0
code
��1 5
)
��5 6
{
�� 	
return
�� 
code
�� 
==
�� 
null
�� 
?
��  !
View
��" &
(
��& '
$str
��' .
)
��. /
:
��0 1
View
��2 6
(
��6 7
)
��7 8
;
��8 9
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
��& '

��( 5
(
��5 6$
ResetPasswordViewModel
��6 L
model
��M R
)
��R S
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
�� 
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
�� 
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
��( )
FindByNameAsync
��) 8
(
��8 9
model
��9 >
.
��> ?
Email
��? D
)
��D E
;
��E F
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( C
,
��C D
$str
��E N
)
��N O
;
��O P
}
�� 
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
ResetPasswordAsync
��+ =
(
��= >
user
��> B
.
��B C
Id
��C E
,
��E F
model
��G L
.
��L M
Code
��M Q
,
��Q R
model
��S X
.
��X Y
Password
��Y a
)
��a b
;
��b c
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
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( C
,
��C D
$str
��E N
)
��N O
;
��O P
}
�� 
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
�� 
)
�� 
;
�� 
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
�� '
ResetPasswordConfirmation
�� 5
(
��5 6
)
��6 7
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
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 

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
�� 
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
�� 
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
�� 
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
�� 
if
�� 
(
�� 
!
�� 
await
�� 

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
�� 
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
�� 
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
��Y Z
model
��[ `
.
��` a
	ReturnUrl
��a j
,
��j k
model
��l q
.
��q r

RememberMe
��r |
}
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
�� 
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
�� 
var
�� 
result
�� 
=
�� 
await
�� 

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
��J K
false
��L Q
)
��Q R
;
��R S
switch
�� 
(
�� 
result
�� 
)
�� 
{
�� 
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
��j k
default
�� 
:
�� 
ViewBag
�� 
.
�� 
	ReturnUrl
�� %
=
��& '
	returnUrl
��( 1
;
��1 2
ViewBag
�� 
.
�� 

�� )
=
��* +
	loginInfo
��, 5
.
��5 6
Login
��6 ;
.
��; <

��< I
;
��I J
return
�� 
View
�� 
(
��  
$str
��  ;
,
��; <
new
��= @0
"ExternalLoginConfirmationViewModel
��A c
{
��d e
Email
��f k
=
��l m
	loginInfo
��n w
.
��w x
Email
��x }
}
��~ 
)�� �
;��� �
}
�� 
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
��& ''
ExternalLoginConfirmation
��( A
(
��A B0
"ExternalLoginConfirmationViewModel
��B d
model
��e j
,
��j k
string
��l r
	returnUrl
��s |
)
��| }
{
�� 	
if
�� 
(
�� 
User
�� 
.
�� 
Identity
�� 
.
�� 
IsAuthenticated
�� -
)
��- .
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 9
)
��9 :
;
��: ;
}
�� 
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
�� 
var
�� 
info
�� 
=
�� 
await
��  #
AuthenticationManager
��! 6
.
��6 7'
GetExternalLoginInfoAsync
��7 P
(
��P Q
)
��Q R
;
��R S
if
�� 
(
�� 
info
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
View
�� 
(
��  
$str
��  6
)
��6 7
;
��7 8
}
�� 
var
�� 
user
�� 
=
�� 
new
�� 
ApplicationUser
�� .
{
��/ 0
UserName
��1 9
=
��: ;
model
��< A
.
��A B
Email
��B G
,
��G H
Email
��I N
=
��O P
model
��Q V
.
��V W
Email
��W \
}
��] ^
;
��^ _
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
��. /
CreateAsync
��/ :
(
��: ;
user
��; ?
)
��? @
;
��@ A
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
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /

��/ <
(
��< =
user
��= A
.
��A B
Id
��B D
,
��D E
info
��F J
.
��J K
Login
��K P
)
��P Q
;
��Q R
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
)
��( )
{
�� 
await
�� 

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
��< =
false
��> C
,
��C D
false
��E J
)
��J K
;
��K L
return
�� 
RedirectToLocal
�� .
(
��. /
	returnUrl
��/ 8
)
��8 9
;
��9 :
}
�� 
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
�� 
ViewBag
�� 
.
�� 
	ReturnUrl
�� 
=
�� 
	returnUrl
��  )
;
��) *
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
�� 
LogOff
�� "
(
��" #
)
��# $
{
�� 	#
AuthenticationManager
�� !
.
��! "
SignOut
��" )
(
��) *(
DefaultAuthenticationTypes
��* D
.
��D E
ApplicationCookie
��E V
)
��V W
;
��W X
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
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
�� "
ExternalLoginFailure
�� 0
(
��0 1
)
��1 2
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
�� 
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
�� 
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
��' <
=>
��= ?
HttpContext
��@ K
.
��K L
GetOwinContext
��L Z
(
��Z [
)
��[ \
.
��\ ]
Authentication
��] k
;
��k l
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
�� 

ModelState
�� 
.
�� 

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
�� 
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
�� 
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
�� 
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
�� 
}
�� 
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
�� 

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
�� 
public
�� 
string
�� 

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
�� 
string
�� 
RedirectUri
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
UserId
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
override
�� 
void
��  

��! .
(
��. /
ControllerContext
��/ @
context
��A H
)
��H I
{
�� 
var
�� 

properties
�� 
=
��  
new
��! $&
AuthenticationProperties
��% =
{
��> ?
RedirectUri
��@ K
=
��L M
RedirectUri
��N Y
}
��Z [
;
��[ \
if
�� 
(
�� 
UserId
�� 
!=
�� 
null
�� "
)
��" #
{
�� 

properties
�� 
.
�� 

Dictionary
�� )
[
��) *
XsrfKey
��* 1
]
��1 2
=
��3 4
UserId
��5 ;
;
��; <
}
�� 
context
�� 
.
�� 
HttpContext
�� #
.
��# $
GetOwinContext
��$ 2
(
��2 3
)
��3 4
.
��4 5
Authentication
��5 C
.
��C D
	Challenge
��D M
(
��M N

properties
��N X
,
��X Y

��Z g
)
��g h
;
��h i
}
�� 
}
�� 	
}
�� 
}�� �C
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
{
const 
string 
path 
= 
$str 5
;5 6
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
{** 
return++ 
new++  
HttpStatusCodeResult++ /
(++/ 0
HttpStatusCode++0 >
.++> ?

BadRequest++? I
)++I J
;++J K
},, 
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
{// 
return00 
HttpNotFound00 #
(00# $
)00$ %
;00% &
}11 
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
{QQ 
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
}UU 
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
{ff 
returngg 
Redirectgg 
(gg  
pathgg  $
)gg$ %
;gg% &
}hh 
Additiviii 
additiviii 
=ii 
_dbii  #
.ii# $
Additiviii$ ,
.ii, -
Findii- 1
(ii1 2
idii2 4
)ii4 5
;ii5 6
ifjj 
(jj 
additivijj 
==jj 
nulljj  
)jj  !
{kk 
returnll 
HttpNotFoundll #
(ll# $
)ll$ %
;ll% &
}mm 
returnnn 
Viewnn 
(nn 
additivinn  
)nn  !
;nn! "
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
$str}}1 X
)}}X Y
]}}Y Z
Additivi}}[ c
additivi}}d l
)}}l m
{~~ 	
if 
( 

ModelState 
. 
IsValid "
)" #
{
�� 
_db
�� 
.
�� 
Entry
�� 
(
�� 
additivi
�� "
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
��@ A
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
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
�� 
return
�� 
View
�� 
(
�� 
additivi
��  
)
��  !
;
��! "
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
�� 
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
�� 
Additivi
�� 
additivi
�� 
=
�� 
_db
��  #
.
��# $
Additivi
��$ ,
.
��, -
Find
��- 1
(
��1 2
id
��2 4
)
��4 5
;
��5 6
if
�� 
(
�� 
additivi
�� 
==
�� 
null
��  
)
��  !
{
�� 
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
�� 
return
�� 
View
�� 
(
�� 
additivi
��  
)
��  !
;
��! "
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
�� 	
Additivi
�� 
additivi
�� 
=
�� 
_db
��  #
.
��# $
Additivi
��$ ,
.
��, -
Find
��- 1
(
��1 2
id
��2 4
)
��4 5
;
��5 6
_db
�� 
.
�� 
Additivi
�� 
.
�� 
Remove
�� 
(
��  
additivi
��  (
??
��) +
throw
��, 1
new
��2 5'
InvalidOperationException
��6 O
(
��O P
)
��P Q
)
��Q R
;
��R S
_db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
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
�� 
_db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
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
{
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
}   �C
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
{
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
{(( 
return)) 
new))  
HttpStatusCodeResult)) /
())/ 0
HttpStatusCode))0 >
.))> ?

BadRequest))? I
)))I J
;))J K
}** 
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
{-- 
return.. 
HttpNotFound.. #
(..# $
)..$ %
;..% &
}// 
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
{NN 
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
}RR 
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
{cc 
returndd 
newdd  
HttpStatusCodeResultdd /
(dd/ 0
HttpStatusCodedd0 >
.dd> ?

BadRequestdd? I
)ddI J
;ddJ K
}ee 
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
{hh 
returnii 
HttpNotFoundii #
(ii# $
)ii$ %
;ii% &
}jj 
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
{}} 
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
�� 
return
�� 
View
�� 
(
�� 
lieviti
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
�� 
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
�� 
Lieviti
�� 
lieviti
�� 
=
�� 
_db
�� !
.
��! "
Lieviti
��" )
.
��) *
Find
��* .
(
��. /
id
��/ 1
)
��1 2
;
��2 3
if
�� 
(
�� 
lieviti
�� 
==
�� 
null
�� 
)
��  
{
�� 
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
�� 
return
�� 
View
�� 
(
�� 
lieviti
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
Lieviti
�� 
lieviti
�� 
=
�� 
_db
�� !
.
��! "
Lieviti
��" )
.
��) *
Find
��* .
(
��. /
id
��/ 1
)
��1 2
;
��2 3
_db
�� 
.
�� 
Lieviti
�� 
.
�� 
Remove
�� 
(
�� 
lieviti
�� &
??
��' )
throw
��* /
new
��0 3'
InvalidOperationException
��4 M
(
��M N
)
��N O
)
��O P
;
��P Q
_db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
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
�� 
_db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
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
}�� �C
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
{
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
{(( 
return)) 
new))  
HttpStatusCodeResult)) /
())/ 0
HttpStatusCode))0 >
.))> ?

BadRequest))? I
)))I J
;))J K
}** 
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
{-- 
return.. 
HttpNotFound.. #
(..# $
)..$ %
;..% &
}// 
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
{NN 
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
}RR 
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
{cc 
returndd 
newdd  
HttpStatusCodeResultdd /
(dd/ 0
HttpStatusCodedd0 >
.dd> ?

BadRequestdd? I
)ddI J
;ddJ K
}ee 
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
{hh 
returnii 
HttpNotFoundii #
(ii# $
)ii$ %
;ii% &
}jj 
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
{}} 
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
�� 
return
�� 
View
�� 
(
�� 
luppoli
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
�� 
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
�� 
Luppoli
�� 
luppoli
�� 
=
�� 
_db
�� !
.
��! "
Luppoli
��" )
.
��) *
Find
��* .
(
��. /
id
��/ 1
)
��1 2
;
��2 3
if
�� 
(
�� 
luppoli
�� 
==
�� 
null
�� 
)
��  
{
�� 
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
�� 
return
�� 
View
�� 
(
�� 
luppoli
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
Luppoli
�� 
luppoli
�� 
=
�� 
_db
�� !
.
��! "
Luppoli
��" )
.
��) *
Find
��* .
(
��. /
id
��/ 1
)
��1 2
;
��2 3
_db
�� 
.
�� 
Luppoli
�� 
.
�� 
Remove
�� 
(
�� 
luppoli
�� &
??
��' )
throw
��* /
new
��0 3'
InvalidOperationException
��4 M
(
��M N
)
��N O
)
��O P
;
��P Q
_db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
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
�� 
_db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
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
}�� �Y
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
;N O
const
string
path
=
$str
;
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
{%% 
return&& 
Redirect&& 
(&&  
path&&  $
)&&$ %
;&&% &
}'' 
	Magazzino(( 
	magazzino(( 
=((  !
_db((" %
.((% &
Magazzinoes((& 1
.((1 2
Find((2 6
(((6 7
id((7 9
)((9 :
;((: ;
if)) 
()) 
	magazzino)) 
==)) 
null)) !
)))! "
{** 
return++ 
HttpNotFound++ #
(++# $
)++$ %
;++% &
},, 
return-- 
View-- 
(-- 
	magazzino-- !
)--! "
;--" #
}.. 	
public88 
ActionResult88 
Create88 "
(88" #
)88# $
{99 	
var:: 
me:: 
=:: 
_db:: 
.:: 
Users:: 
.:: 
First:: $
(::$ %
x::% &
=>::' )
x::* +
.::+ ,
UserName::, 4
==::5 7
User::8 <
.::< =
Identity::= E
.::E F
Name::F J
)::J K
;::K L
	Magazzino;; 
m;; 
=;; 
new;; 
	Magazzino;; '
{<< 
UserId== 
=== 
me== 
.== 
Id== 
}>> 
;>>
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
$strMM3 G
)MMG H
]MMH I
	MagazzinoMMJ S
	magazzinoMMT ]
)MM] ^
{NN 	
ifOO 
(OO 

ModelStateOO 
.OO 
IsValidOO "
)OO" #
{PP 
_dbQQ 
.QQ 
MagazzinoesQQ 
.QQ  
AddQQ  #
(QQ# $
	magazzinoQQ$ -
)QQ- .
;QQ. /
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
}TT 
returnVV 
ViewVV 
(VV 
	magazzinoVV !
)VV! "
;VV" #
}WW 	
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
{cc 
returndd 
newdd  
HttpStatusCodeResultdd /
(dd/ 0
HttpStatusCodedd0 >
.dd> ?

BadRequestdd? I
)ddI J
;ddJ K
}ee 
	Magazzinoff 
	magazzinoff 
=ff  !
_dbff" %
.ff% &
Magazzinoesff& 1
.ff1 2
Findff2 6
(ff6 7
idff7 9
)ff9 :
;ff: ;
ifgg 
(gg 
	magazzinogg 
==gg 
nullgg !
)gg! "
{hh 
returnii 
HttpNotFoundii #
(ii# $
)ii$ %
;ii% &
}jj 
returnkk 
Viewkk 
(kk 
	magazzinokk !
)kk! "
;kk" #
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
$strzz1 E
)zzE F
]zzF G
	MagazzinozzH Q
	magazzinozzR [
)zz[ \
{{{ 	
if|| 
(|| 

ModelState|| 
.|| 
IsValid|| "
)||" #
{}} 
_db~~ 
.~~ 
Entry~~ 
(~~ 
	magazzino~~ #
)~~# $
.~~$ %
State~~% *
=~~+ ,
EntityState~~- 8
.~~8 9
Modified~~9 A
;~~A B
_db 
. 
SaveChanges 
(  
)  !
;! "
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
�� 
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
�� 
_db
�� 
.
�� 
Users
�� 
.
�� 
First
�� $
(
��$ %
x
��% &
=>
��' )
x
��* +
.
��+ ,
UserName
��, 4
==
��5 7
User
��8 <
.
��< =
Identity
��= E
.
��E F
Name
��F J
)
��J K
;
��K L
	Magazzino
�� 
	magazzino
�� 
=
��  !
_db
��" %
.
��% &
Magazzinoes
��& 1
.
��1 2
FirstOrDefault
��2 @
(
��@ A
x
��A B
=>
��C E
x
��F G
.
��G H
UserId
��H N
==
��O Q
me
��R T
.
��T U
Id
��U W
)
��W X
;
��X Y
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
additivi
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
_db
��1 4
.
��4 5
Additivi
��5 =
,
��= >
$str
��> J
,
��J K
$str
��K Q
)
��Q R
;
��R S
ViewBag
�� 
.
�� 
Additivi
�� 
=
�� 
additivi
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
�� 
_db
�� 
.
��  
AdditiviMagazzinos
�� &
.
��& '
Add
��' *
(
��* +
am
��+ -
)
��- .
;
��. /
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
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
�� 
var
�� 
me
�� 
=
�� 
_db
�� 
.
�� 
Users
�� 
.
�� 
First
�� $
(
��$ %
x
��% &
=>
��' )
x
��* +
.
��+ ,
UserName
��, 4
==
��5 7
User
��8 <
.
��< =
Identity
��= E
.
��E F
Name
��F J
)
��J K
;
��K L
	Magazzino
�� 
	magazzino
�� 
=
��  !
_db
��" %
.
��% &
Magazzinoes
��& 1
.
��1 2
FirstOrDefault
��2 @
(
��@ A
x
��A B
=>
��C E
x
��F G
.
��G H
UserId
��H N
==
��O Q
me
��R T
.
��T U
Id
��U W
)
��W X
;
��X Y
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
additivi
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
_db
��1 4
.
��4 5
Additivi
��5 =
,
��= >
$str
��? K
,
��K L
$str
��M S
)
��S T
;
��T U
ViewBag
�� 
.
�� 
Additivi
�� 
=
�� 
additivi
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
�� 
_db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
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
}�� �C
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
{
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
{(( 
return)) 
new))  
HttpStatusCodeResult)) /
())/ 0
HttpStatusCode))0 >
.))> ?

BadRequest))? I
)))I J
;))J K
}** 
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
{-- 
return.. 
HttpNotFound.. #
(..# $
)..$ %
;..% &
}// 
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
{NN 
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
}RR 
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
{cc 
returndd 
newdd  
HttpStatusCodeResultdd /
(dd/ 0
HttpStatusCodedd0 >
.dd> ?

BadRequestdd? I
)ddI J
;ddJ K
}ee 
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
{hh 
returnii 
HttpNotFoundii #
(ii# $
)ii$ %
;ii% &
}jj 
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
{}} 
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
�� 
return
�� 
View
�� 
(
�� 
malti
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
�� 
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
�� 
Malti
�� 
malti
�� 
=
�� 
_db
�� 
.
�� 
Malti
�� #
.
��# $
Find
��$ (
(
��( )
id
��) +
)
��+ ,
;
��, -
if
�� 
(
�� 
malti
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
�� 
return
�� 
View
�� 
(
�� 
malti
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
�� 	
Malti
�� 
malti
�� 
=
�� 
_db
�� 
.
�� 
Malti
�� #
.
��# $
Find
��$ (
(
��( )
id
��) +
)
��+ ,
;
��, -
_db
�� 
.
�� 
Malti
�� 
.
�� 
Remove
�� 
(
�� 
malti
�� "
??
��# %
throw
��& +
new
��, /'
InvalidOperationException
��0 I
(
��I J
)
��J K
)
��K L
;
��L M
_db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
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
�� 
_db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
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
}�� ��
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
public

class
ManageController
:

Controller
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

)j k
{ 	
UserManager 
= 
userManager %
;% &

= 

;) *
} 	
public $
ApplicationSignInManager '

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
$str	//C �
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
{77 
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
}== 
;==
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

(HHh i

,HHv w
providerKey	HHx �
)
HH� �
)
HH� �
;
HH� �
ifII 
(II 
resultII 
.II 
	SucceededII  
)II  !
{JJ 
varKK 
userKK 
=KK 
awaitKK  
UserManagerKK! ,
.KK, -

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
}QQ 
elseRR 
{SS 
messageTT 
=TT 
ManageMessageIdTT )
.TT) *
ErrorTT* /
;TT/ 0
}UU 
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
{gg 
returnhh 
Viewhh 
(hh 
modelhh !
)hh! "
;hh" #
}ii 
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
{mm 
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
}tt 
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
�� 
await
�� 

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
��4 5
false
��6 ;
,
��; <
false
��= B
)
��B C
;
��C D
}
�� 
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
�� 
await
�� 

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
��4 5
false
��6 ;
,
��; <
false
��= B
)
��B C
;
��C D
}
�� 
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
�� 	
await
�� 
UserManager
�� 
.
�� 1
#GenerateChangePhoneNumberTokenAsync
�� A
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
��[ \
phoneNumber
��] h
)
��h i
;
��i j
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
�� 
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
�� 
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
�� 
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
��8 9
false
��: ?
,
��? @
false
��A F
)
��F G
;
��G H
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
�� 

ModelState
�� 
.
�� 

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
�� 
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
�� 
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
�� 
await
�� 

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
��4 5
false
��6 ;
,
��; <
false
��= B
)
��B C
;
��C D
}
�� 
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
�� 
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
�� 
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
�� 
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
��8 9
false
��: ?
,
��? @
false
��A F
)
��F G
;
��G H
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
�� 
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
��& '
SetPassword
��( 3
(
��3 4"
SetPasswordViewModel
��4 H
model
��I N
)
��N O
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
�� 
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
��. /
AddPasswordAsync
��/ ?
(
��? @
User
��@ D
.
��D E
Identity
��E M
.
��M N
	GetUserId
��N W
(
��W X
)
��X Y
,
��Y Z
model
��[ `
.
��` a
NewPassword
��a l
)
��l m
;
��m n
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
�� 
var
�� 
user
�� 
=
�� 
await
�� $
UserManager
��% 0
.
��0 1

��1 >
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
)
��X Y
;
��Y Z
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
await
�� 

�� +
.
��+ ,
SignInAsync
��, 7
(
��7 8
user
��8 <
,
��< =
false
��> C
,
��C D
false
��E J
)
��J K
;
��K L
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
�� 
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
�� 
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
�� 
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
�� 

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
�� 
)
��
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
�� 
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
�� 
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
�� 
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
�� 
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
��' <
=>
��= ?
HttpContext
��@ K
.
��K L
GetOwinContext
��L Z
(
��Z [
)
��[ \
.
��\ ]
Authentication
��] k
;
��k l
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
�� 

ModelState
�� 
.
�� 

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
�� 
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
��F G
return
�� 
user
�� 
?
�� 
.
�� 
PasswordHash
�� %
!=
��& (
null
��) -
;
��- .
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
�� 	
}
�� 
}�� ��
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
public

class
RicetteController
:

Controller
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

)006 7
{11 	
var22 
lista22 
=22 
!22 
String22 
.22  

(22- .

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

)22r s
.22s t
ToList22t z
(22z {
)22{ |
:22} ~
_db	22 �
.
22� �
Ricette
22� �
.
22� �
ToList
22� �
(
22� �
)
22� �
;
22� �
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
{BB 
returnCC 
newCC  
HttpStatusCodeResultCC /
(CC/ 0
HttpStatusCodeCC0 >
.CC> ?

BadRequestCC? I
)CCI J
;CCJ K
}DD 
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
{GG 
returnHH 
HttpNotFoundHH #
(HH# $
)HH$ %
;HH% &
}II 
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
{hh 
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
}mm 
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
{qq 
foreachrr 
(rr 
varrr 
additiviMagazzinorr .
inrr/ 1
mrr2 3
.rr3 4

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

)A B
{
�� 
li
�� 
.
�� 
Add
�� 
(
�� 
_db
�� 
.
�� 
Lieviti
�� &
.
��& '
FirstOrDefault
��' 5
(
��5 6
x
��6 7
=>
��8 :
x
��; <
.
��< =
	LievitiId
��= F
==
��G I
additiviMagazzino
��J [
.
��[ \
	LievitiId
��\ e
)
��e f
)
��f g
;
��g h
}
�� 
foreach
�� 
(
�� 
var
�� 
ricette
�� $
in
��% '
_db
��( +
.
��+ ,
Ricette
��, 3
)
��3 4
{
�� 
if
�� 
(
�� 
li
�� 
.
�� 
All
�� 
(
�� 
x
��  
=>
��! #
ricette
��$ +
.
��+ ,
Lievitis
��, 4
.
��4 5
Contains
��5 =
(
��= >
x
��> ?
)
��? @
)
��@ A
)
��A B
{
�� 
lieviti
�� 
.
��  
Add
��  #
(
��# $
ricette
��$ +
)
��+ ,
;
��, -
}
�� 
}
�� 
List
�� 
<
�� 
Malti
�� 
>
�� 
ma
�� 
=
��  
new
��! $
List
��% )
<
��) *
Malti
��* /
>
��/ 0
(
��0 1
)
��1 2
;
��2 3
foreach
�� 
(
�� 
var
�� 
additiviMagazzino
�� .
in
��/ 1
m
��2 3
.
��3 4
MaltiUtente
��4 ?
)
��? @
{
�� 
ma
�� 
.
�� 
Add
�� 
(
�� 
_db
�� 
.
�� 
Malti
�� $
.
��$ %
Where
��% *
(
��* +
x
��+ ,
=>
��- /
x
��0 1
.
��1 2
MaltiId
��2 9
==
��: <
additiviMagazzino
��= N
.
��N O
MaltiId
��O V
)
��V W
.
��W X
FirstOrDefault
��X f
(
��f g
)
��g h
)
��h i
;
��i j
}
�� 
foreach
�� 
(
�� 
var
�� 
ricette
�� $
in
��% '
_db
��( +
.
��+ ,
Ricette
��, 3
)
��3 4
{
�� 
if
�� 
(
�� 
ma
�� 
.
�� 
All
�� 
(
�� 
x
��  
=>
��! #
ricette
��$ +
.
��+ ,
Maltis
��, 2
.
��2 3
Contains
��3 ;
(
��; <
x
��< =
)
��= >
)
��> ?
)
��? @
{
�� 
malti
�� 
.
�� 
Add
�� !
(
��! "
ricette
��" )
)
��) *
;
��* +
}
�� 
}
�� 
List
�� 
<
�� 
Zuccheri
�� 
>
�� 
z
��  
=
��! "
new
��# &
List
��' +
<
��+ ,
Zuccheri
��, 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
foreach
�� 
(
�� 
var
�� 
additiviMagazzino
�� .
in
��/ 1
m
��2 3
.
��3 4
ZuccheriUtente
��4 B
)
��B C
{
�� 
z
�� 
.
�� 
Add
�� 
(
�� 
_db
�� 
.
�� 
Zuccheri
�� &
.
��& '
Where
��' ,
(
��, -
x
��- .
=>
��/ 1
x
��2 3
.
��3 4

ZuccheriId
��4 >
==
��? A
additiviMagazzino
��B S
.
��S T

ZuccheriId
��T ^
)
��^ _
.
��_ `
FirstOrDefault
��` n
(
��n o
)
��o p
)
��p q
;
��q r
}
�� 
foreach
�� 
(
�� 
var
�� 
ricette
�� $
in
��% '
_db
��( +
.
��+ ,
Ricette
��, 3
)
��3 4
{
�� 
if
�� 
(
�� 
z
�� 
.
�� 
All
�� 
(
�� 
x
�� 
=>
��  "
ricette
��# *
.
��* +
	Zuccheris
��+ 4
.
��4 5
Contains
��5 =
(
��= >
x
��> ?
)
��? @
)
��@ A
)
��A B
{
�� 
zuccheri
��  
.
��  !
Add
��! $
(
��$ %
ricette
��% ,
)
��, -
;
��- .
}
�� 
}
�� 
}
�� 
var
�� 
valide
�� 
=
�� 
additivi
�� !
.
��! "
	Intersect
��" +
(
��+ ,
malti
��, 1
)
��1 2
.
��2 3
	Intersect
��3 <
(
��< =
luppoli
��= D
)
��D E
.
��E F
	Intersect
��F O
(
��O P
lieviti
��P W
)
��W X
.
��X Y
	Intersect
��Y b
(
��b c
zuccheri
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
�� 
_db
�� 
.
�� 
Ricette
�� 
.
�� 
Add
�� 
(
��  
ricette
��  '
)
��' (
;
��( )
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
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
�� 
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
�� 
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
�� 
Ricette
�� 
ricette
�� 
=
�� 
_db
�� !
.
��! "
Ricette
��" )
.
��) *
Find
��* .
(
��. /
id
��/ 1
)
��1 2
;
��2 3
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
�� 
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
�� 
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
�� 
_db
�� 
.
�� 
Entry
�� 
(
�� 
ricette
�� !
)
��! "
.
��" #
State
��# (
=
��) *
EntityState
��+ 6
.
��6 7
Modified
��7 ?
;
��? @
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
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
�� 
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
�� 
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
�� 
Ricette
�� 
ricette
�� 
=
�� 
_db
�� !
.
��! "
Ricette
��" )
.
��) *
Find
��* .
(
��. /
id
��/ 1
)
��1 2
;
��2 3
if
�� 
(
�� 
ricette
�� 
==
�� 
null
�� 
)
��  
{
�� 
return
�� 
HttpNotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
return
�� 
View
�� 
(
�� 
ricette
�� 
)
��  
;
��  !
}
�� 	
[
�� 	
HttpPost
��	 
,
�� 

ActionName
�� 
(
�� 
$str
�� &
)
��& '
]
��' (
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
DeleteConfirmed
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
�� 	
Ricette
�� 
ricette
�� 
=
�� 
_db
�� !
.
��! "
Ricette
��" )
.
��) *
Find
��* .
(
��. /
id
��/ 1
)
��1 2
;
��2 3
_db
�� 
.
�� 
Ricette
�� 
.
�� 
Remove
�� 
(
�� 
ricette
�� &
)
��& '
;
��' (
_db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
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
�� 
)
�� 
{
�� 
_db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
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
�� 	
public
�� 
ActionResult
�� 
AggiungiAdditivo
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
AdditiviRicetta
�� 
ar
�� 
=
��  
new
��! $
AdditiviRicetta
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

additiviId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
_db
��3 6
.
��6 7
Additivi
��7 ?
,
��? @
$str
��A M
,
��M N
$str
��O U
)
��U V
;
��V W
ViewBag
�� 
.
�� 
additivi
�� 
=
�� 

additiviId
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
AggiungiAdditivo
�� ,
(
��, -
AdditiviRicetta
��- <
ar
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
�� 
_db
�� 
.
�� 
AdditiviRicettas
�� $
.
��$ %
Add
��% (
(
��( )
ar
��) +
)
��+ ,
;
��, -
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
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
�� 

SelectList
�� 

additiviId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
_db
��3 6
.
��6 7
Additivi
��7 ?
,
��? @
$str
��A M
,
��M N
$str
��O U
)
��U V
;
��V W
ViewBag
�� 
.
�� 
additivi
�� 
=
�� 

additiviId
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
�� 
AggiungiLievito
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
LievitiRicetta
�� 
lr
�� 
=
�� 
new
��  #
LievitiRicetta
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
	lievitiId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
_db
��2 5
.
��5 6
Lieviti
��6 =
,
��= >
$str
��? J
,
��J K
$str
��L R
)
��R S
;
��S T
ViewBag
�� 
.
�� 
lieviti
�� 
=
�� 
	lievitiId
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
�� 
_db
�� 
.
�� 
LievitiRicettas
�� #
.
��# $
Add
��$ '
(
��' (
lr
��( *
)
��* +
;
��+ ,
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
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
�� 

SelectList
�� 
	lievitiId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
_db
��2 5
.
��5 6
Lieviti
��6 =
,
��= >
$str
��? J
,
��J K
$str
��L R
)
��R S
;
��S T
ViewBag
�� 
.
�� 
lieviti
�� 
=
�� 
	lievitiId
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
	luppoliId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
_db
��2 5
.
��5 6
Luppoli
��6 =
,
��= >
$str
��? J
,
��J K
$str
��L R
)
��R S
;
��S T
ViewBag
�� 
.
�� 
luppoli
�� 
=
�� 
	luppoliId
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
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
AggiungiLuppolo
�� +
(
��+ ,
LuppoliRicetta
��, :
lr
��; =
)
��= >
{
�� 	
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
�� 
_db
�� 
.
�� 
LuppoliRicettas
�� #
.
��# $
Add
��$ '
(
��' (
lr
��( *
)
��* +
;
��+ ,
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
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
�� 

SelectList
�� 
	luppoliId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
_db
��2 5
.
��5 6
Luppoli
��6 =
,
��= >
$str
��? J
,
��J K
$str
��L R
)
��R S
;
��S T
ViewBag
�� 
.
�� 
luppoli
�� 
=
�� 
	luppoliId
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
�� 

�� )
(
��) *
int
��* -
id
��. 0
)
��0 1
{
�� 	
MaltiRicetta
�� 
mr
�� 
=
�� 
new
�� !
MaltiRicetta
��" .
{
��/ 0
MaltiId
��1 8
=
��9 :
id
��; =
}
��> ?
;
��? @

SelectList
�� 
maltiId
�� 
=
��  
new
��! $

SelectList
��% /
(
��/ 0
_db
��0 3
.
��3 4
Malti
��4 9
,
��9 :
$str
��; D
,
��D E
$str
��F L
)
��L M
;
��M N
ViewBag
�� 
.
�� 
malti
�� 
=
�� 
maltiId
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
�� 

�� )
(
��) *
MaltiRicetta
��* 6
mr
��7 9
)
��9 :
{
�� 	
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
�� 
_db
�� 
.
�� 

�� !
.
��! "
Add
��" %
(
��% &
mr
��& (
)
��( )
;
��) *
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
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
�� 

SelectList
�� 
maltiId
�� 
=
��  
new
��! $

SelectList
��% /
(
��/ 0
_db
��0 3
.
��3 4
Malti
��4 9
,
��9 :
$str
��; D
,
��D E
$str
��F L
)
��L M
;
��M N
ViewBag
�� 
.
�� 
malti
�� 
=
�� 
maltiId
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
�� 
AggiungiZuccheri
�� ,
(
��, -
int
��- 0
id
��1 3
)
��3 4
{
�� 	
ZuccheriRicetta
�� 
zr
�� 
=
��  
new
��! $
ZuccheriRicetta
��% 4
{
��5 6
	RicettaId
��7 @
=
��A B
id
��C E
}
��F G
;
��G H

SelectList
�� 

zuccheriId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
_db
��3 6
.
��6 7
Zuccheri
��7 ?
,
��? @
$str
��A M
,
��M N
$str
��O U
)
��U V
;
��V W
ViewBag
�� 
.
�� 
zuccheri
�� 
=
�� 

zuccheriId
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
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
AggiungiZuccheri
�� ,
(
��, -
ZuccheriRicetta
��- <
zr
��= ?
)
��? @
{
�� 	
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
�� 
_db
�� 
.
�� 
ZuccheriRicettas
�� $
.
��$ %
Add
��% (
(
��( )
zr
��) +
)
��+ ,
;
��, -
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
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
�� 

SelectList
�� 

zuccheriId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
_db
��3 6
.
��6 7
Zuccheri
��7 ?
,
��? @
$str
��A M
,
��M N
$str
��O U
)
��U V
;
��V W
ViewBag
�� 
.
�� 
zuccheri
�� 
=
�� 

zuccheriId
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
�� 	
public
�� 
ActionResult
�� 
EditAdditivo
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
AdditiviRicetta
�� 
ar
�� 
=
��  
_db
��! $
.
��$ %
AdditiviRicettas
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

AdditiviId
��C M
==
��N P
id
��Q S
&&
��T V
x
��W X
.
��X Y
	RicettaId
��Y b
==
��c e
idr
��f i
)
��i j
.
��j k
FirstOrDefault
��k y
(
��y z
)
��z {
;
��{ |
return
�� 
View
�� 
(
�� 
ar
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
EditAdditivo
�� (
(
��( )
AdditiviRicetta
��) 8
ar
��9 ;
)
��; <
{
�� 	
AdditiviRicetta
�� 
ar2
�� 
=
��  !
_db
��" %
.
��% &
AdditiviRicettas
��& 6
.
��6 7
Where
��7 <
(
��< =
x
��= >
=>
��? A
x
��B C
.
��C D

AdditiviId
��D N
==
��O Q
ar
��R T
.
��T U

AdditiviId
��U _
&&
��` b
x
��c d
.
��d e
	RicettaId
��e n
==
��o q
ar
��r t
.
��t u
	RicettaId
��u ~
)
��~ 
.�� �
FirstOrDefault��� �
(��� �
)��� �
;��� �
ar2
�� 
.
�� 
Quantita
�� 
=
�� 
ar
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
�� 
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
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
�� 

SelectList
�� 

additiviId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
_db
��3 6
.
��6 7
Additivi
��7 ?
,
��? @
$str
��A M
,
��M N
$str
��O U
)
��U V
;
��V W
ViewBag
�� 
.
�� 
additivi
�� 
=
�� 

additiviId
�� )
;
��) *
return
�� 
View
�� 
(
�� 
ar
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
EditLievito
�� '
(
��' (
int
��( +
id
��, .
,
��. /
int
��0 3
idr
��4 7
)
��7 8
{
�� 	
LievitiRicetta
�� 
lr
�� 
=
�� 
_db
��  #
.
��# $
LievitiRicettas
��$ 3
.
��3 4
Where
��4 9
(
��9 :
x
��: ;
=>
��< >
x
��? @
.
��@ A
	LievitoId
��A J
==
��K M
id
��N P
&&
��Q S
x
��T U
.
��U V
	RicettaId
��V _
==
��` b
idr
��c f
)
��f g
.
��g h
FirstOrDefault
��h v
(
��v w
)
��w x
;
��x y
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
EditLievito
�� '
(
��' (
LievitiRicetta
��( 6
lr
��7 9
)
��9 :
{
�� 	
LievitiRicetta
�� 
lr2
�� 
=
��  
_db
��! $
.
��$ %
LievitiRicettas
��% 4
.
��4 5
Where
��5 :
(
��: ;
x
��; <
=>
��= ?
x
��@ A
.
��A B
	LievitoId
��B K
==
��L N
lr
��O Q
.
��Q R
	LievitoId
��R [
&&
��\ ^
x
��_ `
.
��` a
	RicettaId
��a j
==
��k m
lr
��n p
.
��p q
	RicettaId
��q z
)
��z {
.
��{ |
FirstOrDefault��| �
(��� �
)��� �
;��� �
lr2
�� 
.
�� 
Quantita
�� 
=
�� 
lr
�� 
.
�� 
Quantita
�� &
;
��& '
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 
	lievitiId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
_db
��2 5
.
��5 6
Lieviti
��6 =
,
��= >
$str
��? J
,
��J K
$str
��L R
)
��R S
;
��S T
ViewBag
�� 
.
�� 
lieviti
�� 
=
�� 
	lievitiId
�� '
;
��' (
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
EditLuppolo
�� '
(
��' (
int
��( +
id
��, .
,
��. /
int
��0 3
idr
��4 7
)
��7 8
{
�� 	
LuppoliRicetta
�� 
lr
�� 
=
�� 
_db
��  #
.
��# $
LuppoliRicettas
��$ 3
.
��3 4
Where
��4 9
(
��9 :
x
��: ;
=>
��< >
x
��? @
.
��@ A
	LuppoliId
��A J
==
��K M
id
��N P
&&
��Q S
x
��T U
.
��U V
	RicettaId
��V _
==
��` b
idr
��c f
)
��f g
.
��g h
FirstOrDefault
��h v
(
��v w
)
��w x
;
��x y
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
EditLuppolo
�� '
(
��' (
LuppoliRicetta
��( 6
lr
��7 9
)
��9 :
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 
	luppoliId
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
_db
��2 5
.
��5 6
Luppoli
��6 =
,
��= >
$str
��? J
,
��J K
$str
��L R
)
��R S
;
��S T
ViewBag
�� 
.
�� 
luppoli
�� 
=
�� 
	luppoliId
�� '
;
��' (
return
�� 
View
�� 
(
�� 
lr
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
	EditMalti
�� %
(
��% &
int
��& )
id
��* ,
,
��, -
int
��. 1
idr
��2 5
)
��5 6
{
�� 	
MaltiRicetta
�� 
mr
�� 
=
�� 
_db
�� !
.
��! "

��" /
.
��/ 0
Where
��0 5
(
��5 6
x
��6 7
=>
��8 :
x
��; <
.
��< =
MaltiId
��= D
==
��E G
id
��H J
&&
��K M
x
��N O
.
��O P
	RicettaId
��P Y
==
��Z \
idr
��] `
)
��` a
.
��a b
FirstOrDefault
��b p
(
��p q
)
��q r
;
��r s
return
�� 
View
�� 
(
�� 
mr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
	EditMalti
�� %
(
��% &
MaltiRicetta
��& 2
mr
��3 5
)
��5 6
{
�� 	
MaltiRicetta
�� 
mr2
�� 
=
�� 
_db
�� "
.
��" #

��# 0
.
��0 1
Where
��1 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
MaltiId
��> E
==
��F H
mr
��I K
.
��K L
MaltiId
��L S
&&
��T V
x
��W X
.
��X Y
	RicettaId
��Y b
==
��c e
mr
��f h
.
��h i
	RicettaId
��i r
)
��r s
.
��s t
FirstOrDefault��t �
(��� �
)��� �
;��� �
mr2
�� 
.
�� 
Quantita
�� 
=
�� 
mr
�� 
.
�� 
Quantita
�� &
;
��& '
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 
maltiId
�� 
=
��  
new
��! $

SelectList
��% /
(
��/ 0
_db
��0 3
.
��3 4
Malti
��4 9
,
��9 :
$str
��; D
,
��D E
$str
��F L
)
��L M
;
��M N
ViewBag
�� 
.
�� 
malti
�� 
=
�� 
maltiId
�� #
;
��# $
return
�� 
View
�� 
(
�� 
mr
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
EditZuccheri
�� (
(
��( )
int
��) ,
id
��- /
,
��/ 0
int
��1 4
idr
��5 8
)
��8 9
{
�� 	
ZuccheriRicetta
�� 
zr
�� 
=
��  
_db
��! $
.
��$ %
ZuccheriRicettas
��% 5
.
��5 6
Where
��6 ;
(
��; <
x
��< =
=>
��> @
x
��A B
.
��B C
	RicettaId
��C L
==
��M O
idr
��P S
&&
��T V
x
��W X
.
��X Y

ZuccheriId
��Y c
==
��d f
id
��g i
)
��i j
.
��j k
FirstOrDefault
��k y
(
��y z
)
��z {
;
��{ |
return
�� 
View
�� 
(
�� 
zr
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
EditZuccheri
�� (
(
��( )
ZuccheriRicetta
��) 8
zr
��9 ;
,
��; <
int
��= @
idr
��A D
)
��D E
{
�� 	
ZuccheriRicetta
�� 
zr2
�� 
=
��  !
_db
��" %
.
��% &
ZuccheriRicettas
��& 6
.
��6 7
Where
��7 <
(
��< =
x
��= >
=>
��? A
x
��B C
.
��C D

ZuccheriId
��D N
==
��O Q
zr
��R T
.
��T U

ZuccheriId
��U _
&&
��` b
x
��c d
.
��d e
	RicettaId
��e n
==
��o q
idr
��r u
)
��u v
.
��v w
FirstOrDefault��w �
(��� �
)��� �
;��� �
zr2
�� 
.
�� 
Quantita
�� 
=
�� 
zr
�� 
.
�� 
Quantita
�� &
;
��& '
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
_db
�� 
.
�� 
SaveChanges
�� 
(
��  
)
��  !
;
��! "
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 

SelectList
�� 

zuccheriId
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
_db
��3 6
.
��6 7
Zuccheri
��7 ?
,
��? @
$str
��A M
,
��M N
$str
��O U
)
��U V
;
��V W
ViewBag
�� 
.
�� 
zuccheri
�� 
=
�� 

zuccheriId
�� )
;
��) *
return
�� 
View
�� 
(
�� 
zr
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �D
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
{
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
{(( 
return)) 
new))  
HttpStatusCodeResult)) /
())/ 0
HttpStatusCode))0 >
.))> ?

BadRequest))? I
)))I J
;))J K
}** 
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
{-- 
return.. 
HttpNotFound.. #
(..# $
)..$ %
;..% &
}// 
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
{NN 
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
}RR 
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
{bb 
returncc 
newcc  
HttpStatusCodeResultcc /
(cc/ 0
HttpStatusCodecc0 >
.cc> ?

BadRequestcc? I
)ccI J
;ccJ K
}dd 
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
{gg 
returnhh 
HttpNotFoundhh #
(hh# $
)hh$ %
;hh% &
}ii 
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
{|| 
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
�� 
return
�� 
View
�� 
(
�� 
zuccheri
��  
)
��  !
;
��! "
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
�� 
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
�� 
Zuccheri
�� 
zuccheri
�� 
=
�� 
_db
��  #
.
��# $
Zuccheri
��$ ,
.
��, -
Find
��- 1
(
��1 2
id
��2 4
)
��4 5
;
��5 6
if
�� 
(
�� 
zuccheri
�� 
==
�� 
null
��  
)
��  !
{
�� 
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
�� 
return
�� 
View
�� 
(
�� 
zuccheri
��  
)
��  !
;
��! "
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
�� 	
Zuccheri
�� 
zuccheri
�� 
=
�� 
_db
��  #
.
��# $
Zuccheri
��$ ,
.
��, -
Find
��- 1
(
��1 2
id
��2 4
)
��4 5
;
��5 6
_db
�� 
.
�� 
Zuccheri
�� 
.
�� 
Remove
�� 
(
��  
zuccheri
��  (
??
��) +
throw
��, 1
new
��2 5'
InvalidOperationException
��6 O
(
��O P
)
��P Q
)
��Q R
;
��R S
_db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
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
�� 
_db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
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

.< =
Filters= D
)D E
;E F
RouteConfig
.
RegisterRoutes
(

RouteTable
.
Routes
)
;
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
public

class
ExternalLoginListViewModel
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
] 
public
int

AdditiviId
{
get
;
set
;
}
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
,		 
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
, 
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
public
virtual
	Magazzino
	Magazzino
{
get
;
set
;
}
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
,		 
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
, 
Column 
( 
Order 
= 
$num 
) 
]  
[
Display
(
Name
=
$str
)
]
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
 
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
public
String
Nome
{
get
;
set
;
}
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

.
GetValue
(
bindingContext
.
	ModelName
)
;

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
{ 
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
} 
catch 
( 
FormatException "
e# $
)$ %
{ 

modelState 
. 
Errors !
.! "
Add" %
(% &
e& '
)' (
;( )
} 
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
{
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
: 
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
] 
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
,		 
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
, 
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
public
virtual
	Magazzino
	Magazzino
{
get
;
set
;
}
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
,		 
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
, 
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
public
virtual
Ricette
Ricetta
{
get
;
set
;
}
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
] 
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
,		 
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
, 
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
public
virtual
	Magazzino
	Magazzino
{
get
;
set
;
}
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
,		 
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
, 
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
public
virtual
Ricette
Ricetta
{
get
;
set
;
}
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
 
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
] 
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
,		 
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
, 
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
public
virtual
	Magazzino
	Magazzino
{
get
;
set
;
}
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
,		 
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
, 
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
public
virtual
Ricette
Ricetta
{
get
;
set
;
}
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
public
bool
	TwoFactor
{
get
;
set
;
}
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

>" #

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
] 
public 
int 
	RicettaId 
{ 
get "
;" #
set$ '
;' (
}) *
public
String
Note
{
get
;
set
;
}
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
] 
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
,		 
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
, 
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
public
virtual
	Magazzino
	Magazzino
{
get
;
set
;
}
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
,		 
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
, 
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
public
virtual
Ricette
Ricetta
{
get
;
set
;
}
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
[
assembly
:

AssemblyTrademark
(
$str
)
]
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
]"") *�
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
{
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
{ 
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
}99 
}:: 	
public== 
void== 

(==! "
IAppBuilder==" -
app==. 1
)==1 2
{>> 	

(?? 
app?? 
)?? 
;?? 
}@@ 	
}AA 
}BB 
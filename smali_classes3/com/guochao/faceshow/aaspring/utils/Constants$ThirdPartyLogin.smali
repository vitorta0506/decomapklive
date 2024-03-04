.class public interface abstract Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThirdPartyLogin"
.end annotation


# static fields
.field public static final EMAIL:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final EMAIL_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final FACEBOOK:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final FACEBOOK_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final GOOGLE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final GOOGLE_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final INSTAGRAM:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final LINE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final PHONE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final PHONE_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final PLATFORM_EMAIL:Ljava/lang/String; = "email"

.field public static final PLATFORM_FACEBOOK:Ljava/lang/String;

.field public static final PLATFORM_GOOGLE:Ljava/lang/String; = "GooglePlus"

.field public static final PLATFORM_INSTAGRAM:Ljava/lang/String;

.field public static final PLATFORM_LINE:Ljava/lang/String; = "Line"

.field public static final PLATFORM_PHONE:Ljava/lang/String; = "phone"

.field public static final PLATFORM_TWITTER:Ljava/lang/String; = "Twitter"

.field public static final PLATFORM_VK:Ljava/lang/String; = "VKontakte"

.field public static final TWITTER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_FACEBOOK:I = 0x7

.field public static final TYPE_GOOGLE:I = 0x9

.field public static final TYPE_INSTAGRAM:I = 0xa

.field public static final TYPE_LINE:I = 0xb

.field public static final TYPE_PHONE:I = 0x3

.field public static final TYPE_QQ:I = 0x5

.field public static final TYPE_TWITTER:I = 0x8

.field public static final TYPE_USER_NAME:I = 0x1

.field public static final TYPE_VK:I = 0xc

.field public static final TYPE_WECHAT:I = 0x4

.field public static final TYPE_WEIBO:I = 0x6

.field public static final VK:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Instagram;->NAME:Ljava/lang/String;

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->PLATFORM_INSTAGRAM:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;->NAME:Ljava/lang/String;

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->PLATFORM_FACEBOOK:Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    const v3, 0x7f0f044f

    const/4 v4, 0x7

    invoke-direct {v2, v3, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v2, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->FACEBOOK:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 4
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-direct {v2, v3, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v2, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->FACEBOOK_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    const v2, 0x7f0f0451

    const-string v3, "GooglePlus"

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->GOOGLE_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    const v2, 0x7f0f0450

    invoke-direct {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->GOOGLE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    const v2, 0x7f0f045a

    const-string v3, "Twitter"

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->TWITTER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    const v2, 0x7f0f0452

    const/16 v3, 0xa

    invoke-direct {v1, v2, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->INSTAGRAM:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    const v1, 0x7f0f0453

    const-string v2, "Line"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->LINE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    const v1, 0x7f0f0457

    const-string v2, "phone"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->PHONE_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    const v1, 0x7f0f044d

    const-string v4, "email"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->EMAIL:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-direct {v0, v1, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->EMAIL_OTHER:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    const v1, 0x7f0f045b

    const-string v4, "VKontakte"

    const/16 v5, 0xc

    invoke-direct {v0, v1, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->VK:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    const v1, 0x7f0f0455

    invoke-direct {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->PHONE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    return-void
.end method

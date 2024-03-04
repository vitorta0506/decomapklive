.class Lcom/guochao/faceshow/utils/TXIMLogoutImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static LIMIT_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "TXIMLogoutImpl"


# instance fields
.field private mLoginCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->mLoginCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/utils/TXIMLogoutImpl;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->mLoginCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/utils/TXIMLogoutImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->doLogoutAction(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method private doLogoutAction(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->mLoginCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->mLoginCount:I

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMManager;->getLoginUser()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TXIMLogoutImpl"

    const-string v1, "TIMManager\u83b7\u5f97\u5230\u7684Id\u662f\u7a7a,\u8bf4\u660e\u5df2\u7ecf\u662f\u672a\u767b\u5f55\u72b6\u6001,\u4e0d\u9700\u8981\u767b\u51fa\u64cd\u4f5c"

    .line 4
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onSuccess()V

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/utils/TXIMLogoutImpl$1;-><init>(Lcom/guochao/faceshow/utils/TXIMLogoutImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/LoginBusiness;->logout(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method


# virtual methods
.method logoutTIM(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->doLogoutAction(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method setLoginRetryCount(I)V
    .locals 1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    sput p1, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->LIMIT_COUNT:I

    :cond_0
    return-void
.end method

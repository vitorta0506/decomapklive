.class public Lcom/guochao/faceshow/aaspring/utils/SplashUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;)Z
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/SplashUtils;->checkSplashIsActive(Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;)Z

    move-result p0

    return p0
.end method

.method private static checkSplashIsActive(Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->result:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;

    if-eqz v1, :cond_2

    iget p0, p0, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->total:I

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, v1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;->fileUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static getSplashData(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;
    .locals 3

    const-string v0, "WELCOME_PAGE_v2"

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    .line 4
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/SplashUtils;->checkSplashIsActive(Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static getSplashScreenInfo(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/utils/a;"
        }
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "api/splashScreen/findSplashScreenToday/v2"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->K(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/SplashUtils$1;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SplashUtils$1;-><init>(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    return-object p0
.end method

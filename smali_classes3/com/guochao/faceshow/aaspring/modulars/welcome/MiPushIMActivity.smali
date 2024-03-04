.class public final Lcom/guochao/faceshow/aaspring/modulars/welcome/MiPushIMActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\rH\u0014J\u0012\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/welcome/MiPushIMActivity;",
        "Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;",
        "()V",
        "checkIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "finish",
        "handlePush",
        "ext",
        "",
        "initView",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "onCreate",
        "savedInstanceState",
        "onNewIntent",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;-><init>()V

    return-void
.end method

.method private final checkIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "key_message"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v1, p1, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-object v0, p1

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "ext"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/welcome/MiPushIMActivity;->handlePush(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final handlePush(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMManager;->getLoginStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 5
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/guochao/faceshow/utils/PushUtils;->jumpToChat(Lorg/json/JSONObject;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/guochao/faceshow/utils/PushUtils;->jumpToChat(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/welcome/MiPushIMActivity;->checkIntent(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/MiPushIMActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/welcome/MiPushIMActivity;->checkIntent(Landroid/content/Intent;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/MiPushIMActivity;->finish()V

    return-void
.end method

.class public final Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;
.super Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u00020\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;",
        "Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;",
        "()V",
        "inited",
        "",
        "tokenType",
        "",
        "getTokenType",
        "()Ljava/lang/String;",
        "checkToken",
        "",
        "init1",
        "initOnce",
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


# instance fields
.field private inited:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;Lt4/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;->checkToken$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;Lt4/g;)V

    return-void
.end method

.method private static final checkToken$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;Lt4/g;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lt4/g;->o()Z

    move-result v0

    const-string v1, "0"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lt4/g;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v1, v4, v3, v2, v4}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;->getTokenType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v3, v2, v4}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1, v4, v3, v2, v4}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final init1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;->inited:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/d;->r(Landroid/content/Context;)Lcom/google/firebase/d;

    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->l()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->A(Z)V

    .line 4
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->l()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->B(Z)Lt4/g;

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;->inited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkToken()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;->init1()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->l()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->o()Lt4/g;

    move-result-object v0

    const-string v1, "getInstance().token"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lt4/g;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lt4/g;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;->getTokenType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ls9/a;

    invoke-direct {v1, p0}, Ls9/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;)V

    invoke-virtual {v0, v1}, Lt4/g;->c(Lt4/c;)Lt4/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "1"

    return-object v0
.end method

.method public initOnce()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;->checkToken()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

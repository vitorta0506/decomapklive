.class public Lcom/guochao/faceshow/aaspring/utils/LoginBusiness;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginBusiness"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logout(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 1

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/imsdk/v2/V2TIMManager;->logout(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

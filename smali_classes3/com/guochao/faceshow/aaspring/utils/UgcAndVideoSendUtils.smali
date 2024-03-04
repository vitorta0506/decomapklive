.class public Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUgcAndVideoPermissions(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;->onSuccessful()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/user/info/getFreezeResult"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "type"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$1;

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_1
    :goto_0
    return-void
.end method

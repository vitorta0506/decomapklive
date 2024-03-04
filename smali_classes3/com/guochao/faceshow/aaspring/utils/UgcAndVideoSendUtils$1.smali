.class Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils;->getUgcAndVideoPermissions(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ugcAndVideoSendCallBack:Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$1;->val$ugcAndVideoSendCallBack:Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$1;->val$ugcAndVideoSendCallBack:Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$1;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$1;->val$ugcAndVideoSendCallBack:Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;->onSuccessful()V

    :cond_0
    return-void
.end method

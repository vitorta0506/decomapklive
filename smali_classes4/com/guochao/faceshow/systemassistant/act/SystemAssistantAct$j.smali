.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->u0(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/UploadAssistantImgResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iput p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/UploadAssistantImgResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UploadAssistantImgResult;
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
            "Lcom/guochao/faceshow/aaspring/beans/UploadAssistantImgResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/UploadAssistantImgResult;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg7/a;

    invoke-direct {p1}, Lg7/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/UploadAssistantImgResult;->setUserId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    const-string/jumbo v0, "tokens/assistant/msgs/imageByUrl"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->w(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j$a;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/UploadAssistantImgResult;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iget v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->a:I

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->n0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;II)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UploadAssistantImgResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->a(Lcom/guochao/faceshow/aaspring/beans/UploadAssistantImgResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->a(Lcom/guochao/faceshow/aaspring/beans/UploadAssistantImgResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j$a;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j$a;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;

    iget-object p2, p1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iget p1, p1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->a:I

    const/4 v0, 0x2

    invoke-static {p2, p1, v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->n0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;II)V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j$a;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;

    iget-object p2, p1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iget p1, p1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->a:I

    const/4 v0, 0x3

    invoke-static {p2, p1, v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->n0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;II)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j$a;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;

    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iget p1, p1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;->a:I

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->n0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;II)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j$a;->a(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

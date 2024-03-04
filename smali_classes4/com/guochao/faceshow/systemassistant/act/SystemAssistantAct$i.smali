.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->v0(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iput p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iget v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;->a:I

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->n0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;II)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
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
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/aaspring/beans/SystemAssistantBean;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/SystemAssistantBean;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SystemAssistantBean;->getCode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SystemAssistantBean;->getMsg()Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iget p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;->a:I

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->n0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;II)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iget p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;->a:I

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->n0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;II)V

    return-void
.end method

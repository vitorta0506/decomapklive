.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$k;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$k;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
            ">;>;)V"
        }
    .end annotation

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
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$k;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$k;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->a(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$k;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$k;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

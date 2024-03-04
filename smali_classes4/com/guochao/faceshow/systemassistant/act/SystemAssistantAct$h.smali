.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->t0(Ljava/lang/String;Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iput-boolean p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->a:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

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
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->l0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;

    if-eqz p1, :cond_4

    .line 5
    iget p2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;->code:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;->result:Ljava/util/List;

    .line 7
    iget-boolean p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->a:Z

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->setData(Ljava/util/List;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->m0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->getItemCount()I

    move-result p2

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->addData(Ljava/util/List;)V

    if-lez p2, :cond_3

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->m0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x32

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 13
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void
.end method

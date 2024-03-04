.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$f;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$f;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$f;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    iput-boolean p1, p2, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->i:Z

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$f;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$f;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->k0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    :cond_1
    :goto_0
    return-void
.end method

.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$c;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyBoardHide(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$c;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$c;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$c;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    return-void
.end method

.method public keyBoardShow(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$c;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$c;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iget-boolean v0, p1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->scrollToEnd(ZZ)V

    :cond_0
    return-void
.end method

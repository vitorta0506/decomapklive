.class public final Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment$initView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;->initView$lambda-6(Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment$initView$2$1",
        "Lcom/guochao/faceshow/views/e$a;",
        "Landroid/app/Dialog;",
        "dialog",
        "",
        "confirm",
        "",
        "onClick",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment$initView$2$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 1
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment$initView$2$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;->access$getList$p(Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setUnreadCount(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment$initView$2$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatInteractionBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatInteractionBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment$initView$2$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;

    const-string p2, "tokens/user/message/readAllInteractMessage"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string p1, "system_interaction"

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->clearUnread(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method

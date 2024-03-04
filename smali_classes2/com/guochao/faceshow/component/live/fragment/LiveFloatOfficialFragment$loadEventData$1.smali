.class public final Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->loadEventData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback;",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        "onError",
        "",
        "i",
        "",
        "s",
        "",
        "onSuccess",
        "v2TIMConversation",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;",
            ">;",
            "Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->$data:Ljava/util/List;

    iput-object p2, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "s"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->$data:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->access$setDatas(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->$data:Ljava/util/List;

    const-string p2, "AuthorityNotifyBean"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->h(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 6
    .param p1    # Lcom/tencent/imsdk/v2/V2TIMConversation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v2TIMConversation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getLastMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;-><init>()V

    const-string v2, "1"

    .line 4
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setMessageType(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->$data:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->m(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    if-eqz v3, :cond_0

    .line 8
    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->getEventMessageModel()Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setContent(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v2

    const/16 v0, 0x3e8

    int-to-long v4, v0

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setMsgTimestamp(Ljava/lang/Long;)V

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUnreadCount()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setUnreadCount(I)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->$data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->access$setDatas(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Ljava/util/List;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->$data:Ljava/util/List;

    const-string v0, "AuthorityNotifyBean"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->h(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;->onSuccess(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method

.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->loadMsg(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/util/List<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback;",
        "",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        "onError",
        "",
        "p0",
        "",
        "p1",
        "",
        "onSuccess",
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
.field final synthetic $msg:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;->$msg:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->access$convertMessages(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;->$msg:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->access$getAdapter(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->setData(Ljava/util/List;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->access$getAdapter(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->addData(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

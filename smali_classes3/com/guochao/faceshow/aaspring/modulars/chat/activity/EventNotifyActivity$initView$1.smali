.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$initView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$initView$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$initView$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$initView$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->access$getAdapter(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->f()Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->access$loadMsg(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    :cond_0
    return-void
.end method

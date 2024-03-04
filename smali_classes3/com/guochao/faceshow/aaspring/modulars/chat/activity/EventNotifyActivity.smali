.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J \u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00062\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016R(\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u000f\u0010\u0010\u0012\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
        "msg",
        "",
        "loadMsg",
        "",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        "p0",
        "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
        "convertMessages",
        "Landroid/os/Bundle;",
        "savedInstanceSate",
        "initView",
        "Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "getAdapter",
        "()Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;",
        "adapter",
        "<init>",
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
.field private final adapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$adapter$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$convertMessages(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->convertMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdapter(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->getAdapter()Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadMsg(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->loadMsg(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    return-void
.end method

.method private final convertMessages(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->m(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    if-eqz v3, :cond_1

    .line 5
    new-instance v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;

    invoke-direct {v3}, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;-><init>()V

    .line 6
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;->FromAccount:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;->ToAccount:Ljava/lang/String;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    move-object v5, v2

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->getEventMessageModel()Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 10
    new-instance v6, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;

    invoke-direct {v6}, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;-><init>()V

    .line 11
    new-instance v7, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;

    invoke-direct {v7}, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;-><init>()V

    .line 12
    new-instance v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-direct {v8}, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;-><init>()V

    .line 13
    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    iput-object v2, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 14
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getId()I

    move-result v2

    iput v2, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Id:I

    .line 15
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Name:Ljava/lang/String;

    .line 16
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getMsgId()I

    move-result v2

    iput v2, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgId:I

    .line 17
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    .line 18
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getImage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Image:Ljava/lang/String;

    .line 19
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getImageWidth()Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput v2, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->ImageWidth:I

    .line 20
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getImageHeight()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_3
    iput v9, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->ImageHeight:I

    .line 21
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Url:Ljava/lang/String;

    .line 22
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->URL:Ljava/lang/String;

    .line 23
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getType()I

    move-result v2

    iput v2, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Type:I

    .line 24
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    .line 25
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getShareable()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v8, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->shareable:Z

    .line 26
    iput-object v8, v7, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;->Data:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    .line 27
    iput-object v7, v6, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;->MsgContent:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;

    .line 28
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_5
    iput-object v4, v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;->MsgBody:Ljava/util/List;

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method private final getAdapter()Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    return-object v0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final loadMsg(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setGetType(I)V

    const/16 v1, 0xa

    .line 3
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setCount(I)V

    const-string v1, "-10000"

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setUserID(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setLastMsg(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 6
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$loadMsg$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getHistoryMessageList(Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/high16 p1, 0x7f120000

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->getAdapter()Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->loadMsg(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$initView$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$initView$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 5
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$initView$2;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity$initView$2;-><init>()V

    const-string v1, "-10000"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->markC2CMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;

    return-void
.end method

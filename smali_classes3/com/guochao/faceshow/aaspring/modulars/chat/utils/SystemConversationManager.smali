.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$a;
.implements Lb8/d$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008R\u0010SJ&\u0010\n\u001a\u00020\t2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005H\u0007J\u0008\u0010\u000b\u001a\u00020\tH\u0007J\u001a\u0010\u000f\u001a\u00020\t2\u0010\u0010\u000e\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000cH\u0002J\'\u0010\u0012\u001a\u00020\t2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0007H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J$\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0019H\u0007J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001d\u001a\u00020\u0019H\u0002J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0011\u001a\u00020\rH\u0002J\u0018\u0010#\u001a\u00020\t2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0007H\u0007J\u0010\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u0007H\u0007J$\u0010)\u001a\u00020\t2\u0008\u0008\u0002\u0010\'\u001a\u00020&2\u0010\u0010(\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000cH\u0007J\u0018\u0010,\u001a\u00020\t2\u0006\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u0017H\u0007J\u0010\u0010-\u001a\u00020\t2\u0006\u0010*\u001a\u00020\u0019H\u0007J\u0008\u0010.\u001a\u00020\tH\u0007J\u0008\u0010/\u001a\u00020\tH\u0002J\u001b\u00100\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u0010\u0016J\u0010\u00103\u001a\u00020\t2\u0006\u00102\u001a\u000201H\u0016J\u001c\u00107\u001a\u00020\t2\u0008\u00105\u001a\u0004\u0018\u0001042\u0008\u00106\u001a\u0004\u0018\u000104H\u0016J\u0008\u00108\u001a\u00020\tH\u0016R\u0014\u00109\u001a\u00020\u00198\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0014\u0010;\u001a\u00020\u00198\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008;\u0010:R\u0014\u0010<\u001a\u00020\u00198\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008<\u0010:R\u0014\u0010=\u001a\u00020\u00198\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008=\u0010:R\u001a\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00190>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u001a\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u001a\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010BR \u0010E\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010G\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR(\u0010K\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\r0Ij\n\u0012\u0006\u0012\u0004\u0018\u00010\r`J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0018\u0010M\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0014\u0010P\u001a\u00020O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010Q\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006T"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;",
        "Lcom/guochao/faceshow/aaspring/manager/im/d$a;",
        "Lb8/d$a;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "Landroidx/lifecycle/Observer;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
        "observer",
        "",
        "observe",
        "loadMessageFromServer",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
        "systemConversationMessage",
        "handleConversations",
        "conversationInfo",
        "systemConversationMessageItem",
        "handleNewMessage",
        "(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "c",
        "checkOfficialConversation",
        "(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "typeId",
        "",
        "nickName",
        "content",
        "getDisplayedMessage",
        "conversationId",
        "findConversation",
        "typeIdToMessageType",
        "Landroid/content/Context;",
        "activity",
        "item",
        "onClick",
        "info",
        "removeConversation",
        "",
        "init",
        "data",
        "checkRemove",
        "systemConversationId",
        "count",
        "read",
        "clearUnread",
        "clearAllUnread",
        "setOfficialConversationRead",
        "loadEventNotifyUnread",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
        "message",
        "onNewMessage",
        "Lcom/guochao/faceshow/bean/UserBean;",
        "oldUser",
        "newUser",
        "onUserChanged",
        "onLogout",
        "SYSTEM_OFFICIAL",
        "Ljava/lang/String;",
        "SYSTEM_FOCUSED",
        "SYSTEM_HELLO",
        "SYSTEM_INTERACTION",
        "",
        "array",
        "[Ljava/lang/String;",
        "systemConversationList",
        "Ljava/util/List;",
        "all",
        "Landroidx/lifecycle/MutableLiveData;",
        "systemConversations",
        "Landroidx/lifecycle/MutableLiveData;",
        "requesting",
        "Z",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "lastData",
        "Ljava/util/ArrayList;",
        "lastOfficialMessage",
        "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "()V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_FOCUSED:Ljava/lang/String; = "system_focused"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_HELLO:Ljava/lang/String; = "system_hello"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_INTERACTION:Ljava/lang/String; = "system_interaction"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_OFFICIAL:Ljava/lang/String; = "system_official"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final array:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final coroutineScope:Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static imConversationListResult:La8/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final lastData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static lastOfficialMessage:Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static requesting:Z

.field private static final systemConversationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final systemConversations:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    const-string v1, "system_official"

    const-string v2, "system_focused"

    const-string v3, "system_hello"

    const-string v4, "system_interaction"

    .line 1
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->array:[Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    .line 4
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversations:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->lastData:Ljava/util/ArrayList;

    .line 6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    sput-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2, v0}, Lb8/d;->registerOnUserChangedListener(Lb8/d$a;)V

    .line 8
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, v1, v2

    .line 9
    new-instance v5, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;-><init>(ILjava/lang/String;)V

    .line 10
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    .line 11
    invoke-virtual {v5, v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    .line 12
    :cond_0
    sget-object v4, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->x(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/h;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/h;

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/a;->o(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final _init_$lambda-3(La8/a;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    sput-object p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->imConversationListResult:La8/a;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v1, "system_hello"

    .line 2
    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->findConversation(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgStr(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgTime(J)V

    .line 5
    invoke-virtual {p0}, La8/a;->a()Ljava/util/List;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_4

    const-string v4, "conversationInfos"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 7
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isGreetingConversation()V

    .line 8
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSayHi()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lfb/a;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    if-nez v4, :cond_2

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f1203f7

    new-array v9, v7, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 11
    invoke-virtual {v4, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgStr(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgTime()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgTime(J)V

    const/4 v4, 0x1

    .line 13
    :cond_2
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getUnreadNum()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    goto :goto_2

    :cond_5
    const/4 p0, -0x1

    .line 15
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    .line 16
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system_conversation_delete_"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 17
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgTime()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-eqz p0, :cond_6

    .line 18
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_6
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    const-string v0, "system_official"

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->findConversation(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p0

    if-nez p0, :cond_7

    .line 21
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversations:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 22
    :cond_7
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$2$2;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$2$2;-><init>(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_3
    return-void
.end method

.method public static final synthetic access$checkOfficialConversation(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->checkOfficialConversation(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findConversation(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->findConversation(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLastData$p()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->lastData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getLastOfficialMessage$p()Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->lastOfficialMessage:Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    return-object v0
.end method

.method public static final synthetic access$getSystemConversationList$p()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSystemConversations$p()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversations:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static final synthetic access$handleConversations(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->handleConversations(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$handleNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->handleNewMessage(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadEventNotifyUnread(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->loadEventNotifyUnread(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setOfficialConversationRead(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->setOfficialConversationRead()V

    return-void
.end method

.method public static final synthetic access$setRequesting$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->requesting:Z

    return-void
.end method

.method public static synthetic b(La8/a;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->_init_$lambda-3(La8/a;)V

    return-void
.end method

.method private final checkOfficialConversation(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$checkOfficialConversation$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$checkOfficialConversation$1;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$checkOfficialConversation$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$checkOfficialConversation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$checkOfficialConversation$1;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$checkOfficialConversation$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$checkOfficialConversation$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$checkOfficialConversation$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput v3, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$checkOfficialConversation$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->loadEventNotifyUnread(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 6
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "system_official"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_7

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    .line 10
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public static final checkRemove(ZLjava/util/List;)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "list.iterator()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getMessageType()I

    move-result v8

    if-ne v8, v6, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "system_official"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_5

    :cond_3
    if-eqz v5, :cond_4

    .line 7
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getMessageType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_5

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "system_focused"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v5, :cond_6

    .line 8
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getMessageType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "system_interaction"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_5
    move-object v3, v5

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 9
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getTypeId()I

    move-result v4

    if-nez v4, :cond_8

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "system_hello"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 12
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getUnreadNum()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 14
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "system_conversation_delete_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, -0x1

    .line 15
    invoke-static {v2, v4, v5}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz p0, :cond_a

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_b

    .line 17
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getContentDate()J

    move-result-wide v2

    goto :goto_6

    :cond_b
    const-wide/16 v2, 0x0

    :goto_6
    cmp-long v4, v2, v6

    if-gtz v4, :cond_0

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 19
    :cond_c
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic checkRemove$default(ZLjava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->checkRemove(ZLjava/util/List;)V

    return-void
.end method

.method public static final clearAllUnread()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/user/message/readAllMessage"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversations:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final clearUnread(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "systemConversationId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    .line 3
    :cond_2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversations:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const-string v0, "system_official"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/user/message/readAllOfficeMessage"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_3
    const-string v0, "system_focused"

    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "user/attention/getListUserAttention"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x1

    const-string v2, "page"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "limit"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_4
    const-string v0, "system_interaction"

    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/user/message/readAllInteractMessage"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_5
    const-string v0, "system_hello"

    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 14
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->imConversationListResult:La8/a;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, La8/a;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$clearUnread$3$call$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$clearUnread$3$call$1;-><init>()V

    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 17
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSayHi()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v2

    .line 19
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->markC2CMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private final findConversation(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final getDisplayedMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const/16 v1, 0xe7

    if-eq p0, v1, :cond_2

    const/16 v1, 0xe8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v1, :cond_1

    const/16 v1, 0x143

    if-eq p0, v1, :cond_0

    const/16 v1, 0x144

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    if-nez p2, :cond_3

    const-string p2, ""

    goto/16 :goto_0

    :pswitch_0
    const p0, 0x7f1203f1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    .line 2
    invoke-virtual {v0, p0, p2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p0, "{//type_id:223   @\u7528\u6237\u6635\u79f0\u5173\u6ce8\u2026          )\n            }"

    .line 3
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const p0, 0x7f1203ed

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 4
    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p0, "{//type_id:221    \u89c6\u9891\u4e2d@\u597d\u53cb\u2026          )\n            }"

    .line 5
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const p0, 0x7f1203f0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 6
    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p0, "{ //\u8bc4\u8bba\u4e86\u77ed\u89c6\u9891\n             \u2026          )\n            }"

    .line 7
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const p1, 0x7f120076

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_4
    const p0, 0x7f1203ef

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p0, "{//type_id:215 \u8bc4\u8bba\u4e86\u670b\u53cb\u5708\n  \u2026          )\n            }"

    .line 10
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f120090

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 12
    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f120091

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 13
    :pswitch_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f12008e

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 14
    :pswitch_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f12008f

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 15
    :pswitch_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f12008c

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 16
    :pswitch_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f12008d

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    :pswitch_b
    const p0, 0x7f1203f4

    .line 17
    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p0, "{//type_id:205  \u97f3\u4e50\u4fe1\u606f\u6d3b\u52a8\u901a\u77e5\u2026ent_coming)\n            }"

    .line 18
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p0, 0x7f1203f3

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    .line 19
    invoke-virtual {v0, p0, p2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p0, "{//SENDGIFT-232 \u8bed\u97f3\u9001\u793c\n   \u2026          )\n            }"

    .line 20
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :pswitch_c
    const p0, 0x7f1203f2

    .line 21
    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p0, "{// \u65b0\u7248\u53cd\u9988\u4e0e\u5e2e\u52a9\n            \u2026lper_reply)\n            }"

    .line 22
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final handleConversations(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getTypeId()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 7
    :cond_3
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final handleNewMessage(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getUnreadCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getContentDate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgTime(J)V

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getContentDate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSortTime(J)V

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgStr(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system_official"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sput-object p2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->lastOfficialMessage:Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->checkOfficialConversation(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getContent()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    const-string p3, ""

    .line 9
    :cond_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getTypeId()I

    move-result v0

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getUserNickName()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {v0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->getDisplayedMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgStr(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 13
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final loadEventNotifyUnread(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;

    invoke-direct {v2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;-><init>(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlinx/coroutines/CancellableContinuation;)V

    const-string p1, "c2c_-10000"

    invoke-virtual {v1, p1, v2}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method public static final loadMessageFromServer()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->requesting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->requesting:Z

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v1, "tokens/user/message/findALLReadNumByUserIdV2"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadMessageFromServer$1;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadMessageFromServer$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static final observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p0    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversations:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversations:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method public static final onClick(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "system_hello"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/GreetingListActivity;

    .line 5
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "system_focused"

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance p1, Landroid/content/Intent;

    .line 9
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    .line 10
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "system_interaction"

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 14
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;

    .line 15
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "system_official"

    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    new-instance p1, Landroid/content/Intent;

    .line 19
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;

    .line 20
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final read(Ljava/lang/String;I)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "systemConversationId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getUnreadNum()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    .line 3
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversations:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static final removeConversation(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 4
    .param p0    # Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system_conversation_delete_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgTime()J

    move-result-wide v2

    .line 8
    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "info.conversationId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->clearUnread(Ljava/lang/String;)V

    .line 10
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversations:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setOfficialConversationRead()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$setOfficialConversationRead$callBack$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$setOfficialConversationRead$callBack$1;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    const-string v2, "172"

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->markC2CMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->markC2CMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method private final typeIdToMessageType(Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getMessageType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 4
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "system_interaction"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->setMessageType(I)V

    return-object v3

    :cond_2
    return-object v2

    .line 6
    :cond_3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "system_focused"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->setMessageType(I)V

    return-object v3

    :cond_5
    return-object v2

    .line 10
    :cond_6
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 12
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "system_official"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 13
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->setMessageType(I)V

    return-object v3

    :cond_8
    return-object v2
.end method


# virtual methods
.method public onLogout()V
    .locals 6

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->array:[Ljava/lang/String;

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 5
    new-instance v4, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;-><init>(ILjava/lang/String;)V

    const-string v5, "system_hello"

    .line 6
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    .line 7
    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    .line 8
    :cond_0
    sget-object v3, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversationList:Ljava/util/List;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->all:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->checkRemove(ZLjava/util/List;)V

    .line 11
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->systemConversations:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 7
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    if-eqz v0, :cond_8

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->setOfficialConversationRead()V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 4
    move-object v2, p1

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->getMessageContent()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTimestamp()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    mul-long v2, v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->setContentDate(J)V

    .line 7
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->typeIdToMessageType(Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getUnreadNum()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    .line 9
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getContentDate()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgTime(J)V

    .line 10
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSortTime(J)V

    .line 11
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "system_official"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSender()Ljava/lang/String;

    move-result-object p1

    const-string v2, "-10000"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->lastOfficialMessage:Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getUnreadCount()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    add-int/2addr p1, v3

    .line 14
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->setUnreadCount(I)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getUnreadNum()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->setUnreadCount(I)V

    .line 16
    :cond_3
    :goto_2
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->lastData:Ljava/util/ArrayList;

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 18
    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    if-eqz v5, :cond_4

    .line 19
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getMessageType()I

    move-result v6

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getMessageType()I

    move-result v5

    if-ne v6, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, -0x1

    :goto_5
    if-ltz v2, :cond_7

    .line 20
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->lastData:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_7
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->lastData:Ljava/util/ArrayList;

    invoke-static {v4, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->checkRemove(ZLjava/util/List;)V

    new-array p1, v3, [Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    aput-object v1, p1, v4

    .line 22
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->handleConversations(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method public bridge synthetic onRecvMessageRevoked(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, La8/b;->a(Lcom/guochao/faceshow/aaspring/manager/im/d$a;Ljava/lang/String;)V

    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/bean/UserBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/bean/UserBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lb8/c;->a(Lb8/d$a;Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    return-void
.end method

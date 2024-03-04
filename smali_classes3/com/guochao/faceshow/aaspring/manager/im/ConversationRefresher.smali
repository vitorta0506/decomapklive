.class public final Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u000eJ \u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u0007J\u0008\u0010\t\u001a\u00020\u0007H\u0007R\u001a\u0010\u000b\u001a\u00020\n8\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u0012\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u000f8\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u0012\u0004\u0008\u0012\u0010\u000eR \u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00028\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u0012\u0004\u0008\u0016\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;",
        "",
        "",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        "list",
        "",
        "fromChange",
        "",
        "onRefreshConversations",
        "release",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "getHandler$annotations",
        "()V",
        "Lcom/guochao/faceshow/aaspring/manager/im/b;",
        "manager",
        "Lcom/guochao/faceshow/aaspring/manager/im/b;",
        "getManager$annotations",
        "Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;",
        "pendingRunnable",
        "Ljava/util/List;",
        "getPendingRunnable$annotations",
        "<init>",
        "RefreshRunnable",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final manager:Lcom/guochao/faceshow/aaspring/manager/im/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final pendingRunnable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->handler:Landroid/os/Handler;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->manager:Lcom/guochao/faceshow/aaspring/manager/im/b;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->pendingRunnable:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getManager$p()Lcom/guochao/faceshow/aaspring/manager/im/b;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->manager:Lcom/guochao/faceshow/aaspring/manager/im/b;

    return-object v0
.end method

.method public static final synthetic access$getPendingRunnable$p()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->pendingRunnable:Ljava/util/List;

    return-object v0
.end method

.method private static synthetic getHandler$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getManager$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getPendingRunnable$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final onRefreshConversations(Ljava/util/List;Z)V
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    .line 2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    .line 4
    sget-object p1, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->pendingRunnable:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object p1, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->pendingRunnable:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;

    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/imsdk/v2/V2TIMConversation;

    .line 10
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;->getConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    sget-object v3, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_4
    sget-object p0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->pendingRunnable:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-void
.end method

.method public static synthetic onRefreshConversations$default(Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->onRefreshConversations(Ljava/util/List;Z)V

    return-void
.end method

.method public static final release()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->pendingRunnable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

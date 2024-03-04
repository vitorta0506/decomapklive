.class public final Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;",
        "Ljava/lang/Runnable;",
        "conversation",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        "(Lcom/tencent/imsdk/v2/V2TIMConversation;)V",
        "getConversation",
        "()Lcom/tencent/imsdk/v2/V2TIMConversation;",
        "run",
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
.field private final conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 1
    .param p1    # Lcom/tencent/imsdk/v2/V2TIMConversation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "conversation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-void
.end method


# virtual methods
.method public final getConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->access$getManager$p()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->B0(ILjava/util/List;Z)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->access$getPendingRunnable$p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

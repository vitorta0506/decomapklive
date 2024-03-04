.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0007R\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager$Companion;",
        "",
        "()V",
        "sChatLimitManager",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;",
        "getSChatLimitManager$annotations",
        "getInstance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager$Companion;-><init>()V

    return-void
.end method

.method private static synthetic getSChatLimitManager$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->access$getSChatLimitManager$cp()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->access$getSChatLimitManager$cp()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->Companion:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager$Companion;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->access$setSChatLimitManager$cp(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;)V

    .line 5
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->access$getSChatLimitManager$cp()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

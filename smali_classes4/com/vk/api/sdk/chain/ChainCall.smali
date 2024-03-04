.class public abstract Lcom/vk/api/sdk/chain/ChainCall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0017\u0010\u0008\u001a\u0004\u0018\u00018\u00002\u0006\u0010\t\u001a\u00020\nH&\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0004J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0004R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vk/api/sdk/chain/ChainCall;",
        "T",
        "",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "(Lcom/vk/api/sdk/VKApiManager;)V",
        "getManager",
        "()Lcom/vk/api/sdk/VKApiManager;",
        "call",
        "args",
        "Lcom/vk/api/sdk/chain/ChainArgs;",
        "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;",
        "logDebug",
        "",
        "msg",
        "",
        "t",
        "",
        "logWarning",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final manager:Lcom/vk/api/sdk/VKApiManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/VKApiManager;)V
    .locals 1
    .param p1    # Lcom/vk/api/sdk/VKApiManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/chain/ChainCall;->manager:Lcom/vk/api/sdk/VKApiManager;

    return-void
.end method


# virtual methods
.method public abstract call(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;
    .param p1    # Lcom/vk/api/sdk/chain/ChainArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/chain/ChainArgs;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final getManager()Lcom/vk/api/sdk/VKApiManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/chain/ChainCall;->manager:Lcom/vk/api/sdk/VKApiManager;

    return-object v0
.end method

.method protected final logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/api/sdk/chain/ChainCall;->manager:Lcom/vk/api/sdk/VKApiManager;

    invoke-virtual {v0}, Lcom/vk/api/sdk/VKApiManager;->getConfig()Lcom/vk/api/sdk/VKApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/api/sdk/VKApiConfig;->getLogger()Lcom/vk/api/sdk/utils/log/Logger;

    move-result-object v0

    sget-object v1, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->DEBUG:Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    invoke-interface {v0, v1, p1, p2}, Lcom/vk/api/sdk/utils/log/Logger;->log(Lcom/vk/api/sdk/utils/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/api/sdk/chain/ChainCall;->manager:Lcom/vk/api/sdk/VKApiManager;

    invoke-virtual {v0}, Lcom/vk/api/sdk/VKApiManager;->getConfig()Lcom/vk/api/sdk/VKApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/api/sdk/VKApiConfig;->getLogger()Lcom/vk/api/sdk/utils/log/Logger;

    move-result-object v0

    sget-object v1, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->WARNING:Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    invoke-interface {v0, v1, p1, p2}, Lcom/vk/api/sdk/utils/log/Logger;->log(Lcom/vk/api/sdk/utils/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

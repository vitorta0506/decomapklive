.class public abstract Lcom/guochao/pusher/base/BaseLivePusher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/pusher/base/ILivePusher;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008 \u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0018\u001a\u00020\u000fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/pusher/base/BaseLivePusher;",
        "Lcom/guochao/pusher/base/ILivePusher;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "pushEventListeners",
        "",
        "Lcom/guochao/pusher/base/ILivePusher$PushEventListener;",
        "getPushEventListeners",
        "()Ljava/util/List;",
        "setPushEventListeners",
        "(Ljava/util/List;)V",
        "addPushEventListener",
        "",
        "pushEventListener",
        "enableAudio",
        "enable",
        "",
        "enableCamera",
        "getBeautyManager",
        "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;",
        "removePushEventListener",
        "reset",
        "lib_pusher_and_player_release"
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
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pushEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/pusher/base/ILivePusher$PushEventListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/pusher/base/BaseLivePusher;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addPushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V
    .locals 1
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$PushEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pushEventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/base/BaseLivePusher;->pushEventListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/pusher/base/BaseLivePusher;->pushEventListeners:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/pusher/base/BaseLivePusher;->pushEventListeners:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/pusher/base/BaseLivePusher;->pushEventListeners:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public enableAudio(Z)V
    .locals 0

    return-void
.end method

.method public enableCamera(Z)V
    .locals 0

    return-void
.end method

.method public getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    iget-object v1, p0, Lcom/guochao/pusher/base/BaseLivePusher;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/pusher/base/BaseLivePusher;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getPushEventListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/pusher/base/ILivePusher$PushEventListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/pusher/base/BaseLivePusher;->pushEventListeners:Ljava/util/List;

    return-object v0
.end method

.method public removePushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V
    .locals 1
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$PushEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pushEventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/pusher/base/BaseLivePusher;->pushEventListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/base/BaseLivePusher;->pushEventListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/pusher/base/BaseLivePusher;->pushEventListeners:Ljava/util/List;

    .line 3
    sget-object v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    iget-object v1, p0, Lcom/guochao/pusher/base/BaseLivePusher;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->destroyOnMainThread()V

    return-void
.end method

.method public final setPushEventListeners(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/pusher/base/ILivePusher$PushEventListener;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/pusher/base/BaseLivePusher;->pushEventListeners:Ljava/util/List;

    return-void
.end method

.method public synthetic startPushToRtc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnb/a;->a(Lcom/guochao/pusher/base/ILivePusher;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

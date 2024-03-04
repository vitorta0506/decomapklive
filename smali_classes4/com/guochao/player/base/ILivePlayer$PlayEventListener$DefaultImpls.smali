.class public final Lcom/guochao/player/base/ILivePlayer$PlayEventListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onConnectToServer(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 1
    .param p0    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/player/base/ILivePlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "livePlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->j(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public static onDrawFirstFrame(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 1
    .param p0    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/player/base/ILivePlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "livePlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->k(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public static onPlayEvent(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/player/base/a;->l(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onPlayFirstAudioFrame(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 1
    .param p0    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/player/base/ILivePlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "livePlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->m(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public static onPlayerVolumeUpdate(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;F)V
    .locals 1
    .param p0    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->n(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;F)V

    return-void
.end method

.method public static onPublishStreamInfo(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/player/base/ILivePlayer$PlayEventListener;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/player/base/ILivePlayer$StreamInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamInfoList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->o(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static onVideoLoading(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->p(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static onVideoPlaying(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->q(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static onVideoSizeChanged(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;II)V
    .locals 1
    .param p0    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/player/base/a;->r(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;II)V

    return-void
.end method

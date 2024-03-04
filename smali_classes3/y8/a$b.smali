.class public abstract Ly8/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/player/base/ILivePlayer$PlayEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public synthetic onConnectToServer(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->a(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public onPlayEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Ly8/a$b;->a()V

    :cond_0
    return-void
.end method

.method public synthetic onPlayFirstAudioFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->d(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public synthetic onPlayerVolumeUpdate(Ljava/lang/String;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->e(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;F)V

    return-void
.end method

.method public synthetic onPublishStreamInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->f(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onVideoLoading(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->g(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/player/base/a;->i(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;II)V

    return-void
.end method

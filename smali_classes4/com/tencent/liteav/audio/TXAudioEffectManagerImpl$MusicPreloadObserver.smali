.class Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MusicPreloadObserver"
.end annotation


# instance fields
.field private mListener:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;->mListener:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;

    return-void
.end method


# virtual methods
.method public onLoadError(JI)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
        value = "MusicPreloadObserver"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;->mListener:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;

    if-eqz v0, :cond_0

    long-to-int p2, p1

    .line 2
    invoke-interface {v0, p2, p3}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;->onLoadError(II)V

    :cond_0
    return-void
.end method

.method public onLoadProgress(JI)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
        value = "MusicPreloadObserver"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;->mListener:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;

    if-eqz v0, :cond_0

    long-to-int p2, p1

    .line 2
    invoke-interface {v0, p2, p3}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;->onLoadProgress(II)V

    :cond_0
    return-void
.end method

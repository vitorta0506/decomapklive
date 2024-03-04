.class public interface abstract Lcom/tencent/qgame/animplayer/inter/IAnimListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/inter/IAnimListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0003H&J\u001a\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\u0008\u0010\u0010\u001a\u00020\u0003H&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/inter/IAnimListener;",
        "",
        "onFailed",
        "",
        "errorType",
        "",
        "errorMsg",
        "",
        "onVideoComplete",
        "onVideoConfigReady",
        "",
        "config",
        "Lcom/tencent/qgame/animplayer/AnimConfig;",
        "onVideoDestroy",
        "onVideoRender",
        "frameIndex",
        "onVideoStart",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract onFailed(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onVideoComplete()V
.end method

.method public abstract onVideoConfigReady(Lcom/tencent/qgame/animplayer/AnimConfig;)Z
    .param p1    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onVideoDestroy()V
.end method

.method public abstract onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V
    .param p2    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onVideoStart()V
.end method

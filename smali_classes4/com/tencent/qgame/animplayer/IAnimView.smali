.class public interface abstract Lcom/tencent/qgame/animplayer/IAnimView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H&J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&J\u0012\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0004H&J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0004H&J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0008H&J\u0012\u0010\u0017\u001a\u00020\n2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H&J\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001cH&J\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001eH&J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H&J\u0010\u0010\u001f\u001a\u00020\n2\u0006\u0010$\u001a\u00020%H&J\u0010\u0010\u001f\u001a\u00020\n2\u0006\u0010&\u001a\u00020\'H&J\u0008\u0010(\u001a\u00020\nH&J\u0018\u0010)\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u0008H&J\u0012\u0010,\u001a\u00020\n2\u0008\u0010-\u001a\u0004\u0018\u00010.H&\u00a8\u0006/"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/IAnimView;",
        "",
        "getRealSize",
        "Lkotlin/Pair;",
        "",
        "getSurfaceTexture",
        "Landroid/graphics/SurfaceTexture;",
        "isRunning",
        "",
        "prepareTextureView",
        "",
        "setAnimListener",
        "animListener",
        "Lcom/tencent/qgame/animplayer/inter/IAnimListener;",
        "setFetchResource",
        "fetchResource",
        "Lcom/tencent/qgame/animplayer/inter/IFetchResource;",
        "setFps",
        "fps",
        "setLoop",
        "playLoop",
        "setMute",
        "isMute",
        "setOnResourceClickListener",
        "resourceClickListener",
        "Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;",
        "setScaleType",
        "scaleType",
        "Lcom/tencent/qgame/animplayer/util/IScaleType;",
        "type",
        "Lcom/tencent/qgame/animplayer/util/ScaleType;",
        "startPlay",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "assetsPath",
        "",
        "fileContainer",
        "Lcom/tencent/qgame/animplayer/file/IFileContainer;",
        "file",
        "Ljava/io/File;",
        "stopPlay",
        "supportMask",
        "isSupport",
        "isEdgeBlur",
        "updateMaskConfig",
        "maskConfig",
        "Lcom/tencent/qgame/animplayer/mask/MaskConfig;",
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
.method public abstract getRealSize()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isRunning()Z
.end method

.method public abstract prepareTextureView()V
.end method

.method public abstract setAnimListener(Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V
    .param p1    # Lcom/tencent/qgame/animplayer/inter/IAnimListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setFetchResource(Lcom/tencent/qgame/animplayer/inter/IFetchResource;)V
    .param p1    # Lcom/tencent/qgame/animplayer/inter/IFetchResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setFps(I)V
.end method

.method public abstract setLoop(I)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setOnResourceClickListener(Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;)V
    .param p1    # Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setScaleType(Lcom/tencent/qgame/animplayer/util/IScaleType;)V
    .param p1    # Lcom/tencent/qgame/animplayer/util/IScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setScaleType(Lcom/tencent/qgame/animplayer/util/ScaleType;)V
    .param p1    # Lcom/tencent/qgame/animplayer/util/ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .param p1    # Landroid/content/res/AssetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .param p1    # Lcom/tencent/qgame/animplayer/file/IFileContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract startPlay(Ljava/io/File;)V
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract stopPlay()V
.end method

.method public abstract supportMask(ZZ)V
.end method

.method public abstract updateMaskConfig(Lcom/tencent/qgame/animplayer/mask/MaskConfig;)V
    .param p1    # Lcom/tencent/qgame/animplayer/mask/MaskConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

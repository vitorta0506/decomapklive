.class public interface abstract Lcom/guochao/pusher/base/ILivePusher$BeautyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/pusher/base/ILivePusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BeautyManager"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H&J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&J\u001c\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0012H&J\u0012\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0010H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0007H&\u00a8\u0006\u0017\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;",
        "",
        "destroyOnGLThread",
        "",
        "destroyOnMainThread",
        "getBeautyItems",
        "",
        "Lcom/guochao/pusher/beauty/BeautyItem;",
        "getFilterItems",
        "Lcom/guochao/pusher/beauty/FilterItem;",
        "reInit",
        "setFaceDetectListener",
        "faceDetectListener",
        "Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;",
        "setFilter",
        "bitmapPath",
        "",
        "strength",
        "",
        "setMotionTmpl",
        "path",
        "update",
        "beautyItem",
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


# virtual methods
.method public abstract destroyOnGLThread()V
.end method

.method public abstract destroyOnMainThread()V
.end method

.method public abstract getBeautyItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/pusher/beauty/BeautyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getFilterItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/pusher/beauty/FilterItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract reInit()V
.end method

.method public abstract setFaceDetectListener(Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;)V
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setFilter(Ljava/lang/String;F)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
.end method

.method public abstract setMotionTmpl(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract update(Lcom/guochao/pusher/beauty/BeautyItem;)V
    .param p1    # Lcom/guochao/pusher/beauty/BeautyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.class public final Lcom/guochao/pusher/beauty/XMagicBeautyManager$setFaceDetectListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/pusher/beauty/XMagicBeautyManager;->setFaceDetectListener(Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/guochao/pusher/beauty/XMagicBeautyManager$setFaceDetectListener$1",
        "Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;",
        "onBodyDataUpdated",
        "",
        "p0",
        "",
        "onFaceDataUpdated",
        "onHandDataUpdated",
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
.field final synthetic $faceDetectListener:Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;


# direct methods
.method constructor <init>(Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager$setFaceDetectListener$1;->$faceDetectListener:Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBodyDataUpdated(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onFaceDataUpdated(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager$setFaceDetectListener$1;->$faceDetectListener:Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;->hasFace(Z)V

    :cond_1
    return-void
.end method

.method public onHandDataUpdated(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

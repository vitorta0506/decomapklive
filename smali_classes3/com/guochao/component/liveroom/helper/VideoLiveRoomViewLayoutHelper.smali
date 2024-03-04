.class public final Lcom/guochao/component/liveroom/helper/VideoLiveRoomViewLayoutHelper;
.super Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/component/liveroom/helper/VideoLiveRoomViewLayoutHelper;",
        "Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;",
        "view",
        "Landroid/view/View;",
        "gcLiveRoomModel",
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
        "(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V",
        "layoutAdsView",
        "",
        "layoutBottomActionView",
        "layoutEventView",
        "layoutLiveRoomPlayerView",
        "layoutTopInfoView",
        "component_liveroom_release"
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
.method public constructor <init>(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcLiveRoomModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;-><init>(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V

    return-void
.end method


# virtual methods
.method public layoutAdsView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public layoutBottomActionView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public layoutEventView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public layoutLiveRoomPlayerView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public layoutTopInfoView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

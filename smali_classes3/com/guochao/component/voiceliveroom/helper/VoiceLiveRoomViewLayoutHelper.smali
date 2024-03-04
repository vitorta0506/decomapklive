.class public final Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;
.super Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u001e\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;",
        "Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;",
        "view",
        "Landroid/view/View;",
        "gcLiveRoomModel",
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
        "(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V",
        "layoutAdsView",
        "",
        "layoutBottomActionView",
        "layoutChatContentListView",
        "chat",
        "voice",
        "root",
        "Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;",
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

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;-><init>(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V

    .line 2
    instance-of p2, p1, Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;

    if-eqz p2, :cond_0

    .line 3
    move-object p2, p1

    check-cast p2, Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;

    new-instance v0, Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper$1;

    invoke-direct {v0, p1, p0}, Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper$1;-><init>(Landroid/view/View;Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;)V

    invoke-virtual {p2, v0}, Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;->setOnLayoutListener(Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView$OnLayoutListener;)V

    :cond_0
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

.method public final layoutChatContentListView(Landroid/view/View;Landroid/view/View;Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    const/high16 v0, 0x41000000    # 8.0f

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    add-int/2addr p2, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p2

    .line 5
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_0

    .line 6
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
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

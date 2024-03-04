.class public final Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J \u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u001e\u001a\u00020\u000fH\u0002J\u0008\u0010\u001f\u001a\u00020\rH\u0002J\u0010\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u000fH\u0002J\u0010\u0010\"\u001a\u00020\u00132\u0006\u0010!\u001a\u00020\rH\u0002J\u0006\u0010#\u001a\u00020\u0013R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "playView",
        "Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;",
        "(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V",
        "animations",
        "Ljava/util/ArrayList;",
        "Landroid/animation/AnimatorSet;",
        "Lkotlin/collections/ArrayList;",
        "cacheSvgaViews",
        "",
        "Lcom/opensource/svgaplayer/SVGAImageView;",
        "cacheViews",
        "Landroid/widget/ImageView;",
        "handler",
        "Landroid/os/Handler;",
        "anim",
        "",
        "msg",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
        "animTo",
        "imageView",
        "target",
        "Landroid/view/View;",
        "id",
        "",
        "hasBoomAnimation",
        "",
        "obtainImageView",
        "obtainSvgaView",
        "recycle",
        "view",
        "recycleSvga",
        "reset",
        "app_GooglePlayRelease"
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
.field private final animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cacheSvgaViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/SVGAImageView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cacheViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final container:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final playView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->container:Landroid/view/ViewGroup;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->playView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->cacheViews:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->cacheSvgaViews:Ljava/util/List;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->handler:Landroid/os/Handler;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->animations:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->animTo$lambda-4$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static final synthetic access$getContainer$p(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->container:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic access$obtainSvgaView(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->obtainSvgaView()Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$recycleSvga(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->recycleSvga(Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method

.method private final animTo(Landroid/widget/ImageView;Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 8

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v2, v4

    const/high16 v5, 0x42000000    # 32.0f

    .line 11
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    div-float/2addr v3, v4

    .line 12
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 13
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x0

    aget v6, v1, v4

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v0

    add-int/2addr v6, v7

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    aget v1, v1, v7

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v0

    add-int/2addr v1, p2

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    sub-int/2addr v1, p2

    .line 16
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v7, [F

    int-to-float v5, v6

    sub-float/2addr v5, v2

    aput v5, v0, v4

    const-string v2, "translationX"

    .line 17
    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v0, v7, [F

    int-to-float v1, v1

    sub-float/2addr v1, v3

    aput v1, v0, v4

    const-string v1, "translationY"

    .line 18
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0x3e8

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 20
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/j;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/animation/AnimatorSet;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Landroid/widget/ImageView;)V

    const-wide/16 p1, 0x4e2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final animTo(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->playView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    .line 3
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->obtainImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftImg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "it.itemView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->animTo(Landroid/widget/ImageView;Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final animTo$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/animation/AnimatorSet;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Landroid/widget/ImageView;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->hasBoomAnimation(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p2, 0x1

    new-array v0, p2, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v3, "scaleX"

    .line 4
    invoke-static {p3, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v0, p2, [F

    aput v2, v0, v1

    const-string v1, "scaleY"

    .line 5
    invoke-static {p3, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0x96

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/k;

    invoke-direct {v3, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 9
    sget-object p1, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->shareParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "getInstance().resources.\u2026                        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator$animTo$2$2;

    invoke-direct {v1, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator$animTo$2$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/widget/ImageView;)V

    const-string p0, "blow"

    .line 12
    invoke-virtual {p1, v0, p0, v1, p2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->recycle(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method private static final animTo$lambda-4$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->recycle(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/animation/AnimatorSet;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->animTo$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Landroid/animation/AnimatorSet;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Landroid/widget/ImageView;)V

    return-void
.end method

.method private final hasBoomAnimation(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftTypeId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final obtainImageView()Landroid/widget/ImageView;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->cacheViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->cacheViews:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 10
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final obtainSvgaView()Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->cacheSvgaViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->cacheSvgaViews:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v2, "container.context"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 9
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final recycle(Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->cacheViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->cacheViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final recycleSvga(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->cacheSvgaViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->cacheSvgaViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final anim(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->playView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->playView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->playView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftSendList()Ljava/util/List;

    move-result-object v1

    const-string v2, "msg.giftSendList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    .line 7
    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->animTo(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->animations:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 4
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

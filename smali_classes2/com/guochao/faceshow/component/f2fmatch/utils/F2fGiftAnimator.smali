.class public final Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u000fH\u0002J\u0008\u0010\u0017\u001a\u00020\rH\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0015J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u000fH\u0002J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\rH\u0002J\u0006\u0010\u001e\u001a\u00020\u0019R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;",
        "",
        "f2fMatchActivity",
        "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;",
        "container",
        "Landroid/view/ViewGroup;",
        "(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/ViewGroup;)V",
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
        "hasBoomAnimation",
        "",
        "msg",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;",
        "obtainImageView",
        "obtainSvgaView",
        "playGift",
        "",
        "giftMessage",
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

.field private final f2fMatchActivity:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fMatchActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->f2fMatchActivity:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->container:Landroid/view/ViewGroup;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->animations:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheViews:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheSvgaViews:Ljava/util/List;

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->handler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const p3, 0x7f0a0aa1

    invoke-virtual {p2, p3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "f2fMatchActivity.window.\u2026tch.R.id.small_gift\n    )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;-><init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageView;Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->playGift$lambda-1(Landroid/widget/ImageView;Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V

    return-void
.end method

.method public static final synthetic access$getContainer$p(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->container:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic access$obtainSvgaView(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->obtainSvgaView()Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$recycleSvga(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->recycleSvga(Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->playGift$lambda-1$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Landroid/widget/ImageView;)V

    return-void
.end method

.method private final hasBoomAnimation(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->getGiftInfo()Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->giftTypeId:Ljava/lang/String;

    const-string v0, "2"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final obtainImageView()Landroid/widget/ImageView;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheViews:Ljava/util/List;

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

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->container:Landroid/view/ViewGroup;

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
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheSvgaViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheSvgaViews:Ljava/util/List;

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

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->container:Landroid/view/ViewGroup;

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

.method private static final playGift$lambda-1(Landroid/widget/ImageView;Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V
    .locals 6

    const-string v0, "$imageView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$giftMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string v5, "scaleX"

    .line 2
    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v2, v1, [F

    aput v4, v2, v3

    const-string v3, "scaleY"

    .line 3
    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v2, 0x96

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 6
    iget-object v0, p1, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/guochao/faceshow/component/f2fmatch/utils/c;

    invoke-direct {v4, p1, p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/c;-><init>(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    invoke-direct {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->hasBoomAnimation(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    sget-object p2, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    invoke-virtual {p2}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->shareParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p2

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f11000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "getInstance().resources.\u2026                        )"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2;

    invoke-direct {v2, p1, p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Landroid/widget/ImageView;)V

    const-string p0, "blow"

    .line 11
    invoke-virtual {p2, v0, p0, v2, v1}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    :cond_0
    return-void
.end method

.method private static final playGift$lambda-1$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->recycle(Landroid/widget/ImageView;)V

    return-void
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
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheViews:Ljava/util/List;

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
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheSvgaViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheSvgaViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final playGift(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V
    .locals 10
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "giftMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->obtainImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->getGiftInfo()Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->img:Ljava/lang/String;

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->f2fMatchActivity:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoContainer:Landroidx/cardview/widget/CardView;

    const-string v2, "f2fMatchActivity.viewBinding.smallVideoContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->container:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->container:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v4, v6

    div-float/2addr v5, v6

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    const/4 v6, 0x0

    aget v7, v3, v6

    .line 8
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    div-int/2addr v8, v2

    add-int/2addr v7, v8

    const/4 v8, 0x1

    aget v3, v3, v8

    .line 9
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 10
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v9, v8, [F

    int-to-float v7, v7

    sub-float/2addr v7, v4

    aput v7, v9, v6

    const-string v4, "translationX"

    .line 11
    invoke-static {v0, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v4, v8, [F

    int-to-float v3, v3

    sub-float/2addr v3, v5

    aput v3, v4, v6

    const-string v3, "translationY"

    .line 12
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v3, v2, [F

    .line 13
    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v2, v2, [F

    .line 14
    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v2, 0x3e8

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 16
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/guochao/faceshow/component/f2fmatch/utils/b;

    invoke-direct {v4, v0, p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/b;-><init>(Landroid/widget/ImageView;Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->animations:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->cacheViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

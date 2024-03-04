.class public final Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0012\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;",
        "",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "anim",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "itemData",
        "Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;",
        "checkRelease",
        "viewGroup",
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


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;->anim$lambda-7(Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static final anim(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 5
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a04e7

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02e4

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;

    move-result-object v1

    const-string v2, "bind(view)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, v1, Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;->bigAnim:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v3, 0x7f110012

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 6
    iget-object v2, v1, Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;->nickName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setMaxEcplise(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 7
    iget-object v2, v1, Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;->avatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 8
    iget-object p1, v1, Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;->smallAnim:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/high16 v2, 0x40000000    # 2.0f

    .line 9
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->setResizeScale(F)V

    const v2, 0x7f110013

    .line 10
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 11
    iget-object p1, v1, Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;->smallAnimArea:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 13
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 14
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/l;

    invoke-direct {p1, v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/l;-><init>(Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 15
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x6a4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final anim$lambda-7(Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 12

    const-string v0, "$viewBinding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;->smallAnimArea:Landroid/widget/FrameLayout;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/high16 v5, 0x41a00000    # 20.0f

    .line 3
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    aput v6, v4, v7

    const/4 v6, 0x0

    const/4 v8, 0x1

    aput v6, v4, v8

    const-string v6, "translationY"

    .line 4
    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v9, 0x118

    .line 5
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v2, v1, v7

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;->smallAnimArea:Landroid/widget/FrameLayout;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v11, "alpha"

    invoke-static {v2, v11, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;->smallAnimArea:Landroid/widget/FrameLayout;

    new-array v4, v8, [F

    .line 10
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    .line 11
    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    .line 12
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x258

    .line 13
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    .line 14
    iget-object p0, p0, Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;->smallAnimArea:Landroid/widget/FrameLayout;

    new-array v2, v3, [F

    .line 15
    fill-array-data v2, :array_1

    .line 16
    invoke-static {p0, v11, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 18
    invoke-virtual {p0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v2, 0x3

    aput-object p0, v1, v2

    .line 19
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const p0, 0x7f0a0b29

    .line 20
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper$anim$run$1$5;

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper$anim$run$1$5;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static final checkRelease(Landroid/view/ViewGroup;)V
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0b29

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const v1, 0x7f0a04e7

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_3
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

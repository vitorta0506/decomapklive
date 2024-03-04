.class public final Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eJ&\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014J\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;",
        "",
        "()V",
        "animating",
        "",
        "getAnimating",
        "()Z",
        "setAnimating",
        "(Z)V",
        "anim",
        "",
        "activity",
        "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;",
        "preview",
        "Landroid/view/View;",
        "prepare",
        "matching",
        "animToPrepare",
        "animateAddress",
        "addr",
        "Landroid/widget/TextView;",
        "moveView",
        "previewView",
        "container",
        "Landroid/view/ViewGroup;",
        "component_f2f_match_release"
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
.field private animating:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animToPrepare$lambda-1(Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final anim$lambda-0(Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$preview"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$prepare"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$matching"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 2
    invoke-virtual {p0, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    int-to-float p0, p3

    add-float/2addr p0, p4

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private static final animToPrepare$lambda-1(Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$preview"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$prepare"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$matching"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 2
    invoke-virtual {p0, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    int-to-float p0, p3

    add-float/2addr p0, p4

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->anim$lambda-0(Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final moveView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final anim(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preview"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepare"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matching"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animating:Z

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/guochao/faceshow/component/f2fmatch/R$id;->preview:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.fragment.F2fPreviewFragment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/guochao/faceshow/component/f2fmatch/R$id;->prepare:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.fragment.F2fPrepareFragment"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v2

    check-cast v9, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;->previewView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const-string v2, "previewFragment.viewBinding.previewView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoArea:Landroidx/cardview/widget/CardView;

    const-string v3, "activity.viewBinding.smallVideoArea"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->moveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v3, v2

    .line 9
    invoke-virtual {p4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v1

    neg-float v1, v3

    aput v1, v4, v0

    .line 11
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/utils/k;

    invoke-direct {v1, p2, p3, p4, v2}, Lcom/guochao/faceshow/component/f2fmatch/utils/k;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    new-instance p4, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$anim$2;

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$anim$2;-><init>(Landroid/view/View;Landroid/view/View;Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final animToPrepare(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preview"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepare"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matching"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animating:Z

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/guochao/faceshow/component/f2fmatch/R$id;->preview:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.fragment.F2fPreviewFragment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fPrepareFragment()Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

    move-result-object v6

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;->previewView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const-string v3, "previewFragment.viewBinding.previewView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;->largeVideo:Landroid/widget/FrameLayout;

    const-string v3, "previewFragment.viewBinding.largeVideo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->moveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoContainer:Landroidx/cardview/widget/CardView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v3, v2

    .line 11
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 12
    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationY(F)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    neg-float v3, v3

    aput v3, v4, v1

    const/4 v1, 0x0

    aput v1, v4, v0

    .line 13
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/utils/j;

    invoke-direct {v1, p2, p3, p4, v2}, Lcom/guochao/faceshow/component/f2fmatch/utils/j;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    new-instance p2, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;-><init>(Landroid/view/View;Landroid/view/View;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final animateAddress(Landroid/widget/TextView;)V
    .locals 11
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/Animator;

    new-array v3, v1, [F

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    neg-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v3, v4

    const-string v7, "translationX"

    invoke-static {p1, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x190

    .line 6
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v3, v2, v5

    new-array v1, v1, [F

    aput v6, v1, v5

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    neg-float v3, v3

    aput v3, v1, v4

    invoke-static {p1, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x320

    .line 10
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    aput-object v1, v2, v4

    .line 11
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 12
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$2$3;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$2$3;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$$inlined$doOnLayout$1;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animateAddress$$inlined$doOnLayout$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method public final getAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animating:Z

    return v0
.end method

.method public final setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animating:Z

    return-void
.end method

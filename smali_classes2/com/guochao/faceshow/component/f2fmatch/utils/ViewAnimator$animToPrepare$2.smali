.class public final Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animToPrepare(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
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
.field final synthetic $activity:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

.field final synthetic $matching:Landroid/view/View;

.field final synthetic $prepare:Landroid/view/View;

.field final synthetic $prepareFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->$matching:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->$prepare:Landroid/view/View;

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->$activity:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    iput-object p4, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->$prepareFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

    iput-object p5, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->setAnimating(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->$matching:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->$prepare:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->$activity:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoContainer:Landroidx/cardview/widget/CardView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->$activity:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->$prepareFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator$animToPrepare$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->setAnimating(Z)V

    return-void
.end method

.class Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method
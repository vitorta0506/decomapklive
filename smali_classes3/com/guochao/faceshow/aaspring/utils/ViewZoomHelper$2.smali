.class Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->resetZoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

.field final synthetic val$expandedImageView:Landroid/view/View;

.field final synthetic val$thumbView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;->val$thumbView:Landroid/view/View;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;->val$expandedImageView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;->val$thumbView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;->val$expandedImageView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->access$002(Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;->val$thumbView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;->val$expandedImageView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->access$002(Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

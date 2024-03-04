.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$f;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$f;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    if-eq p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    invoke-static {v0, v2, p2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;FFLandroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->onViewClicked(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->onViewClicked(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v1
.end method

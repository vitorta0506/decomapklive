.class Lcom/guochao/faceshow/aaspring/views/VipSwitcherView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->d(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView$a;->a:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView$a;->a:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView$a;->a:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView$a;->a:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView$a;->a:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 5
    div-int/lit8 v3, v1, 0x2

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView$a;->a:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView$a;->a:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a(Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;I)I

    return-void
.end method

.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView$a;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView$a;->a(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setOnScrollChangeListener(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView$a;

    return-void
.end method

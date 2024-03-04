.class public Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/ObservableHorizontalScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/views/ObservableHorizontalScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;->a:Lcom/guochao/faceshow/views/ObservableHorizontalScrollView$a;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;->a:Lcom/guochao/faceshow/views/ObservableHorizontalScrollView$a;

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;->a:Lcom/guochao/faceshow/views/ObservableHorizontalScrollView$a;

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;->a:Lcom/guochao/faceshow/views/ObservableHorizontalScrollView$a;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/guochao/faceshow/views/ObservableHorizontalScrollView$a;->a(Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setScrollViewListener(Lcom/guochao/faceshow/views/ObservableHorizontalScrollView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;->a:Lcom/guochao/faceshow/views/ObservableHorizontalScrollView$a;

    return-void
.end method

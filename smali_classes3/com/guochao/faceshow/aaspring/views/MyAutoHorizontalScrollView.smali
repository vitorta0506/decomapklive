.class public Lcom/guochao/faceshow/aaspring/views/MyAutoHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/MyAutoHorizontalScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/views/MyAutoHorizontalScrollView$a;


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
.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/MyAutoHorizontalScrollView;->a:Lcom/guochao/faceshow/aaspring/views/MyAutoHorizontalScrollView$a;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1, p3}, Lcom/guochao/faceshow/aaspring/views/MyAutoHorizontalScrollView$a;->a(II)V

    :cond_0
    return-void
.end method

.method public setOnMyScrollListener(Lcom/guochao/faceshow/aaspring/views/MyAutoHorizontalScrollView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MyAutoHorizontalScrollView;->a:Lcom/guochao/faceshow/aaspring/views/MyAutoHorizontalScrollView$a;

    return-void
.end method

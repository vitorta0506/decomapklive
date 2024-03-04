.class public Lcom/guochao/faceshow/views/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/ObservableScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/views/ObservableScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/views/ObservableScrollView;->a:Lcom/guochao/faceshow/views/ObservableScrollView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/views/ObservableScrollView;->a:Lcom/guochao/faceshow/views/ObservableScrollView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/views/ObservableScrollView;->a:Lcom/guochao/faceshow/views/ObservableScrollView$a;

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/ObservableScrollView;->a:Lcom/guochao/faceshow/views/ObservableScrollView$a;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/guochao/faceshow/views/ObservableScrollView$a;->a(Lcom/guochao/faceshow/views/ObservableScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/guochao/faceshow/views/ObservableScrollView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/ObservableScrollView;->a:Lcom/guochao/faceshow/views/ObservableScrollView$a;

    return-void
.end method

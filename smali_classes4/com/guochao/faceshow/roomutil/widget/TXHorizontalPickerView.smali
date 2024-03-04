.class public Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field private a:Landroid/database/DataSetObserver;

.field private b:Landroid/widget/Adapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->b:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->b:Landroid/widget/Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView$a;-><init>(Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->a:Landroid/database/DataSetObserver;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->b:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->a:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->b:Landroid/widget/Adapter;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->a:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->c()V

    return-void
.end method

.method public setClicked(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

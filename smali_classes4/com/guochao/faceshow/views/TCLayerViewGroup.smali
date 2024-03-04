.class public Lcom/guochao/faceshow/views/TCLayerViewGroup;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/TCLayerViewGroup$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/views/TCLayerOperationView;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/guochao/faceshow/views/TCLayerViewGroup$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    return-void
.end method

.method private e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/TCLayerOperationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setEditable(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/TCLayerOperationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setEditable(Z)V

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/TCLayerOperationView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->e(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(I)Lcom/guochao/faceshow/views/TCLayerOperationView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/views/TCLayerOperationView;

    return-object p1
.end method

.method public d(Lcom/guochao/faceshow/views/TCLayerOperationView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedLayerOperationView()Lcom/guochao/faceshow/views/TCLayerOperationView;
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    iget v1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/TCLayerOperationView;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedViewIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/guochao/faceshow/views/TCLayerOperationView;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->e(I)V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->c:Lcom/guochao/faceshow/views/TCLayerViewGroup$a;

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2, p1, v1, v0}, Lcom/guochao/faceshow/views/TCLayerViewGroup$a;->f(Lcom/guochao/faceshow/views/TCLayerOperationView;II)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/guochao/faceshow/views/TCLayerViewGroup$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->c:Lcom/guochao/faceshow/views/TCLayerViewGroup$a;

    return-void
.end method

.method public setViewVisiable(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/TCLayerOperationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/TCLayerOperationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/TCLayerOperationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setEditable(Z)V

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b:I

    :cond_1
    return-void
.end method

.class public Lcom/guochao/faceshow/views/NormalCircleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->a:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->b:I

    .line 6
    sget-object v2, Lcom/guochao/lib_core/R$styleable;->NormalCircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/guochao/lib_core/R$styleable;->NormalCircleImageView_border_width:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->b:I

    .line 8
    sget p2, Lcom/guochao/lib_core/R$styleable;->NormalCircleImageView_border_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->a:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->e:Z

    return v0
.end method

.method public b(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->c:Ljava/lang/Object;

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->d:I

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->a:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->b:I

    return v0
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->a:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->a:I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->d:I

    invoke-static {p0, p1, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->b:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->b:I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->d:I

    invoke-static {p0, p1, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    return-void
.end method

.method public setWithClip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;->e:Z

    return-void
.end method

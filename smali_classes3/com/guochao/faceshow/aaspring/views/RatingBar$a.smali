.class Lcom/guochao/faceshow/aaspring/views/RatingBar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/views/RatingBar;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/RatingBar;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->a(Lcom/guochao/faceshow/aaspring/views/RatingBar;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->b(Lcom/guochao/faceshow/aaspring/views/RatingBar;)F

    move-result v0

    float-to-int v0, v0

    .line 3
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->b(Lcom/guochao/faceshow/aaspring/views/RatingBar;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->setStar(F)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->c(Lcom/guochao/faceshow/aaspring/views/RatingBar;)Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;->Full:Lcom/guochao/faceshow/aaspring/views/RatingBar$StepSize;

    if-ne v0, v1, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->d(Lcom/guochao/faceshow/aaspring/views/RatingBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->setStar(F)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->setStar(F)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RatingBar$a;->b:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->setStar(F)V

    :cond_5
    :goto_0
    return-void
.end method

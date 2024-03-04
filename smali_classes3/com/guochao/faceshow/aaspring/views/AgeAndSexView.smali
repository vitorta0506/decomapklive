.class public Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/LinearLayout;

.field private d:F

.field private e:F

.field f:Lcom/guochao/lib_core/databinding/LayoutNewSexAgeBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->d:F

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->e:F

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->d:F

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->e:F

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 10
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->d:F

    .line 11
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->e:F

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/guochao/lib_core/databinding/LayoutNewSexAgeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/lib_core/databinding/LayoutNewSexAgeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->f:Lcom/guochao/lib_core/databinding/LayoutNewSexAgeBinding;

    .line 2
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/LayoutNewSexAgeBinding;->userGender:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/LayoutNewSexAgeBinding;->userAge:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b:Landroid/widget/TextView;

    .line 4
    iget-object p1, p1, Lcom/guochao/lib_core/databinding/LayoutNewSexAgeBinding;->userGenderAge:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->c:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/guochao/lib_core/R$styleable;->AgeAndSexView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/guochao/lib_core/R$styleable;->AgeAndSexView_layoutScaleX:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->d:F

    .line 7
    sget p2, Lcom/guochao/lib_core/R$styleable;->AgeAndSexView_layoutScaleY:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->e:F

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->c:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->d:F

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->c:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->e:F

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/16 p2, 0x19

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->c:Landroid/widget/LinearLayout;

    sget v0, Lcom/guochao/lib_core/R$drawable;->icon_user_center_female:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/lib_core/R$mipmap;->icon_ugc_female:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->c:Landroid/widget/LinearLayout;

    sget v0, Lcom/guochao/lib_core/R$drawable;->icon_user_center_male:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/lib_core/R$mipmap;->icon_ugc_male:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->c:Landroid/widget/LinearLayout;

    sget v0, Lcom/guochao/lib_core/R$drawable;->gender_wu:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/lib_core/R$mipmap;->icon_ugc_male:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-gtz p2, :cond_2

    const/16 p2, 0x11

    .line 8
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v0, 0x800013

    .line 10
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public c(II)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->c:Landroid/widget/LinearLayout;

    sget v2, Lcom/guochao/lib_core/R$drawable;->icon_user_center_male:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a:Landroid/widget/ImageView;

    sget v2, Lcom/guochao/lib_core/R$mipmap;->icon_ugc_male:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->c:Landroid/widget/LinearLayout;

    sget v2, Lcom/guochao/lib_core/R$drawable;->icon_user_center_female:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a:Landroid/widget/ImageView;

    sget v2, Lcom/guochao/lib_core/R$mipmap;->icon_ugc_female:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-gtz p2, :cond_2

    const/16 p2, 0x11

    .line 9
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v0, 0x800013

    .line 11
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.class public Lcom/guochao/faceshow/aaspring/views/VipLicenseView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "#9497A2"

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->a:I

    const-string p1, "#666666"

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->b:I

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "#9497A2"

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->a:I

    const-string p1, "#666666"

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->b:I

    .line 8
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->b(Landroid/util/AttributeSet;)V

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

    const-string p1, "#9497A2"

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->a:I

    const-string p1, "#666666"

    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->b:I

    .line 12
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/VipLicenseView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->b:I

    return p0
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/R$styleable;->VipLicenseView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->a:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41400000    # 12.0f

    .line 8
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->a:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x7f1209de

    .line 10
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 11
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {p0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, 0x40e00000    # 7.0f

    .line 16
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 17
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 19
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1209df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1208b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120734

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v0

    aput-object v6, v3, p1

    .line 23
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 25
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v4

    const-string v7, "vivo NEX A"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v7, 0x21

    if-lez v0, :cond_1

    .line 27
    new-instance v8, Lcom/guochao/faceshow/aaspring/views/VipLicenseView$a;

    invoke-direct {v8, p0}, Lcom/guochao/faceshow/aaspring/views/VipLicenseView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/VipLicenseView;)V

    .line 28
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v0

    .line 29
    invoke-virtual {v3, v8, v0, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v4, :cond_1

    .line 30
    new-instance v8, Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;

    invoke-direct {v8}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v8, v0, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    .line 32
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/VipLicenseView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/VipLicenseView;)V

    .line 33
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p1

    .line 34
    invoke-virtual {v3, v0, p1, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v4, :cond_2

    .line 35
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v3, v0, p1, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 36
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 39
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method

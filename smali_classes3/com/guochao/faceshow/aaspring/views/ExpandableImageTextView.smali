.class public Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;
.super Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Ljava/lang/CharSequence;

.field private e:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f01d9

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->c:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->f:Z

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0f01d9

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->c:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->f:Z

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x7f0f01d9

    .line 10
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->c:I

    const/4 p3, 0x1

    .line 11
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->f:Z

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;)Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->e:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;

    return-object p0
.end method

.method private c(I[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private e(Landroid/text/SpannableStringBuilder;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@|#| "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_9

    .line 4
    aget-object v4, v0, v3

    const/16 v5, 0x200b

    .line 5
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-direct {p0, v3, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->c(I[Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 7
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :cond_0
    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    goto/16 :goto_3

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    add-int/lit8 v5, v5, -0x1

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    const-string v6, "#"

    .line 18
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x11

    if-eqz v6, :cond_6

    .line 19
    new-instance v6, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$a;

    invoke-direct {v6, p0, v4}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    .line 21
    invoke-virtual {p1, v6, v5, v8, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_6
    const-string v6, "@"

    .line 22
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 23
    new-instance v6, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$b;

    invoke-direct {v6, p0, v4}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    .line 25
    invoke-virtual {p1, v6, v5, v8, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    :goto_2
    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 26
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 27
    :cond_9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;->getInstance()Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private f(Landroid/text/Layout;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    const-string v0, "..."

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p1, :cond_4

    .line 3
    :try_start_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    if-gtz v2, :cond_1

    const/high16 v2, 0x41580000    # 13.5f

    .line 6
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    .line 7
    :cond_1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    sub-int v5, p1, v4

    .line 8
    invoke-interface {p2, v5, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v6

    if-ge v6, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {p2, v2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->e:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    :cond_4
    return-object p2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/R$styleable;->ExpandableImageTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->a:I

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->c:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->c:I

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->f:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->f:Z

    return v0
.end method

.method public getFullText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->d:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p2

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->a:I

    if-lt p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->b:Z

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->f(Landroid/text/Layout;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 8
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 9
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->e(Landroid/text/SpannableStringBuilder;)V

    .line 10
    invoke-super {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, p2

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->a:I

    mul-int v0, v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setMeasureText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->b:Z

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->d:Ljava/lang/CharSequence;

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->e(Landroid/text/SpannableStringBuilder;)V

    .line 6
    sget-object p1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setOnShowExpand(Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->e:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;

    return-void
.end method

.method public setRealText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->d:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->b:Z

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->e(Landroid/text/SpannableStringBuilder;)V

    .line 6
    sget-object p1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

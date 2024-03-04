.class public Lcom/guochao/faceshow/aaspring/views/ExpandTextView;
.super Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/ExpandTextView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field c:Lcom/guochao/faceshow/aaspring/views/ExpandTextView$a;

.field d:Ljava/lang/CharSequence;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->a:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->a:I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->a:I

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->e:Z

    return-void
.end method

.method private a(Landroid/text/Layout;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    const-string v0, "..."

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 3
    :try_start_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    sub-int v5, p1, v4

    .line 5
    invoke-interface {p2, v5, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v6

    if-ge v6, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p2, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_2
    return-object p2
.end method


# virtual methods
.method public getOnShowExpand()Lcom/guochao/faceshow/aaspring/views/ExpandTextView$a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->c:Lcom/guochao/faceshow/aaspring/views/ExpandTextView$a;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->e:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p2

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->a:I

    if-le p2, v0, :cond_3

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->b:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->b:Z

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->a(Landroid/text/Layout;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 9
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10
    invoke-super {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->c:Lcom/guochao/faceshow/aaspring/views/ExpandTextView$a;

    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/views/ExpandTextView$a;->a()V

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, p2

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->a:I

    mul-int v0, v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    :cond_3
    return-void
.end method

.method public setExpandText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->b:Z

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->d:Ljava/lang/CharSequence;

    .line 3
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setForceExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->e:Z

    return-void
.end method

.method public setOnShowExpand(Lcom/guochao/faceshow/aaspring/views/ExpandTextView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->c:Lcom/guochao/faceshow/aaspring/views/ExpandTextView$a;

    return-void
.end method

.method public setPackedText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->b:Z

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->d:Ljava/lang/CharSequence;

    .line 3
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->b:Z

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->d:Ljava/lang/CharSequence;

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

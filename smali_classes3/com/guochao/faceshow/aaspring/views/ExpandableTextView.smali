.class public Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

.field b:Landroid/widget/TextView;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

.field private g:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->e:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->f:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->f(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private f(Ljava/lang/CharSequence;)V
    .locals 9

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    new-instance v8, Landroid/text/DynamicLayout;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->a:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 2
    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->d:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->c:Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->a:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-direct {p0, v8, p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->i(Landroid/text/Layout;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->c:Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->a:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private g(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private i(Landroid/text/Layout;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    const-string v0, "..."

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v1, 0x3

    .line 1
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
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->a:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->a:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    sub-int v6, p1, v4

    invoke-interface {p2, v6, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v5

    if-ge v5, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p2, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

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
.method public h(Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->f:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 2
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->f:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isExpand()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->a:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    if-lez p2, :cond_2

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->e:Ljava/lang/CharSequence;

    .line 10
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->f(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->a:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    new-instance p3, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$b;

    invoke-direct {p3, p0, p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0b6d

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->a:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    const v0, 0x7f0a03aa

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->b:Landroid/widget/TextView;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

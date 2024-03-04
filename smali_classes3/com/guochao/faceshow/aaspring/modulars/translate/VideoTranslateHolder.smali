.class public Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/MyTopicAndName;",
            ">;"
        }
    .end annotation
.end field

.field ivExpandable:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translateBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translateContentLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translateLoading:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->a:Landroid/view/View;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->ivExpandable:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->ivExpandable:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->setOnShowExpand(Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Lcom/guochao/faceshow/aaspring/beans/VideoItem;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->g(Ljava/util/List;)V

    return-void
.end method

.method private f(Lcom/guochao/faceshow/aaspring/beans/VideoItem;Z)V
    .locals 7

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoIntroductionJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoIntroductionJson()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$c;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)V

    .line 4
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->c:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/MyTopicAndName;

    .line 8
    iget-object v3, v2, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    .line 9
    :cond_1
    iget v2, v2, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    const/4 v4, 0x2

    const-string v5, " "

    const/4 v6, 0x1

    if-ne v2, v4, :cond_2

    const-string v2, "#"

    .line 10
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->addInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    const-string v2, "@"

    .line 11
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->addInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 13
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoIntroductionContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoIntroductionContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoIntroductionContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoIntroductionContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 17
    :cond_7
    :goto_2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUnTranslateContent(Ljava/lang/CharSequence;)V

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->a:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_a

    .line 21
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isShowTranslate()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 22
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getTranslateContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->setRealText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 23
    :cond_9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->setRealText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 24
    :cond_a
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->setMeasureText(Ljava/lang/CharSequence;)V

    .line 25
    :goto_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;->getInstance()Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->d(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_4

    .line 27
    :cond_b
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateContentLay:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isShowTranslate()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1208ea

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 30
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1208e9

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 31
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateContentLay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateBtn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateContentLay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->ivExpandable:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setTranslateContent(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setShowTranslate(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->setRealText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1208ea

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public e(Lcom/guochao/faceshow/aaspring/beans/VideoItem;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isShowExpand()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isShowTranslate()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->f(Lcom/guochao/faceshow/aaspring/beans/VideoItem;Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05a4

    const/16 v1, 0x8

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a0beb

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1208e9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateBtn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateContentLay:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x40f00000    # 7.5f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getTranslateContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getTranslateContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->g(Ljava/util/List;)V

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUnTranslateContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$d;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->f(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setShowTranslate(Z)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isShowExpand()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->f(Lcom/guochao/faceshow/aaspring/beans/VideoItem;Z)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setShowExpand(Z)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->getFullText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->setRealText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->ivExpandable:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

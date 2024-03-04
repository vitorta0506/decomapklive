.class public Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$i;,
        Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$j;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/FrameLayout;

.field f:Landroid/view/View;

.field g:Landroid/widget/ImageView;

.field h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

.field i:Landroid/text/SpannableStringBuilder;

.field j:Ljava/lang/String;

.field k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$h;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->k:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->a:Landroid/view/View;

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 8

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->WEB_URL:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int v7, v6, v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private j(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#5FD8FF"

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "#0046a1"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "#6365FF"

    .line 6
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "#0269d9"

    .line 7
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 8
    :goto_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$i;

    invoke-direct {v1, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$i;-><init>(Ljava/lang/String;I)V

    const/16 p3, 0x21

    invoke-virtual {p2, v1, p4, p5, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getWith()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getWith()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 5
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->scrollToEnd(Z)V

    :cond_0
    return-void
.end method

.method public i(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isHasShowedSearch()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    const-string v2, "#542173B3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->k()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->k:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->k()V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->k()V

    :goto_1
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->f()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public n(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->m()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$j;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-direct {v2, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->g(Ljava/util/List;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$j;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->f(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V

    :goto_0
    return-void
.end method

.method public o(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f1208eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, ".txt"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->n(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    goto/16 :goto_2

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setLook(Z)V

    .line 11
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setOriginal(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g()V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h()V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    .line 20
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setLook(Z)V

    .line 22
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setOriginal(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g()V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h()V

    :goto_2
    return-void
.end method

.method public onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 7

    .line 1
    move-object p1, p2

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    const p1, 0x7f0a0cc4

    .line 3
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f0a0d12

    .line 4
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f0a0d11

    .line 5
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    const p1, 0x7f0a070b

    .line 6
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    const p1, 0x7f0a0422

    .line 7
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0c73

    .line 8
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->f:Landroid/view/View;

    .line 9
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSearchKeyword()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    const v1, 0x7f1208eb

    const-string v2, ".txt"

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isLook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 35
    :cond_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isNewMessage()Z

    move-result v0

    const v5, 0x7f1208ea

    if-eqz v0, :cond_b

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isTranslate()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isLook()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 45
    :cond_4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 46
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 52
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 53
    :cond_6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    .line 54
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 55
    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 56
    :cond_8
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isLook()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 57
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 62
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 63
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 64
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 68
    :cond_b
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isLook()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 71
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isOriginal()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 72
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 73
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 74
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setLook(Z)V

    .line 75
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setOriginal(Z)V

    .line 76
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 80
    :cond_c
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_d
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 84
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, ""

    .line 86
    :cond_f
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 87
    :cond_10
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 89
    :cond_11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 93
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 95
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslateFiles()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 96
    :cond_12
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTranslate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 97
    :cond_13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i:Landroid/text/SpannableStringBuilder;

    .line 99
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->i(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;)V

    .line 100
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$b;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$c;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$e;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->l()V

    return-void
.end method

.method public onCreatePopupMenus(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f1201e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isErrorMsg()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f120187

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f1201f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->getId()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->deleteCurrentMessage()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->revokeCurrentMessage()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, "message"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const p2, 0x7f1201e7

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 2
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/UnsupportedMessage;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->goToMarket(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->o(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setLook(Z)V

    :goto_0
    return-void
.end method

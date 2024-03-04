.class public Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;,
        Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;,
        Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;,
        Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;
    }
.end annotation


# static fields
.field public static final WEB_URL:Ljava/util/regex/Pattern;


# instance fields
.field private mClickable:Z

.field private mContext:Landroid/content/Context;

.field private mTextView:Landroid/widget/TextView;

.field private onDoubleTapClickListener:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PatternsCompat;->WEB_URL:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->WEB_URL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mClickable:Z

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mClickable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;)Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->onDoubleTapClickListener:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;

    return-object p0
.end method

.method private isEnd(Ljava/lang/String;C)Z
    .locals 1

    const-string v0, " "

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0xa

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isValid(II)Z
    .locals 0

    sub-int/2addr p2, p1

    const/4 p1, 0x1

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setLink(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, p0, p2, v1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;-><init>(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;Ljava/lang/String;I)V

    const/16 p2, 0x21

    invoke-virtual {p1, v0, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;->getInstance()Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private setSpan(Landroid/text/SpannableStringBuilder;II)V
    .locals 6

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0603c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;-><init>(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v1, 0x21

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v0, "#"

    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    const v0, 0x7f0f02ff

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5
    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    mul-float v3, v3, v0

    float-to-int v3, v3

    neg-int v3, v3

    .line 9
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    float-to-int v0, v0

    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    new-instance v0, Lcom/guochao/faceshow/views/r;

    invoke-direct {v0, p3}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p3, p2, 0x1

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;->getInstance()Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mClickable:Z

    return v0
.end method

.method public replaceText(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 13

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/text/SpannableString;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_0
    if-ge v4, v1, :cond_1b

    .line 4
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x200b

    if-ne v10, v11, :cond_1

    const/4 v5, 0x1

    goto/16 :goto_b

    :cond_1
    if-eqz v5, :cond_6

    add-int/lit8 v5, v1, -0x1

    if-ne v4, v5, :cond_5

    if-ltz v6, :cond_3

    .line 5
    invoke-direct {p0, v6, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->isValid(II)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v4, 0x1

    .line 6
    invoke-direct {p0, v0, v6, v5}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setSpan(Landroid/text/SpannableStringBuilder;II)V

    :goto_1
    const/4 v6, -0x1

    const/4 v9, -0x1

    :cond_3
    if-ltz v7, :cond_5

    .line 7
    invoke-direct {p0, v7, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->isValid(II)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v4, 0x1

    .line 8
    invoke-direct {p0, v0, v7, v5}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setSpan(Landroid/text/SpannableStringBuilder;II)V

    :goto_2
    const/4 v5, 0x0

    :goto_3
    const/4 v7, -0x1

    const/4 v8, -0x1

    goto/16 :goto_b

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 9
    :cond_6
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, "#"

    .line 10
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-ltz v6, :cond_8

    .line 11
    invoke-direct {p0, v6, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->isValid(II)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_4

    .line 12
    :cond_7
    invoke-direct {p0, v0, v6, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setSpan(Landroid/text/SpannableStringBuilder;II)V

    :goto_4
    const/4 v6, -0x1

    const/4 v9, -0x1

    :cond_8
    if-ltz v7, :cond_a

    .line 13
    invoke-direct {p0, v7, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->isValid(II)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_5

    .line 14
    :cond_9
    invoke-direct {p0, v0, v7, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setSpan(Landroid/text/SpannableStringBuilder;II)V

    :goto_5
    const/4 v8, -0x1

    :cond_a
    move v7, v4

    .line 15
    :cond_b
    invoke-direct {p0, v11, v10}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->isEnd(Ljava/lang/String;C)Z

    move-result v12

    if-nez v12, :cond_c

    add-int/lit8 v12, v1, -0x1

    if-ne v4, v12, :cond_e

    :cond_c
    if-ltz v7, :cond_e

    add-int/lit8 v8, v1, -0x1

    if-ne v4, v8, :cond_d

    add-int/lit8 v8, v4, 0x1

    goto :goto_6

    :cond_d
    move v8, v4

    .line 16
    :cond_e
    :goto_6
    invoke-direct {p0, v11, v10}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->isEnd(Ljava/lang/String;C)Z

    move-result v10

    if-nez v10, :cond_f

    add-int/lit8 v10, v1, -0x1

    if-ne v4, v10, :cond_11

    :cond_f
    if-ltz v6, :cond_11

    add-int/lit8 v9, v1, -0x1

    if-ne v4, v9, :cond_10

    add-int/lit8 v9, v4, 0x1

    goto :goto_7

    :cond_10
    move v9, v4

    :cond_11
    :goto_7
    const-string v10, "@"

    .line 17
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    if-ltz v7, :cond_13

    .line 18
    invoke-direct {p0, v7, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->isValid(II)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_8

    .line 19
    :cond_12
    invoke-direct {p0, v0, v7, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setSpan(Landroid/text/SpannableStringBuilder;II)V

    :goto_8
    const/4 v7, -0x1

    const/4 v8, -0x1

    :cond_13
    if-ltz v6, :cond_15

    .line 20
    invoke-direct {p0, v6, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->isValid(II)Z

    move-result v9

    if-nez v9, :cond_14

    goto :goto_9

    .line 21
    :cond_14
    invoke-direct {p0, v0, v6, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setSpan(Landroid/text/SpannableStringBuilder;II)V

    :goto_9
    const/4 v9, -0x1

    :cond_15
    move v6, v4

    :cond_16
    if-ltz v7, :cond_18

    if-ltz v8, :cond_18

    .line 22
    invoke-direct {p0, v7, v8}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->isValid(II)Z

    move-result v10

    if-nez v10, :cond_17

    goto/16 :goto_3

    .line 23
    :cond_17
    invoke-direct {p0, v0, v7, v8}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setSpan(Landroid/text/SpannableStringBuilder;II)V

    const/4 v7, -0x1

    const/4 v8, -0x1

    :cond_18
    if-ltz v6, :cond_1a

    if-ltz v9, :cond_1a

    .line 24
    invoke-direct {p0, v6, v9}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->isValid(II)Z

    move-result v10

    if-nez v10, :cond_19

    goto :goto_a

    .line 25
    :cond_19
    invoke-direct {p0, v0, v6, v9}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setSpan(Landroid/text/SpannableStringBuilder;II)V

    :goto_a
    const/4 v6, -0x1

    const/4 v9, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 26
    :cond_1b
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 27
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    :goto_c
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 29
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setLink(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_c

    :cond_1c
    return-object v0
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->mClickable:Z

    return-void
.end method

.method public setOnDoubleTapClickListener(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->onDoubleTapClickListener:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;

    return-void
.end method

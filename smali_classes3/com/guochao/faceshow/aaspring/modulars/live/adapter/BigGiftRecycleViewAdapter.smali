.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$HappyRunwayViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$LuckyRunwayViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyRightViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyNameViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Z

.field e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->c:Landroid/view/LayoutInflater;

    .line 5
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->d:Z

    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getTrackType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getTrackType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->d(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .line 5
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    const v1, 0x7f1204a4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getLiveName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private b(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;
    .locals 9

    .line 1
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;

    const-string v1, ""

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 4
    :goto_0
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;->getDiamondIn()I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;->getFlag()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    const p2, 0x7f0f01f8

    goto :goto_1

    :cond_1
    const p2, 0x7f0f01f7

    :goto_1
    invoke-static {v2, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    const v4, 0x7f1205c0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v7, "{diamond}"

    aput-object v7, v5, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_2

    return-object v2

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 10
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 11
    invoke-virtual {v5, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    invoke-virtual {v5, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 13
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const v5, 0x3f516873    # 0.818f

    mul-float v5, v5, p1

    const/high16 v8, 0x40000000    # 2.0f

    sub-float/2addr v5, v8

    float-to-int v5, v5

    neg-int v5, v5

    int-to-float v0, v0

    const v8, 0x3fe8b439    # 1.818f

    mul-float v0, v0, v8

    mul-float v0, v0, p1

    int-to-float v4, v4

    div-float/2addr v0, v4

    float-to-int v0, v0

    float-to-int p1, p1

    add-int/2addr p1, v3

    .line 14
    invoke-virtual {p2, v6, v5, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    new-instance p1, Lcom/guochao/faceshow/views/r;

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 17
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    const v4, 0x7f060139

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x11

    if-ltz p2, :cond_3

    .line 18
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-gt p2, v4, :cond_3

    .line 19
    invoke-virtual {v2, v0, v6, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 20
    :cond_3
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    const v6, 0x7f06013a

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    if-ltz p2, :cond_4

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-gt v5, v6, :cond_4

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v2, v4, p2, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 23
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p2

    if-ltz v4, :cond_5

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, p2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 25
    :cond_5
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_6

    add-int/lit8 v0, p2, 0x9

    .line 26
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_6

    .line 27
    invoke-virtual {v2, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    return-object v2

    :cond_7
    return-object v1
.end method

.method private c()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;
    .locals 13

    .line 1
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    const-string v1, ""

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v0

    .line 3
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060139

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "{mvip}"

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v0

    move-object v3, v1

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getToUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getToUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v5

    if-lez v5, :cond_1

    const-string v1, "{ovip}"

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 9
    :goto_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getGiftNumbers()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 10
    iget-boolean v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->d:Z

    if-eqz v6, :cond_2

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getGiftNumbers()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "x {gift} "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 12
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " {gift} x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getGiftNumbers()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 13
    :cond_3
    iget-boolean v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->d:Z

    if-eqz v6, :cond_4

    const-string v6, "1x {gift} "

    goto :goto_2

    :cond_4
    const-string v6, " {gift} x1"

    .line 14
    :goto_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getTreasureId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 15
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    const v8, 0x7f1204c9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 16
    :cond_5
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    const v8, 0x7f120501

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 17
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    const v10, 0x7f120482

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    iget-boolean v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->d:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v11, v5

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getResource()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_7

    return-object v6

    .line 20
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    .line 21
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    .line 22
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 23
    invoke-virtual {v9, v10, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 24
    invoke-virtual {v9, v12, v12}, Landroid/widget/TextView;->measure(II)V

    .line 25
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const v9, 0x3f516873    # 0.818f

    mul-float v9, v9, p1

    const/high16 v11, 0x40000000    # 2.0f

    sub-float/2addr v9, v11

    float-to-int v9, v9

    neg-int v9, v9

    int-to-float v7, v7

    const v11, 0x3fe8b439    # 1.818f

    mul-float v7, v7, v11

    mul-float v7, v7, p1

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    float-to-int p1, p1

    add-int/2addr p1, v10

    .line 26
    invoke-virtual {v4, v12, v9, v7, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 27
    new-instance p1, Lcom/guochao/faceshow/views/r;

    invoke-direct {p1, v4}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 29
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 30
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06013a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 31
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    iget-object v11, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v10, 0x21

    if-ltz v4, :cond_8

    .line 32
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    if-gt v4, v11, :cond_8

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v6, v8, v4, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    if-ltz v7, :cond_9

    .line 34
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gt v7, v0, :cond_9

    .line 35
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {v6, v9, v7, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :cond_9
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x11

    if-nez v0, :cond_a

    .line 38
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-gt v4, v7, :cond_a

    .line 40
    new-instance v4, Lcom/guochao/faceshow/views/r;

    invoke-direct {p0, p2, v12}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->e(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v6, v4, v0, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 41
    :cond_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 42
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-gt v3, v4, :cond_b

    .line 44
    new-instance v3, Lcom/guochao/faceshow/views/r;

    invoke-direct {p0, p2, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->e(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {v6, v3, v0, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 45
    :cond_b
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "{gift}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_c

    add-int/lit8 v0, p2, 0x6

    .line 46
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_c

    .line 47
    invoke-virtual {v6, p1, p2, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    return-object v6

    :cond_d
    return-object v1
.end method

.method private e(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->e:Landroid/util/SparseArray;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getToUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    :goto_0
    const/high16 p1, 0x40800000    # 4.0f

    .line 8
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p2, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 9
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->d:Z

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const/4 p2, 0x1

    .line 12
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 13
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, p2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 14
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v0, v2, v2, p2, p1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 15
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-double v3, p2

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double v3, v3, v5

    double-to-int p2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v3, v1

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-static {p1, p2, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 17
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->c()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 18
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 19
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    return-object p2
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;

    if-eqz v0, :cond_0

    const p1, 0x186ac

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;

    if-eqz v0, :cond_1

    const p1, 0x186aa

    return p1

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    if-eqz v0, :cond_3

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getTrackType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    const p1, 0x186ab

    return p1

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x186a1

    return p1

    :cond_4
    const p1, 0x186a6

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;->bindToMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;)V

    return-void

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$LuckyRunwayViewHolder;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$LuckyRunwayViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$LuckyRunwayViewHolder;->a:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$HappyRunwayViewHolder;

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$HappyRunwayViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$HappyRunwayViewHolder;->a:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->a(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 11
    :cond_2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyNameViewHolder;

    if-eqz v0, :cond_3

    .line 12
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyNameViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyNameViewHolder;->a:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->d(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x186ac

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;-><init>(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V

    return-object p2

    :cond_0
    const v1, 0x186aa

    if-ne p2, v1, :cond_1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$LuckyRunwayViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0251

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$LuckyRunwayViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const v1, 0x186ab

    if-ne p2, v1, :cond_2

    .line 3
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$HappyRunwayViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0242

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$HappyRunwayViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2
    const v1, 0x186a1

    if-ne p2, v1, :cond_3

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0277

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyNameViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyNameViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 6
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0d026d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;->b:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;

    if-eqz p2, :cond_4

    const p2, 0x7f0a05d2

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    :cond_4
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyRightViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyRightViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

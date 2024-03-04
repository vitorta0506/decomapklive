.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedbackHistoryBeanHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected c(Landroid/widget/TextView;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "#ffffff"

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const p2, 0x7f08040d

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const p2, 0x7f120304

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 3
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f08040e

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const p2, 0x7f120305

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f08040f

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const p2, 0x7f120307

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    const-string p2, "#999999"

    .line 9
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;)V
    .locals 7

    const v0, 0x7f0a0ad6

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getStatus()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;->c(Landroid/widget/TextView;I)V

    const v0, 0x7f0a0255

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->setLinkText(Ljava/lang/String;Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0a0800

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getIsNewAnswer()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd      HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0a0297

    .line 9
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 10
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getCreateTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

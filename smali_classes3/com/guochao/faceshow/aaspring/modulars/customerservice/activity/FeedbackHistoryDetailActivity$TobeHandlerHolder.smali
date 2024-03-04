.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$TobeHandlerHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TobeHandlerHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$TobeHandled;)V
    .locals 9

    const v0, 0x7f0a0297

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0b96

    .line 2
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->getCreateTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->getCreateTime()J

    move-result-wide v4

    mul-long v4, v4, v7

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

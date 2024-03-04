.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->e(Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/views/ExpandTextView;

.field final synthetic f:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/ExpandTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->f:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->a:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->d:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->e:Lcom/guochao/faceshow/aaspring/views/ExpandTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->f:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;

    iget-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->b:Z

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->a:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->c:Landroid/widget/TextView;

    const v1, 0x7f120312

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->d:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->e:Lcom/guochao/faceshow/aaspring/views/ExpandTextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->f:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->a:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->getLinkedText(Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->setExpandText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->e:Lcom/guochao/faceshow/aaspring/views/ExpandTextView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->setForceExpand(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->c:Landroid/widget/TextView;

    const v1, 0x7f120951

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->e:Lcom/guochao/faceshow/aaspring/views/ExpandTextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;->f:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->a:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->getLinkedText(Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->setPackedText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.class public Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field recordDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recordIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recordInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recordMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvRecordOrderNo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvRefund:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->a:Landroid/content/Context;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->recordIcon:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getParentType()I

    move-result p4

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    invoke-static {p1, p4, v0}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->getItemResource(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->recordInfo:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->a:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->getRecordInfo(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->tvRefund:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->showTopUpRefund(Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getCreateTimeLong()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-eqz p4, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->recordDate:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getCreateTimeLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->convertNormalNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->recordDate:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getMoney()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->recordMoney:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "+"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getMoney()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->recordMoney:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->a:Landroid/content/Context;

    const p3, 0x7f060093

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->recordMoney:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getMoney()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->recordMoney:Landroid/widget/TextView;

    const-string p2, "#222222"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-void
.end method

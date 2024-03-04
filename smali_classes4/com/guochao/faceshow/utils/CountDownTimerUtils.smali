.class public Lcom/guochao/faceshow/utils/CountDownTimerUtils;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p5, p6}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mTextView:Landroid/widget/TextView;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0801c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f080423

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    new-instance p1, Landroid/text/SpannableString;

    iget-object p2, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    const v0, -0x777778

    invoke-direct {p2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x11

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/utils/CountDownTimerUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

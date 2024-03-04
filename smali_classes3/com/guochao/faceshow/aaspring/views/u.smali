.class public Lcom/guochao/faceshow/aaspring/views/u;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;JJI)V
    .locals 0

    .line 1
    invoke-direct {p0, p5, p6, p7, p8}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/u;->d:Landroid/content/Context;

    .line 3
    iput p9, p0, Lcom/guochao/faceshow/aaspring/views/u;->e:I

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/u;->a:Landroid/widget/ImageView;

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/u;->b:Landroid/widget/TextView;

    .line 6
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/views/u;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->e:I

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setEmailTime(J)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setReplaceEmailTime(J)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setRegisterAccount(J)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setRetrievePassWord(J)V

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setChangeLoginPWD(J)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/u;->d:Landroid/content/Context;

    const v3, 0x7f0603ce

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->e:I

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 8
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setEmailTime(J)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 9
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setReplaceEmailTime(J)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 10
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setRegisterAccount(J)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    .line 11
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setRetrievePassWord(J)V

    goto :goto_0

    .line 12
    :cond_5
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setChangeLoginPWD(J)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 14
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/u;->d:Landroid/content/Context;

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/u;->b:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%ds"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

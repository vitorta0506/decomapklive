.class Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;
.super Lcom/guochao/faceshow/views/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->Y1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/guochao/faceshow/views/g;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;I)I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->Z1()V

    return-void
.end method

.method public onTick(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->mTextViewSplashCountDown:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 3
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->d:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->result:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;->skippable:Z

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x408f400000000000L    # 1000.0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12085d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double p1, p1

    div-double/2addr p1, v4

    add-double/2addr p1, v2

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    long-to-double p1, p1

    div-double/2addr p1, v4

    add-double/2addr p1, v2

    double-to-int p1, p1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

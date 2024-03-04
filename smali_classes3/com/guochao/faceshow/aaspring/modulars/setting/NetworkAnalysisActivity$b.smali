.class Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->i0(Ljava/lang/Integer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->mTextViewProgress:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->mTextViewProgress:Landroid/widget/TextView;

    const v1, 0x7f12067b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->mTextViewProgress:Landroid/widget/TextView;

    const v1, 0x7f1209a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_0
    return-void
.end method

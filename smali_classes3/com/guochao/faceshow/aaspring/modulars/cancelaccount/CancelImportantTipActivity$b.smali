.class Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity$b;
.super Lcom/guochao/faceshow/views/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity;JJLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity;

    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity$b;->a:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/guochao/faceshow/views/g;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity$b;->a:Landroid/widget/TextView;

    const v1, 0x7f12012a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity$b;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity$b;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity;

    const v3, 0x7f12012a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(%ss)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

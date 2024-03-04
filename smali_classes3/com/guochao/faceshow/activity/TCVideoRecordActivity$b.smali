.class Lcom/guochao/faceshow/activity/TCVideoRecordActivity$b;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k1(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$b;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$b;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->o0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$b;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->q0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$b;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->o0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

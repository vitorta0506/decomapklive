.class Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$b;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->Z0(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

.class Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->o0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->n0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->tvCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

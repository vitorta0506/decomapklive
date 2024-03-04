.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invite success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    const/4 v0, 0x1

    iput v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->version:I

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invite  callID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " desc:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;->a(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

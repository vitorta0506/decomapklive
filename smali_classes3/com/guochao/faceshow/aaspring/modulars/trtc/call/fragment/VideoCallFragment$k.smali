.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->q2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b<",
        "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$k;->b(Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;)V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    const-string v1, "matchLogId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

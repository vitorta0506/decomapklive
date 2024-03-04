.class public final Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$endLastCalling$1$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->endLastCalling(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/AppointEndResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J \u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0016\u0010\n\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$endLastCalling$1$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/aaspring/beans/AppointEndResponse;",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
        "onCompleted",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $model:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$endLastCalling$1$1;->$model:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$endLastCalling$1$1;->$model:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;->getCallModel()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$endLastCalling$1$1;->$model:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupTime:Ljava/lang/String;

    const/16 v2, 0xfa9

    .line 4
    iput v2, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupType:I

    .line 5
    iget v2, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;->getCallTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v1, 0x3e8

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 7
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    .line 8
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->t(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;ZZ)V

    :cond_1
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/AppointEndResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/AppointEndResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/AppointEndResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/AppointEndResponse;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/AppointEndResponse;",
            ">;)V"
        }
    .end annotation

    const-string p1, "baseResponse"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/AppointEndResponse;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$endLastCalling$1$1;->onResponse(Lcom/guochao/faceshow/aaspring/beans/AppointEndResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

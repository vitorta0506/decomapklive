.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;
.super Lcom/tencent/trtc/TRTCCloudListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-direct {p0}, Lcom/tencent/trtc/TRTCCloudListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterRoom(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterRoom result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->o()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 6
    invoke-interface {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->f1(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 5
    invoke-interface {v1, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->v1(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onExitRoom(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitRoom reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 5
    invoke-interface {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->A1(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFirstVideoFrame(Ljava/lang/String;III)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/trtc/TRTCCloudListener;->onFirstVideoFrame(Ljava/lang/String;III)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstVideoFrame userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 6
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->L0(Ljava/lang/String;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRemoteUserEnterRoom(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/trtc/TRTCCloudListener;->onRemoteUserEnterRoom(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteUserEnterRoom userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 6
    invoke-interface {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->E1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRemoteUserLeaveRoom(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteUserLeaveRoom userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 5
    invoke-interface {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->R(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserAudioAvailable(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/trtc/TRTCCloudListener;->onUserAudioAvailable(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserAudioAvailable userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", available:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 6
    invoke-interface {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->w1(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserVideoAvailable(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/trtc/TRTCCloudListener;->onUserVideoAvailable(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserVideoAvailable userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", available:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 6
    invoke-interface {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->R0(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$b;
.super Lx9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$b;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;

    invoke-direct {p0}, Lx9/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lx9/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

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
    invoke-interface {v1, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->v(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lx9/b;->b(Ljava/lang/String;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

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
    invoke-interface {v1, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->O0(Ljava/lang/String;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lx9/b;->c(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

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
    invoke-interface {v1, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->n1(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lx9/b;->d(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

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
    invoke-interface {v1, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->K0(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$b;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceiveNewInvitation inviteID:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", inviter:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " data:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->j(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void

    .line 4
    :cond_1
    invoke-static {p5}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->g(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void
.end method

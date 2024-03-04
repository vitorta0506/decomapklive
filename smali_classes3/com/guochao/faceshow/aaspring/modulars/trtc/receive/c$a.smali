.class Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->showInviteCallDialog(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->D(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_2
    return-void
.end method

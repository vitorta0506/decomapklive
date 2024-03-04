.class Lcom/guochao/faceshow/paster/TCPasterActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/TimeSeekBar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/paster/TCPasterActivity;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/paster/TCPasterActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/paster/TCPasterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$c;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$c;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$c;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->e0(Lcom/guochao/faceshow/paster/TCPasterActivity;Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$c;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/paster/TCPasterActivity;->m0(Lcom/guochao/faceshow/paster/TCPasterActivity;J)J

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$c;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->d0(Lcom/guochao/faceshow/paster/TCPasterActivity;I)I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$c;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->n0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/tencent/ugc/TXVideoEditer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/ugc/TXVideoEditer;->previewAtTime(J)V

    return-void
.end method

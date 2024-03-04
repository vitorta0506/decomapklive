.class Lcom/guochao/faceshow/paster/TCPasterActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/paster/TCPasterActivity;->onPreviewFinishedWrapper()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$i;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$i;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->b0(Lcom/guochao/faceshow/paster/TCPasterActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$i;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->b0(Lcom/guochao/faceshow/paster/TCPasterActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$i;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->i0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/guochao/faceshow/views/TimeSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$i;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->g0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/views/TimeSeekBar;->setCurrentTimeMs(I)V

    :cond_1
    return-void
.end method

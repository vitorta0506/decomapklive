.class Lcom/guochao/faceshow/paster/TCPasterActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/paster/TCPasterActivity;->onPreviewProgressWrapper(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/paster/TCPasterActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/paster/TCPasterActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$h;->b:Lcom/guochao/faceshow/paster/TCPasterActivity;

    iput p2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$h;->b:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->b0(Lcom/guochao/faceshow/paster/TCPasterActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$h;->b:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->b0(Lcom/guochao/faceshow/paster/TCPasterActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$h;->b:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->i0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/guochao/faceshow/views/TimeSeekBar;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$h;->a:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/TimeSeekBar;->setCurrentTimeMs(I)V

    :cond_1
    return-void
.end method

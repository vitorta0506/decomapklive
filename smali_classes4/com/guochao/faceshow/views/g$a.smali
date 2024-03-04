.class Lcom/guochao/faceshow/views/g$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/g$a;->a:Lcom/guochao/faceshow/views/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/g$a;->a:Lcom/guochao/faceshow/views/g;

    invoke-static {v0}, Lcom/guochao/faceshow/views/g;->access$000(Lcom/guochao/faceshow/views/g;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/g$a;->a:Lcom/guochao/faceshow/views/g;

    invoke-static {v0}, Lcom/guochao/faceshow/views/g;->access$200(Lcom/guochao/faceshow/views/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/views/g$a$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/g$a$a;-><init>(Lcom/guochao/faceshow/views/g$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/views/g$a;->a:Lcom/guochao/faceshow/views/g;

    invoke-static {v2}, Lcom/guochao/faceshow/views/g;->access$200(Lcom/guochao/faceshow/views/g;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/views/g$a$b;

    invoke-direct {v3, p0, v0, v1}, Lcom/guochao/faceshow/views/g$a$b;-><init>(Lcom/guochao/faceshow/views/g$a;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

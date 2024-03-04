.class Lcom/tencent/xmagic/LightNode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/xmagic/LightNode;->initWritePCMThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/xmagic/LightNode;


# direct methods
.method constructor <init>(Lcom/tencent/xmagic/LightNode;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/LightNode$2;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const-string v0, "LightNode"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/xmagic/LightNode$2;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-static {v1}, Lcom/tencent/xmagic/LightNode;->access$100(Lcom/tencent/xmagic/LightNode;)Lorg/light/AudioOutput;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/tencent/xmagic/LightNode$2;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-static {v1}, Lcom/tencent/xmagic/LightNode;->access$100(Lcom/tencent/xmagic/LightNode;)Lorg/light/AudioOutput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/light/AudioOutput;->copyNextSample()Lorg/light/AudioFrame;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode$2;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-static {v2}, Lcom/tencent/xmagic/LightNode;->access$200(Lcom/tencent/xmagic/LightNode;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 5
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode$2;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-static {v2}, Lcom/tencent/xmagic/LightNode;->access$200(Lcom/tencent/xmagic/LightNode;)Landroid/media/AudioTrack;

    move-result-object v2

    iget-object v3, v1, Lorg/light/AudioFrame;->data:Ljava/nio/ByteBuffer;

    iget-wide v4, v1, Lorg/light/AudioFrame;->length:J

    long-to-int v1, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 6
    iget-object v1, p0, Lcom/tencent/xmagic/LightNode$2;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-static {v1}, Lcom/tencent/xmagic/LightNode;->access$100(Lcom/tencent/xmagic/LightNode;)Lorg/light/AudioOutput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/light/AudioOutput;->copyNextSample()Lorg/light/AudioFrame;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/tencent/xmagic/LightNode$2;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-static {v1}, Lcom/tencent/xmagic/LightNode;->access$200(Lcom/tencent/xmagic/LightNode;)Landroid/media/AudioTrack;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/tencent/xmagic/LightNode$2;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-static {v1}, Lcom/tencent/xmagic/LightNode;->access$200(Lcom/tencent/xmagic/LightNode;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 9
    iget-object v1, p0, Lcom/tencent/xmagic/LightNode$2;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-static {v1}, Lcom/tencent/xmagic/LightNode;->access$200(Lcom/tencent/xmagic/LightNode;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    goto :goto_1

    :cond_1
    const-string v1, "audioReader is null!"

    .line 10
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    const-string v1, "Audio Thread Quitted"

    .line 12
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

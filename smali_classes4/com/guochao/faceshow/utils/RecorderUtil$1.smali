.class Lcom/guochao/faceshow/utils/RecorderUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/utils/RecorderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/utils/RecorderUtil;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/RecorderUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/RecorderUtil$1;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$1;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    iget v1, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->MAX_VU_SIZE:I

    invoke-static {v0}, Lcom/guochao/faceshow/utils/RecorderUtil;->access$000(Lcom/guochao/faceshow/utils/RecorderUtil;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    mul-int v1, v1, v0

    const v0, 0x8000

    div-int/2addr v1, v0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$1;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    iget-object v2, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->mOnRecordListener:Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;

    iget v0, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->MAX_VU_SIZE:I

    invoke-interface {v2, v1, v0}, Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;->onVoiceChanged(II)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$1;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    iget-object v1, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

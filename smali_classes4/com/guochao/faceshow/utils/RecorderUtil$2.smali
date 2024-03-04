.class Lcom/guochao/faceshow/utils/RecorderUtil$2;
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

    iput-object p1, p0, Lcom/guochao/faceshow/utils/RecorderUtil$2;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$2;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/RecorderUtil;->access$112(Lcom/guochao/faceshow/utils/RecorderUtil;I)I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$2;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    iget-object v1, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->mOnRecordListener:Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/RecorderUtil;->access$100(Lcom/guochao/faceshow/utils/RecorderUtil;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;->onTimeUsing(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$2;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/RecorderUtil;->access$100(Lcom/guochao/faceshow/utils/RecorderUtil;)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/utils/RecorderUtil$2;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/RecorderUtil;->access$200(Lcom/guochao/faceshow/utils/RecorderUtil;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$2;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/RecorderUtil;->stopRecording()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$2;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    iget-object v1, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->mTimeUsingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

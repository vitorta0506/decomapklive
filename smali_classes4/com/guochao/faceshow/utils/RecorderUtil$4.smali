.class Lcom/guochao/faceshow/utils/RecorderUtil$4;
.super Lcom/guochao/faceshow/views/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/RecorderUtil;->startRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/utils/RecorderUtil;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/RecorderUtil;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/RecorderUtil$4;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/guochao/faceshow/views/g;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$4;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    iget-object v0, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/utils/RecorderUtil$4$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/utils/RecorderUtil$4$2;-><init>(Lcom/guochao/faceshow/utils/RecorderUtil$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$4;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    iget-object v0, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/utils/RecorderUtil$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/utils/RecorderUtil$4$1;-><init>(Lcom/guochao/faceshow/utils/RecorderUtil$4;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

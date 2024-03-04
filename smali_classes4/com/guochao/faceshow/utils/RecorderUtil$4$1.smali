.class Lcom/guochao/faceshow/utils/RecorderUtil$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/RecorderUtil$4;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/guochao/faceshow/utils/RecorderUtil$4;

.field final synthetic val$millisUntilFinished:J


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/RecorderUtil$4;J)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/RecorderUtil$4$1;->this$1:Lcom/guochao/faceshow/utils/RecorderUtil$4;

    iput-wide p2, p0, Lcom/guochao/faceshow/utils/RecorderUtil$4$1;->val$millisUntilFinished:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil$4$1;->this$1:Lcom/guochao/faceshow/utils/RecorderUtil$4;

    iget-object v0, v0, Lcom/guochao/faceshow/utils/RecorderUtil$4;->this$0:Lcom/guochao/faceshow/utils/RecorderUtil;

    iget-object v1, v0, Lcom/guochao/faceshow/utils/RecorderUtil;->mOnRecordListener:Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/utils/RecorderUtil;->access$200(Lcom/guochao/faceshow/utils/RecorderUtil;)I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/guochao/faceshow/utils/RecorderUtil$4$1;->val$millisUntilFinished:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    invoke-interface {v1, v0}, Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;->onTimeUsing(I)V

    :cond_0
    return-void
.end method

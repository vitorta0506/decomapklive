.class Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$1;->this$0:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFinished()V
    .locals 3

    const-string v0, "TCVideoEditerWrapper"

    const-string v1, "mPreviewListener, onPreviewFinished"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$1;->this$0:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->access$000(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$1;->this$0:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->access$000(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;

    .line 4
    invoke-interface {v2}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;->onPreviewFinishedWrapper()V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreviewProgress(I)V
    .locals 3

    .line 1
    div-int/lit16 p1, p1, 0x3e8

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$1;->this$0:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->access$000(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$1;->this$0:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->access$000(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;

    .line 4
    invoke-interface {v2, p1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;->onPreviewProgressWrapper(I)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;->startPreload(Ljava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;

.field final synthetic val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->this$1:Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;

    iput-object p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepareDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    .line 2
    invoke-interface/range {v0 .. v7}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;->onPrepareDownloadProgressUpdate(IIJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onPrepareDownloadProgressUpdate failed, error:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxyService"

    const-string/jumbo p4, "tpdlnative"

    invoke-static {p3, p2, p4, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareError(IILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;->onPrepareError(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onPrepareError failed, error:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxyService"

    const-string/jumbo v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareOK()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;->onPrepareOK()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPrepareOK failed, error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TPDownloadProxyService"

    const-string/jumbo v3, "tpdlnative"

    invoke-static {v2, v1, v3, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

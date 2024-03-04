.class final Lcom/tencent/ugc/TXVideoEditer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/UGCVideoProcessor$VideoProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ugc/TXVideoEditer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/ugc/TXVideoEditer;


# direct methods
.method constructor <init>(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/ugc/TXVideoEditer$4;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    invoke-static {v0}, Lcom/tencent/ugc/TXVideoEditer;->access$700(Lcom/tencent/ugc/TXVideoEditer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->access$702(Lcom/tencent/ugc/TXVideoEditer;Z)Z

    .line 7
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    invoke-static {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->access$802(Lcom/tencent/ugc/TXVideoEditer;Z)Z

    .line 8
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    invoke-static {v0}, Lcom/tencent/ugc/TXVideoEditer;->access$900(Lcom/tencent/ugc/TXVideoEditer;)Lcom/tencent/ugc/UGCAVSyncer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->setVideoEos()V

    .line 9
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    invoke-static {v0}, Lcom/tencent/ugc/TXVideoEditer;->access$900(Lcom/tencent/ugc/TXVideoEditer;)Lcom/tencent/ugc/UGCAVSyncer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->setAudioEos()V

    .line 10
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    invoke-static {p0}, Lcom/tencent/ugc/TXVideoEditer;->access$1000(Lcom/tencent/ugc/TXVideoEditer;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/ugc/TXVideoEditer$4;J)V
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 1
    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    invoke-static {v2}, Lcom/tencent/ugc/TXVideoEditer;->access$1100(Lcom/tencent/ugc/TXVideoEditer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    invoke-static {v2}, Lcom/tencent/ugc/TXVideoEditer;->access$1200(Lcom/tencent/ugc/TXVideoEditer;)Lcom/tencent/ugc/UGCMediaListSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v2

    mul-long v2, v2, v0

    sub-long p1, v2, p1

    :cond_0
    move-wide v2, p1

    const-wide/16 v4, 0x0

    .line 3
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    invoke-static {p1}, Lcom/tencent/ugc/TXVideoEditer;->access$1200(Lcom/tencent/ugc/TXVideoEditer;)Lcom/tencent/ugc/UGCMediaListSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide p1

    mul-long v6, p1, v0

    invoke-static/range {v2 .. v7}, Lcom/tencent/liteav/base/util/g;->a(JJJ)J

    move-result-wide p1

    .line 4
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    long-to-int p2, p1

    invoke-static {p0, p2}, Lcom/tencent/ugc/TXVideoEditer;->access$1300(Lcom/tencent/ugc/TXVideoEditer;I)V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "on video progress complete: retCode= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->retCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", descMsg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->descMsg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXVideoEditer"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    iget-object p1, p1, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/bp;->a(Lcom/tencent/ugc/TXVideoEditer$4;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onProgress(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer$4;->a:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v0, v0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/bo;->a(Lcom/tencent/ugc/TXVideoEditer$4;J)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

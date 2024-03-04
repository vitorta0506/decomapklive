.class final synthetic Lcom/tencent/liteav/videoconsumer/consumer/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/consumer/j;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/consumer/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/z;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/consumer/j;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/consumer/z;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/consumer/z;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/j;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/z;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 1
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resume , current status is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->p:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->p:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    sget-object v2, Lcom/tencent/liteav/videoconsumer/consumer/j$a;->c:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->w:Lcom/tencent/liteav/videoconsumer/renderer/o;

    .line 4
    iget-object v1, v1, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/i;->W:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 5
    sget-object v1, Lcom/tencent/liteav/videoconsumer/consumer/j$a;->b:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->p:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    .line 6
    :cond_0
    iput-boolean v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->q:Z

    return-void
.end method

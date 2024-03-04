.class public final Lcom/tencent/liteav/videoconsumer/renderer/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/utils/f$a;


# instance fields
.field public final a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field public final b:Lcom/tencent/liteav/videobase/utils/f;

.field public c:I

.field public d:I

.field public e:Lcom/tencent/liteav/videoconsumer/renderer/a;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 3
    .param p1    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/o;->c:I

    .line 3
    iput v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/o;->d:I

    .line 4
    new-instance v1, Lcom/tencent/liteav/videoconsumer/renderer/a;

    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/o$1;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/renderer/o$1;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/o;)V

    invoke-direct {v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/a;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/a$a;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/o;->e:Lcom/tencent/liteav/videoconsumer/renderer/a;

    .line 5
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/o;->f:Z

    .line 6
    new-instance v0, Lcom/tencent/liteav/videobase/utils/f;

    const-string v1, "VideoRenderer"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2, p0}, Lcom/tencent/liteav/videobase/utils/f;-><init>(Ljava/lang/String;ILcom/tencent/liteav/videobase/utils/f$a;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/o;->b:Lcom/tencent/liteav/videobase/utils/f;

    .line 7
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->s:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

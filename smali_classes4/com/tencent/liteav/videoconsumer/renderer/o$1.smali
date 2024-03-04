.class final Lcom/tencent/liteav/videoconsumer/renderer/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/renderer/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/renderer/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoconsumer/renderer/o;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/o;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/o$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/o$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/o;

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 3
    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->v:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

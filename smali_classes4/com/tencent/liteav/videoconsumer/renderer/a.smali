.class public final Lcom/tencent/liteav/videoconsumer/renderer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/renderer/a$a;
    }
.end annotation


# instance fields
.field protected a:J

.field protected b:J

.field protected c:J

.field protected d:J

.field protected e:J

.field protected final f:J

.field private g:Lcom/tencent/liteav/videoconsumer/renderer/a$a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->a:J

    .line 3
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:J

    .line 4
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->c:J

    .line 5
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:J

    .line 6
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->e:J

    const-wide/16 v0, 0xc8

    .line 7
    invoke-static {v0, v1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->f:J

    .line 8
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videoconsumer/renderer/a$a;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->e:J

    return-void

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->e:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    sub-long v2, p1, v2

    .line 3
    iget-wide v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->f:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 4
    iget-wide v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:J

    .line 5
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videoconsumer/renderer/a$a;

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v4, v2, v3}, Lcom/tencent/liteav/videoconsumer/renderer/a$a;->a(J)V

    .line 7
    :cond_1
    iget-wide v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->c:J

    .line 8
    iget-wide v6, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->a:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    .line 9
    iput-wide v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->a:J

    .line 10
    :cond_2
    iget-wide v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:J

    cmp-long v6, v2, v0

    if-eqz v6, :cond_3

    .line 11
    div-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:J

    .line 12
    :cond_3
    iput-wide p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->e:J

    return-void
.end method

.class public final Lcom/tencent/liteav/base/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field private final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/base/b/a;->a:J

    .line 3
    iput-wide p1, p0, Lcom/tencent/liteav/base/b/a;->b:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/tencent/liteav/base/b/a;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/liteav/base/b/a;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/base/b/a;->a:J

    const/4 v0, 0x1

    return v0
.end method

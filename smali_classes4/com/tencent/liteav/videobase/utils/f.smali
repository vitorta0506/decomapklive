.class public final Lcom/tencent/liteav/videobase/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videobase/utils/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/tencent/liteav/base/b/a;

.field private d:J

.field private e:J

.field private f:J

.field private final g:Lcom/tencent/liteav/videobase/utils/f$a;

.field private h:D


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/tencent/liteav/videobase/utils/f$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/b/a;

    const-wide/16 v1, 0x4e20

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/b/a;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/f;->c:Lcom/tencent/liteav/base/b/a;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->h:D

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/f;->a:Ljava/lang/String;

    int-to-long p1, p2

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/tencent/liteav/videobase/utils/f;->b:I

    .line 7
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    .line 8
    iput-object p3, p0, Lcom/tencent/liteav/videobase/utils/f;->g:Lcom/tencent/liteav/videobase/utils/f$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->d:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/tencent/liteav/videobase/utils/f;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->f:J

    return-void

    :cond_0
    sub-long v4, v0, v2

    .line 5
    iget v6, p0, Lcom/tencent/liteav/videobase/utils/f;->b:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    .line 6
    iget-wide v4, p0, Lcom/tencent/liteav/videobase/utils/f;->d:J

    iget-wide v6, p0, Lcom/tencent/liteav/videobase/utils/f;->e:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v4, v4, v5

    sub-long v2, v0, v2

    long-to-float v2, v2

    div-float/2addr v4, v2

    float-to-double v2, v4

    iput-wide v2, p0, Lcom/tencent/liteav/videobase/utils/f;->h:D

    .line 7
    iget-object v2, p0, Lcom/tencent/liteav/videobase/utils/f;->c:Lcom/tencent/liteav/base/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "meter name:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/liteav/videobase/utils/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/liteav/videobase/utils/f;->h:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "FpsCalculate"

    invoke-static {v2, v5, v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->f:J

    .line 9
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->d:J

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->e:J

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/f;->g:Lcom/tencent/liteav/videobase/utils/f$a;

    if-eqz v0, :cond_1

    .line 11
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/utils/f;->h:D

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videobase/utils/f$a;->a(D)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->d:J

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->e:J

    .line 3
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->f:J

    return-void
.end method

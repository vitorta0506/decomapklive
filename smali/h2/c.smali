.class final Lh2/c;
.super Lc2/w;
.source "SourceFile"


# instance fields
.field private final b:J


# direct methods
.method public constructor <init>(Lc2/m;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lc2/w;-><init>(Lc2/m;)V

    .line 2
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3
    iput-wide p2, p0, Lh2/c;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    invoke-super {p0}, Lc2/w;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lh2/c;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 4

    invoke-super {p0}, Lc2/w;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lh2/c;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public h()J
    .locals 4

    invoke-super {p0}, Lc2/w;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lh2/c;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.class final Leh/y;
.super Leh/i2;
.source "SourceFile"


# instance fields
.field private final a:Leh/t1;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J


# direct methods
.method constructor <init>(Leh/t1;JJJJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Leh/i2;-><init>()V

    const-string v0, "Null locality"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Leh/y;->a:Leh/t1;

    .line 4
    iput-wide p2, p0, Leh/y;->b:J

    .line 5
    iput-wide p4, p0, Leh/y;->c:J

    .line 6
    iput-wide p6, p0, Leh/y;->d:J

    .line 7
    iput-wide p8, p0, Leh/y;->e:J

    return-void
.end method


# virtual methods
.method b()Leh/t1;
    .locals 1

    iget-object v0, p0, Leh/y;->a:Leh/t1;

    return-object v0
.end method

.method c()J
    .locals 2

    iget-wide v0, p0, Leh/y;->d:J

    return-wide v0
.end method

.method d()J
    .locals 2

    iget-wide v0, p0, Leh/y;->b:J

    return-wide v0
.end method

.method e()J
    .locals 2

    iget-wide v0, p0, Leh/y;->e:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/i2;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Leh/i2;

    .line 3
    iget-object v1, p0, Leh/y;->a:Leh/t1;

    invoke-virtual {p1}, Leh/i2;->b()Leh/t1;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Leh/y;->b:J

    .line 4
    invoke-virtual {p1}, Leh/i2;->d()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Leh/y;->c:J

    .line 5
    invoke-virtual {p1}, Leh/i2;->f()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Leh/y;->d:J

    .line 6
    invoke-virtual {p1}, Leh/i2;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Leh/y;->e:J

    .line 7
    invoke-virtual {p1}, Leh/i2;->e()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method f()J
    .locals 2

    iget-wide v0, p0, Leh/y;->c:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Leh/y;->a:Leh/t1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-wide v2, p0, Leh/y;->b:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 3
    iget-wide v2, p0, Leh/y;->c:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 4
    iget-wide v2, p0, Leh/y;->d:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 5
    iget-wide v1, p0, Leh/y;->e:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpstreamLocalityStats{locality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/y;->a:Leh/t1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalIssuedRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leh/y;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSuccessfulRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leh/y;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalErrorRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leh/y;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalRequestsInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leh/y;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lfh/d;
.super Lfh/i$a;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfh/i$a;-><init>()V

    .line 2
    iput-wide p1, p0, Lfh/d;->a:J

    .line 3
    iput-wide p3, p0, Lfh/d;->b:J

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    iget-wide v0, p0, Lfh/d;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lfh/d;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lfh/i$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lfh/i$a;

    .line 3
    iget-wide v3, p0, Lfh/d;->a:J

    invoke-virtual {p1}, Lfh/i$a;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lfh/d;->b:J

    .line 4
    invoke-virtual {p1}, Lfh/i$a;->b()J

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

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lfh/d;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget-wide v3, p0, Lfh/d;->b:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Range{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lfh/d;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lfh/d;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

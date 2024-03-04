.class final Leh/s;
.super Leh/n1;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l1$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/lang/String;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l1$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Leh/n1;-><init>()V

    .line 2
    iput-wide p1, p0, Leh/s;->a:J

    .line 3
    iput-object p3, p0, Leh/s;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Leh/s;->c:Lcom/google/common/collect/ImmutableList;

    .line 5
    iput-object p5, p0, Leh/s;->d:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method d()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l1$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/s;->d:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method e()J
    .locals 2

    iget-wide v0, p0, Leh/s;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/n1;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2
    check-cast p1, Leh/n1;

    .line 3
    iget-wide v3, p0, Leh/s;->a:J

    invoke-virtual {p1}, Leh/n1;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Leh/s;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Leh/n1;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/n1;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Leh/s;->c:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p1}, Leh/n1;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Leh/n1;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Leh/s;->d:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {p1}, Leh/n1;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Leh/n1;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    return v2
.end method

.method f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method g()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/s;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Leh/s;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget-object v2, p0, Leh/s;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 3
    iget-object v2, p0, Leh/s;->c:Lcom/google/common/collect/ImmutableList;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 4
    iget-object v0, p0, Leh/s;->d:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v3

    :goto_2
    xor-int v0, v1, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpConnectionManager{httpMaxStreamDurationNano="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leh/s;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rdsName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", virtualHosts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/s;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpFilterConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/s;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

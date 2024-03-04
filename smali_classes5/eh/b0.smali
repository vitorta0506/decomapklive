.class final Leh/b0;
.super Leh/l2$a$a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2$a$a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Long;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2$a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Leh/u0$a;

.field private final f:Leh/l2$a$a$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Ljava/lang/Long;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Leh/u0$a;Leh/l2$a$a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2$a$a$b;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2$a$a$a;",
            ">;",
            "Leh/u0$a;",
            "Leh/l2$a$a$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Leh/l2$a$a;-><init>()V

    const-string v0, "Null hashPolicies"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Leh/b0;->a:Lcom/google/common/collect/ImmutableList;

    .line 4
    iput-object p2, p0, Leh/b0;->b:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Leh/b0;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Leh/b0;->d:Lcom/google/common/collect/ImmutableList;

    .line 7
    iput-object p5, p0, Leh/b0;->e:Leh/u0$a;

    .line 8
    iput-object p6, p0, Leh/b0;->f:Leh/l2$a$a$c;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/b0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/l2$a$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 2
    check-cast p1, Leh/l2$a$a;

    .line 3
    iget-object v1, p0, Leh/b0;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Leh/l2$a$a;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Leh/b0;->b:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Leh/l2$a$a;->i()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/l2$a$a;->i()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Leh/b0;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p1}, Leh/l2$a$a;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Leh/l2$a$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Leh/b0;->d:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {p1}, Leh/l2$a$a;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Leh/l2$a$a;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Leh/b0;->e:Leh/u0$a;

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {p1}, Leh/l2$a$a;->g()Leh/u0$a;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Leh/l2$a$a;->g()Leh/u0$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Leh/b0;->f:Leh/l2$a$a$c;

    if-nez v1, :cond_5

    .line 8
    invoke-virtual {p1}, Leh/l2$a$a;->h()Leh/l2$a$a$c;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Leh/l2$a$a;->h()Leh/l2$a$a$c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_7
    return v2
.end method

.method f()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2$a$a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/b0;->a:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method g()Leh/u0$a;
    .locals 1

    iget-object v0, p0, Leh/b0;->e:Leh/u0$a;

    return-object v0
.end method

.method h()Leh/l2$a$a$c;
    .locals 1

    iget-object v0, p0, Leh/b0;->f:Leh/l2$a$a$c;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Leh/b0;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Leh/b0;->b:Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Leh/b0;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Leh/b0;->d:Lcom/google/common/collect/ImmutableList;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v2, p0, Leh/b0;->e:Leh/u0$a;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-object v1, p0, Leh/b0;->f:Leh/l2$a$a$c;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    return v0
.end method

.method i()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Leh/b0;->b:Ljava/lang/Long;

    return-object v0
.end method

.method j()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/l2$a$a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/b0;->d:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteAction{hashPolicies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/b0;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutNano="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/b0;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cluster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/b0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", weightedClusters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/b0;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", namedClusterSpecifierPluginConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/b0;->e:Leh/u0$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retryPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/b0;->f:Leh/l2$a$a$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

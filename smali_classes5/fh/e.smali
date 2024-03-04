.class final Lfh/e;
.super Lfh/j;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/re2j/Pattern;

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfh/j;-><init>()V

    .line 2
    iput-object p1, p0, Lfh/e;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lfh/e;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lfh/e;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lfh/e;->d:Lcom/google/re2j/Pattern;

    .line 6
    iput-object p5, p0, Lfh/e;->e:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lfh/e;->f:Z

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfh/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfh/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lfh/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 2
    check-cast p1, Lfh/j;

    .line 3
    iget-object v1, p0, Lfh/e;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lfh/j;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lfh/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lfh/e;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lfh/j;->j()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lfh/j;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lfh/e;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lfh/j;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lfh/j;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lfh/e;->d:Lcom/google/re2j/Pattern;

    if-nez v1, :cond_4

    .line 6
    invoke-virtual {p1}, Lfh/j;->k()Lcom/google/re2j/Pattern;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lfh/j;->k()Lcom/google/re2j/Pattern;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/re2j/Pattern;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Lfh/e;->e:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 7
    invoke-virtual {p1}, Lfh/j;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lfh/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_4
    iget-boolean v1, p0, Lfh/e;->f:Z

    .line 8
    invoke-virtual {p1}, Lfh/j;->i()Z

    move-result p1

    if-ne v1, p1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_7
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lfh/e;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 2
    iget-object v3, p0, Lfh/e;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 3
    iget-object v3, p0, Lfh/e;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 4
    iget-object v3, p0, Lfh/e;->d:Lcom/google/re2j/Pattern;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/google/re2j/Pattern;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 5
    iget-object v3, p0, Lfh/e;->e:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 6
    iget-boolean v1, p0, Lfh/e;->f:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x4cf

    goto :goto_5

    :cond_5
    const/16 v1, 0x4d5

    :goto_5
    xor-int/2addr v0, v1

    return v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lfh/e;->f:Z

    return v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfh/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method k()Lcom/google/re2j/Pattern;
    .locals 1

    iget-object v0, p0, Lfh/e;->d:Lcom/google/re2j/Pattern;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfh/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringMatcher{exact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regEx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/e;->d:Lcom/google/re2j/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lfh/e;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

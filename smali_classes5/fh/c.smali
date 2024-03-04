.class final Lfh/c;
.super Lfh/i;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/re2j/Pattern;

.field private final d:Lfh/i$a;

.field private final e:Ljava/lang/Boolean;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Lfh/i$a;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfh/i;-><init>()V

    const-string v0, "Null name"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lfh/c;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lfh/c;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lfh/c;->c:Lcom/google/re2j/Pattern;

    .line 6
    iput-object p4, p0, Lfh/c;->d:Lfh/i$a;

    .line 7
    iput-object p5, p0, Lfh/c;->e:Ljava/lang/Boolean;

    .line 8
    iput-object p6, p0, Lfh/c;->f:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lfh/c;->g:Ljava/lang/String;

    .line 10
    iput-boolean p8, p0, Lfh/c;->h:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfh/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lfh/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 2
    check-cast p1, Lfh/i;

    .line 3
    iget-object v1, p0, Lfh/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lfh/i;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lfh/c;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lfh/i;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lfh/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lfh/c;->c:Lcom/google/re2j/Pattern;

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lfh/i;->o()Lcom/google/re2j/Pattern;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lfh/i;->o()Lcom/google/re2j/Pattern;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/re2j/Pattern;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lfh/c;->d:Lfh/i$a;

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lfh/i;->n()Lfh/i$a;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lfh/i;->n()Lfh/i$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lfh/c;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {p1}, Lfh/i;->m()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lfh/i;->m()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lfh/c;->f:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 8
    invoke-virtual {p1}, Lfh/i;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lfh/i;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lfh/c;->g:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 9
    invoke-virtual {p1}, Lfh/i;->p()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lfh/i;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_5
    iget-boolean v1, p0, Lfh/c;->h:Z

    .line 10
    invoke-virtual {p1}, Lfh/i;->i()Z

    move-result p1

    if-ne v1, p1, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_8
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lfh/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Lfh/c;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Lfh/c;->c:Lcom/google/re2j/Pattern;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/re2j/Pattern;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Lfh/c;->d:Lfh/i$a;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v2, p0, Lfh/c;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-object v2, p0, Lfh/c;->f:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 7
    iget-object v2, p0, Lfh/c;->g:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 8
    iget-boolean v1, p0, Lfh/c;->h:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x4cf

    goto :goto_6

    :cond_6
    const/16 v1, 0x4d5

    :goto_6
    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lfh/c;->h:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfh/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfh/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lfh/c;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public n()Lfh/i$a;
    .locals 1

    iget-object v0, p0, Lfh/c;->d:Lfh/i$a;

    return-object v0
.end method

.method public o()Lcom/google/re2j/Pattern;
    .locals 1

    iget-object v0, p0, Lfh/c;->c:Lcom/google/re2j/Pattern;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfh/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderMatcher{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exactValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", safeRegEx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/c;->c:Lcom/google/re2j/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/c;->d:Lfh/i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", present="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/c;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inverted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lfh/c;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

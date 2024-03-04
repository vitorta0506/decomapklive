.class final Leh/d0;
.super Leh/l2$a$a$b;
.source "SourceFile"


# instance fields
.field private final a:Leh/l2$a$a$b$a;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/re2j/Pattern;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Leh/l2$a$a$b$a;ZLjava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Leh/l2$a$a$b;-><init>()V

    const-string v0, "Null type"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Leh/d0;->a:Leh/l2$a$a$b$a;

    .line 4
    iput-boolean p2, p0, Leh/d0;->b:Z

    .line 5
    iput-object p3, p0, Leh/d0;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Leh/d0;->d:Lcom/google/re2j/Pattern;

    .line 7
    iput-object p5, p0, Leh/d0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/d0;->c:Ljava/lang/String;

    return-object v0
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Leh/d0;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/l2$a$a$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2
    check-cast p1, Leh/l2$a$a$b;

    .line 3
    iget-object v1, p0, Leh/d0;->a:Leh/l2$a$a$b$a;

    invoke-virtual {p1}, Leh/l2$a$a$b;->h()Leh/l2$a$a$b$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Leh/d0;->b:Z

    .line 4
    invoke-virtual {p1}, Leh/l2$a$a$b;->e()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Leh/d0;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Leh/l2$a$a$b;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/l2$a$a$b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Leh/d0;->d:Lcom/google/re2j/Pattern;

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1}, Leh/l2$a$a$b;->f()Lcom/google/re2j/Pattern;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Leh/l2$a$a$b;->f()Lcom/google/re2j/Pattern;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/re2j/Pattern;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Leh/d0;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 7
    invoke-virtual {p1}, Leh/l2$a$a$b;->g()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Leh/l2$a$a$b;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method f()Lcom/google/re2j/Pattern;
    .locals 1

    iget-object v0, p0, Leh/d0;->d:Lcom/google/re2j/Pattern;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/d0;->e:Ljava/lang/String;

    return-object v0
.end method

.method h()Leh/l2$a$a$b$a;
    .locals 1

    iget-object v0, p0, Leh/d0;->a:Leh/l2$a$a$b$a;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Leh/d0;->a:Leh/l2$a$a$b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-boolean v2, p0, Leh/d0;->b:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Leh/d0;->c:Ljava/lang/String;

    const/4 v3, 0x0

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
    iget-object v2, p0, Leh/d0;->d:Lcom/google/re2j/Pattern;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/google/re2j/Pattern;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v1, p0, Leh/d0;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HashPolicy{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/d0;->a:Leh/l2$a$a$b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTerminal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Leh/d0;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", headerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/d0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regEx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/d0;->d:Lcom/google/re2j/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", regExSubstitution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/d0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Leh/o;
.super Leh/j1;
.source "SourceFile"


# instance fields
.field private final a:Leh/j1$b;

.field private final b:Leh/j1$a;

.field private final c:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Leh/j1$b;Leh/j1$a;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leh/j1;-><init>()V

    .line 2
    iput-object p1, p0, Leh/o;->a:Leh/j1$b;

    .line 3
    iput-object p2, p0, Leh/o;->b:Leh/j1$a;

    .line 4
    iput-object p3, p0, Leh/o;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method c()Leh/j1$a;
    .locals 1

    iget-object v0, p0, Leh/o;->b:Leh/j1$a;

    return-object v0
.end method

.method d()Leh/j1$b;
    .locals 1

    iget-object v0, p0, Leh/o;->a:Leh/j1$b;

    return-object v0
.end method

.method e()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Leh/o;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/j1;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2
    check-cast p1, Leh/j1;

    .line 3
    iget-object v1, p0, Leh/o;->a:Leh/j1$b;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Leh/j1;->d()Leh/j1$b;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/j1;->d()Leh/j1$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Leh/o;->b:Leh/j1$a;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Leh/j1;->c()Leh/j1$a;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Leh/j1;->c()Leh/j1$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Leh/o;->c:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p1}, Leh/j1;->e()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Leh/j1;->e()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Leh/o;->a:Leh/j1$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 2
    iget-object v3, p0, Leh/o;->b:Leh/j1$a;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 3
    iget-object v2, p0, Leh/o;->c:Ljava/lang/Integer;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaultConfig{faultDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/o;->a:Leh/j1$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", faultAbort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/o;->b:Leh/j1$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxActiveFaults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/o;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

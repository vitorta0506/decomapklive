.class final Leh/l;
.super Leh/f1;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Leh/g1;

.field private final c:Leh/n1;

.field private final d:Lih/f;


# direct methods
.method constructor <init>(Ljava/lang/String;Leh/g1;Leh/n1;Lih/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Leh/f1;-><init>()V

    const-string v0, "Null name"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Leh/l;->a:Ljava/lang/String;

    const-string p1, "Null filterChainMatch"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Leh/l;->b:Leh/g1;

    const-string p1, "Null httpConnectionManager"

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Leh/l;->c:Leh/n1;

    .line 8
    iput-object p4, p0, Leh/l;->d:Lih/f;

    return-void
.end method


# virtual methods
.method b()Leh/g1;
    .locals 1

    iget-object v0, p0, Leh/l;->b:Leh/g1;

    return-object v0
.end method

.method c()Leh/n1;
    .locals 1

    iget-object v0, p0, Leh/l;->c:Leh/n1;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method e()Lih/f;
    .locals 1

    iget-object v0, p0, Leh/l;->d:Lih/f;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/f1;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Leh/f1;

    .line 3
    iget-object v1, p0, Leh/l;->a:Ljava/lang/String;

    invoke-virtual {p1}, Leh/f1;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leh/l;->b:Leh/g1;

    .line 4
    invoke-virtual {p1}, Leh/f1;->b()Leh/g1;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leh/l;->c:Leh/n1;

    .line 5
    invoke-virtual {p1}, Leh/f1;->c()Leh/n1;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leh/l;->d:Lih/f;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p1}, Leh/f1;->e()Lih/f;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/f1;->e()Lih/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lih/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Leh/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Leh/l;->b:Leh/g1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Leh/l;->c:Leh/n1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v1, p0, Leh/l;->d:Lih/f;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lih/f;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterChain{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filterChainMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/l;->b:Leh/g1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpConnectionManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/l;->c:Leh/n1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sslContextProviderSupplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/l;->d:Lih/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

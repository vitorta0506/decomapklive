.class final Leh/i0;
.super Leh/p2$g;
.source "SourceFile"


# instance fields
.field private final a:Leh/n1;

.field private final b:Leh/h1;


# direct methods
.method constructor <init>(Leh/n1;Leh/h1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leh/p2$g;-><init>()V

    .line 2
    iput-object p1, p0, Leh/i0;->a:Leh/n1;

    .line 3
    iput-object p2, p0, Leh/i0;->b:Leh/h1;

    return-void
.end method


# virtual methods
.method c()Leh/n1;
    .locals 1

    iget-object v0, p0, Leh/i0;->a:Leh/n1;

    return-object v0
.end method

.method d()Leh/h1;
    .locals 1

    iget-object v0, p0, Leh/i0;->b:Leh/h1;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/p2$g;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    check-cast p1, Leh/p2$g;

    .line 3
    iget-object v1, p0, Leh/i0;->a:Leh/n1;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Leh/p2$g;->c()Leh/n1;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/p2$g;->c()Leh/n1;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Leh/i0;->b:Leh/h1;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Leh/p2$g;->d()Leh/h1;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Leh/p2$g;->d()Leh/h1;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Leh/i0;->a:Leh/n1;

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
    iget-object v2, p0, Leh/i0;->b:Leh/h1;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LdsUpdate{httpConnectionManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/i0;->a:Leh/n1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/i0;->b:Leh/h1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

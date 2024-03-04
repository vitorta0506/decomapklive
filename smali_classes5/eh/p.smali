.class final Leh/p;
.super Leh/j1$a;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/Status;

.field private final b:Z

.field private final c:Leh/j1$c;


# direct methods
.method constructor <init>(Lio/grpc/Status;ZLeh/j1$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leh/j1$a;-><init>()V

    .line 2
    iput-object p1, p0, Leh/p;->a:Lio/grpc/Status;

    .line 3
    iput-boolean p2, p0, Leh/p;->b:Z

    const-string p1, "Null percent"

    .line 4
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Leh/p;->c:Leh/j1$c;

    return-void
.end method


# virtual methods
.method d()Z
    .locals 1

    iget-boolean v0, p0, Leh/p;->b:Z

    return v0
.end method

.method e()Leh/j1$c;
    .locals 1

    iget-object v0, p0, Leh/p;->c:Leh/j1$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/j1$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Leh/j1$a;

    .line 3
    iget-object v1, p0, Leh/p;->a:Lio/grpc/Status;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Leh/j1$a;->f()Lio/grpc/Status;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/j1$a;->f()Lio/grpc/Status;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-boolean v1, p0, Leh/p;->b:Z

    .line 4
    invoke-virtual {p1}, Leh/j1$a;->d()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Leh/p;->c:Leh/j1$c;

    .line 5
    invoke-virtual {p1}, Leh/j1$a;->e()Leh/j1$c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method f()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Leh/p;->a:Lio/grpc/Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Leh/p;->a:Lio/grpc/Status;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/grpc/Status;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-boolean v2, p0, Leh/p;->b:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v1, p0, Leh/p;->c:Leh/j1$c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaultAbort{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/p;->a:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headerAbort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Leh/p;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/p;->c:Leh/j1$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

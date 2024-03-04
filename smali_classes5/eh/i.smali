.class final Leh/i;
.super Leh/y0;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/x;

.field private final b:I

.field private final c:Z


# direct methods
.method constructor <init>(Lio/grpc/x;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Leh/y0;-><init>()V

    const-string v0, "Null eag"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Leh/i;->a:Lio/grpc/x;

    .line 4
    iput p2, p0, Leh/i;->b:I

    .line 5
    iput-boolean p3, p0, Leh/i;->c:Z

    return-void
.end method


# virtual methods
.method b()Lio/grpc/x;
    .locals 1

    iget-object v0, p0, Leh/i;->a:Lio/grpc/x;

    return-object v0
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Leh/i;->c:Z

    return v0
.end method

.method d()I
    .locals 1

    iget v0, p0, Leh/i;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/y0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Leh/y0;

    .line 3
    iget-object v1, p0, Leh/i;->a:Lio/grpc/x;

    invoke-virtual {p1}, Leh/y0;->b()Lio/grpc/x;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Leh/i;->b:I

    .line 4
    invoke-virtual {p1}, Leh/y0;->d()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Leh/i;->c:Z

    .line 5
    invoke-virtual {p1}, Leh/y0;->c()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Leh/i;->a:Lio/grpc/x;

    invoke-virtual {v0}, Lio/grpc/x;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget v2, p0, Leh/i;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-boolean v1, p0, Leh/i;->c:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LbEndpoint{eag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/i;->a:Lio/grpc/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loadBalancingWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leh/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHealthy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Leh/i;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

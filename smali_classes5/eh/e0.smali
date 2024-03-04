.class final Leh/e0;
.super Leh/l2$a$a$c;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/protobuf/Duration;

.field private final d:Lcom/google/protobuf/Duration;

.field private final e:Lcom/google/protobuf/Duration;


# direct methods
.method constructor <init>(ILcom/google/common/collect/ImmutableList;Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/grpc/Status$Code;",
            ">;",
            "Lcom/google/protobuf/Duration;",
            "Lcom/google/protobuf/Duration;",
            "Lcom/google/protobuf/Duration;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Leh/l2$a$a$c;-><init>()V

    .line 2
    iput p1, p0, Leh/e0;->a:I

    const-string p1, "Null retryableStatusCodes"

    .line 3
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Leh/e0;->b:Lcom/google/common/collect/ImmutableList;

    const-string p1, "Null initialBackoff"

    .line 5
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Leh/e0;->c:Lcom/google/protobuf/Duration;

    const-string p1, "Null maxBackoff"

    .line 7
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Leh/e0;->d:Lcom/google/protobuf/Duration;

    .line 9
    iput-object p5, p0, Leh/e0;->e:Lcom/google/protobuf/Duration;

    return-void
.end method


# virtual methods
.method b()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Leh/e0;->c:Lcom/google/protobuf/Duration;

    return-object v0
.end method

.method c()I
    .locals 1

    iget v0, p0, Leh/e0;->a:I

    return v0
.end method

.method d()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Leh/e0;->d:Lcom/google/protobuf/Duration;

    return-object v0
.end method

.method e()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Leh/e0;->e:Lcom/google/protobuf/Duration;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/l2$a$a$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Leh/l2$a$a$c;

    .line 3
    iget v1, p0, Leh/e0;->a:I

    invoke-virtual {p1}, Leh/l2$a$a$c;->c()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Leh/e0;->b:Lcom/google/common/collect/ImmutableList;

    .line 4
    invoke-virtual {p1}, Leh/l2$a$a$c;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leh/e0;->c:Lcom/google/protobuf/Duration;

    .line 5
    invoke-virtual {p1}, Leh/l2$a$a$c;->b()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leh/e0;->d:Lcom/google/protobuf/Duration;

    .line 6
    invoke-virtual {p1}, Leh/l2$a$a$c;->d()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leh/e0;->e:Lcom/google/protobuf/Duration;

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Leh/l2$a$a$c;->e()Lcom/google/protobuf/Duration;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/l2$a$a$c;->e()Lcom/google/protobuf/Duration;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

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

.method f()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/e0;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Leh/e0;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Leh/e0;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Leh/e0;->c:Lcom/google/protobuf/Duration;

    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Leh/e0;->d:Lcom/google/protobuf/Duration;

    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v1, p0, Leh/e0;->e:Lcom/google/protobuf/Duration;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetryPolicy{maxAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leh/e0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryableStatusCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/e0;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialBackoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/e0;->c:Lcom/google/protobuf/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxBackoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/e0;->d:Lcom/google/protobuf/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", perAttemptRecvTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/e0;->e:Lcom/google/protobuf/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

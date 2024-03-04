.class final Lhh/c;
.super Lhh/q;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lhh/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lhh/a0;",
            ">;",
            "Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lhh/q;-><init>()V

    const-string v0, "Null policies"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lhh/c;->a:Lcom/google/common/collect/ImmutableList;

    const-string p1, "Null action"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lhh/c;->b:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;
    .locals 1

    iget-object v0, p0, Lhh/c;->b:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    return-object v0
.end method

.method public c()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lhh/a0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lhh/c;->a:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lhh/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lhh/q;

    .line 3
    iget-object v1, p0, Lhh/c;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lhh/q;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhh/c;->b:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    .line 4
    invoke-virtual {p1}, Lhh/q;->a()Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lhh/c;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v1, p0, Lhh/c;->b:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthConfig{policies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhh/c;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhh/c;->b:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lhh/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/util/List;Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;)Lhh/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhh/a0;",
            ">;",
            "Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;",
            ")",
            "Lhh/q;"
        }
    .end annotation

    .line 1
    new-instance v0, Lhh/c;

    .line 2
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lhh/c;-><init>(Lcom/google/common/collect/ImmutableList;Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;
.end method

.method public abstract c()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lhh/a0;",
            ">;"
        }
    .end annotation
.end method

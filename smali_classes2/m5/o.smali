.class Lm5/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lm5/o;->a:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method private b(Ljava/lang/Throwable;Lio/grpc/Status$Code;)Lcom/google/api/gax/rpc/ApiException;
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/o;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p2}, Lm5/f0;->b(Lio/grpc/Status$Code;)Lcom/google/api/gax/rpc/StatusCode$Code;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {p2}, Lm5/f0;->c(Lio/grpc/Status$Code;)Lm5/f0;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/google/api/gax/rpc/b;->b(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)Lcom/google/api/gax/rpc/ApiException;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)Lcom/google/api/gax/rpc/ApiException;
    .locals 2

    .line 1
    instance-of v0, p1, Lio/grpc/StatusException;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lio/grpc/StatusException;

    .line 3
    invoke-virtual {v0}, Lio/grpc/StatusException;->getStatus()Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lm5/o;->b(Ljava/lang/Throwable;Lio/grpc/Status$Code;)Lcom/google/api/gax/rpc/ApiException;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    instance-of v0, p1, Lio/grpc/StatusRuntimeException;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p1

    check-cast v0, Lio/grpc/StatusRuntimeException;

    .line 6
    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lm5/o;->b(Ljava/lang/Throwable;Lio/grpc/Status$Code;)Lcom/google/api/gax/rpc/ApiException;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/google/api/gax/rpc/ApiException;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lcom/google/api/gax/rpc/ApiException;

    return-object p1

    .line 9
    :cond_2
    sget-object v0, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    .line 10
    invoke-static {v0}, Lm5/f0;->c(Lio/grpc/Status$Code;)Lm5/f0;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    invoke-static {p1, v0, v1}, Lcom/google/api/gax/rpc/b;->b(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)Lcom/google/api/gax/rpc/ApiException;

    move-result-object p1

    return-object p1
.end method

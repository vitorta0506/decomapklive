.class final Lio/grpc/alts/internal/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/grpc/alts/internal/k$f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lio/grpc/alts/internal/k$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/alts/internal/k$f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "targetServiceAccounts"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Lio/grpc/alts/internal/k$c;->a:Lcom/google/common/collect/ImmutableList;

    const-string p1, "lazyHandshakerChannel"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/k$f;

    iput-object p1, p0, Lio/grpc/alts/internal/k$c;->b:Lio/grpc/alts/internal/k$f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lio/grpc/ChannelLogger;)Lio/grpc/alts/internal/h0;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/alts/internal/e$b;

    invoke-direct {v0}, Lio/grpc/alts/internal/e$b;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/a0;->b()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/e$b;->e(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/e$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/alts/internal/k$c;->a:Lcom/google/common/collect/ImmutableList;

    .line 3
    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/e$b;->g(Lcom/google/common/collect/ImmutableList;)Lio/grpc/alts/internal/e$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/e$b;->f(Ljava/lang/String;)Lio/grpc/alts/internal/e$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/grpc/alts/internal/e$b;->d()Lio/grpc/alts/internal/e;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lio/grpc/alts/internal/k$c;->b:Lio/grpc/alts/internal/k$f;

    .line 7
    invoke-virtual {v0}, Lio/grpc/alts/internal/k$f;->b()Lio/grpc/d;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/alts/internal/t;->b(Lio/grpc/d;)Lio/grpc/alts/internal/t$d;

    move-result-object v0

    .line 8
    invoke-static {v0, p1, p2}, Lio/grpc/alts/internal/m;->h(Lio/grpc/alts/internal/t$d;Lio/grpc/alts/internal/h;Lio/grpc/ChannelLogger;)Lio/grpc/alts/internal/h0;

    move-result-object p1

    return-object p1
.end method

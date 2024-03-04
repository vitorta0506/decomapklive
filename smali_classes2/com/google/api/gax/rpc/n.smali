.class public Lcom/google/api/gax/rpc/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/i0;


# instance fields
.field private final a:Lcom/google/api/gax/rpc/h0;


# direct methods
.method private constructor <init>(Lcom/google/api/gax/rpc/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/h0;

    iput-object p1, p0, Lcom/google/api/gax/rpc/n;->a:Lcom/google/api/gax/rpc/h0;

    return-void
.end method

.method public static k(Lcom/google/api/gax/rpc/h0;)Lcom/google/api/gax/rpc/n;
    .locals 1

    new-instance v0, Lcom/google/api/gax/rpc/n;

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/n;-><init>(Lcom/google/api/gax/rpc/h0;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/google/auth/Credentials;)Lcom/google/api/gax/rpc/i0;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FixedTransportChannelProvider doesn\'t need credentials"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic c(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/i0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/n;->m(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/n;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/google/api/gax/rpc/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/n;->a:Lcom/google/api/gax/rpc/h0;

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Ljava/lang/String;)Lcom/google/api/gax/rpc/i0;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FixedTransportChannelProvider doesn\'t need an endpoint"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/n;->a:Lcom/google/api/gax/rpc/h0;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/h0;->getTransportName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic i(Ljava/util/Map;)Lcom/google/api/gax/rpc/i0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/n;->n(Ljava/util/Map;)Lcom/google/api/gax/rpc/n;

    move-result-object p1

    return-object p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l(Ljava/util/concurrent/Executor;)Lcom/google/api/gax/rpc/n;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FixedTransportChannelProvider doesn\'t need an executor"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/n;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/n;->l(Ljava/util/concurrent/Executor;)Lcom/google/api/gax/rpc/n;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/util/Map;)Lcom/google/api/gax/rpc/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/gax/rpc/n;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FixedTransportChannelProvider doesn\'t need headers"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

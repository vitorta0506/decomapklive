.class public abstract Lio/grpc/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/r0<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Ljava/lang/String;I)Lio/grpc/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/grpc/r0<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lio/grpc/ManagedChannelProvider;->e()Lio/grpc/ManagedChannelProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/ManagedChannelProvider;->a(Ljava/lang/String;I)Lio/grpc/r0;

    move-result-object p0

    return-object p0
.end method

.method private n()Lio/grpc/r0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public abstract a()Lio/grpc/q0;
.end method

.method public b(Ljava/util/Map;)Lio/grpc/r0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract c()Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public d()Lio/grpc/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract e(Ljava/util/concurrent/Executor;)Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/util/List;)Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/h;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract h([Lio/grpc/h;)Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/h;",
            ")TT;"
        }
    .end annotation
.end method

.method public i(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public j(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k(Z)Lio/grpc/r0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public l(I)Lio/grpc/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "bytes must be >= 0"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lio/grpc/r0;->n()Lio/grpc/r0;

    move-result-object p1

    return-object p1
.end method

.method public m(I)Lio/grpc/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "maxInboundMetadataSize must be > 0"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lio/grpc/r0;->n()Lio/grpc/r0;

    move-result-object p1

    return-object p1
.end method

.method public abstract o(Ljava/lang/String;)Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

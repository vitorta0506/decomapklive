.class public interface abstract Lcom/google/api/gax/rpc/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(Lcom/google/auth/Credentials;)Lcom/google/api/gax/rpc/i0;
.end method

.method public abstract c(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/i0;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract d()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract e()Lcom/google/api/gax/rpc/h0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f()Z
.end method

.method public abstract g(Ljava/lang/String;)Lcom/google/api/gax/rpc/i0;
.end method

.method public abstract getTransportName()Ljava/lang/String;
.end method

.method public abstract h()Z
.end method

.method public abstract i(Ljava/util/Map;)Lcom/google/api/gax/rpc/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/gax/rpc/i0;"
        }
    .end annotation
.end method

.method public abstract j()Z
.end method

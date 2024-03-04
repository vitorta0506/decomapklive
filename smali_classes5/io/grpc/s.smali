.class public final Lio/grpc/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/grpc/r;)Lio/grpc/Status;
    .locals 3

    const-string v0, "context must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/grpc/r;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/r;->e()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lio/grpc/Status;->g:Lio/grpc/Status;

    const-string v0, "io.grpc.Context was cancelled without error"

    invoke-virtual {p0, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lio/grpc/Status;->j:Lio/grpc/Status;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-static {p0}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 10
    sget-object v1, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v0}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object v1

    if-ne v1, p0, :cond_3

    .line 12
    sget-object v0, Lio/grpc/Status;->g:Lio/grpc/Status;

    const-string v1, "Context cancelled"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    invoke-virtual {v0, p0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0
.end method

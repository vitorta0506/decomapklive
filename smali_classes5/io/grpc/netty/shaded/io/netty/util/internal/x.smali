.class public final Lio/grpc/netty/shaded/io/netty/util/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lug/x;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/x<",
            "*>;",
            "Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lug/q;->cancel(Z)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p0}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Failed to cancel promise because it has succeeded already: {}"

    .line 3
    invoke-interface {p1, v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to cancel promise because it has failed already: {}, unnotified cause:"

    .line 4
    invoke-interface {p1, v1, p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lug/x;Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/x<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p0}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Failed to mark a promise as failure because it has succeeded already: {}"

    .line 3
    invoke-interface {p2, v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 5
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p0

    const/4 p0, 0x2

    aput-object p1, v1, p0

    const-string p0, "Failed to mark a promise as failure because it has failed already: {}, unnotified cause: {}"

    .line 6
    invoke-interface {p2, p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lug/x;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lug/x<",
            "-TV;>;TV;",
            "Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lug/x;->B(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p0}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Failed to mark a promise as success because it has succeeded already: {}"

    .line 3
    invoke-interface {p2, p1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "Failed to mark a promise as success because it has failed already: {}, unnotified cause:"

    .line 4
    invoke-interface {p2, v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

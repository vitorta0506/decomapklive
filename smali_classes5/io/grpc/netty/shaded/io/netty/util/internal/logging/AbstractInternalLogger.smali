.class public abstract Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
.implements Ljava/io/Serializable;


# static fields
.field static final EXCEPTION_MESSAGE:Ljava/lang/String; = "Unexpected exception:"

.field private static final serialVersionUID:J = -0x5894dfb1c97908feL


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract synthetic debug(Ljava/lang/String;)V
.end method

.method public abstract synthetic debug(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract synthetic debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract synthetic debug(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract synthetic debug(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Unexpected exception:"

    .line 1
    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract synthetic error(Ljava/lang/String;)V
.end method

.method public abstract synthetic error(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract synthetic error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract synthetic error(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract synthetic error(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Unexpected exception:"

    .line 1
    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract synthetic info(Ljava/lang/String;)V
.end method

.method public abstract synthetic info(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract synthetic info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract synthetic info(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract synthetic info(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Unexpected exception:"

    .line 1
    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract synthetic isDebugEnabled()Z
.end method

.method public isEnabled(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;)Z
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->isErrorEnabled()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->isWarnEnabled()Z

    move-result p1

    return p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->isInfoEnabled()Z

    move-result p1

    return p1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->isDebugEnabled()Z

    move-result p1

    return p1

    .line 7
    :cond_4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->isTraceEnabled()Z

    move-result p1

    return p1
.end method

.method public abstract synthetic isErrorEnabled()Z
.end method

.method public abstract synthetic isInfoEnabled()Z
.end method

.method public abstract synthetic isTraceEnabled()Z
.end method

.method public abstract synthetic isWarnEnabled()Z
.end method

.method public log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V
    .locals 1

    .line 15
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 16
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 18
    :cond_1
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 22
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 23
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 25
    :cond_1
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_4
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 29
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 30
    invoke-virtual {p0, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 32
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p0, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 35
    :cond_4
    invoke-virtual {p0, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public varargs log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 36
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 37
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 39
    :cond_1
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_4
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/Throwable;)V
    .locals 1

    .line 8
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 9
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 11
    :cond_1
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->c(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract synthetic trace(Ljava/lang/String;)V
.end method

.method public abstract synthetic trace(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract synthetic trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract synthetic trace(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract synthetic trace(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public trace(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Unexpected exception:"

    .line 1
    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract synthetic warn(Ljava/lang/String;)V
.end method

.method public abstract synthetic warn(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract synthetic warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract synthetic warn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract synthetic warn(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Unexpected exception:"

    .line 1
    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

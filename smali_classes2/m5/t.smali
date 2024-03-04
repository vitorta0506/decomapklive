.class Lm5/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lm5/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lm5/t;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public static a(Lio/grpc/MethodDescriptor;Lcom/google/api/gax/rpc/a;)Lio/grpc/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/a;",
            ")",
            "Lio/grpc/g<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lm5/p;

    if-eqz v0, :cond_6

    .line 2
    check-cast p1, Lm5/p;

    .line 3
    invoke-virtual {p1}, Lm5/p;->h()Lio/grpc/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lm5/p;->g()Lio/grpc/c;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lm5/p;->l()Lorg/threeten/bp/Duration;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lm5/p;->l()Lorg/threeten/bp/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lio/grpc/t;->a(JLjava/util/concurrent/TimeUnit;)Lio/grpc/t;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lio/grpc/c;->d()Lio/grpc/t;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1, v2}, Lio/grpc/t;->f(Lio/grpc/t;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    :cond_0
    invoke-virtual {v0, v1}, Lio/grpc/c;->l(Lio/grpc/t;)Lio/grpc/c;

    move-result-object v0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lm5/p;->h()Lio/grpc/d;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lm5/p;->i()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lm5/j;

    if-eqz v2, :cond_2

    .line 13
    check-cast v1, Lm5/j;

    invoke-virtual {p1}, Lm5/p;->i()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lm5/j;->u(I)Lio/grpc/d;

    move-result-object v1

    .line 14
    :cond_2
    invoke-virtual {p1}, Lm5/p;->j()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    invoke-virtual {p1}, Lm5/p;->k()Lio/grpc/s0;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/stub/g;->a(Lio/grpc/s0;)Lio/grpc/h;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lio/grpc/h;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 16
    invoke-static {v1, v3}, Lio/grpc/j;->b(Lio/grpc/d;[Lio/grpc/h;)Lio/grpc/d;

    move-result-object v1

    .line 17
    :cond_3
    invoke-virtual {p1}, Lm5/p;->e()Lr5/a;

    move-result-object p1

    invoke-interface {p1}, Lr5/a;->f()Lr5/a$a;

    move-result-object p1

    .line 18
    :try_start_0
    invoke-virtual {v1, p0, v0}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 19
    invoke-interface {p1}, Lr5/a$a;->close()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_5

    .line 21
    :try_start_2
    invoke-interface {p1}, Lr5/a$a;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v0

    .line 22
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context must be an instance of GrpcCallContext, but found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

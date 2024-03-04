.class public abstract Lm5/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/h0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lio/grpc/q0;)Lm5/h0;
    .locals 1

    invoke-static {}, Lm5/h0;->o()Lm5/h0$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm5/h0$a;->b(Lio/grpc/q0;)Lm5/h0$a;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h0$a;->a()Lm5/h0;

    move-result-object p0

    return-object p0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    const-string v0, "grpc"

    return-object v0
.end method

.method public static o()Lm5/h0$a;
    .locals 1

    new-instance v0, Lm5/c$b;

    invoke-direct {v0}, Lm5/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lm5/h0;->k()Lio/grpc/q0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/q0;->j(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b1()Lcom/google/api/gax/rpc/a;
    .locals 1

    invoke-virtual {p0}, Lm5/h0;->e()Lm5/p;

    move-result-object v0

    return-object v0
.end method

.method public c()Lio/grpc/d;
    .locals 1

    invoke-virtual {p0}, Lm5/h0;->k()Lio/grpc/q0;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lm5/h0;->k()Lio/grpc/q0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/q0;->m()Lio/grpc/q0;

    const-wide/16 v0, 0x6

    .line 2
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lm5/h0;->a(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lcom/google/api/gax/core/ResourceCloseException;

    invoke-direct {v1, v0}, Lcom/google/api/gax/core/ResourceCloseException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public e()Lm5/p;
    .locals 1

    invoke-static {}, Lm5/p;->a()Lm5/p;

    move-result-object v0

    return-object v0
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lm5/h0;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    invoke-virtual {p0}, Lm5/h0;->k()Lio/grpc/q0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/q0;->k()Z

    move-result v0

    return v0
.end method

.method abstract k()Lio/grpc/q0;
.end method

.method public shutdown()V
    .locals 1

    invoke-virtual {p0}, Lm5/h0;->k()Lio/grpc/q0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/q0;->m()Lio/grpc/q0;

    return-void
.end method

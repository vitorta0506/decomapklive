.class public abstract Lug/e;
.super Lug/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lug/c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lug/j;


# direct methods
.method protected constructor <init>(Lug/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lug/c;-><init>()V

    .line 2
    iput-object p1, p0, Lug/e;->a:Lug/j;

    return-void
.end method


# virtual methods
.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public c(Lug/r;)Lug/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-TV;>;>;)",
            "Lug/q<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lug/e;->i()Lug/j;

    move-result-object v0

    const-string v1, "listener"

    invoke-static {p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lug/r;

    invoke-static {v0, p0, p1}, Lug/h;->C(Lug/j;Lug/q;Lug/r;)V

    return-object p0
.end method

.method public c0()Lug/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lug/q<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Lug/r;)Lug/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-TV;>;>;)",
            "Lug/q<",
            "TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method protected i()Lug/j;
    .locals 1

    iget-object v0, p0, Lug/e;->a:Lug/j;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

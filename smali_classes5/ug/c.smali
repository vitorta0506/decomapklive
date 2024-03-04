.class public abstract Lug/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lug/q<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lug/q;->c0()Lug/q;

    .line 2
    invoke-interface {p0}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p0}, Lug/q;->Q()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ljava/util/concurrent/CancellationException;

    throw v0

    .line 6
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 7
    invoke-interface {p0, p1, p2, p3}, Lug/q;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p0}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 9
    invoke-interface {p0}, Lug/q;->Q()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_1

    .line 11
    check-cast p1, Ljava/util/concurrent/CancellationException;

    throw p1

    .line 12
    :cond_1
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 13
    :cond_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

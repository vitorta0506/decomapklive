.class public interface abstract Lug/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "Ljava/lang/Iterable<",
        "Lug/j;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract T()Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lug/q<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract l0()Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lug/q<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract next()Lug/j;
.end method

.method public abstract schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/d0<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lug/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/d0<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/d0<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/d0<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract shutdown()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract submit(Ljava/lang/Runnable;)Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lug/q<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lug/q<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract submit(Ljava/util/concurrent/Callable;)Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lug/q<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract z0(JJLjava/util/concurrent/TimeUnit;)Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/q<",
            "*>;"
        }
    .end annotation
.end method

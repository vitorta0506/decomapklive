.class public final Lcom/google/common/util/concurrent/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/h0$c;,
        Lcom/google/common/util/concurrent/h0$b;
    }
.end annotation


# direct methods
.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/s;->a:Lcom/google/common/util/concurrent/s;

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/g0;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/common/util/concurrent/g0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/util/concurrent/g0;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/h0$c;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/h0$c;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static c(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/a;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/a<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/h0;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/h0$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/h0$a;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/a;)V

    return-object v0
.end method

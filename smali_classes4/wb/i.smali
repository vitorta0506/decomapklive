.class public Lwb/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lxb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxb/f;

    invoke-direct {v0}, Lxb/f;-><init>()V

    sput-object v0, Lwb/i;->a:Lxb/f;

    return-void
.end method

.method public static a(Lwb/f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lwb/f<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "await must not be called on the UI thread"

    invoke-static {v0}, Lxb/f;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwb/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lxb/f;->a(Lwb/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lxb/f$b;

    invoke-direct {v0}, Lxb/f$b;-><init>()V

    invoke-virtual {p0, v0}, Lwb/f;->c(Lwb/e;)Lwb/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lwb/f;->b(Lwb/d;)Lwb/f;

    iget-object v0, v0, Lxb/f$b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-static {p0}, Lxb/f;->a(Lwb/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/concurrent/Callable;)Lwb/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lwb/f<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lwb/i;->a:Lxb/f;

    invoke-static {}, Lwb/h;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lxb/f;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lwb/f;

    move-result-object p0

    return-object p0
.end method

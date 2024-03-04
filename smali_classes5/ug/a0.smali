.class Lug/a0;
.super Lug/h;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lug/a0$b;,
        Lug/a0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lug/h<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/Runnable;

.field private static final p:Ljava/lang/Runnable;

.field private static final q:Ljava/lang/Runnable;


# instance fields
.field private n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lug/a0$b;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1}, Lug/a0$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lug/a0;->o:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Lug/a0$b;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, Lug/a0$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lug/a0;->p:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lug/a0$b;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Lug/a0$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lug/a0;->q:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>(Lug/j;Ljava/lang/Runnable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lug/h;-><init>(Lug/j;)V

    .line 4
    iput-object p2, p0, Lug/a0;->n:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lug/j;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/j;",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lug/h;-><init>(Lug/j;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lug/a0$a;

    invoke-direct {p1, p2, p3}, Lug/a0$a;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lug/a0;->n:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lug/j;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/j;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lug/h;-><init>(Lug/j;)V

    .line 6
    iput-object p2, p0, Lug/a0;->n:Ljava/lang/Object;

    return-void
.end method

.method private l0(ZLjava/lang/Runnable;)Z
    .locals 0

    if-eqz p1, :cond_0

    iput-object p2, p0, Lug/a0;->n:Ljava/lang/Object;

    :cond_0
    return p1
.end method


# virtual methods
.method public final B(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public cancel(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lug/h;->cancel(Z)Z

    move-result p1

    sget-object v0, Lug/a0;->p:Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lug/a0;->l0(ZLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected j0()Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    invoke-super {p0}, Lug/h;->j0()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const-string v1, " task: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lug/a0;->n:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final m0(Ljava/lang/Object;)Lug/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lug/x<",
            "TV;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method n0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/a0;->n:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final r0(Ljava/lang/Throwable;)Lug/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lug/x<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lug/h;->d0(Ljava/lang/Throwable;)Lug/x;

    .line 2
    sget-object p1, Lug/a0;->q:Ljava/lang/Runnable;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lug/a0;->l0(ZLjava/lang/Runnable;)Z

    return-object p0
.end method

.method public run()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lug/a0;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lug/a0;->n0()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lug/a0;->t0(Ljava/lang/Object;)Lug/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {p0, v0}, Lug/a0;->r0(Ljava/lang/Throwable;)Lug/x;

    :cond_0
    :goto_0
    return-void
.end method

.method protected final t0(Ljava/lang/Object;)Lug/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lug/x<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lug/h;->m0(Ljava/lang/Object;)Lug/x;

    .line 2
    sget-object p1, Lug/a0;->o:Ljava/lang/Runnable;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lug/a0;->l0(ZLjava/lang/Runnable;)Z

    return-object p0
.end method

.method protected final u0()Z
    .locals 1

    invoke-super {p0}, Lug/h;->g()Z

    move-result v0

    return v0
.end method

.method public final z(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

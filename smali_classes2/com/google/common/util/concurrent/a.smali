.class public abstract Lcom/google/common/util/concurrent/a;
.super Ly5/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/a$h;,
        Lcom/google/common/util/concurrent/a$f;,
        Lcom/google/common/util/concurrent/a$k;,
        Lcom/google/common/util/concurrent/a$b;,
        Lcom/google/common/util/concurrent/a$g;,
        Lcom/google/common/util/concurrent/a$c;,
        Lcom/google/common/util/concurrent/a$d;,
        Lcom/google/common/util/concurrent/a$e;,
        Lcom/google/common/util/concurrent/a$l;,
        Lcom/google/common/util/concurrent/a$j;,
        Lcom/google/common/util/concurrent/a$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ly5/a;",
        "Lcom/google/common/util/concurrent/d0<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final d:Z

.field private static final e:Ljava/util/logging/Logger;

.field private static final f:Lcom/google/common/util/concurrent/a$b;

.field private static final g:Ljava/lang/Object;


# instance fields
.field private volatile a:Ljava/lang/Object;

.field private volatile b:Lcom/google/common/util/concurrent/a$e;

.field private volatile c:Lcom/google/common/util/concurrent/a$l;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/a$l;

    :try_start_0
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    sput-boolean v1, Lcom/google/common/util/concurrent/a;->d:Z

    .line 5
    const-class v1, Lcom/google/common/util/concurrent/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/a;->e:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    .line 6
    :try_start_1
    new-instance v2, Lcom/google/common/util/concurrent/a$k;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/a$k;-><init>(Lcom/google/common/util/concurrent/a$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 7
    :try_start_2
    new-instance v9, Lcom/google/common/util/concurrent/a$f;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "a"

    .line 8
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-string v3, "b"

    .line 9
    invoke-static {v0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lcom/google/common/util/concurrent/a;

    const-string v6, "c"

    .line 10
    invoke-static {v3, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lcom/google/common/util/concurrent/a;

    const-class v3, Lcom/google/common/util/concurrent/a$e;

    const-string v7, "b"

    .line 11
    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Lcom/google/common/util/concurrent/a;

    const-class v3, Ljava/lang/Object;

    const-string v8, "a"

    .line 12
    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/common/util/concurrent/a$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v9

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 13
    new-instance v3, Lcom/google/common/util/concurrent/a$h;

    invoke-direct {v3, v1}, Lcom/google/common/util/concurrent/a$h;-><init>(Lcom/google/common/util/concurrent/a$a;)V

    move-object v1, v0

    .line 14
    :goto_1
    sput-object v3, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    .line 15
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v1, :cond_0

    .line 16
    sget-object v0, Lcom/google/common/util/concurrent/a;->e:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "SafeAtomicHelper is broken!"

    .line 17
    invoke-virtual {v0, v3, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/a;->g:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly5/a;-><init>()V

    return-void
.end method

.method private A(Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    sget-object v1, Lcom/google/common/util/concurrent/a$e;->d:Lcom/google/common/util/concurrent/a$e;

    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/a$b;->d(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p1, Lcom/google/common/util/concurrent/a$e;->c:Lcom/google/common/util/concurrent/a$e;

    .line 3
    iput-object v0, p1, Lcom/google/common/util/concurrent/a$e;->c:Lcom/google/common/util/concurrent/a$e;

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static C(Lcom/google/common/util/concurrent/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a;->O()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->t()V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->A(Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$e;->c:Lcom/google/common/util/concurrent/a$e;

    .line 5
    iget-object v1, p0, Lcom/google/common/util/concurrent/a$e;->a:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    instance-of v2, v1, Lcom/google/common/util/concurrent/a$g;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Lcom/google/common/util/concurrent/a$g;

    .line 8
    iget-object p0, v1, Lcom/google/common/util/concurrent/a$g;->a:Lcom/google/common/util/concurrent/a;

    .line 9
    iget-object v2, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    if-ne v2, v1, :cond_1

    .line 10
    iget-object v2, v1, Lcom/google/common/util/concurrent/a$g;->b:Lcom/google/common/util/concurrent/d0;

    invoke-static {v2}, Lcom/google/common/util/concurrent/a;->G(Lcom/google/common/util/concurrent/d0;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    sget-object v3, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v3, p0, v1, v2}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/a$e;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/a;->D(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    move-object p0, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static D(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/google/common/util/concurrent/a;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "RuntimeException while executing runnable "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/common/util/concurrent/a$c;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Lcom/google/common/util/concurrent/a$d;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/google/common/util/concurrent/a;->g:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/i0;->b()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lcom/google/common/util/concurrent/a$d;

    iget-object p1, p1, Lcom/google/common/util/concurrent/a$d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_2
    check-cast p1, Lcom/google/common/util/concurrent/a$c;

    iget-object p1, p1, Lcom/google/common/util/concurrent/a$c;->b:Ljava/lang/Throwable;

    const-string v0, "Task was cancelled."

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/a;->y(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1
.end method

.method private static G(Lcom/google/common/util/concurrent/d0;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d0<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 1
    instance-of v1, p0, Lcom/google/common/util/concurrent/a$i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p0, Lcom/google/common/util/concurrent/a;

    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v0, p0, Lcom/google/common/util/concurrent/a$c;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/google/common/util/concurrent/a$c;

    .line 5
    iget-boolean v1, v0, Lcom/google/common/util/concurrent/a$c;->a:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object p0, v0, Lcom/google/common/util/concurrent/a$c;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    .line 7
    new-instance p0, Lcom/google/common/util/concurrent/a$c;

    iget-object v0, v0, Lcom/google/common/util/concurrent/a$c;->b:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/google/common/util/concurrent/a$c;->d:Lcom/google/common/util/concurrent/a$c;

    .line 9
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 10
    :cond_2
    instance-of v1, p0, Ly5/a;

    if-eqz v1, :cond_3

    .line 11
    move-object v1, p0

    check-cast v1, Ly5/a;

    .line 12
    invoke-static {v1}, Ly5/b;->a(Ly5/a;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13
    new-instance p0, Lcom/google/common/util/concurrent/a$d;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 14
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    .line 15
    sget-boolean v3, Lcom/google/common/util/concurrent/a;->d:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 16
    sget-object p0, Lcom/google/common/util/concurrent/a$c;->d:Lcom/google/common/util/concurrent/a$c;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 17
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->H(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 18
    new-instance v3, Lcom/google/common/util/concurrent/a$c;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 19
    sget-object v3, Lcom/google/common/util/concurrent/a;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-object v3

    :catchall_0
    move-exception p0

    .line 20
    new-instance v0, Lcom/google/common/util/concurrent/a$d;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v0

    if-nez v1, :cond_7

    .line 21
    new-instance v1, Lcom/google/common/util/concurrent/a$d;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 22
    :cond_7
    new-instance p0, Lcom/google/common/util/concurrent/a$c;

    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception v3

    if-eqz v1, :cond_8

    .line 23
    new-instance v1, Lcom/google/common/util/concurrent/a$c;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 24
    :cond_8
    new-instance p0, Lcom/google/common/util/concurrent/a$d;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static H(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private O()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    sget-object v1, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/a$b;->e(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;)Lcom/google/common/util/concurrent/a$l;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/a$l;->b()V

    .line 3
    iget-object v0, v0, Lcom/google/common/util/concurrent/a$l;->b:Lcom/google/common/util/concurrent/a$l;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private P(Lcom/google/common/util/concurrent/a$l;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/common/util/concurrent/a$l;->a:Ljava/lang/Thread;

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/a;->c:Lcom/google/common/util/concurrent/a$l;

    .line 3
    sget-object v1, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 4
    iget-object v2, p1, Lcom/google/common/util/concurrent/a$l;->b:Lcom/google/common/util/concurrent/a$l;

    .line 5
    iget-object v3, p1, Lcom/google/common/util/concurrent/a$l;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    move-object v1, p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    iput-object v2, v1, Lcom/google/common/util/concurrent/a$l;->b:Lcom/google/common/util/concurrent/a$l;

    .line 7
    iget-object p1, v1, Lcom/google/common/util/concurrent/a$l;->a:Ljava/lang/Thread;

    if-nez p1, :cond_3

    goto :goto_0

    .line 8
    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/common/util/concurrent/a$b;->c(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_4
    return-void
.end method

.method static synthetic h()Lcom/google/common/util/concurrent/a$b;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    return-object v0
.end method

.method static synthetic i(Lcom/google/common/util/concurrent/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic k(Lcom/google/common/util/concurrent/d0;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->G(Lcom/google/common/util/concurrent/d0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcom/google/common/util/concurrent/a;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->C(Lcom/google/common/util/concurrent/a;)V

    return-void
.end method

.method static synthetic n(Lcom/google/common/util/concurrent/a;)Lcom/google/common/util/concurrent/a$l;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->c:Lcom/google/common/util/concurrent/a$l;

    return-object p0
.end method

.method static synthetic o(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;)Lcom/google/common/util/concurrent/a$l;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->c:Lcom/google/common/util/concurrent/a$l;

    return-object p1
.end method

.method static synthetic p(Lcom/google/common/util/concurrent/a;)Lcom/google/common/util/concurrent/a$e;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->b:Lcom/google/common/util/concurrent/a$e;

    return-object p0
.end method

.method static synthetic q(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->b:Lcom/google/common/util/concurrent/a$e;

    return-object p1
.end method

.method private r(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->H(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/a;->v(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    const-string v0, "CANCELLED"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private s(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, "PENDING"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    .line 4
    instance-of v2, v1, Lcom/google/common/util/concurrent/a$g;

    const-string v3, "]"

    if-eqz v2, :cond_0

    const-string v2, ", setFuture=["

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    check-cast v1, Lcom/google/common/util/concurrent/a$g;

    iget-object v1, v1, Lcom/google/common/util/concurrent/a$g;->b:Lcom/google/common/util/concurrent/d0;

    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/a;->w(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Exception thrown from implementation: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    const-string v2, ", info=["

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/a;->r(Ljava/lang/StringBuilder;)V

    :cond_2
    return-void
.end method

.method private v(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "null"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-ne p2, p0, :cond_1

    const-string p2, "this future"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private w(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p0, :cond_0

    :try_start_0
    const-string p2, "this future"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    const-string v0, "Exception thrown from implementation: "

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method private static y(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method protected J()V
    .locals 0

    return-void
.end method

.method final K(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->U()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method protected M()Ljava/lang/String;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected R(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/common/util/concurrent/a;->g:Ljava/lang/Object;

    .line 2
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->C(Lcom/google/common/util/concurrent/a;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected S(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/a$d;

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    .line 2
    sget-object p1, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->C(Lcom/google/common/util/concurrent/a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected T(Lcom/google/common/util/concurrent/d0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d0<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/common/util/concurrent/a;->G(Lcom/google/common/util/concurrent/d0;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v0, p0, v3, p1}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->C(Lcom/google/common/util/concurrent/a;)V

    return v2

    :cond_0
    return v1

    .line 7
    :cond_1
    new-instance v0, Lcom/google/common/util/concurrent/a$g;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/a$g;-><init>(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/d0;)V

    .line 8
    sget-object v4, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v4, p0, v3, v0}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    :try_start_0
    sget-object v1, Lcom/google/common/util/concurrent/s;->a:Lcom/google/common/util/concurrent/s;

    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/d0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    new-instance v1, Lcom/google/common/util/concurrent/a$d;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 11
    :catchall_1
    sget-object v1, Lcom/google/common/util/concurrent/a$d;->b:Lcom/google/common/util/concurrent/a$d;

    .line 12
    :goto_0
    sget-object p1, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return v2

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    .line 14
    :cond_3
    instance-of v2, v0, Lcom/google/common/util/concurrent/a$c;

    if-eqz v2, :cond_4

    .line 15
    check-cast v0, Lcom/google/common/util/concurrent/a$c;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/a$c;->a:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    return v1
.end method

.method protected final U()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/google/common/util/concurrent/a$c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/common/util/concurrent/a$c;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/a$c;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const-string v0, "Runnable was null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->b:Lcom/google/common/util/concurrent/a$e;

    .line 5
    sget-object v1, Lcom/google/common/util/concurrent/a$e;->d:Lcom/google/common/util/concurrent/a$e;

    if-eq v0, v1, :cond_2

    .line 6
    new-instance v1, Lcom/google/common/util/concurrent/a$e;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/a$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    :cond_0
    iput-object v0, v1, Lcom/google/common/util/concurrent/a$e;->c:Lcom/google/common/util/concurrent/a$e;

    .line 8
    sget-object v2, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;Lcom/google/common/util/concurrent/a$e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->b:Lcom/google/common/util/concurrent/a$e;

    .line 10
    sget-object v2, Lcom/google/common/util/concurrent/a$e;->d:Lcom/google/common/util/concurrent/a$e;

    if-ne v0, v2, :cond_0

    .line 11
    :cond_2
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/a;->D(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected final b()Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/common/util/concurrent/a$i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lcom/google/common/util/concurrent/a$d;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/google/common/util/concurrent/a$d;

    iget-object v0, v0, Lcom/google/common/util/concurrent/a$d;->a:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$g;

    or-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 3
    sget-boolean v3, Lcom/google/common/util/concurrent/a;->d:Z

    if-eqz v3, :cond_1

    .line 4
    new-instance v3, Lcom/google/common/util/concurrent/a$c;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    sget-object v3, Lcom/google/common/util/concurrent/a$c;->c:Lcom/google/common/util/concurrent/a$c;

    goto :goto_1

    .line 6
    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/a$c;->d:Lcom/google/common/util/concurrent/a$c;

    .line 7
    :goto_1
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 v5, 0x0

    move-object v4, p0

    .line 8
    :cond_3
    :goto_3
    sget-object v6, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v6, v4, v0, v3}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {v4}, Lcom/google/common/util/concurrent/a;->J()V

    .line 10
    :cond_4
    invoke-static {v4}, Lcom/google/common/util/concurrent/a;->C(Lcom/google/common/util/concurrent/a;)V

    .line 11
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$g;

    if-eqz v4, :cond_9

    .line 12
    check-cast v0, Lcom/google/common/util/concurrent/a$g;

    iget-object v0, v0, Lcom/google/common/util/concurrent/a$g;->b:Lcom/google/common/util/concurrent/d0;

    .line 13
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$i;

    if-eqz v4, :cond_6

    .line 14
    move-object v4, v0

    check-cast v4, Lcom/google/common/util/concurrent/a;

    .line 15
    iget-object v0, v4, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    if-nez v0, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    .line 16
    :goto_4
    instance-of v6, v0, Lcom/google/common/util/concurrent/a$g;

    or-int/2addr v5, v6

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    .line 17
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_5

    .line 18
    :cond_7
    iget-object v0, v4, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    .line 19
    instance-of v6, v0, Lcom/google/common/util/concurrent/a$g;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_5
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 6
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

    .line 45
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 48
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->c:Lcom/google/common/util/concurrent/a$l;

    .line 50
    sget-object v3, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    if-eq v0, v3, :cond_7

    .line 51
    new-instance v3, Lcom/google/common/util/concurrent/a$l;

    invoke-direct {v3}, Lcom/google/common/util/concurrent/a$l;-><init>()V

    .line 52
    :cond_2
    invoke-virtual {v3, v0}, Lcom/google/common/util/concurrent/a$l;->a(Lcom/google/common/util/concurrent/a$l;)V

    .line 53
    sget-object v4, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/common/util/concurrent/a$b;->c(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 56
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 57
    :goto_1
    instance-of v5, v0, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 58
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/a;->P(Lcom/google/common/util/concurrent/a$l;)V

    .line 60
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->c:Lcom/google/common/util/concurrent/a$l;

    .line 62
    sget-object v4, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    if-ne v0, v4, :cond_2

    .line 63
    :cond_7
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 19
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
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 3
    iget-object v6, v0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 4
    :goto_0
    instance-of v10, v6, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 5
    invoke-direct {v0, v6}, Lcom/google/common/util/concurrent/a;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    .line 7
    iget-object v6, v0, Lcom/google/common/util/concurrent/a;->c:Lcom/google/common/util/concurrent/a$l;

    .line 8
    sget-object v15, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    if-eq v6, v15, :cond_9

    .line 9
    new-instance v15, Lcom/google/common/util/concurrent/a$l;

    invoke-direct {v15}, Lcom/google/common/util/concurrent/a$l;-><init>()V

    .line 10
    :cond_3
    invoke-virtual {v15, v6}, Lcom/google/common/util/concurrent/a$l;->a(Lcom/google/common/util/concurrent/a$l;)V

    .line 11
    sget-object v7, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v7, v0, v6, v15}, Lcom/google/common/util/concurrent/a$b;->c(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 12
    :cond_4
    invoke-static {v0, v4, v5}, Lcom/google/common/util/concurrent/j0;->a(Ljava/lang/Object;J)V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 14
    iget-object v4, v0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 15
    :goto_2
    instance-of v6, v4, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 16
    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/a;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 17
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 18
    invoke-direct {v0, v15}, Lcom/google/common/util/concurrent/a;->P(Lcom/google/common/util/concurrent/a$l;)V

    goto :goto_3

    .line 19
    :cond_7
    invoke-direct {v0, v15}, Lcom/google/common/util/concurrent/a;->P(Lcom/google/common/util/concurrent/a$l;)V

    .line 20
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_8
    iget-object v6, v0, Lcom/google/common/util/concurrent/a;->c:Lcom/google/common/util/concurrent/a$l;

    .line 22
    sget-object v7, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    if-ne v6, v7, :cond_3

    .line 23
    :cond_9
    iget-object v1, v0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/a;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 24
    iget-object v4, v0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 25
    :goto_4
    instance-of v6, v4, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 26
    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/a;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 27
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 29
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 30
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/a;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Waited "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_14

    .line 33
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 34
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 35
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v9, v4, v13

    if-lez v9, :cond_f

    goto :goto_5

    :cond_f
    const/16 v16, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/16 v16, 0x1

    :goto_6
    if-lez v3, :cond_12

    .line 36
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    .line 37
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    :cond_11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    :cond_13
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 42
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " but future completed as timeout expired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lcom/google/common/util/concurrent/a$c;

    return v0
.end method

.method public isDone()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    instance-of v0, v0, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method protected t()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x40

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CANCELLED"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->r(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->s(Ljava/lang/StringBuilder;)V

    :goto_1
    const-string v1, "]"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

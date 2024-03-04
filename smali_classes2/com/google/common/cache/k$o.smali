.class Lcom/google/common/cache/k$o;
.super Lcom/google/common/cache/k$p;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$p<",
        "TK;TV;>;",
        "Lcom/google/common/cache/g<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/d<",
            "-TK;-TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/k;

    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/cache/CacheLoader;

    invoke-direct {v0, p1, p2}, Lcom/google/common/cache/k;-><init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/common/cache/k$p;-><init>(Lcom/google/common/cache/k;Lcom/google/common/cache/k$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$p;->a:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/cache/k$m;

    iget-object v1, p0, Lcom/google/common/cache/k$p;->a:Lcom/google/common/cache/k;

    invoke-direct {v0, v1}, Lcom/google/common/cache/k$m;-><init>(Lcom/google/common/cache/k;)V

    return-object v0
.end method

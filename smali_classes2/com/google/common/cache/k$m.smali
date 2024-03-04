.class final Lcom/google/common/cache/k$m;
.super Lcom/google/common/cache/k$q;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$q<",
        "TK;TV;>;",
        "Lcom/google/common/cache/g<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient n:Lcom/google/common/cache/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/g<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/cache/k$q;-><init>(Lcom/google/common/cache/k;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/k$q;->y0()Lcom/google/common/cache/d;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/common/cache/k$q;->l:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p1, v0}, Lcom/google/common/cache/d;->b(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$m;->n:Lcom/google/common/cache/g;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$m;->n:Lcom/google/common/cache/g;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$m;->n:Lcom/google/common/cache/g;

    invoke-interface {v0, p1}, Lcom/google/common/cache/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/common/cache/k$m;->n:Lcom/google/common/cache/g;

    invoke-interface {v0, p1}, Lcom/google/common/cache/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

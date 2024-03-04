.class public abstract Lcom/google/common/collect/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Iterable<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/p3;->a:Lcom/google/common/base/Optional;

    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/p3;->a:Lcom/google/common/base/Optional;

    return-void
.end method

.method public static c(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/p3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/google/common/collect/p3<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/google/common/collect/p3;->d([Ljava/lang/Iterable;)Lcom/google/common/collect/p3;

    move-result-object p0

    return-object p0
.end method

.method private static varargs d([Ljava/lang/Iterable;)Lcom/google/common/collect/p3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/google/common/collect/p3<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/p3$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/p3$b;-><init>([Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static g(Ljava/lang/Iterable;)Lcom/google/common/collect/p3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/p3<",
            "TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/p3;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/p3;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/p3$a;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/p3$a;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private m()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p3;->a:Lcom/google/common/base/Optional;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method


# virtual methods
.method public final f(Lcom/google/common/base/q;)Lcom/google/common/collect/p3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/q<",
            "-TE;>;)",
            "Lcom/google/common/collect/p3<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/p3;->m()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/n5;->e(Ljava/lang/Iterable;Lcom/google/common/base/q;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/p3;->g(Ljava/lang/Iterable;)Lcom/google/common/collect/p3;

    move-result-object p1

    return-object p1
.end method

.method public final n()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/p3;->m()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/p3;->m()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/n5;->o(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

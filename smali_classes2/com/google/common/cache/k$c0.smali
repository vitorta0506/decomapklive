.class final Lcom/google/common/cache/k$c0;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/cache/k;


# direct methods
.method constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/k$c0;->a:Lcom/google/common/cache/k;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method public static synthetic c(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/cache/k$c0;->d(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic d(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$c0;->a:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$c0;->a:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$c0;->a:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/k$a0;

    iget-object v1, p0, Lcom/google/common/cache/k$c0;->a:Lcom/google/common/cache/k;

    invoke-direct {v0, v1}, Lcom/google/common/cache/k$a0;-><init>(Lcom/google/common/cache/k;)V

    return-object v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/k$c0;->a:Lcom/google/common/cache/k;

    new-instance v1, Lcom/google/common/cache/m;

    invoke-direct {v1, p1}, Lcom/google/common/cache/m;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {v0, v1}, Lcom/google/common/cache/k;->H(Ljava/util/function/BiPredicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$c0;->a:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/cache/k;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/common/cache/k;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

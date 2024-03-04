.class public abstract Lcom/google/common/collect/y6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lcom/google/common/collect/y6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/y6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/y6;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/y6;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/d3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d3;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static e()Lcom/google/common/collect/y6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/y6<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/v6;->a:Lcom/google/common/collect/v6;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/y6;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/y6;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method f()Lcom/google/common/collect/y6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:TT;>()",
            "Lcom/google/common/collect/y6<",
            "Ljava/util/Map$Entry<",
            "TT2;*>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/d6;->i()Lcom/google/common/base/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/y6;->g(Lcom/google/common/base/h;)Lcom/google/common/collect/y6;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/common/base/h;)Lcom/google/common/collect/y6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/h<",
            "TF;+TT;>;)",
            "Lcom/google/common/collect/y6<",
            "TF;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/f0;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/f0;-><init>(Lcom/google/common/base/h;Lcom/google/common/collect/y6;)V

    return-object v0
.end method

.method public h()Lcom/google/common/collect/y6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/y6<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/s7;

    invoke-direct {v0, p0}, Lcom/google/common/collect/s7;-><init>(Lcom/google/common/collect/y6;)V

    return-object v0
.end method

.class public final Lcom/google/common/collect/ImmutableListMultimap$a;
.super Lcom/google/common/collect/ImmutableMultimap$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap$c<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$a;->j(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$a;->k(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$a;->m(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap$c;->a()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method i(Lcom/google/common/collect/ImmutableMultimap$c;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMultimap$c<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->b(Lcom/google/common/collect/ImmutableMultimap$c;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public j(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public k(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->e(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->f(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->g(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

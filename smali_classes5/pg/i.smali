.class public interface abstract Lpg/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T::",
        "Lpg/i<",
        "TK;TV;TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# virtual methods
.method public abstract K0(Ljava/lang/Object;J)Lpg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation
.end method

.method public abstract Z0(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation
.end method

.method public abstract d0(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

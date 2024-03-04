.class abstract Lcom/google/common/collect/d4;
.super Lcom/google/common/collect/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/t<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/t;-><init>(Ljava/util/Map;)V

    return-void
.end method

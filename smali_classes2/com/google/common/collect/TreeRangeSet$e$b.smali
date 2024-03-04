.class Lcom/google/common/collect/TreeRangeSet$e$b;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeSet$e;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/g3<",
        "TC;>;",
        "Lcom/google/common/collect/Range<",
        "TC;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/z6;

.field final synthetic d:Lcom/google/common/collect/TreeRangeSet$e;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$e;Lcom/google/common/collect/z6;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$e$b;->d:Lcom/google/common/collect/TreeRangeSet$e;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$e$b;->c:Lcom/google/common/collect/z6;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$e$b;->d()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/g3<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e$b;->c:Lcom/google/common/collect/z6;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e$b;->c:Lcom/google/common/collect/z6;

    invoke-interface {v0}, Lcom/google/common/collect/z6;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e$b;->d:Lcom/google/common/collect/TreeRangeSet$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeSet$e;->b(Lcom/google/common/collect/TreeRangeSet$e;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    iget-object v2, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/g3;->k(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    invoke-static {v1, v0}, Lcom/google/common/collect/d6;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

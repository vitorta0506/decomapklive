.class Lcom/google/common/collect/TreeRangeSet$d$a;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeSet$d;->entryIterator()Ljava/util/Iterator;
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
.field c:Lcom/google/common/collect/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g3<",
            "TC;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/common/collect/g3;

.field final synthetic e:Lcom/google/common/collect/z6;

.field final synthetic f:Lcom/google/common/collect/TreeRangeSet$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$d;Lcom/google/common/collect/g3;Lcom/google/common/collect/z6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->f:Lcom/google/common/collect/TreeRangeSet$d;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->d:Lcom/google/common/collect/g3;

    iput-object p3, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->e:Lcom/google/common/collect/z6;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->c:Lcom/google/common/collect/g3;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$d$a;->d()Ljava/util/Map$Entry;

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
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->f:Lcom/google/common/collect/TreeRangeSet$d;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeSet$d;->b(Lcom/google/common/collect/TreeRangeSet$d;)Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->c:Lcom/google/common/collect/g3;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g3;->k(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->c:Lcom/google/common/collect/g3;

    .line 2
    invoke-static {}, Lcom/google/common/collect/g3;->a()Lcom/google/common/collect/g3;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->e:Lcom/google/common/collect/z6;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->e:Lcom/google/common/collect/z6;

    invoke-interface {v0}, Lcom/google/common/collect/z6;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->c:Lcom/google/common/collect/g3;

    iget-object v2, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/g3;Lcom/google/common/collect/g3;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 6
    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->c:Lcom/google/common/collect/g3;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->c:Lcom/google/common/collect/g3;

    invoke-static {}, Lcom/google/common/collect/g3;->a()Lcom/google/common/collect/g3;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/g3;Lcom/google/common/collect/g3;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/google/common/collect/g3;->a()Lcom/google/common/collect/g3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d$a;->c:Lcom/google/common/collect/g3;

    .line 9
    :goto_0
    iget-object v0, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    invoke-static {v0, v1}, Lcom/google/common/collect/d6;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

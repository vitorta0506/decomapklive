.class abstract Lcom/google/common/collect/v;
.super Lcom/google/common/collect/p;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/h8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/p<",
        "TE;>;",
        "Lcom/google/common/collect/h8<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private transient descendingMultiset:Lcom/google/common/collect/h8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/h8<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/v;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/p;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/v;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/v;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method createDescendingMultiset()Lcom/google/common/collect/h8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h8<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/v$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v$a;-><init>(Lcom/google/common/collect/v;)V

    return-object v0
.end method

.method createElementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/i8$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i8$b;-><init>(Lcom/google/common/collect/h8;)V

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/v;->createElementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method abstract descendingEntryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/v;->descendingMultiset()Lcom/google/common/collect/h8;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/t6;->i(Lcom/google/common/collect/q6;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/h8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h8<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/v;->descendingMultiset:Lcom/google/common/collect/h8;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/v;->createDescendingMultiset()Lcom/google/common/collect/h8;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/v;->descendingMultiset:Lcom/google/common/collect/h8;

    :cond_0
    return-object v0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Lcom/google/common/collect/p;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/v;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/v;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/q6$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/p;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/q6$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/q6$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/v;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/q6$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/q6$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/p;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/q6$a;

    .line 4
    invoke-interface {v1}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/common/collect/t6;->g(Ljava/lang/Object;I)Lcom/google/common/collect/q6$a;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/q6$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/v;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/q6$a;

    .line 4
    invoke-interface {v1}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/common/collect/t6;->g(Ljava/lang/Object;I)Lcom/google/common/collect/q6$a;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            "TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/h8<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p4}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/h8;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/google/common/collect/h8;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;

    move-result-object p1

    return-object p1
.end method

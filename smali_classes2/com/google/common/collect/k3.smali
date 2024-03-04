.class abstract Lcom/google/common/collect/k3;
.super Lcom/google/common/collect/v3;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/h8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/v3<",
        "TE;>;",
        "Lcom/google/common/collect/h8<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/v3;-><init>()V

    return-void
.end method


# virtual methods
.method abstract A0()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method abstract C0()Lcom/google/common/collect/h8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h8<",
            "TE;>;"
        }
    .end annotation
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3;->a:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/h8;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/y6;->a(Ljava/util/Comparator;)Lcom/google/common/collect/y6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y6;->h()Lcom/google/common/collect/y6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/k3;->a:Ljava/util/Comparator;

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/k3;->w0()Lcom/google/common/collect/q6;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/k3;->w0()Lcom/google/common/collect/q6;

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

    invoke-virtual {p0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

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

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/k3;->b:Ljava/util/NavigableSet;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/i8$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i8$b;-><init>(Lcom/google/common/collect/h8;)V

    iput-object v0, p0, Lcom/google/common/collect/k3;->b:Ljava/util/NavigableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/k3;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/k3;->y0()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/k3;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/q6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/h8;->lastEntry()Lcom/google/common/collect/q6$a;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/h8<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/h8;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/h8;->descendingMultiset()Lcom/google/common/collect/h8;

    move-result-object p1

    return-object p1
.end method

.method public lastEntry()Lcom/google/common/collect/q6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/h8;->firstEntry()Lcom/google/common/collect/q6$a;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/q6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/h8;->pollLastEntry()Lcom/google/common/collect/q6$a;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/q6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/h8;->pollFirstEntry()Lcom/google/common/collect/q6$a;

    move-result-object v0

    return-object v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;
    .locals 1
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
    invoke-virtual {p0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

    .line 2
    invoke-interface {v0, p3, p4, p1, p2}, Lcom/google/common/collect/h8;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/h8;->descendingMultiset()Lcom/google/common/collect/h8;

    move-result-object p1

    return-object p1
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/h8<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/h8;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/h8;->descendingMultiset()Lcom/google/common/collect/h8;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/q3;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/q3;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected w0()Lcom/google/common/collect/q6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

    return-object v0
.end method

.method y0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k3$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k3$a;-><init>(Lcom/google/common/collect/k3;)V

    return-object v0
.end method

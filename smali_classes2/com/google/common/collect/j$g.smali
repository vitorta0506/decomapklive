.class Lcom/google/common/collect/j$g;
.super Lcom/google/common/collect/j$j;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j<",
        "TK;TV;>.j;",
        "Ljava/util/NavigableSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/j;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j;Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/j$g;->d:Lcom/google/common/collect/j;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/j$j;-><init>(Lcom/google/common/collect/j;Ljava/util/SortedMap;)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/j$g;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public F(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/j$g;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->z()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j$g;

    iget-object v1, p0, Lcom/google/common/collect/j$g;->d:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->z()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/j$g;-><init>(Lcom/google/common/collect/j;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->z()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/j$g;

    iget-object v1, p0, Lcom/google/common/collect/j$g;->d:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->z()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/j$g;-><init>(Lcom/google/common/collect/j;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/j$g;->y(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->z()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->z()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j$e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/p5;->v(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/p5;->v(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/j$g;

    iget-object v1, p0, Lcom/google/common/collect/j$g;->d:Lcom/google/common/collect/j;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->z()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/j$g;-><init>(Lcom/google/common/collect/j;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/j$g;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/j$g;

    iget-object v1, p0, Lcom/google/common/collect/j$g;->d:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->z()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/j$g;-><init>(Lcom/google/common/collect/j;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/j$g;->F(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic x()Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/j$g;->z()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/j$g;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method z()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/j$j;->x()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

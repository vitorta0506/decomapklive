.class final Lcom/google/common/collect/n7;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final e:[J

.field static final f:Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient a:Lcom/google/common/collect/o7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/o7<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient b:[J

.field private final transient c:I

.field private final transient d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1
    sput-object v0, Lcom/google/common/collect/n7;->e:[J

    .line 2
    new-instance v0, Lcom/google/common/collect/n7;

    .line 3
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/n7;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/n7;->f:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/o7;[JII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/o7<",
            "TE;>;[JII)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/common/collect/n7;->a:Lcom/google/common/collect/o7;

    .line 8
    iput-object p2, p0, Lcom/google/common/collect/n7;->b:[J

    .line 9
    iput p3, p0, Lcom/google/common/collect/n7;->c:I

    .line 10
    iput p4, p0, Lcom/google/common/collect/n7;->d:I

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

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/o7;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/n7;->a:Lcom/google/common/collect/o7;

    .line 3
    sget-object p1, Lcom/google/common/collect/n7;->e:[J

    iput-object p1, p0, Lcom/google/common/collect/n7;->b:[J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/common/collect/n7;->c:I

    .line 5
    iput p1, p0, Lcom/google/common/collect/n7;->d:I

    return-void
.end method

.method private u(I)I
    .locals 6

    iget-object v0, p0, Lcom/google/common/collect/n7;->b:[J

    iget v1, p0, Lcom/google/common/collect/n7;->c:I

    add-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v0, v2

    add-int/2addr v1, p1

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    long-to-int p1, v2

    return p1
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n7;->a:Lcom/google/common/collect/o7;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/o7;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/n7;->u(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n7;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/n7;->a:Lcom/google/common/collect/o7;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/n7;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/n7;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/n7;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

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

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/n7;->getEntry(I)Lcom/google/common/collect/q6$a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public forEachEntry(Ljava/util/function/ObjIntConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ObjIntConsumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/common/collect/n7;->d:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/n7;->a:Lcom/google/common/collect/o7;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/n7;->u(I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getEntry(I)Lcom/google/common/collect/q6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n7;->a:Lcom/google/common/collect/o7;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/common/collect/n7;->u(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/t6;->g(Ljava/lang/Object;I)Lcom/google/common/collect/q6$a;

    move-result-object p1

    return-object p1
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n7;->a:Lcom/google/common/collect/o7;

    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/o7;->d(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/google/common/collect/n7;->x(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/n7;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 3

    iget v0, p0, Lcom/google/common/collect/n7;->c:I

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/n7;->d:I

    iget-object v2, p0, Lcom/google/common/collect/n7;->b:[J

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
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

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/n7;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/n7;->getEntry(I)Lcom/google/common/collect/q6$a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n7;->b:[J

    iget v1, p0, Lcom/google/common/collect/n7;->c:I

    iget v2, p0, Lcom/google/common/collect/n7;->d:I

    add-int/2addr v2, v1

    aget-wide v2, v0, v2

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    .line 2
    invoke-static {v2, v3}, Lcom/google/common/primitives/f;->i(J)I

    move-result v0

    return v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n7;->a:Lcom/google/common/collect/o7;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/o7;->f(Ljava/lang/Object;Z)I

    move-result p1

    iget p2, p0, Lcom/google/common/collect/n7;->d:I

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/n7;->x(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/h8;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/n7;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method x(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/n7;->d:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/o;->y(III)V

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget v0, p0, Lcom/google/common/collect/n7;->d:I

    if-ne p2, v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/n7;->a:Lcom/google/common/collect/o7;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/o7;->c(II)Lcom/google/common/collect/o7;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/common/collect/n7;

    iget-object v2, p0, Lcom/google/common/collect/n7;->b:[J

    iget v3, p0, Lcom/google/common/collect/n7;->c:I

    add-int/2addr v3, p1

    sub-int/2addr p2, p1

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/google/common/collect/n7;-><init>(Lcom/google/common/collect/o7;[JII)V

    return-object v1
.end method

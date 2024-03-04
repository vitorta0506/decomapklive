.class final Lcom/google/common/collect/h3;
.super Lcom/google/common/collect/q7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/h3$c;,
        Lcom/google/common/collect/h3$f;,
        Lcom/google/common/collect/h3$b;,
        Lcom/google/common/collect/h3$e;,
        Lcom/google/common/collect/h3$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/q7<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final e:[I

.field private final f:[I

.field private final g:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field private final h:[I

.field private final i:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/q8$a<",
            "TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TR;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/q7;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/h3;->g:[[Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/google/common/collect/d6;->h(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/common/collect/h3;->a:Lcom/google/common/collect/ImmutableMap;

    .line 5
    invoke-static {p3}, Lcom/google/common/collect/d6;->h(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/collect/h3;->b:Lcom/google/common/collect/ImmutableMap;

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/h3;->e:[I

    .line 7
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/h3;->f:[I

    .line 8
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    new-array p2, p2, [I

    .line 9
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    new-array p3, p3, [I

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/q8$a;

    .line 12
    invoke-interface {v0}, Lcom/google/common/collect/q8$a;->a()Ljava/lang/Object;

    move-result-object v2

    .line 13
    invoke-interface {v0}, Lcom/google/common/collect/q8$a;->b()Ljava/lang/Object;

    move-result-object v4

    .line 14
    iget-object v5, p0, Lcom/google/common/collect/h3;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 15
    iget-object v6, p0, Lcom/google/common/collect/h3;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v6, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 16
    iget-object v7, p0, Lcom/google/common/collect/h3;->g:[[Ljava/lang/Object;

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    .line 17
    invoke-interface {v0}, Lcom/google/common/collect/q8$a;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v2, v4, v7, v8}, Lcom/google/common/collect/q7;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    iget-object v2, p0, Lcom/google/common/collect/h3;->g:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    invoke-interface {v0}, Lcom/google/common/collect/q8$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v6

    .line 19
    iget-object v0, p0, Lcom/google/common/collect/h3;->e:[I

    aget v2, v0, v5

    add-int/2addr v2, v3

    aput v2, v0, v5

    .line 20
    iget-object v0, p0, Lcom/google/common/collect/h3;->f:[I

    aget v2, v0, v6

    add-int/2addr v2, v3

    aput v2, v0, v6

    .line 21
    aput v5, p2, v1

    .line 22
    aput v6, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_0
    iput-object p2, p0, Lcom/google/common/collect/h3;->h:[I

    .line 24
    iput-object p3, p0, Lcom/google/common/collect/h3;->i:[I

    .line 25
    new-instance p1, Lcom/google/common/collect/h3$f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/common/collect/h3$f;-><init>(Lcom/google/common/collect/h3;Lcom/google/common/collect/h3$a;)V

    iput-object p1, p0, Lcom/google/common/collect/h3;->c:Lcom/google/common/collect/ImmutableMap;

    .line 26
    new-instance p1, Lcom/google/common/collect/h3$c;

    invoke-direct {p1, p0, p2}, Lcom/google/common/collect/h3$c;-><init>(Lcom/google/common/collect/h3;Lcom/google/common/collect/h3$a;)V

    iput-object p1, p0, Lcom/google/common/collect/h3;->d:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic g(Lcom/google/common/collect/h3;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/h3;->e:[I

    return-object p0
.end method

.method static synthetic h(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/h3;->b:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method static synthetic i(Lcom/google/common/collect/h3;)[[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/h3;->g:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j(Lcom/google/common/collect/h3;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/h3;->f:[I

    return-object p0
.end method

.method static synthetic k(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/h3;->a:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method


# virtual methods
.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/h3;->d:Lcom/google/common/collect/ImmutableMap;

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h3;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method createSerializedForm()Lcom/google/common/collect/ImmutableTable$b;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/h3;->h:[I

    iget-object v1, p0, Lcom/google/common/collect/h3;->i:[I

    invoke-static {p0, v0, v1}, Lcom/google/common/collect/ImmutableTable$b;->a(Lcom/google/common/collect/ImmutableTable;[I[I)Lcom/google/common/collect/ImmutableTable$b;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/h3;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/h3;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/h3;->g:[[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method getCell(I)Lcom/google/common/collect/q8$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/q8$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/h3;->h:[I

    aget v0, v0, p1

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/h3;->i:[I

    aget p1, v1, p1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/google/common/collect/h3;->g:[[Ljava/lang/Object;

    aget-object v0, v3, v0

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v1, v2, p1}, Lcom/google/common/collect/ImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/q8$a;

    move-result-object p1

    return-object p1
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h3;->g:[[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/h3;->h:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/common/collect/h3;->i:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/h3;->c:Lcom/google/common/collect/ImmutableMap;

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h3;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/h3;->h:[I

    array-length v0, v0

    return v0
.end method

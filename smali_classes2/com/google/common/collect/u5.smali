.class final Lcom/google/common/collect/u5;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final c:J

.field private transient d:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/ImmutableList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/u5;->a:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/u5;->b:Lcom/google/common/collect/ImmutableList;

    .line 4
    iput-wide p3, p0, Lcom/google/common/collect/u5;->c:J

    return-void
.end method

.method static d(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/common/collect/q6$a<",
            "+TE;>;>;)",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/common/collect/q6$a;

    .line 1
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/common/collect/q6$a;

    .line 2
    array-length v1, p0

    invoke-static {v1}, Lcom/google/common/collect/d6;->n(I)Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 3
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 4
    aget-object v4, p0, v0

    .line 5
    invoke-interface {v4}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 6
    invoke-interface {v4}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    instance-of v4, v4, Lcom/google/common/collect/t6$e;

    if-nez v4, :cond_0

    .line 9
    invoke-static {v6, v5}, Lcom/google/common/collect/t6;->g(Ljava/lang/Object;I)Lcom/google/common/collect/q6$a;

    move-result-object v4

    aput-object v4, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lcom/google/common/collect/u5;

    .line 11
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/common/collect/u5;-><init>(Ljava/util/Map;Lcom/google/common/collect/ImmutableList;J)V

    return-object v0
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/u5;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/u5;->d:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$c;

    iget-object v1, p0, Lcom/google/common/collect/u5;->b:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableMultiset$c;-><init>(Ljava/util/List;Lcom/google/common/collect/q6;)V

    iput-object v0, p0, Lcom/google/common/collect/u5;->d:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/u5;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/google/common/collect/u5;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/q6$a;

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/u5;->c:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->i(J)I

    move-result v0

    return v0
.end method

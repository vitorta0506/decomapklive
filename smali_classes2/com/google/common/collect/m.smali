.class abstract Lcom/google/common/collect/m;
.super Lcom/google/common/collect/p;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/m$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/p<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L


# instance fields
.field private transient backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lcom/google/common/collect/f3;",
            ">;"
        }
    .end annotation
.end field

.field private transient size:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lcom/google/common/collect/f3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/p;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$010(Lcom/google/common/collect/m;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/common/collect/m;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/m;->size:J

    return-wide v0
.end method

.method static synthetic access$022(Lcom/google/common/collect/m;J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/m;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/m;->size:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/m;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/ObjIntConsumer;Ljava/lang/Object;Lcom/google/common/collect/f3;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/m;->lambda$forEachEntry$0(Ljava/util/function/ObjIntConsumer;Ljava/lang/Object;Lcom/google/common/collect/f3;)V

    return-void
.end method

.method private static getAndSet(Lcom/google/common/collect/f3;I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f3;->d(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$forEachEntry$0(Ljava/util/function/ObjIntConsumer;Ljava/lang/Object;Lcom/google/common/collect/f3;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/common/collect/f3;->c()I

    move-result p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method private readObjectNoData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "occurrences cannot be negative: %s"

    .line 2
    invoke-static {v2, v3, p2}, Lcom/google/common/base/o;->h(ZLjava/lang/String;I)V

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/f3;

    if-nez v2, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    new-instance v2, Lcom/google/common/collect/f3;

    invoke-direct {v2, p2}, Lcom/google/common/collect/f3;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/f3;->c()I

    move-result p1

    int-to-long v3, p1

    int-to-long v5, p2

    add-long/2addr v3, v5

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v1, "too many occurrences: %s"

    .line 6
    invoke-static {v0, v1, v3, v4}, Lcom/google/common/base/o;->j(ZLjava/lang/String;J)V

    .line 7
    invoke-virtual {v2, p2}, Lcom/google/common/collect/f3;->a(I)V

    move v1, p1

    .line 8
    :goto_2
    iget-wide v2, p0, Lcom/google/common/collect/m;->size:J

    int-to-long p1, p2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/common/collect/m;->size:J

    return v1
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/f3;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/common/collect/f3;->e(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/common/collect/m;->size:J

    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/d6;->t(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/f3;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/f3;->c()I

    move-result p1

    :goto_0
    return p1
.end method

.method distinctElements()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/collect/m$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/m$a;-><init>(Lcom/google/common/collect/m;Ljava/util/Iterator;)V

    return-object v1
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/collect/m$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/m$b;-><init>(Lcom/google/common/collect/m;Ljava/util/Iterator;)V

    return-object v1
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

    invoke-super {p0}, Lcom/google/common/collect/p;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public forEachEntry(Ljava/util/function/ObjIntConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ObjIntConsumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    new-instance v1, Lcom/google/common/collect/l;

    invoke-direct {v1, p1}, Lcom/google/common/collect/l;-><init>(Ljava/util/function/ObjIntConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/m$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m$c;-><init>(Lcom/google/common/collect/m;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 3

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-lez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "occurrences cannot be negative: %s"

    .line 2
    invoke-static {v1, v2, p2}, Lcom/google/common/base/o;->h(ZLjava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/f3;

    if-nez v1, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/f3;->c()I

    move-result v0

    if-le v0, p2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iget-object p2, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v0

    :goto_1
    neg-int p1, p2

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/common/collect/f3;->a(I)V

    .line 7
    iget-wide v1, p0, Lcom/google/common/collect/m;->size:J

    int-to-long p1, p2

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lcom/google/common/collect/m;->size:J

    return v0
.end method

.method setBackingMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lcom/google/common/collect/f3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    return-void
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 1
    invoke-static {p2, v0}, Lcom/google/common/collect/p2;->b(ILjava/lang/String;)I

    if-nez p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/f3;

    .line 3
    invoke-static {p1, p2}, Lcom/google/common/collect/m;->getAndSet(Lcom/google/common/collect/f3;I)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/f3;

    .line 5
    invoke-static {v0, p2}, Lcom/google/common/collect/m;->getAndSet(Lcom/google/common/collect/f3;I)I

    move-result v1

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/m;->backingMap:Ljava/util/Map;

    new-instance v2, Lcom/google/common/collect/f3;

    invoke-direct {v2, p2}, Lcom/google/common/collect/f3;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move p1, v1

    .line 7
    :goto_0
    iget-wide v0, p0, Lcom/google/common/collect/m;->size:J

    sub-int/2addr p2, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/m;->size:J

    return p1
.end method

.method public size()I
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/m;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->i(J)I

    move-result v0

    return v0
.end method

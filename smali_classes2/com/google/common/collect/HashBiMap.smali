.class public final Lcom/google/common/collect/HashBiMap;
.super Lcom/google/common/collect/d6$i;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/e0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$d;,
        Lcom/google/common/collect/HashBiMap$c;,
        Lcom/google/common/collect/HashBiMap$f;,
        Lcom/google/common/collect/HashBiMap$e;,
        Lcom/google/common/collect/HashBiMap$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d6$i<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e0<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final LOAD_FACTOR:D = 1.0

.field private static final serialVersionUID:J


# instance fields
.field private transient firstInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient hashTableKToV:[Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient hashTableVToK:[Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lcom/google/common/collect/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private transient lastInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient mask:I

.field private transient modCount:I

.field private transient size:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/d6$i;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/HashBiMap;)Lcom/google/common/collect/HashBiMap$b;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/common/collect/HashBiMap;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$b;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$b;Lcom/google/common/collect/HashBiMap$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$b;Lcom/google/common/collect/HashBiMap$b;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/common/collect/HashBiMap;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return p0
.end method

.method static synthetic access$800(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private createTable(I)[Lcom/google/common/collect/HashBiMap$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-array p1, p1, [Lcom/google/common/collect/HashBiMap$b;

    return-object p1
.end method

.method private delete(Lcom/google/common/collect/HashBiMap$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/common/collect/HashBiMap$b;->c:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$b;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ne v1, p1, :cond_5

    if-nez v3, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$b;

    iget-object v3, p1, Lcom/google/common/collect/HashBiMap$b;->e:Lcom/google/common/collect/HashBiMap$b;

    aput-object v3, v1, v0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->e:Lcom/google/common/collect/HashBiMap$b;

    iput-object v0, v3, Lcom/google/common/collect/HashBiMap$b;->e:Lcom/google/common/collect/HashBiMap$b;

    .line 5
    :goto_1
    iget v0, p1, Lcom/google/common/collect/HashBiMap$b;->d:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int v3, v0, v1

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$b;

    aget-object v0, v0, v3

    :goto_2
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    if-ne v2, p1, :cond_4

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$b;

    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$b;->f:Lcom/google/common/collect/HashBiMap$b;

    aput-object v1, v0, v3

    goto :goto_3

    .line 8
    :cond_1
    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$b;->f:Lcom/google/common/collect/HashBiMap$b;

    iput-object v1, v0, Lcom/google/common/collect/HashBiMap$b;->f:Lcom/google/common/collect/HashBiMap$b;

    .line 9
    :goto_3
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    if-nez v0, :cond_2

    .line 10
    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_4

    .line 11
    :cond_2
    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    iput-object v1, v0, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    .line 12
    :goto_4
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    if-nez p1, :cond_3

    .line 13
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_5

    .line 14
    :cond_3
    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    .line 15
    :goto_5
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 16
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return-void

    .line 17
    :cond_4
    iget-object v0, v2, Lcom/google/common/collect/HashBiMap$b;->f:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_2

    .line 18
    :cond_5
    iget-object v3, v1, Lcom/google/common/collect/HashBiMap$b;->e:Lcom/google/common/collect/HashBiMap$b;

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_0
.end method

.method private init(I)V
    .locals 2

    const-string v0, "expectedSize"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/collect/p2;->b(ILjava/lang/String;)I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/common/collect/e4;->a(ID)I

    move-result p1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$b;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$b;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    .line 6
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 p1, p1, -0x1

    .line 8
    iput p1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    .line 9
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return-void
.end method

.method private insert(Lcom/google/common/collect/HashBiMap$b;Lcom/google/common/collect/HashBiMap$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/common/collect/HashBiMap$b;->c:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$b;

    aget-object v3, v2, v0

    iput-object v3, p1, Lcom/google/common/collect/HashBiMap$b;->e:Lcom/google/common/collect/HashBiMap$b;

    .line 3
    aput-object p1, v2, v0

    .line 4
    iget v0, p1, Lcom/google/common/collect/HashBiMap$b;->d:I

    and-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$b;

    aget-object v2, v1, v0

    iput-object v2, p1, Lcom/google/common/collect/HashBiMap$b;->f:Lcom/google/common/collect/HashBiMap$b;

    .line 6
    aput-object p1, v1, v0

    if-nez p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    iput-object p2, p1, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    if-nez p2, :cond_0

    .line 9
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p2, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_2

    .line 12
    :cond_1
    iget-object v0, p2, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    if-nez v0, :cond_2

    .line 13
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_1

    .line 14
    :cond_2
    iput-object p1, v0, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    .line 15
    :goto_1
    iget-object p2, p2, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    iput-object p2, p1, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    if-nez p2, :cond_3

    .line 16
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_2

    .line 17
    :cond_3
    iput-object p1, p2, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    .line 18
    :goto_2
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 19
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return-void
.end method

.method private put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-static {p2}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget v3, v2, Lcom/google/common/collect/HashBiMap$b;->d:I

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lcom/google/common/collect/h4;->b:Ljava/lang/Object;

    .line 6
    invoke-static {p2, v3}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p2

    .line 7
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    .line 8
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$b;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "value already present: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    :goto_0
    new-instance p3, Lcom/google/common/collect/HashBiMap$b;

    invoke-direct {p3, p1, v0, p2, v1}, Lcom/google/common/collect/HashBiMap$b;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    const/4 p1, 0x0

    if-eqz v2, :cond_3

    .line 11
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$b;)V

    .line 12
    invoke-direct {p0, p3, v2}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$b;Lcom/google/common/collect/HashBiMap$b;)V

    .line 13
    iput-object p1, v2, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    .line 14
    iput-object p1, v2, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    .line 15
    iget-object p1, v2, Lcom/google/common/collect/h4;->b:Ljava/lang/Object;

    return-object p1

    .line 16
    :cond_3
    invoke-direct {p0, p3, p1}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$b;Lcom/google/common/collect/HashBiMap$b;)V

    .line 17
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->rehashIfNecessary()V

    return-object p1
.end method

.method private putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object v2

    .line 4
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 5
    iget v4, v2, Lcom/google/common/collect/HashBiMap$b;->c:I

    if-ne v1, v4, :cond_0

    iget-object v4, v2, Lcom/google/common/collect/h4;->a:Ljava/lang/Object;

    .line 6
    invoke-static {p2, v4}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p2

    :cond_0
    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "key already present: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 8
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$b;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 9
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$b;)V

    .line 10
    :cond_4
    new-instance p3, Lcom/google/common/collect/HashBiMap$b;

    invoke-direct {p3, p2, v1, p1, v0}, Lcom/google/common/collect/HashBiMap$b;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 11
    invoke-direct {p0, p3, v3}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$b;Lcom/google/common/collect/HashBiMap$b;)V

    const/4 p1, 0x0

    if-eqz v3, :cond_5

    .line 12
    iput-object p1, v3, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    .line 13
    iput-object p1, v3, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    :cond_5
    if-eqz v2, :cond_6

    .line 14
    iput-object p1, v2, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    .line 15
    iput-object p1, v2, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    .line 16
    :cond_6
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->rehashIfNecessary()V

    .line 17
    invoke-static {v2}, Lcom/google/common/collect/d6;->k(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/t7;->h(Ljava/io/ObjectInputStream;)I

    move-result v0

    const/16 v1, 0x10

    .line 3
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 4
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/t7;->c(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private rehashIfNecessary()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$b;

    .line 2
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    array-length v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/collect/e4;->b(IID)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$b;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$b;

    add-int/lit8 v0, v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    :goto_0
    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0, v0, v0}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$b;Lcom/google/common/collect/HashBiMap$b;)V

    .line 10
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    :cond_1
    return-void
.end method

.method private seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$b;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lcom/google/common/collect/HashBiMap$b;->c:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/common/collect/h4;->a:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$b;->e:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$b;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lcom/google/common/collect/HashBiMap$b;->d:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/common/collect/h4;->b:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$b;->f:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-static {p0, p1}, Lcom/google/common/collect/t7;->i(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$b;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    .line 5
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    .line 6
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/HashBiMap$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$a;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/d6$i;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    :goto_0
    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/google/common/collect/h4;->a:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/common/collect/h4;->b:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/d6;->A(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lcom/google/common/collect/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e0<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/e0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/HashBiMap$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$c;-><init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$a;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/e0;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/HashBiMap$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$f;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$b;)V

    .line 3
    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    .line 4
    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    .line 5
    iget-object p1, p1, Lcom/google/common/collect/h4;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$b;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->clear()V

    :goto_0
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcom/google/common/collect/h4;->a:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/common/collect/h4;->b:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->inverse()Lcom/google/common/collect/e0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

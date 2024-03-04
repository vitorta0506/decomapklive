.class Lcom/google/common/collect/l7;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/l7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final f:[Lcom/google/common/collect/t6$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/t6$e<",
            "*>;"
        }
    .end annotation
.end field

.field static final g:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient a:[Lcom/google/common/collect/t6$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/t6$e<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient b:[Lcom/google/common/collect/t6$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/t6$e<",
            "*>;"
        }
    .end annotation
.end field

.field private final transient c:I

.field private final transient d:I

.field private transient e:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/collect/t6$e;

    .line 1
    sput-object v0, Lcom/google/common/collect/l7;->f:[Lcom/google/common/collect/t6$e;

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/l7;->d(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/l7;->g:Lcom/google/common/collect/ImmutableMultiset;

    return-void
.end method

.method private constructor <init>([Lcom/google/common/collect/t6$e;[Lcom/google/common/collect/t6$e;IILcom/google/common/collect/ImmutableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/t6$e<",
            "TE;>;[",
            "Lcom/google/common/collect/t6$e<",
            "*>;II",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/l7;->a:[Lcom/google/common/collect/t6$e;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/l7;->b:[Lcom/google/common/collect/t6$e;

    .line 4
    iput p3, p0, Lcom/google/common/collect/l7;->c:I

    .line 5
    iput p4, p0, Lcom/google/common/collect/l7;->d:I

    .line 6
    iput-object p5, p0, Lcom/google/common/collect/l7;->e:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method static d(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 14
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

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2
    new-array v2, v0, [Lcom/google/common/collect/t6$e;

    if-nez v0, :cond_0

    .line 3
    new-instance p0, Lcom/google/common/collect/l7;

    sget-object v3, Lcom/google/common/collect/l7;->f:[Lcom/google/common/collect/t6$e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/l7;-><init>([Lcom/google/common/collect/t6$e;[Lcom/google/common/collect/t6$e;IILcom/google/common/collect/ImmutableSet;)V

    return-object p0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 4
    invoke-static {v0, v3, v4}, Lcom/google/common/collect/e4;->a(ID)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 5
    new-array v3, v0, [Lcom/google/common/collect/t6$e;

    const-wide/16 v4, 0x0

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/collect/q6$a;

    .line 7
    invoke-interface {v8}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 8
    invoke-interface {v8}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result v10

    .line 9
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 10
    invoke-static {v11}, Lcom/google/common/collect/e4;->c(I)I

    move-result v12

    and-int/2addr v12, v1

    .line 11
    aget-object v13, v3, v12

    if-nez v13, :cond_3

    .line 12
    instance-of v13, v8, Lcom/google/common/collect/t6$e;

    if-eqz v13, :cond_1

    instance-of v13, v8, Lcom/google/common/collect/l7$a;

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_2

    .line 13
    check-cast v8, Lcom/google/common/collect/t6$e;

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/google/common/collect/t6$e;

    invoke-direct {v8, v9, v10}, Lcom/google/common/collect/t6$e;-><init>(Ljava/lang/Object;I)V

    goto :goto_2

    .line 14
    :cond_3
    new-instance v8, Lcom/google/common/collect/l7$a;

    invoke-direct {v8, v9, v10, v13}, Lcom/google/common/collect/l7$a;-><init>(Ljava/lang/Object;ILcom/google/common/collect/t6$e;)V

    :goto_2
    xor-int v9, v11, v10

    add-int/2addr v6, v9

    add-int/lit8 v9, v7, 0x1

    .line 15
    aput-object v8, v2, v7

    .line 16
    aput-object v8, v3, v12

    int-to-long v7, v10

    add-long/2addr v4, v7

    move v7, v9

    goto :goto_0

    .line 17
    :cond_4
    invoke-static {v3}, Lcom/google/common/collect/l7;->f([Lcom/google/common/collect/t6$e;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 18
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/u5;->d(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    goto :goto_3

    .line 19
    :cond_5
    new-instance p0, Lcom/google/common/collect/l7;

    .line 20
    invoke-static {v4, v5}, Lcom/google/common/primitives/f;->i(J)I

    move-result v4

    const/4 v0, 0x0

    move-object v1, p0

    move v5, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/l7;-><init>([Lcom/google/common/collect/t6$e;[Lcom/google/common/collect/t6$e;IILcom/google/common/collect/ImmutableSet;)V

    :goto_3
    return-object p0
.end method

.method private static f([Lcom/google/common/collect/t6$e;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/t6$e<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2
    aget-object v2, p0, v1

    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x9

    if-le v3, v5, :cond_0

    return v4

    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/t6$e;->b()Lcom/google/common/collect/t6$e;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l7;->b:[Lcom/google/common/collect/t6$e;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v2

    .line 4
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    .line 5
    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/t6$e;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/common/collect/t6$e;->getCount()I

    move-result p1

    return p1

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/t6$e;->b()Lcom/google/common/collect/t6$e;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return v1
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
    iget-object v0, p0, Lcom/google/common/collect/l7;->e:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$c;

    iget-object v1, p0, Lcom/google/common/collect/l7;->a:[Lcom/google/common/collect/t6$e;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableMultiset$c;-><init>(Ljava/util/List;Lcom/google/common/collect/q6;)V

    iput-object v0, p0, Lcom/google/common/collect/l7;->e:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l7;->elementSet()Lcom/google/common/collect/ImmutableSet;

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

    iget-object v0, p0, Lcom/google/common/collect/l7;->a:[Lcom/google/common/collect/t6$e;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/l7;->d:I

    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/l7;->c:I

    return v0
.end method

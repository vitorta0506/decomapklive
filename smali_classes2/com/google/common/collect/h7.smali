.class Lcom/google/common/collect/h7;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/h7$c;,
        Lcom/google/common/collect/h7$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final g:Lcom/google/common/collect/h7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/h7<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient a:[Lcom/google/common/collect/m4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient b:[Lcom/google/common/collect/m4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final transient c:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient d:I

.field private final transient e:I

.field private transient f:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lcom/google/common/collect/h7;

    sget-object v3, Lcom/google/common/collect/ImmutableMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/h7;-><init>([Lcom/google/common/collect/m4;[Lcom/google/common/collect/m4;[Ljava/util/Map$Entry;II)V

    sput-object v6, Lcom/google/common/collect/h7;->g:Lcom/google/common/collect/h7;

    return-void
.end method

.method private constructor <init>([Lcom/google/common/collect/m4;[Lcom/google/common/collect/m4;[Ljava/util/Map$Entry;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;[",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/h7;->a:[Lcom/google/common/collect/m4;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/h7;->b:[Lcom/google/common/collect/m4;

    .line 4
    iput-object p3, p0, Lcom/google/common/collect/h7;->c:[Ljava/util/Map$Entry;

    .line 5
    iput p4, p0, Lcom/google/common/collect/h7;->d:I

    .line 6
    iput p5, p0, Lcom/google/common/collect/h7;->e:I

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/h7;)[Lcom/google/common/collect/m4;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/h7;->b:[Lcom/google/common/collect/m4;

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/h7;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/h7;->d:I

    return p0
.end method

.method static synthetic c(Lcom/google/common/collect/h7;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/h7;->e:I

    return p0
.end method

.method private static d(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/m4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lcom/google/common/collect/m4<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/collect/k7$a;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/google/common/collect/h4;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "value"

    invoke-static {v1, v2, p1, p2}, Lcom/google/common/collect/ImmutableMap;->checkNoConflict(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/google/common/collect/m4;->e()Lcom/google/common/collect/m4;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lcom/google/common/collect/k7$a;

    invoke-direct {p0}, Lcom/google/common/collect/k7$a;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method static varargs e([Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0, p0}, Lcom/google/common/collect/h7;->f(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object p0

    return-object p0
.end method

.method static f(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    array-length v2, v1

    invoke-static {v0, v2}, Lcom/google/common/base/o;->w(II)I

    const-wide v2, 0x3ff3333333333333L    # 1.2

    .line 2
    invoke-static {v0, v2, v3}, Lcom/google/common/collect/e4;->a(ID)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    .line 3
    invoke-static {v2}, Lcom/google/common/collect/m4;->a(I)[Lcom/google/common/collect/m4;

    move-result-object v4

    .line 4
    invoke-static {v2}, Lcom/google/common/collect/m4;->a(I)[Lcom/google/common/collect/m4;

    move-result-object v5

    .line 5
    array-length v2, v1

    if-ne v0, v2, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/common/collect/m4;->a(I)[Lcom/google/common/collect/m4;

    move-result-object v2

    move-object v6, v2

    :goto_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 6
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 9
    invoke-static {v9, v10}, Lcom/google/common/collect/p2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 11
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 12
    invoke-static {v11}, Lcom/google/common/collect/e4;->c(I)I

    move-result v13

    and-int/2addr v13, v7

    .line 13
    invoke-static {v12}, Lcom/google/common/collect/e4;->c(I)I

    move-result v14

    and-int/2addr v14, v7

    .line 14
    aget-object v15, v4, v13

    .line 15
    aget-object v0, v5, v14

    const/4 v1, 0x1

    .line 16
    :try_start_0
    invoke-static {v9, v10, v15, v1}, Lcom/google/common/collect/k7;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/m4;Z)Lcom/google/common/collect/m4;

    .line 17
    invoke-static {v10, v3, v0}, Lcom/google/common/collect/h7;->d(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/m4;)V
    :try_end_0
    .catch Lcom/google/common/collect/k7$a; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    if-nez v15, :cond_1

    .line 18
    invoke-static {v3, v9, v10}, Lcom/google/common/collect/k7;->g(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m4;

    move-result-object v0

    goto :goto_2

    .line 19
    :cond_1
    new-instance v1, Lcom/google/common/collect/m4$a;

    invoke-direct {v1, v9, v10, v15, v0}, Lcom/google/common/collect/m4$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/m4;Lcom/google/common/collect/m4;)V

    move-object v0, v1

    .line 20
    :goto_2
    aput-object v0, v4, v13

    .line 21
    aput-object v0, v5, v14

    .line 22
    aput-object v0, v6, v2

    xor-int v0, v11, v12

    add-int/2addr v8, v0

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1

    .line 23
    :catch_0
    invoke-static/range {p0 .. p1}, Lcom/google/common/collect/r5;->b(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 24
    :cond_2
    new-instance v0, Lcom/google/common/collect/h7;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/h7;-><init>([Lcom/google/common/collect/m4;[Lcom/google/common/collect/m4;[Ljava/util/Map$Entry;II)V

    return-object v0
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/n4$b;

    iget-object v1, p0, Lcom/google/common/collect/h7;->c:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/n4$b;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V

    :goto_0
    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/p4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/p4;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 5
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
    iget-object v0, p0, Lcom/google/common/collect/h7;->c:[Ljava/util/Map$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h7;->a:[Lcom/google/common/collect/m4;

    iget v1, p0, Lcom/google/common/collect/h7;->d:I

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/k7;->e(Ljava/lang/Object;[Lcom/google/common/collect/m4;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/h7;->e:I

    return v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/h7;->f:Lcom/google/common/collect/ImmutableBiMap;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/google/common/collect/h7$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/h7$b;-><init>(Lcom/google/common/collect/h7;Lcom/google/common/collect/h7$a;)V

    iput-object v0, p0, Lcom/google/common/collect/h7;->f:Lcom/google/common/collect/ImmutableBiMap;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/e0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h7;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method isHashCodeFast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/h7;->c:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method

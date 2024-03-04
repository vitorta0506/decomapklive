.class final Lcom/google/common/collect/k7;
.super Lcom/google/common/collect/ImmutableMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/k7$c;,
        Lcom/google/common/collect/k7$b;,
        Lcom/google/common/collect/k7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final d:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final transient a:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
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

.field private final transient c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/collect/k7;

    sget-object v1, Lcom/google/common/collect/ImmutableMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/k7;-><init>([Ljava/util/Map$Entry;[Lcom/google/common/collect/m4;I)V

    sput-object v0, Lcom/google/common/collect/k7;->d:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>([Ljava/util/Map$Entry;[Lcom/google/common/collect/m4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;[",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/k7;->a:[Ljava/util/Map$Entry;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/k7;->b:[Lcom/google/common/collect/m4;

    .line 4
    iput p3, p0, Lcom/google/common/collect/k7;->c:I

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/m4;Z)Lcom/google/common/collect/m4;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;Z)",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/collect/k7$a;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Lcom/google/common/collect/h4;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key"

    invoke-static {v0, v3, p2, v2}, Lcom/google/common/collect/ImmutableMap;->checkNoConflict(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    return-object p2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/google/common/collect/m4;->b()Lcom/google/common/collect/m4;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_2
    new-instance p0, Lcom/google/common/collect/k7$a;

    invoke-direct {p0}, Lcom/google/common/collect/k7$a;-><init>()V

    throw p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static varargs b([Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/google/common/collect/k7;->c(I[Ljava/util/Map$Entry;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method static c(I[Ljava/util/Map$Entry;Z)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;Z)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/google/common/base/o;->w(II)I

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/google/common/collect/k7;->d:Lcom/google/common/collect/ImmutableMap;

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/k7;->d(I[Ljava/util/Map$Entry;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/common/collect/k7$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/t5;->b(I[Ljava/util/Map$Entry;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static d(I[Ljava/util/Map$Entry;Z)Lcom/google/common/collect/ImmutableMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;Z)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/collect/k7$a;
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    array-length v2, v1

    if-ne v0, v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/common/collect/m4;->a(I)[Lcom/google/common/collect/m4;

    move-result-object v2

    :goto_0
    const-wide v3, 0x3ff3333333333333L    # 1.2

    .line 2
    invoke-static {v0, v3, v4}, Lcom/google/common/collect/e4;->a(ID)I

    move-result v5

    .line 3
    invoke-static {v5}, Lcom/google/common/collect/m4;->a(I)[Lcom/google/common/collect/m4;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    add-int/lit8 v10, v0, -0x1

    :goto_1
    if-ltz v10, :cond_5

    .line 4
    aget-object v11, v1, v10

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v11, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    .line 6
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 7
    invoke-static {v12, v13}, Lcom/google/common/collect/p2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/common/collect/e4;->c(I)I

    move-result v14

    and-int/2addr v14, v7

    .line 9
    aget-object v15, v6, v14

    move/from16 v3, p2

    .line 10
    invoke-static {v12, v13, v15, v3}, Lcom/google/common/collect/k7;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/m4;Z)Lcom/google/common/collect/m4;

    move-result-object v4

    if-nez v4, :cond_2

    if-nez v15, :cond_1

    .line 11
    invoke-static {v11, v12, v13}, Lcom/google/common/collect/k7;->g(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m4;

    move-result-object v4

    goto :goto_2

    .line 12
    :cond_1
    new-instance v4, Lcom/google/common/collect/m4$b;

    invoke-direct {v4, v12, v13, v15}, Lcom/google/common/collect/m4$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/m4;)V

    .line 13
    :goto_2
    aput-object v4, v6, v14

    goto :goto_3

    :cond_2
    if-nez v8, :cond_3

    .line 14
    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    .line 15
    :cond_3
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v4, v11}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    if-ne v2, v1, :cond_4

    .line 16
    invoke-virtual {v2}, [Ljava/util/Map$Entry;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Map$Entry;

    .line 17
    :cond_4
    :goto_3
    aput-object v4, v2, v10

    add-int/lit8 v10, v10, -0x1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    goto :goto_1

    :cond_5
    if-eqz v8, :cond_6

    sub-int v1, v0, v9

    .line 18
    invoke-static {v2, v0, v1, v8}, Lcom/google/common/collect/k7;->h([Ljava/util/Map$Entry;IILjava/util/IdentityHashMap;)[Ljava/util/Map$Entry;

    move-result-object v2

    .line 19
    array-length v0, v2

    const-wide v3, 0x3ff3333333333333L    # 1.2

    invoke-static {v0, v3, v4}, Lcom/google/common/collect/e4;->a(ID)I

    move-result v0

    if-eq v0, v5, :cond_6

    .line 20
    array-length v0, v2

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/google/common/collect/k7;->d(I[Ljava/util/Map$Entry;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 21
    :cond_6
    new-instance v0, Lcom/google/common/collect/k7;

    invoke-direct {v0, v2, v6, v7}, Lcom/google/common/collect/k7;-><init>([Ljava/util/Map$Entry;[Lcom/google/common/collect/m4;I)V

    return-object v0
.end method

.method static e(Ljava/lang/Object;[Lcom/google/common/collect/m4;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Lcom/google/common/collect/m4<",
            "*TV;>;I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/e4;->c(I)I

    move-result v1

    and-int/2addr p2, v1

    .line 2
    aget-object p1, p1, p2

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/h4;->getKey()Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/common/collect/h4;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/m4;->b()Lcom/google/common/collect/m4;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method static f(Ljava/util/Map$Entry;)Lcom/google/common/collect/m4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/common/collect/k7;->g(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m4;

    move-result-object p0

    return-object p0
.end method

.method static g(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;TK;TV;)",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/m4;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/m4;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/m4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/google/common/collect/m4;

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/common/collect/m4;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/m4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method static h([Ljava/util/Map$Entry;IILjava/util/IdentityHashMap;)[Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;II",
            "Ljava/util/IdentityHashMap<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;)[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/m4;->a(I)[Lcom/google/common/collect/m4;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 2
    aget-object v2, p0, v0

    .line 3
    invoke-virtual {p3, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 6
    aput-object v2, p2, v1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
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

    new-instance v0, Lcom/google/common/collect/n4$b;

    iget-object v1, p0, Lcom/google/common/collect/k7;->a:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/n4$b;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V

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

    new-instance v0, Lcom/google/common/collect/k7$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k7$b;-><init>(Lcom/google/common/collect/k7;)V

    return-object v0
.end method

.method createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k7$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k7$c;-><init>(Lcom/google/common/collect/k7;)V

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
    iget-object v0, p0, Lcom/google/common/collect/k7;->a:[Ljava/util/Map$Entry;

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

    iget-object v0, p0, Lcom/google/common/collect/k7;->b:[Lcom/google/common/collect/m4;

    iget v1, p0, Lcom/google/common/collect/k7;->c:I

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/k7;->e(Ljava/lang/Object;[Lcom/google/common/collect/m4;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/k7;->a:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method

.class final Lcom/google/common/collect/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Lcom/google/common/collect/Range<",
            "Ljava/lang/Comparable<",
            "*>;>;*",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/common/collect/z1;->a:Lcom/google/common/collect/z1;

    sget-object v1, Lcom/google/common/collect/m2;->a:Lcom/google/common/collect/m2;

    sget-object v2, Lcom/google/common/collect/k0;->a:Lcom/google/common/collect/k0;

    sget-object v3, Lcom/google/common/collect/e1;->a:Lcom/google/common/collect/e1;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 2
    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/o2;->a:Ljava/util/stream/Collector;

    .line 3
    sget-object v0, Lcom/google/common/collect/d2;->a:Lcom/google/common/collect/d2;

    sget-object v1, Lcom/google/common/collect/h0;->a:Lcom/google/common/collect/h0;

    sget-object v2, Lcom/google/common/collect/p0;->a:Lcom/google/common/collect/p0;

    sget-object v3, Lcom/google/common/collect/j1;->a:Lcom/google/common/collect/j1;

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 4
    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/o2;->b:Ljava/util/stream/Collector;

    .line 5
    sget-object v0, Lcom/google/common/collect/c2;->a:Lcom/google/common/collect/c2;

    sget-object v1, Lcom/google/common/collect/n2;->a:Lcom/google/common/collect/n2;

    sget-object v2, Lcom/google/common/collect/o0;->a:Lcom/google/common/collect/o0;

    sget-object v3, Lcom/google/common/collect/i1;->a:Lcom/google/common/collect/i1;

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/o2;->c:Ljava/util/stream/Collector;

    return-void
.end method

.method private static synthetic A(Lcom/google/common/collect/i6;Lcom/google/common/collect/i6;)Lcom/google/common/collect/i6;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/common/collect/i6;->putAll(Lcom/google/common/collect/i6;)Z

    return-object p0
.end method

.method private static synthetic B(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$a;

    return-void
.end method

.method private static synthetic C(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$a;->j(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    return-void
.end method

.method private static synthetic D(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    return-void
.end method

.method private static synthetic E(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/q6;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/google/common/collect/q6;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method private static synthetic F(Lcom/google/common/collect/q6;Lcom/google/common/collect/q6;)Lcom/google/common/collect/q6;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private static synthetic G(Lcom/google/common/collect/q6;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/q6;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic H(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$c;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Range;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableRangeMap$c;->c(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$c;

    return-void
.end method

.method private static synthetic I(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->j(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    return-void
.end method

.method private static synthetic J(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$c;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$c;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static synthetic K(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$c;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$c;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$c;

    return-void
.end method

.method private static synthetic L(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static synthetic M(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$b;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet$b;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static N(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/common/collect/g2;->a:Lcom/google/common/collect/g2;

    new-instance v1, Lcom/google/common/collect/g0;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/g0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/common/collect/j0;->a:Lcom/google/common/collect/j0;

    sget-object p1, Lcom/google/common/collect/d1;->a:Lcom/google/common/collect/d1;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static O()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/o2;->a:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static P(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keyFunction"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/common/collect/a2;->a:Lcom/google/common/collect/a2;

    new-instance v1, Lcom/google/common/collect/r0;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/r0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/common/collect/l0;->a:Lcom/google/common/collect/l0;

    sget-object p1, Lcom/google/common/collect/f1;->a:Lcom/google/common/collect/f1;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static Q(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/common/collect/h2;->a:Lcom/google/common/collect/h2;

    new-instance v1, Lcom/google/common/collect/c1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/c1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/common/collect/m0;->a:Lcom/google/common/collect/m0;

    sget-object p1, Lcom/google/common/collect/g1;->a:Lcom/google/common/collect/g1;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static R(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/google/common/collect/i2;->a:Lcom/google/common/collect/i2;

    .line 5
    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    sget-object p1, Lcom/google/common/collect/r1;->a:Lcom/google/common/collect/r1;

    .line 6
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static S(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/common/collect/f2;->a:Lcom/google/common/collect/f2;

    new-instance v1, Lcom/google/common/collect/l2;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/l2;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    sget-object p0, Lcom/google/common/collect/v0;->a:Lcom/google/common/collect/v0;

    sget-object p1, Lcom/google/common/collect/p1;->a:Lcom/google/common/collect/p1;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static T(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;",
            "Lcom/google/common/collect/Range<",
            "TK;>;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/common/collect/b2;->a:Lcom/google/common/collect/b2;

    new-instance v1, Lcom/google/common/collect/n1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/n1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/common/collect/n0;->a:Lcom/google/common/collect/n0;

    sget-object p1, Lcom/google/common/collect/h1;->a:Lcom/google/common/collect/h1;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static U()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/stream/Collector<",
            "Lcom/google/common/collect/Range<",
            "TE;>;*",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TE;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/o2;->c:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static V()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/o2;->b:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static W(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keyFunction"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/common/collect/e2;->a:Lcom/google/common/collect/e2;

    new-instance v1, Lcom/google/common/collect/y1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/y1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/common/collect/q0;->a:Lcom/google/common/collect/q0;

    sget-object p1, Lcom/google/common/collect/k1;->a:Lcom/google/common/collect/k1;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static X(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/google/common/collect/v1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v1;-><init>(Ljava/util/Comparator;)V

    new-instance p0, Lcom/google/common/collect/j2;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/j2;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p1, Lcom/google/common/collect/s0;->a:Lcom/google/common/collect/s0;

    sget-object p2, Lcom/google/common/collect/l1;->a:Lcom/google/common/collect/l1;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    sget-object v2, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p0, p1, p2, v1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static Y(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/common/collect/x1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/x1;-><init>(Ljava/util/Comparator;)V

    .line 6
    invoke-static {p1, p2, p3, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    sget-object p1, Lcom/google/common/collect/s1;->a:Lcom/google/common/collect/s1;

    .line 7
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static Z(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/w1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/w1;-><init>(Ljava/util/Comparator;)V

    sget-object p0, Lcom/google/common/collect/i0;->a:Lcom/google/common/collect/i0;

    sget-object v1, Lcom/google/common/collect/t0;->a:Lcom/google/common/collect/t0;

    sget-object v2, Lcom/google/common/collect/m1;->a:Lcom/google/common/collect/m1;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p0, v1, v2, v3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/google/common/collect/i6;Lcom/google/common/collect/i6;)Lcom/google/common/collect/i6;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/o2;->A(Lcom/google/common/collect/i6;Lcom/google/common/collect/i6;)Lcom/google/common/collect/i6;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$c;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/o2;->J(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/o2;->x(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/i6;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/o2;->z(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/i6;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/o2;->y(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/o2;->I(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/o2;->H(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$c;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/o2;->B(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lcom/google/common/collect/q6;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/o2;->G(Lcom/google/common/collect/q6;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/o2;->K(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$c;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lcom/google/common/collect/q6;Lcom/google/common/collect/q6;)Lcom/google/common/collect/q6;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/o2;->F(Lcom/google/common/collect/q6;Lcom/google/common/collect/q6;)Lcom/google/common/collect/q6;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$b;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/o2;->M(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/o2;->L(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/q6;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/o2;->E(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/q6;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic o(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/o2;->C(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/o2;->D(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic q(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/o2;->v(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/o2;->w(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static s(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TV;>;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/collect/a1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a1;-><init>(Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/b1;

    invoke-direct {p0, p1}, Lcom/google/common/collect/b1;-><init>(Ljava/util/function/Function;)V

    .line 4
    invoke-static {}, Lcom/google/common/collect/k6;->a()Lcom/google/common/collect/k6$f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/k6$f;->a()Lcom/google/common/collect/k6$e;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/common/collect/t1;

    invoke-direct {v1, p1}, Lcom/google/common/collect/t1;-><init>(Lcom/google/common/collect/k6$e;)V

    .line 5
    invoke-static {v0, p0, v1}, Lcom/google/common/collect/o2;->u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    sget-object p1, Lcom/google/common/collect/o1;->a:Lcom/google/common/collect/o1;

    .line 6
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static t(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TV;>;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/collect/y0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/y0;-><init>(Ljava/util/function/Function;)V

    new-instance p0, Lcom/google/common/collect/z0;

    invoke-direct {p0, p1}, Lcom/google/common/collect/z0;-><init>(Ljava/util/function/Function;)V

    .line 4
    invoke-static {}, Lcom/google/common/collect/k6;->a()Lcom/google/common/collect/k6$f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/k6$f;->d()Lcom/google/common/collect/k6$g;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/common/collect/u1;

    invoke-direct {v1, p1}, Lcom/google/common/collect/u1;-><init>(Lcom/google/common/collect/k6$g;)V

    .line 5
    invoke-static {v0, p0, v1}, Lcom/google/common/collect/o2;->u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    sget-object p1, Lcom/google/common/collect/q1;->a:Lcom/google/common/collect/q1;

    .line 6
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lcom/google/common/collect/i6<",
            "TK;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TV;>;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/google/common/collect/k2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k2;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/common/collect/u0;->a:Lcom/google/common/collect/u0;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, p0, p1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic v(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic w(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    sget-object p1, Lcom/google/common/collect/x0;->a:Lcom/google/common/collect/x0;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic x(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic y(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    sget-object p1, Lcom/google/common/collect/x0;->a:Lcom/google/common/collect/x0;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic z(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/i6;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/common/collect/i6;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    .line 3
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/common/collect/w0;

    invoke-direct {p2, p0}, Lcom/google/common/collect/w0;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

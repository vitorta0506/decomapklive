.class final Lcom/google/common/collect/z8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/z8$c;,
        Lcom/google/common/collect/z8$b;
    }
.end annotation


# direct methods
.method public static synthetic a()Lcom/google/common/collect/z8$b;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/z8;->g()Lcom/google/common/collect/z8$b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/z8$b;Lcom/google/common/collect/z8$b;)Lcom/google/common/collect/z8$b;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/z8;->i(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/z8$b;Lcom/google/common/collect/z8$b;)Lcom/google/common/collect/z8$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/common/collect/z8$b;)Lcom/google/common/collect/ImmutableTable;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/z8;->j(Lcom/google/common/collect/z8$b;)Lcom/google/common/collect/ImmutableTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/z8$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/common/collect/z8;->h(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/z8$b;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/collect/z8;->f(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$a;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic f(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$a;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p0, p1, p2}, Lcom/google/common/collect/ImmutableTable$a;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable$a;

    return-void
.end method

.method private static synthetic g()Lcom/google/common/collect/z8$b;
    .locals 2

    new-instance v0, Lcom/google/common/collect/z8$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/z8$b;-><init>(Lcom/google/common/collect/z8$a;)V

    return-object v0
.end method

.method private static synthetic h(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/z8$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p1, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-interface {p2, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/google/common/collect/z8$b;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    return-void
.end method

.method private static synthetic i(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/z8$b;Lcom/google/common/collect/z8$b;)Lcom/google/common/collect/z8$b;
    .locals 0

    invoke-virtual {p1, p2, p0}, Lcom/google/common/collect/z8$b;->a(Lcom/google/common/collect/z8$b;Ljava/util/function/BinaryOperator;)Lcom/google/common/collect/z8$b;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic j(Lcom/google/common/collect/z8$b;)Lcom/google/common/collect/ImmutableTable;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/z8$b;->c()Lcom/google/common/collect/ImmutableTable;

    move-result-object p0

    return-object p0
.end method

.method static k(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    const-string v0, "rowFunction"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "columnFunction"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/google/common/collect/y8;->a:Lcom/google/common/collect/y8;

    new-instance v1, Lcom/google/common/collect/r8;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/collect/r8;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/common/collect/u8;->a:Lcom/google/common/collect/u8;

    sget-object p1, Lcom/google/common/collect/v8;->a:Lcom/google/common/collect/v8;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, p2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static l(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    const-string v0, "rowFunction"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "columnFunction"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mergeFunction"

    .line 4
    invoke-static {p3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/google/common/collect/x8;->a:Lcom/google/common/collect/x8;

    new-instance v1, Lcom/google/common/collect/s8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/common/collect/s8;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    new-instance p0, Lcom/google/common/collect/t8;

    invoke-direct {p0, p3}, Lcom/google/common/collect/t8;-><init>(Ljava/util/function/BinaryOperator;)V

    sget-object p1, Lcom/google/common/collect/w8;->a:Lcom/google/common/collect/w8;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, p2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

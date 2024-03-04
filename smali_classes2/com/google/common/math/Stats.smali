.class public final Lcom/google/common/math/Stats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final BYTES:I = 0x28

.field private static final serialVersionUID:J


# instance fields
.field private final count:J

.field private final max:D

.field private final mean:D

.field private final min:D

.field private final sumOfSquaresOfDeltas:D


# direct methods
.method constructor <init>(JDDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/common/math/Stats;->count:J

    .line 3
    iput-wide p3, p0, Lcom/google/common/math/Stats;->mean:D

    .line 4
    iput-wide p5, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 5
    iput-wide p7, p0, Lcom/google/common/math/Stats;->min:D

    .line 6
    iput-wide p9, p0, Lcom/google/common/math/Stats;->max:D

    return-void
.end method

.method public static synthetic a(Lcom/google/common/math/o;Lcom/google/common/math/o;)Lcom/google/common/math/o;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/math/Stats;->lambda$toStats$1(Lcom/google/common/math/o;Lcom/google/common/math/o;)Lcom/google/common/math/o;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/common/math/o;Ljava/lang/Number;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/math/Stats;->lambda$toStats$0(Lcom/google/common/math/o;Ljava/lang/Number;)V

    return-void
.end method

.method public static fromByteArray([B)Lcom/google/common/math/Stats;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    const-string v3, "Expected Stats.BYTES = %s remaining , got %s"

    invoke-static {v0, v3, v1, v2}, Lcom/google/common/base/o;->i(ZLjava/lang/String;II)V

    .line 3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/math/Stats;->readFrom(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$toStats$0(Lcom/google/common/math/o;Ljava/lang/Number;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/o;->a(D)V

    return-void
.end method

.method private static synthetic lambda$toStats$1(Lcom/google/common/math/o;Lcom/google/common/math/o;)Lcom/google/common/math/o;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/math/o;->b(Lcom/google/common/math/o;)V

    return-object p0
.end method

.method public static meanOf(Ljava/lang/Iterable;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/math/Stats;->meanOf(Ljava/util/Iterator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static meanOf(Ljava/util/Iterator;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x1

    move-wide v4, v2

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    add-long/2addr v4, v2

    .line 6
    invoke-static {v6, v7}, Lcom/google/common/primitives/b;->f(D)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v0, v1}, Lcom/google/common/primitives/b;->f(D)Z

    move-result v8

    if-eqz v8, :cond_0

    sub-double/2addr v6, v0

    long-to-double v8, v4

    div-double/2addr v6, v8

    add-double/2addr v0, v6

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0, v1, v6, v7}, Lcom/google/common/math/o;->h(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static varargs meanOf([D)D
    .locals 7

    .line 8
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 9
    aget-wide v0, p0, v1

    .line 10
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 11
    aget-wide v3, p0, v2

    .line 12
    invoke-static {v3, v4}, Lcom/google/common/primitives/b;->f(D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v1}, Lcom/google/common/primitives/b;->f(D)Z

    move-result v5

    if-eqz v5, :cond_1

    sub-double/2addr v3, v0

    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    goto :goto_2

    .line 13
    :cond_1
    invoke-static {v0, v1, v3, v4}, Lcom/google/common/math/o;->h(DD)D

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public static varargs meanOf([I)D
    .locals 7

    .line 14
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 15
    aget v0, p0, v1

    int-to-double v0, v0

    .line 16
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 17
    aget v3, p0, v2

    int-to-double v3, v3

    .line 18
    invoke-static {v3, v4}, Lcom/google/common/primitives/b;->f(D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v1}, Lcom/google/common/primitives/b;->f(D)Z

    move-result v5

    if-eqz v5, :cond_1

    sub-double/2addr v3, v0

    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    goto :goto_2

    .line 19
    :cond_1
    invoke-static {v0, v1, v3, v4}, Lcom/google/common/math/o;->h(DD)D

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public static varargs meanOf([J)D
    .locals 7

    .line 20
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 21
    aget-wide v0, p0, v1

    long-to-double v0, v0

    .line 22
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 23
    aget-wide v3, p0, v2

    long-to-double v3, v3

    .line 24
    invoke-static {v3, v4}, Lcom/google/common/primitives/b;->f(D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v1}, Lcom/google/common/primitives/b;->f(D)Z

    move-result v5

    if-eqz v5, :cond_1

    sub-double/2addr v3, v0

    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    goto :goto_2

    .line 25
    :cond_1
    invoke-static {v0, v1, v3, v4}, Lcom/google/common/math/o;->h(DD)D

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public static of(Ljava/lang/Iterable;)Lcom/google/common/math/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/common/math/Stats;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/math/o;

    invoke-direct {v0}, Lcom/google/common/math/o;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/common/math/o;->c(Ljava/lang/Iterable;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/common/math/o;->n()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/Iterator;)Lcom/google/common/math/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/common/math/Stats;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/common/math/o;

    invoke-direct {v0}, Lcom/google/common/math/o;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/common/math/o;->d(Ljava/util/Iterator;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/common/math/o;->n()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/stream/DoubleStream;)Lcom/google/common/math/Stats;
    .locals 3

    .line 16
    sget-object v0, Lcom/google/common/math/n;->a:Lcom/google/common/math/n;

    sget-object v1, Lcom/google/common/math/k;->a:Lcom/google/common/math/k;

    sget-object v2, Lcom/google/common/math/g;->a:Lcom/google/common/math/g;

    .line 17
    invoke-interface {p0, v0, v1, v2}, Ljava/util/stream/DoubleStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/math/o;

    .line 18
    invoke-virtual {p0}, Lcom/google/common/math/o;->n()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/stream/IntStream;)Lcom/google/common/math/Stats;
    .locals 3

    .line 19
    sget-object v0, Lcom/google/common/math/n;->a:Lcom/google/common/math/n;

    sget-object v1, Lcom/google/common/math/l;->a:Lcom/google/common/math/l;

    sget-object v2, Lcom/google/common/math/g;->a:Lcom/google/common/math/g;

    .line 20
    invoke-interface {p0, v0, v1, v2}, Ljava/util/stream/IntStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/math/o;

    .line 21
    invoke-virtual {p0}, Lcom/google/common/math/o;->n()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/stream/LongStream;)Lcom/google/common/math/Stats;
    .locals 3

    .line 22
    sget-object v0, Lcom/google/common/math/n;->a:Lcom/google/common/math/n;

    sget-object v1, Lcom/google/common/math/m;->a:Lcom/google/common/math/m;

    sget-object v2, Lcom/google/common/math/g;->a:Lcom/google/common/math/g;

    .line 23
    invoke-interface {p0, v0, v1, v2}, Ljava/util/stream/LongStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/math/o;

    .line 24
    invoke-virtual {p0}, Lcom/google/common/math/o;->n()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([D)Lcom/google/common/math/Stats;
    .locals 1

    .line 7
    new-instance v0, Lcom/google/common/math/o;

    invoke-direct {v0}, Lcom/google/common/math/o;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, Lcom/google/common/math/o;->e([D)V

    .line 9
    invoke-virtual {v0}, Lcom/google/common/math/o;->n()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([I)Lcom/google/common/math/Stats;
    .locals 1

    .line 10
    new-instance v0, Lcom/google/common/math/o;

    invoke-direct {v0}, Lcom/google/common/math/o;-><init>()V

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/common/math/o;->f([I)V

    .line 12
    invoke-virtual {v0}, Lcom/google/common/math/o;->n()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([J)Lcom/google/common/math/Stats;
    .locals 1

    .line 13
    new-instance v0, Lcom/google/common/math/o;

    invoke-direct {v0}, Lcom/google/common/math/o;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Lcom/google/common/math/o;->g([J)V

    .line 15
    invoke-virtual {v0}, Lcom/google/common/math/o;->n()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method static readFrom(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;
    .locals 15

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const-string v3, "Expected at least Stats.BYTES = %s remaining , got %s"

    .line 4
    invoke-static {v0, v3, v1, v2}, Lcom/google/common/base/o;->i(ZLjava/lang/String;II)V

    .line 5
    new-instance v0, Lcom/google/common/math/Stats;

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v7

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v9

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v11

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v13

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v0
.end method

.method public static toStats()Ljava/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Number;",
            "Lcom/google/common/math/o;",
            "Lcom/google/common/math/Stats;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/math/n;->a:Lcom/google/common/math/n;

    sget-object v1, Lcom/google/common/math/h;->a:Lcom/google/common/math/h;

    sget-object v2, Lcom/google/common/math/i;->a:Lcom/google/common/math/i;

    sget-object v3, Lcom/google/common/math/j;->a:Lcom/google/common/math/j;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    sget-object v5, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public count()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lcom/google/common/math/Stats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/common/math/Stats;

    .line 3
    iget-wide v1, p0, Lcom/google/common/math/Stats;->count:J

    iget-wide v3, p1, Lcom/google/common/math/Stats;->count:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, p0, Lcom/google/common/math/Stats;->mean:D

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/common/math/Stats;->mean:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, p0, Lcom/google/common/math/Stats;->min:D

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/common/math/Stats;->min:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, p0, Lcom/google/common/math/Stats;->max:D

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/common/math/Stats;->max:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/common/math/Stats;->count:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/math/Stats;->mean:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/math/Stats;->min:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/math/Stats;->max:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public max()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/Stats;->max:D

    return-wide v0
.end method

.method public mean()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/Stats;->mean:D

    return-wide v0
.end method

.method public min()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/Stats;->min:D

    return-wide v0
.end method

.method public populationStandardDeviation()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/math/Stats;->populationVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public populationVariance()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 3
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    .line 4
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/b;->a(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public sampleStandardDeviation()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/math/Stats;->sampleVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public sampleVariance()D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 3
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/b;->a(D)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/common/math/Stats;->count:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public sum()D
    .locals 4

    iget-wide v0, p0, Lcom/google/common/math/Stats;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/Stats;->count:J

    long-to-double v2, v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method sumOfSquaresOfDeltas()D
    .locals 2

    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    return-wide v0
.end method

.method public toByteArray()[B
    .locals 2

    const/16 v0, 0x28

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/math/Stats;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    const-string v2, "count"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/common/math/Stats;->count:J

    .line 3
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/math/Stats;->mean:D

    const-string v3, "mean"

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->a(Ljava/lang/String;D)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->populationStandardDeviation()D

    move-result-wide v1

    const-string v3, "populationStandardDeviation"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->a(Ljava/lang/String;D)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/math/Stats;->min:D

    const-string v3, "min"

    .line 6
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->a(Ljava/lang/String;D)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/math/Stats;->max:D

    const-string v3, "max"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->a(Ljava/lang/String;D)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/common/math/Stats;->count:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeTo(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const-string v3, "Expected at least Stats.BYTES = %s remaining , got %s"

    .line 4
    invoke-static {v0, v3, v1, v2}, Lcom/google/common/base/o;->i(ZLjava/lang/String;II)V

    .line 5
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 6
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/common/math/Stats;->mean:D

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/common/math/Stats;->min:D

    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/common/math/Stats;->max:D

    .line 10
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method

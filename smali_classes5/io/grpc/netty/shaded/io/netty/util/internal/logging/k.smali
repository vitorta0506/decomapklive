.class final Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1
    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 3
    aget-object v3, p1, v1

    .line 4
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    if-nez p0, :cond_2

    .line 5
    new-instance p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    invoke-direct {p0, v0, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_2
    const-string v4, "{}"

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 7
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    invoke-direct {p1, p0, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    .line 8
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x32

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_4
    const/16 v11, 0x5c

    if-eqz v5, :cond_6

    add-int/lit8 v12, v5, -0x1

    .line 9
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v11, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_7

    .line 10
    invoke-virtual {v7, p0, v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    add-int/lit8 v12, v5, -0x1

    .line 11
    invoke-virtual {v7, p0, v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    if-lt v5, v9, :cond_8

    add-int/lit8 v9, v5, -0x2

    .line 12
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_8

    const/4 v12, 0x1

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    :goto_3
    add-int/lit8 v9, v5, 0x2

    if-eqz v12, :cond_9

    .line 13
    aget-object v5, p1, v10

    invoke-static {v7, v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Set;)V

    add-int/lit8 v10, v10, 0x1

    if-le v10, v1, :cond_a

    goto :goto_4

    .line 14
    :cond_9
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_a
    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 16
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v7, p0, v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 17
    new-instance p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-gt v10, v1, :cond_b

    move-object v0, v3

    :cond_b
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 18
    :cond_c
    :goto_5
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    invoke-direct {p1, p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static b(Ljava/lang/StringBuilder;[Z)V
    .locals 2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget-boolean v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const-string v1, ", "

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Ljava/lang/StringBuilder;[B)V
    .locals 2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const-string v1, ", "

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static d(Ljava/lang/StringBuilder;[C)V
    .locals 2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget-char v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const-string v1, ", "

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static e(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4
    const-class p2, Ljava/lang/Number;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 5
    const-class p2, Ljava/lang/Long;

    if-ne v0, p2, :cond_1

    .line 6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 7
    :cond_1
    const-class p2, Ljava/lang/Integer;

    if-eq v0, p2, :cond_5

    const-class p2, Ljava/lang/Short;

    if-eq v0, p2, :cond_5

    const-class p2, Ljava/lang/Byte;

    if-ne v0, p2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    const-class p2, Ljava/lang/Double;

    if-ne v0, p2, :cond_3

    .line 9
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 10
    :cond_3
    const-class p2, Ljava/lang/Float;

    if-ne v0, p2, :cond_4

    .line 11
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 12
    :cond_4
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 13
    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 14
    :cond_6
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    const/16 v1, 0x5b

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    const-class v1, [Z

    if-ne v0, v1, :cond_8

    .line 17
    check-cast p1, [Z

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->b(Ljava/lang/StringBuilder;[Z)V

    goto :goto_1

    .line 18
    :cond_8
    const-class v1, [B

    if-ne v0, v1, :cond_9

    .line 19
    check-cast p1, [B

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->c(Ljava/lang/StringBuilder;[B)V

    goto :goto_1

    .line 20
    :cond_9
    const-class v1, [C

    if-ne v0, v1, :cond_a

    .line 21
    check-cast p1, [C

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->d(Ljava/lang/StringBuilder;[C)V

    goto :goto_1

    .line 22
    :cond_a
    const-class v1, [S

    if-ne v0, v1, :cond_b

    .line 23
    check-cast p1, [S

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->n(Ljava/lang/StringBuilder;[S)V

    goto :goto_1

    .line 24
    :cond_b
    const-class v1, [I

    if-ne v0, v1, :cond_c

    .line 25
    check-cast p1, [I

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->j(Ljava/lang/StringBuilder;[I)V

    goto :goto_1

    .line 26
    :cond_c
    const-class v1, [J

    if-ne v0, v1, :cond_d

    .line 27
    check-cast p1, [J

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->k(Ljava/lang/StringBuilder;[J)V

    goto :goto_1

    .line 28
    :cond_d
    const-class v1, [F

    if-ne v0, v1, :cond_e

    .line 29
    check-cast p1, [F

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->g(Ljava/lang/StringBuilder;[F)V

    goto :goto_1

    .line 30
    :cond_e
    const-class v1, [D

    if-ne v0, v1, :cond_f

    .line 31
    check-cast p1, [D

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->f(Ljava/lang/StringBuilder;[D)V

    goto :goto_1

    .line 32
    :cond_f
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->l(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Set;)V

    :goto_1
    const/16 p1, 0x5d

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method private static f(Ljava/lang/StringBuilder;[D)V
    .locals 3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const-string v1, ", "

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static g(Ljava/lang/StringBuilder;[F)V
    .locals 2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const-string v1, ", "

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static h(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p0

    return-object p0
.end method

.method static i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p0

    return-object p0
.end method

.method private static j(Ljava/lang/StringBuilder;[I)V
    .locals 2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const-string v1, ", "

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static k(Ljava/lang/StringBuilder;[J)V
    .locals 3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const-string v1, ", "

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static l(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p2, Ljava/util/HashSet;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 3
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 4
    aget-object v0, p1, v0

    invoke-static {p0, v0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Set;)V

    const/4 v0, 0x1

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    const-string v1, ", "

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    aget-object v1, p1, v0

    invoke-static {p0, v1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string p1, "..."

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method private static m(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLF4J: Failed toString() invocation on an object of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "[FAILED toString()]"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private static n(Ljava/lang/StringBuilder;[S)V
    .locals 2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget-short v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const-string v1, ", "

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

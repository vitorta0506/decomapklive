.class public final Lio/grpc/netty/shaded/io/netty/util/internal/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 1
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->b:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->b:[Ljava/lang/String;

    array-length v3, v2

    const/16 v4, 0x30

    const/16 v5, 0xf

    if-ge v1, v3, :cond_1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    if-le v1, v5, :cond_0

    move-object v4, v3

    goto :goto_1

    .line 6
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v1

    .line 7
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->c:[Ljava/lang/String;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x10000

    new-array v1, v1, [B

    .line 8
    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->d:[B

    const/4 v2, -0x1

    .line 9
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    aput-byte v0, v1, v4

    const/16 v0, 0x31

    const/4 v2, 0x1

    aput-byte v2, v1, v0

    const/16 v0, 0x32

    const/4 v2, 0x2

    aput-byte v2, v1, v0

    const/16 v0, 0x33

    const/4 v2, 0x3

    aput-byte v2, v1, v0

    const/16 v0, 0x34

    const/4 v2, 0x4

    aput-byte v2, v1, v0

    const/16 v0, 0x35

    const/4 v2, 0x5

    aput-byte v2, v1, v0

    const/16 v0, 0x36

    const/4 v2, 0x6

    aput-byte v2, v1, v0

    const/16 v0, 0x37

    const/4 v2, 0x7

    aput-byte v2, v1, v0

    const/16 v0, 0x38

    const/16 v2, 0x8

    aput-byte v2, v1, v0

    const/16 v0, 0x39

    const/16 v2, 0x9

    aput-byte v2, v1, v0

    const/16 v0, 0x41

    const/16 v2, 0xa

    aput-byte v2, v1, v0

    const/16 v0, 0x42

    const/16 v3, 0xb

    aput-byte v3, v1, v0

    const/16 v0, 0x43

    const/16 v4, 0xc

    aput-byte v4, v1, v0

    const/16 v0, 0x44

    const/16 v6, 0xd

    aput-byte v6, v1, v0

    const/16 v0, 0x45

    const/16 v7, 0xe

    aput-byte v7, v1, v0

    const/16 v0, 0x46

    aput-byte v5, v1, v0

    const/16 v0, 0x61

    aput-byte v2, v1, v0

    const/16 v0, 0x62

    aput-byte v3, v1, v0

    const/16 v0, 0x63

    aput-byte v4, v1, v0

    const/16 v0, 0x64

    aput-byte v6, v1, v0

    const/16 v0, 0x65

    aput-byte v7, v1, v0

    const/16 v0, 0x66

    aput-byte v5, v1, v0

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->b:[Ljava/lang/String;

    and-int/lit16 p0, p0, 0xff

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static b(Ljava/lang/CharSequence;I)B
    .locals 4

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->c(C)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->c(C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    shl-int/lit8 p0, v0, 0x4

    add-int/2addr p0, v1

    int-to-byte p0, p0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x2

    .line 4
    invoke-interface {p0, p1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "invalid hex byte \'%s\' at index %d of \'%s\'"

    .line 5
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(C)I
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->d:[B

    aget-byte p0, v0, p0

    return p0
.end method

.method public static d(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 7

    const-string v0, "value"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->e(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 3
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->f(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    const/4 p1, 0x0

    :goto_0
    if-le p1, v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 4
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->g(C)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    .line 5
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->g(C)Z

    move-result v3

    if-eqz v3, :cond_2

    if-le v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v3, v1

    move v1, v0

    move v0, p1

    goto :goto_2

    :cond_4
    move v1, v0

    const/4 v3, 0x0

    :goto_1
    move v0, p1

    const/4 p1, -0x1

    :goto_2
    if-gez p1, :cond_e

    if-eqz v3, :cond_7

    move v4, v0

    :goto_3
    if-gt v4, v1, :cond_c

    .line 6
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->g(C)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eq v4, v1, :cond_b

    add-int/lit8 v5, v4, 0x1

    .line 7
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->g(C)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    move v4, v5

    :cond_6
    add-int/2addr v4, v2

    goto :goto_3

    :cond_7
    move v4, v0

    :goto_4
    if-gt v4, v1, :cond_c

    .line 8
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_b

    const/16 v6, 0xd

    if-eq v5, v6, :cond_b

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_8

    goto :goto_5

    .line 9
    :cond_8
    invoke-static {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->g(C)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eq v4, v1, :cond_b

    add-int/lit8 v5, v4, 0x1

    .line 10
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->g(C)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    move v4, v5

    :cond_a
    add-int/2addr v4, v2

    goto :goto_4

    :cond_b
    :goto_5
    move p1, v4

    :cond_c
    if-gez p1, :cond_e

    if-eqz v3, :cond_d

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_d
    add-int/2addr v1, v2

    .line 11
    :goto_6
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 12
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v1, v0

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x7

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x22

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_7
    if-gt p1, v1, :cond_10

    .line 14
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 15
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->g(C)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p1, v1, :cond_f

    add-int/lit8 v5, p1, 0x1

    .line 17
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->g(C)Z

    move-result v6

    if-eqz v6, :cond_f

    move p1, v5

    .line 18
    :cond_f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    goto :goto_7

    .line 19
    :cond_10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v3
.end method

.method private static e(Ljava/lang/CharSequence;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->i(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static f(Ljava/lang/CharSequence;II)I
    .locals 1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_0

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->i(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private static g(C)Z
    .locals 1

    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static i(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static j(C)Z
    .locals 1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static k(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid escaped CSV field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " index: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static l(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "clazz"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static m(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null_object"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->e(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 3
    invoke-static {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->f(Ljava/lang/CharSequence;II)I

    move-result v2

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static o(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->e()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->q()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-gt v5, v2, :cond_8

    .line 4
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    const/16 v9, 0x22

    if-eqz v6, :cond_4

    if-eq v7, v9, :cond_0

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-ne v5, v2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 7
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_2

    .line 8
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-ne v7, v8, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    sub-int/2addr v5, v3

    .line 11
    invoke-static {p0, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->k(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4
    const/16 v10, 0xa

    if-eq v7, v10, :cond_7

    const/16 v10, 0xd

    if-eq v7, v10, :cond_7

    if-eq v7, v9, :cond_6

    if-eq v7, v8, :cond_5

    .line 12
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    add-int/2addr v5, v3

    goto :goto_0

    .line 16
    :cond_7
    invoke-static {p0, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->k(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_8
    if-nez v6, :cond_9

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 18
    :cond_9
    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->k(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

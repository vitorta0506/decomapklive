.class final Lkg/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x100

    new-array v1, v0, [C

    .line 1
    sput-object v1, Lkg/n$c;->a:[C

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 2
    sput-object v1, Lkg/n$c;->b:[C

    const/16 v1, 0x10

    new-array v2, v1, [Ljava/lang/String;

    .line 3
    sput-object v2, Lkg/n$c;->c:[Ljava/lang/String;

    const/16 v2, 0x1000

    new-array v2, v2, [Ljava/lang/String;

    .line 4
    sput-object v2, Lkg/n$c;->d:[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    .line 5
    sput-object v2, Lkg/n$c;->e:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    .line 6
    sput-object v1, Lkg/n$c;->f:[Ljava/lang/String;

    const-string v1, "0123456789abcdef"

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    sget-object v4, Lkg/n$c;->b:[C

    shl-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v1, v6

    aput-char v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v3, 0xf

    .line 9
    aget-char v6, v1, v6

    aput-char v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_1
    sget-object v1, Lkg/n$c;->c:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 11
    array-length v1, v1

    sub-int/2addr v1, v0

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_1

    const-string v5, "   "

    .line 13
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 14
    :cond_1
    sget-object v1, Lkg/n$c;->c:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 15
    :goto_3
    sget-object v1, Lkg/n$c;->d:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shl-int/lit8 v4, v0, 0x4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const-wide v6, 0x100000000L

    or-long/2addr v4, v6

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x9

    const/16 v5, 0x7c

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 22
    :goto_4
    sget-object v1, Lkg/n$c;->e:[Ljava/lang/String;

    array-length v3, v1

    const/16 v4, 0x20

    if-ge v0, v3, :cond_4

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 24
    :goto_5
    sget-object v1, Lkg/n$c;->f:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_6

    .line 25
    array-length v1, v1

    sub-int/2addr v1, v0

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v1, :cond_5

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 28
    :cond_5
    sget-object v1, Lkg/n$c;->f:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 29
    :cond_6
    :goto_7
    sget-object v0, Lkg/n$c;->a:[C

    array-length v1, v0

    if-ge v2, v1, :cond_9

    const/16 v1, 0x1f

    if-le v2, v1, :cond_8

    const/16 v1, 0x7f

    if-lt v2, v1, :cond_7

    goto :goto_8

    :cond_7
    int-to-char v1, v2

    .line 30
    aput-char v1, v0, v2

    goto :goto_9

    :cond_8
    :goto_8
    const/16 v1, 0x2e

    .line 31
    aput-char v1, v0, v2

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    return-void
.end method

.method static synthetic a(Lkg/j;II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lkg/n$c;->c(Lkg/j;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b([BII)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lkg/n$c;->d([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lkg/j;II)Ljava/lang/String;
    .locals 5

    const-string v0, "length"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    add-int v0, p1, p2

    shl-int/lit8 p2, p2, 0x1

    .line 2
    new-array p2, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 3
    sget-object v2, Lkg/n$c;->b:[C

    .line 4
    invoke-virtual {p0, p1}, Lkg/j;->R0(I)S

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    .line 5
    invoke-static {v2, v3, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, v4

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static d([BII)Ljava/lang/String;
    .locals 5

    const-string v0, "length"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    add-int v0, p1, p2

    shl-int/lit8 p2, p2, 0x1

    .line 2
    new-array p2, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 3
    sget-object v2, Lkg/n$c;->b:[C

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, v4

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

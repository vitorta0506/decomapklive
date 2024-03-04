.class public abstract Lfk/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[B

.field private static final c:[I

.field private static final d:[Lfk/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfk/t;->a:[I

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lfk/t;->b:[B

    new-array v1, v0, [I

    sput-object v1, Lfk/t;->c:[I

    new-array v0, v0, [Lfk/i;

    sput-object v0, Lfk/t;->d:[Lfk/i;

    return-void

    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public static a(Lfk/i;)V
    .locals 3

    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lfk/e;->s()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lfk/e;->q()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    :goto_0
    const/16 v2, 0x10

    invoke-static {v1}, Lfk/t;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Lfk/t$a;

    invoke-direct {v2, v1}, Lfk/t$a;-><init>(I)V

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1, v2}, Lfk/e;->w(Lfk/i;Ljava/lang/String;Lfk/o;)Lfk/p;

    return-void
.end method

.method public static b(I)I
    .locals 2

    sget-object v0, Lfk/t;->a:[I

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lfk/t;->c(I[II)I

    move-result p0

    return p0
.end method

.method public static c(I[II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-ge p0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x2

    add-int/2addr v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.class public Lik/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[I

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lik/x;->a:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lik/x;->b:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lik/x;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1a93
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x2c23069
        0x3526
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x3526
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x2c23069
        -0x3527
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        0x3525
        0x2
    .end array-data
.end method

.method public static a([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnk/g;->a([I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lik/x;->a:[I

    invoke-static {p2, p0}, Lnk/g;->j([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x7

    const/16 p1, 0x1a93

    invoke-static {p0, p1, p2}, Lnk/n;->b(II[I)I

    :cond_1
    return-void
.end method

.method public static b([I[I)V
    .locals 2

    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lnk/n;->w(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    sget-object p0, Lik/x;->a:[I

    invoke-static {p1, p0}, Lnk/g;->j([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x1a93

    invoke-static {v0, p0, p1}, Lnk/n;->b(II[I)I

    :cond_1
    return-void
.end method

.method public static c(Ljava/math/BigInteger;)[I
    .locals 2

    invoke-static {p0}, Lnk/g;->h(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x6

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lik/x;->a:[I

    invoke-static {p0, v0}, Lnk/g;->j([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, p0}, Lnk/n;->b(II[I)I

    :cond_0
    return-object p0
.end method

.method public static d([I[I)V
    .locals 1

    sget-object v0, Lik/x;->a:[I

    invoke-static {v0, p0, p1}, Lnk/c;->c([I[I[I)V

    return-void
.end method

.method public static e([I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static f([I[I[I)V
    .locals 1

    invoke-static {}, Lnk/g;->f()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnk/g;->m([I[I[I)V

    invoke-static {v0, p2}, Lik/x;->k([I[I)V

    return-void
.end method

.method public static g([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lnk/g;->q([I[I[I)I

    move-result p0

    const/16 p1, 0xe

    if-nez p0, :cond_0

    const/16 p0, 0xd

    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lik/x;->b:[I

    invoke-static {p1, p2, p0}, Lnk/n;->u(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lik/x;->c:[I

    array-length v0, p0

    invoke-static {v0, p0, p2}, Lnk/n;->e(I[I[I)I

    move-result v0

    if-eqz v0, :cond_1

    array-length p0, p0

    invoke-static {p1, p2, p0}, Lnk/n;->x(I[II)I

    :cond_1
    return-void
.end method

.method public static h([I[I)V
    .locals 1

    invoke-static {p0}, Lik/x;->e([I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lik/x;->a:[I

    invoke-static {p0, p0, p1}, Lnk/g;->s([I[I[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Lik/x;->a:[I

    invoke-static {v0, p0, p1}, Lnk/g;->s([I[I[I)I

    :goto_0
    return-void
.end method

.method public static i(Ljava/security/SecureRandom;[I)V
    .locals 3

    const/16 v0, 0x1c

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/g;->f([BI[III)V

    sget-object v1, Lik/x;->a:[I

    invoke-static {v2, p1, v1}, Lnk/n;->B(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public static j(Ljava/security/SecureRandom;[I)V
    .locals 1

    :cond_0
    invoke-static {p0, p1}, Lik/x;->i(Ljava/security/SecureRandom;[I)V

    invoke-static {p1}, Lik/x;->e([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static k([I[I)V
    .locals 7

    const/16 v0, 0x1a93

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lnk/g;->n(I[II[II[II)J

    move-result-wide v0

    const/16 p0, 0x1a93

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lnk/g;->o(IJ[II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lik/x;->a:[I

    invoke-static {p1, v0}, Lnk/g;->j([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lnk/n;->b(II[I)I

    :cond_1
    return-void
.end method

.method public static l(I[I)V
    .locals 2

    const/16 v0, 0x1a93

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lnk/g;->p(II[II)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    sget-object p0, Lik/x;->a:[I

    invoke-static {p1, p0}, Lnk/g;->j([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x7

    invoke-static {p0, v0, p1}, Lnk/n;->b(II[I)I

    :cond_2
    return-void
.end method

.method public static m([I[I)V
    .locals 1

    invoke-static {}, Lnk/g;->f()[I

    move-result-object v0

    invoke-static {p0, v0}, Lnk/g;->r([I[I)V

    invoke-static {v0, p1}, Lik/x;->k([I[I)V

    return-void
.end method

.method public static n([II[I)V
    .locals 1

    invoke-static {}, Lnk/g;->f()[I

    move-result-object v0

    invoke-static {p0, v0}, Lnk/g;->r([I[I)V

    :goto_0
    invoke-static {v0, p2}, Lik/x;->k([I[I)V

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lnk/g;->r([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static o([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnk/g;->s([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    const/16 p1, 0x1a93

    invoke-static {p0, p1, p2}, Lnk/n;->Q(II[I)I

    :cond_0
    return-void
.end method

.method public static p([I[I)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lnk/n;->J(I[II[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    sget-object p0, Lik/x;->a:[I

    invoke-static {p1, p0}, Lnk/g;->j([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x1a93

    invoke-static {v0, p0, p1}, Lnk/n;->b(II[I)I

    :cond_1
    return-void
.end method

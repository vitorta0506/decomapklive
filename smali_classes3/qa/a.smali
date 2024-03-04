.class public final Lqa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:C = '='

.field private static b:[B

.field private static c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x80

    new-array v1, v0, [B

    .line 1
    sput-object v1, Lqa/a;->b:[B

    const/16 v1, 0x40

    new-array v1, v1, [C

    .line 2
    sput-object v1, Lqa/a;->c:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    sget-object v3, Lqa/a;->b:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 4
    sget-object v2, Lqa/a;->b:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x1a

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    .line 5
    sget-object v3, Lqa/a;->b:[B

    add-int/lit8 v4, v0, -0x61

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v3, 0x34

    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    .line 6
    sget-object v4, Lqa/a;->b:[B

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 7
    :cond_3
    sget-object v0, Lqa/a;->b:[B

    const/16 v4, 0x2b

    const/16 v5, 0x3e

    aput-byte v5, v0, v4

    const/16 v6, 0x2f

    const/16 v7, 0x3f

    .line 8
    aput-byte v7, v0, v6

    const/4 v0, 0x0

    :goto_4
    const/16 v8, 0x19

    if-gt v0, v8, :cond_4

    .line 9
    sget-object v8, Lqa/a;->c:[C

    add-int/lit8 v9, v0, 0x41

    int-to-char v9, v9

    aput-char v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/16 v8, 0x33

    if-gt v2, v8, :cond_5

    .line 10
    sget-object v8, Lqa/a;->c:[C

    add-int/lit8 v9, v0, 0x61

    int-to-char v9, v9

    aput-char v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    const/16 v0, 0x3d

    if-gt v3, v0, :cond_6

    .line 11
    sget-object v0, Lqa/a;->c:[C

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 12
    :cond_6
    sget-object v0, Lqa/a;->c:[C

    aput-char v4, v0, v5

    .line 13
    aput-char v6, v0, v7

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 2
    :cond_1
    rem-int/lit8 v2, v0, 0x18

    .line 3
    div-int/lit8 v0, v0, 0x18

    if-eqz v2, :cond_2

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    mul-int/lit8 v3, v3, 0x4

    .line 4
    new-array v3, v3, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v0, :cond_6

    add-int/lit8 v7, v5, 0x1

    .line 5
    aget-byte v5, p0, v5

    add-int/lit8 v8, v7, 0x1

    .line 6
    aget-byte v7, p0, v7

    add-int/lit8 v9, v8, 0x1

    .line 7
    aget-byte v8, p0, v8

    and-int/lit8 v10, v7, 0xf

    int-to-byte v10, v10

    and-int/lit8 v11, v5, 0x3

    int-to-byte v11, v11

    and-int/lit8 v12, v5, -0x80

    if-nez v12, :cond_3

    shr-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_3
    shr-int/lit8 v5, v5, 0x2

    xor-int/lit16 v5, v5, 0xc0

    :goto_2
    int-to-byte v5, v5

    and-int/lit8 v12, v7, -0x80

    if-nez v12, :cond_4

    shr-int/lit8 v7, v7, 0x4

    goto :goto_3

    :cond_4
    shr-int/lit8 v7, v7, 0x4

    xor-int/lit16 v7, v7, 0xf0

    :goto_3
    int-to-byte v7, v7

    and-int/lit8 v12, v8, -0x80

    if-nez v12, :cond_5

    shr-int/lit8 v12, v8, 0x6

    goto :goto_4

    :cond_5
    shr-int/lit8 v12, v8, 0x6

    xor-int/lit16 v12, v12, 0xfc

    :goto_4
    int-to-byte v12, v12

    add-int/lit8 v13, v6, 0x1

    .line 8
    sget-object v14, Lqa/a;->c:[C

    aget-char v5, v14, v5

    aput-char v5, v3, v6

    add-int/lit8 v5, v13, 0x1

    shl-int/lit8 v6, v11, 0x4

    or-int/2addr v6, v7

    .line 9
    aget-char v6, v14, v6

    aput-char v6, v3, v13

    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v7, v10, 0x2

    or-int/2addr v7, v12

    .line 10
    aget-char v7, v14, v7

    aput-char v7, v3, v5

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v7, v8, 0x3f

    .line 11
    aget-char v7, v14, v7

    aput-char v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v9

    goto :goto_1

    :cond_6
    if-ne v2, v1, :cond_8

    .line 12
    aget-byte p0, p0, v5

    and-int/lit8 v0, p0, 0x3

    int-to-byte v0, v0

    and-int/lit8 v1, p0, -0x80

    if-nez v1, :cond_7

    shr-int/lit8 p0, p0, 0x2

    goto :goto_5

    :cond_7
    shr-int/lit8 p0, p0, 0x2

    xor-int/lit16 p0, p0, 0xc0

    :goto_5
    int-to-byte p0, p0

    add-int/lit8 v1, v6, 0x1

    .line 13
    sget-object v2, Lqa/a;->c:[C

    aget-char p0, v2, p0

    aput-char p0, v3, v6

    add-int/lit8 p0, v1, 0x1

    shl-int/lit8 v0, v0, 0x4

    .line 14
    aget-char v0, v2, v0

    aput-char v0, v3, v1

    add-int/lit8 v0, p0, 0x1

    .line 15
    sget-char v1, Lqa/a;->a:C

    aput-char v1, v3, p0

    .line 16
    aput-char v1, v3, v0

    goto :goto_8

    :cond_8
    const/16 v0, 0x10

    if-ne v2, v0, :cond_b

    .line 17
    aget-byte v0, p0, v5

    add-int/lit8 v5, v5, 0x1

    .line 18
    aget-byte p0, p0, v5

    and-int/lit8 v1, p0, 0xf

    int-to-byte v1, v1

    and-int/lit8 v2, v0, 0x3

    int-to-byte v2, v2

    and-int/lit8 v4, v0, -0x80

    if-nez v4, :cond_9

    shr-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_9
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    :goto_6
    int-to-byte v0, v0

    and-int/lit8 v4, p0, -0x80

    if-nez v4, :cond_a

    shr-int/lit8 p0, p0, 0x4

    goto :goto_7

    :cond_a
    shr-int/lit8 p0, p0, 0x4

    xor-int/lit16 p0, p0, 0xf0

    :goto_7
    int-to-byte p0, p0

    add-int/lit8 v4, v6, 0x1

    .line 19
    sget-object v5, Lqa/a;->c:[C

    aget-char v0, v5, v0

    aput-char v0, v3, v6

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr p0, v2

    .line 20
    aget-char p0, v5, p0

    aput-char p0, v3, v4

    add-int/lit8 p0, v0, 0x1

    shl-int/lit8 v1, v1, 0x2

    .line 21
    aget-char v1, v5, v1

    aput-char v1, v3, v0

    .line 22
    sget-char v0, Lqa/a;->a:C

    aput-char v0, v3, p0

    .line 23
    :cond_b
    :goto_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

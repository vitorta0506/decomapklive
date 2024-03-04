.class final Leh/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/u2$c;,
        Leh/u2$b;
    }
.end annotation


# static fields
.field static final c:Leh/u2;

.field private static final d:Ljava/nio/ByteOrder;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Leh/u2;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Leh/u2;-><init>(J)V

    sput-object v0, Leh/u2;->c:Leh/u2;

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Leh/u2;->d:Ljava/nio/ByteOrder;

    return-void
.end method

.method constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Leh/u2;->a:J

    const-wide v0, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    add-long/2addr p1, v0

    .line 3
    invoke-static {p1, p2}, Leh/u2;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Leh/u2;->b:J

    return-void
.end method

.method private static a(J)J
    .locals 2

    const/16 v0, 0x21

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long p0, p0, v0

    const/16 v0, 0x1d

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0x165667b19e3779f9L    # 4.573502279054734E-201

    mul-long p0, p0, v0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private c(Leh/u2$c;)J
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->f()J

    move-result-wide v1

    const-wide/16 v5, 0x20

    const/16 v9, 0x1f

    const-wide v10, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    const-wide v12, -0x61c8864e7a143579L

    cmp-long v14, v1, v5

    if-ltz v14, :cond_1

    .line 2
    iget-wide v1, v0, Leh/u2;->a:J

    add-long v14, v1, v12

    add-long/2addr v14, v10

    add-long v16, v1, v10

    sub-long v18, v1, v12

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->d()J

    move-result-wide v20

    mul-long v20, v20, v10

    add-long v14, v14, v20

    .line 4
    invoke-static {v14, v15, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    mul-long v14, v14, v12

    .line 5
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->d()J

    move-result-wide v20

    mul-long v20, v20, v10

    add-long v3, v16, v20

    .line 6
    invoke-static {v3, v4, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    mul-long v3, v3, v12

    .line 7
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->d()J

    move-result-wide v16

    mul-long v16, v16, v10

    add-long v1, v1, v16

    .line 8
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    mul-long v1, v1, v12

    .line 9
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->d()J

    move-result-wide v16

    mul-long v16, v16, v10

    add-long v7, v18, v16

    .line 10
    invoke-static {v7, v8, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    mul-long v7, v7, v12

    .line 11
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->f()J

    move-result-wide v16

    cmp-long v18, v16, v5

    if-gez v18, :cond_0

    const/4 v5, 0x1

    .line 12
    invoke-static {v14, v15, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    const/4 v12, 0x7

    .line 13
    invoke-static {v3, v4, v12}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    add-long/2addr v5, v12

    const/16 v12, 0xc

    .line 14
    invoke-static {v1, v2, v12}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    add-long/2addr v5, v12

    const/16 v12, 0x12

    .line 15
    invoke-static {v7, v8, v12}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    add-long/2addr v5, v12

    mul-long v14, v14, v10

    .line 16
    invoke-static {v14, v15, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    const-wide v14, -0x61c8864e7a143579L

    mul-long v12, v12, v14

    xor-long/2addr v5, v12

    mul-long v5, v5, v14

    const-wide v12, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long/2addr v5, v12

    mul-long v3, v3, v10

    .line 17
    invoke-static {v3, v4, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    mul-long v3, v3, v14

    xor-long/2addr v3, v5

    mul-long v3, v3, v14

    add-long/2addr v3, v12

    mul-long v1, v1, v10

    .line 18
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    mul-long v1, v1, v14

    xor-long/2addr v1, v3

    mul-long v1, v1, v14

    add-long/2addr v1, v12

    mul-long v7, v7, v10

    .line 19
    invoke-static {v7, v8, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    mul-long v3, v3, v14

    xor-long/2addr v1, v3

    mul-long v1, v1, v14

    add-long/2addr v1, v12

    goto :goto_1

    :cond_0
    move-wide/from16 v16, v3

    move-wide/from16 v18, v7

    goto/16 :goto_0

    .line 20
    :cond_1
    iget-wide v1, v0, Leh/u2;->a:J

    const-wide v3, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    add-long/2addr v1, v3

    .line 21
    :goto_1
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->a()J

    move-result-wide v3

    :goto_2
    add-long/2addr v1, v3

    .line 22
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 23
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->d()J

    move-result-wide v3

    mul-long v3, v3, v10

    .line 24
    invoke-static {v3, v4, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    const-wide v5, -0x61c8864e7a143579L

    mul-long v3, v3, v5

    xor-long/2addr v1, v3

    const/16 v3, 0x1b

    .line 25
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    mul-long v1, v1, v5

    const-wide v3, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    goto :goto_2

    :cond_2
    const-wide v5, -0x61c8864e7a143579L

    .line 26
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->f()J

    move-result-wide v3

    const-wide/16 v7, 0x4

    cmp-long v9, v3, v7

    if-ltz v9, :cond_3

    .line 27
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->c()I

    move-result v3

    int-to-long v3, v3

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    mul-long v3, v3, v5

    xor-long/2addr v1, v3

    const/16 v3, 0x17

    .line 28
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    mul-long v1, v1, v10

    const-wide v3, 0x165667b19e3779f9L    # 4.573502279054734E-201

    add-long/2addr v1, v3

    .line 29
    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    .line 30
    invoke-virtual/range {p1 .. p1}, Leh/u2$c;->e()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const-wide v5, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    mul-long v3, v3, v5

    xor-long/2addr v1, v3

    const/16 v3, 0xb

    .line 31
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    const-wide v3, -0x61c8864e7a143579L

    mul-long v1, v1, v3

    goto :goto_3

    .line 32
    :cond_4
    invoke-static {v1, v2}, Leh/u2;->a(J)J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method b(Ljava/lang/String;)J
    .locals 2

    .line 1
    new-instance v0, Leh/u2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Leh/u2$b;-><init>(Ljava/lang/String;Leh/u2$a;)V

    .line 2
    invoke-direct {p0, v0}, Leh/u2;->c(Leh/u2$c;)J

    move-result-wide v0

    return-wide v0
.end method

.method d(J)J
    .locals 4

    .line 1
    sget-object v0, Leh/u2;->d:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    .line 2
    :goto_0
    iget-wide v0, p0, Leh/u2;->a:J

    const-wide v2, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    const-wide v2, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long p1, p1, v2

    const/16 v2, 0x1f

    .line 3
    invoke-static {p1, p2, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p1

    const-wide v2, -0x61c8864e7a143579L

    mul-long p1, p1, v2

    xor-long/2addr p1, v0

    const/16 v0, 0x1b

    .line 4
    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p1

    mul-long p1, p1, v2

    const-wide v0, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long/2addr p1, v0

    .line 5
    invoke-static {p1, p2}, Leh/u2;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

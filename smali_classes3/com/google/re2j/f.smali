.class Lcom/google/re2j/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/f$a;,
        Lcom/google/re2j/f$b;
    }
.end annotation


# instance fields
.field private a:Lcom/google/re2j/k;

.field private final b:Lcom/google/re2j/j;

.field private final c:Lcom/google/re2j/f$a;

.field private final d:Lcom/google/re2j/f$a;

.field private e:[Lcom/google/re2j/f$b;

.field private f:I

.field private g:Z

.field private h:[I

.field private i:I


# direct methods
.method constructor <init>(Lcom/google/re2j/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/re2j/f$b;

    .line 2
    iput-object v0, p0, Lcom/google/re2j/f;->e:[Lcom/google/re2j/f$b;

    .line 3
    iget-object v0, p1, Lcom/google/re2j/k;->b:Lcom/google/re2j/j;

    iput-object v0, p0, Lcom/google/re2j/f;->b:Lcom/google/re2j/j;

    .line 4
    iput-object p1, p0, Lcom/google/re2j/f;->a:Lcom/google/re2j/k;

    .line 5
    new-instance p1, Lcom/google/re2j/f$a;

    invoke-virtual {v0}, Lcom/google/re2j/j;->e()I

    move-result v1

    invoke-direct {p1, v1}, Lcom/google/re2j/f$a;-><init>(I)V

    iput-object p1, p0, Lcom/google/re2j/f;->c:Lcom/google/re2j/f$a;

    .line 6
    new-instance p1, Lcom/google/re2j/f$a;

    invoke-virtual {v0}, Lcom/google/re2j/j;->e()I

    move-result v1

    invoke-direct {p1, v1}, Lcom/google/re2j/f$a;-><init>(I)V

    iput-object p1, p0, Lcom/google/re2j/f;->d:Lcom/google/re2j/f$a;

    .line 7
    iget p1, v0, Lcom/google/re2j/j;->d:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x2

    :cond_0
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/re2j/f;->h:[I

    return-void
.end method

.method private a(Lcom/google/re2j/f$a;II[IILcom/google/re2j/f$b;)Lcom/google/re2j/f$b;
    .locals 14

    move-object v8, p0

    move-object/from16 v0, p4

    move-object/from16 v9, p6

    if-nez p2, :cond_0

    return-object v9

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/google/re2j/f$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v9

    .line 2
    :cond_1
    invoke-virtual/range {p1 .. p2}, Lcom/google/re2j/f$a;->a(I)I

    move-result v1

    .line 3
    iget-object v2, v8, Lcom/google/re2j/f;->b:Lcom/google/re2j/j;

    iget-object v2, v2, Lcom/google/re2j/j;->a:[Lcom/google/re2j/e;

    aget-object v10, v2, p2

    .line 4
    iget v2, v10, Lcom/google/re2j/e;->a:I

    packed-switch v2, :pswitch_data_0

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unhandled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :pswitch_0
    iget v3, v10, Lcom/google/re2j/e;->b:I

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/re2j/f;->a(Lcom/google/re2j/f$a;II[IILcom/google/re2j/f$b;)Lcom/google/re2j/f$b;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    if-nez v9, :cond_2

    .line 7
    invoke-direct {p0, v10}, Lcom/google/re2j/f;->b(Lcom/google/re2j/e;)Lcom/google/re2j/f$b;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    .line 8
    :cond_2
    iput-object v10, v9, Lcom/google/re2j/f$b;->b:Lcom/google/re2j/e;

    .line 9
    :goto_0
    iget v2, v8, Lcom/google/re2j/f;->i:I

    if-lez v2, :cond_3

    iget-object v3, v9, Lcom/google/re2j/f$b;->a:[I

    if-eq v3, v0, :cond_3

    const/4 v4, 0x0

    .line 10
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    move-object v11, p1

    .line 11
    iget-object v0, v11, Lcom/google/re2j/f$a;->a:[Lcom/google/re2j/f$b;

    aput-object v9, v0, v1

    const/4 v0, 0x0

    goto/16 :goto_1

    :pswitch_2
    move-object v11, p1

    .line 12
    iget v1, v10, Lcom/google/re2j/e;->c:I

    move/from16 v12, p5

    not-int v2, v12

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    .line 13
    iget v3, v10, Lcom/google/re2j/e;->b:I

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/re2j/f;->a(Lcom/google/re2j/f$a;II[IILcom/google/re2j/f$b;)Lcom/google/re2j/f$b;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    move-object v11, p1

    move/from16 v12, p5

    .line 14
    iget v1, v10, Lcom/google/re2j/e;->c:I

    iget v2, v8, Lcom/google/re2j/f;->i:I

    if-ge v1, v2, :cond_5

    .line 15
    aget v13, v0, v1

    .line 16
    aput p3, v0, v1

    .line 17
    iget v3, v10, Lcom/google/re2j/e;->b:I

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/re2j/f;->a(Lcom/google/re2j/f$a;II[IILcom/google/re2j/f$b;)Lcom/google/re2j/f$b;

    .line 18
    iget v1, v10, Lcom/google/re2j/e;->c:I

    aput v13, v0, v1

    :cond_4
    :pswitch_4
    move-object v0, v9

    goto :goto_1

    .line 19
    :cond_5
    iget v3, v10, Lcom/google/re2j/e;->b:I

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/re2j/f;->a(Lcom/google/re2j/f$a;II[IILcom/google/re2j/f$b;)Lcom/google/re2j/f$b;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    move-object v11, p1

    move/from16 v12, p5

    .line 20
    iget v3, v10, Lcom/google/re2j/e;->b:I

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/re2j/f;->a(Lcom/google/re2j/f$a;II[IILcom/google/re2j/f$b;)Lcom/google/re2j/f$b;

    move-result-object v7

    .line 21
    iget v3, v10, Lcom/google/re2j/e;->c:I

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/google/re2j/f;->a(Lcom/google/re2j/f$a;II[IILcom/google/re2j/f$b;)Lcom/google/re2j/f$b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/google/re2j/e;)Lcom/google/re2j/f$b;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/re2j/f;->f:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/re2j/f;->f:I

    .line 3
    iget-object v1, p0, Lcom/google/re2j/f;->e:[Lcom/google/re2j/f$b;

    aget-object v0, v1, v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/re2j/f$b;

    iget-object v1, p0, Lcom/google/re2j/f;->h:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/google/re2j/f$b;-><init>(I)V

    .line 5
    :goto_0
    iput-object p1, v0, Lcom/google/re2j/f$b;->b:Lcom/google/re2j/e;

    return-object v0
.end method

.method private c(Lcom/google/re2j/f$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/re2j/f;->d(Lcom/google/re2j/f$a;I)V

    return-void
.end method

.method private d(Lcom/google/re2j/f$a;I)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/re2j/f$a;->d:I

    sub-int/2addr v0, p2

    .line 2
    iget v1, p0, Lcom/google/re2j/f;->f:I

    add-int/2addr v1, v0

    .line 3
    iget-object v0, p0, Lcom/google/re2j/f;->e:[Lcom/google/re2j/f$b;

    array-length v2, v0

    if-ge v2, v1, :cond_0

    .line 4
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/f$b;

    iput-object v0, p0, Lcom/google/re2j/f;->e:[Lcom/google/re2j/f$b;

    .line 5
    :cond_0
    :goto_0
    iget v0, p1, Lcom/google/re2j/f$a;->d:I

    if-ge p2, v0, :cond_2

    .line 6
    iget-object v0, p1, Lcom/google/re2j/f$a;->a:[Lcom/google/re2j/f$b;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/re2j/f;->e:[Lcom/google/re2j/f$b;

    iget v2, p0, Lcom/google/re2j/f;->f:I

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 8
    iput v2, p0, Lcom/google/re2j/f;->f:I

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/google/re2j/f$a;->b()V

    return-void
.end method

.method private e(Lcom/google/re2j/f$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/re2j/f;->e:[Lcom/google/re2j/f$b;

    array-length v1, v0

    iget v2, p0, Lcom/google/re2j/f;->f:I

    if-gt v1, v2, :cond_0

    .line 2
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/f$b;

    iput-object v0, p0, Lcom/google/re2j/f;->e:[Lcom/google/re2j/f$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/f;->e:[Lcom/google/re2j/f$b;

    iget v1, p0, Lcom/google/re2j/f;->f:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lcom/google/re2j/f;->f:I

    return-void
.end method

.method private g(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/re2j/f;->f:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/re2j/f;->e:[Lcom/google/re2j/f$b;

    aget-object v1, v1, v0

    .line 3
    new-array v2, p1, [I

    iput-object v2, v1, Lcom/google/re2j/f$b;->a:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/re2j/f;->h:[I

    return-void
.end method

.method private i(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/google/re2j/f;->f:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/re2j/f;->e:[Lcom/google/re2j/f$b;

    aget-object v2, v2, v1

    .line 3
    iget-object v2, v2, Lcom/google/re2j/f$b;->a:[I

    invoke-static {v2, v0, p1, v0}, Ljava/util/Arrays;->fill([IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j(Lcom/google/re2j/f$a;Lcom/google/re2j/f$a;IIIIIZ)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p5

    .line 1
    iget-object v0, v7, Lcom/google/re2j/f;->a:Lcom/google/re2j/k;

    iget-boolean v11, v0, Lcom/google/re2j/k;->e:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2
    :goto_0
    iget v0, v8, Lcom/google/re2j/f$a;->d:I

    if-ge v13, v0, :cond_9

    .line 3
    iget-object v0, v8, Lcom/google/re2j/f$a;->a:[Lcom/google/re2j/f$b;

    aget-object v6, v0, v13

    if-nez v6, :cond_0

    :goto_1
    move/from16 v14, p7

    goto/16 :goto_5

    :cond_0
    if-eqz v11, :cond_1

    .line 4
    iget-boolean v0, v7, Lcom/google/re2j/f;->g:Z

    if-eqz v0, :cond_1

    iget v0, v7, Lcom/google/re2j/f;->i:I

    if-lez v0, :cond_1

    iget-object v0, v7, Lcom/google/re2j/f;->h:[I

    aget v0, v0, v12

    iget-object v1, v6, Lcom/google/re2j/f$b;->a:[I

    aget v1, v1, v12

    if-ge v0, v1, :cond_1

    .line 5
    invoke-direct {p0, v6}, Lcom/google/re2j/f;->e(Lcom/google/re2j/f$b;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v6, Lcom/google/re2j/f$b;->b:Lcom/google/re2j/e;

    .line 7
    iget v1, v0, Lcom/google/re2j/e;->a:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 8
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bad inst"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/16 v1, 0xa

    if-eq v10, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 9
    :pswitch_2
    iget-object v1, v0, Lcom/google/re2j/e;->d:[I

    aget v1, v1, v12

    if-ne v10, v1, :cond_2

    goto :goto_2

    .line 10
    :pswitch_3
    invoke-virtual {v0, v10}, Lcom/google/re2j/e;->c(I)Z

    move-result v2

    :goto_2
    :pswitch_4
    move/from16 v14, p7

    goto :goto_4

    :pswitch_5
    const/4 v1, 0x2

    move/from16 v14, p7

    if-ne v14, v1, :cond_3

    if-nez p8, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    iget v1, v7, Lcom/google/re2j/f;->i:I

    if-lez v1, :cond_5

    if-eqz v11, :cond_4

    iget-boolean v3, v7, Lcom/google/re2j/f;->g:Z

    if-eqz v3, :cond_4

    iget-object v3, v7, Lcom/google/re2j/f;->h:[I

    aget v3, v3, v2

    if-ge v3, v9, :cond_5

    .line 12
    :cond_4
    iget-object v3, v6, Lcom/google/re2j/f$b;->a:[I

    aput v9, v3, v2

    .line 13
    iget-object v4, v7, Lcom/google/re2j/f;->h:[I

    invoke-static {v3, v12, v4, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    if-nez v11, :cond_6

    add-int/lit8 v1, v13, 0x1

    .line 14
    invoke-direct {p0, v8, v1}, Lcom/google/re2j/f;->d(Lcom/google/re2j/f$a;I)V

    .line 15
    :cond_6
    iput-boolean v2, v7, Lcom/google/re2j/f;->g:Z

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_7

    .line 16
    iget v2, v0, Lcom/google/re2j/e;->b:I

    iget-object v4, v6, Lcom/google/re2j/f$b;->a:[I

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/f;->a(Lcom/google/re2j/f$a;II[IILcom/google/re2j/f$b;)Lcom/google/re2j/f$b;

    move-result-object v6

    :cond_7
    if-eqz v6, :cond_8

    .line 17
    invoke-direct {p0, v6}, Lcom/google/re2j/f;->e(Lcom/google/re2j/f$b;)V

    .line 18
    iget-object v0, v8, Lcom/google/re2j/f$a;->a:[Lcom/google/re2j/f$b;

    const/4 v1, 0x0

    aput-object v1, v0, v13

    :cond_8
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 19
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/re2j/f$a;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method f(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/re2j/f;->i:I

    .line 2
    iget-object v0, p0, Lcom/google/re2j/f;->h:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/re2j/f;->g(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/re2j/f;->i(I)V

    :goto_0
    return-void
.end method

.method h(Lcom/google/re2j/g;II)Z
    .locals 22

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    .line 1
    iget-object v0, v9, Lcom/google/re2j/f;->a:Lcom/google/re2j/k;

    iget v12, v0, Lcom/google/re2j/k;->c:I

    const/4 v13, -0x1

    const/4 v14, 0x0

    if-ne v12, v13, :cond_0

    return v14

    :cond_0
    const/4 v15, 0x1

    if-eq v11, v15, :cond_1

    const/4 v0, 0x2

    if-ne v11, v0, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    return v14

    .line 2
    :cond_2
    iput-boolean v14, v9, Lcom/google/re2j/f;->g:Z

    .line 3
    iget-object v0, v9, Lcom/google/re2j/f;->h:[I

    iget-object v1, v9, Lcom/google/re2j/f;->b:Lcom/google/re2j/j;

    iget v1, v1, Lcom/google/re2j/j;->d:I

    invoke-static {v0, v14, v1, v13}, Ljava/util/Arrays;->fill([IIII)V

    .line 4
    iget-object v0, v9, Lcom/google/re2j/f;->c:Lcom/google/re2j/f$a;

    iget-object v1, v9, Lcom/google/re2j/f;->d:Lcom/google/re2j/f$a;

    .line 5
    invoke-virtual/range {p1 .. p2}, Lcom/google/re2j/g;->f(I)I

    move-result v2

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v4, v2, 0x7

    const/4 v5, -0x8

    if-eq v2, v5, :cond_3

    add-int v2, p2, v4

    .line 6
    invoke-virtual {v10, v2}, Lcom/google/re2j/g;->f(I)I

    move-result v2

    shr-int/lit8 v5, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v5, -0x1

    :goto_0
    if-nez p2, :cond_4

    .line 7
    invoke-static {v13, v3}, Lcom/google/re2j/p;->a(II)I

    move-result v6

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual/range {p1 .. p2}, Lcom/google/re2j/g;->b(I)I

    move-result v6

    :goto_1
    move-object/from16 v16, v0

    move-object v8, v1

    move/from16 v0, p2

    .line 9
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/google/re2j/f$a;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    and-int/lit8 v1, v12, 0x4

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    iget-boolean v1, v9, Lcom/google/re2j/f;->g:Z

    if-eqz v1, :cond_6

    :goto_3
    move-object v15, v8

    goto/16 :goto_7

    .line 11
    :cond_6
    iget-object v1, v9, Lcom/google/re2j/f;->a:Lcom/google/re2j/k;

    iget-object v1, v1, Lcom/google/re2j/k;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v9, Lcom/google/re2j/f;->a:Lcom/google/re2j/k;

    iget v1, v1, Lcom/google/re2j/k;->i:I

    if-eq v5, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/google/re2j/g;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 12
    iget-object v1, v9, Lcom/google/re2j/f;->a:Lcom/google/re2j/k;

    invoke-virtual {v10, v1, v0}, Lcom/google/re2j/g;->e(Lcom/google/re2j/k;I)I

    move-result v1

    if-gez v1, :cond_7

    goto :goto_3

    :cond_7
    add-int/2addr v0, v1

    .line 13
    invoke-virtual {v10, v0}, Lcom/google/re2j/g;->f(I)I

    move-result v1

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v4, v1, 0x7

    add-int v1, v0, v4

    .line 14
    invoke-virtual {v10, v1}, Lcom/google/re2j/g;->f(I)I

    move-result v1

    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    move v7, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move v5, v3

    goto :goto_4

    :cond_8
    move v7, v0

    move/from16 v18, v2

    move/from16 v19, v3

    :goto_4
    move/from16 v17, v4

    .line 15
    iget-boolean v0, v9, Lcom/google/re2j/f;->g:Z

    if-nez v0, :cond_b

    if-eqz v7, :cond_9

    if-nez v11, :cond_b

    .line 16
    :cond_9
    iget v0, v9, Lcom/google/re2j/f;->i:I

    if-lez v0, :cond_a

    .line 17
    iget-object v0, v9, Lcom/google/re2j/f;->h:[I

    aput v7, v0, v14

    .line 18
    :cond_a
    iget-object v0, v9, Lcom/google/re2j/f;->b:Lcom/google/re2j/j;

    iget v2, v0, Lcom/google/re2j/j;->c:I

    iget-object v4, v9, Lcom/google/re2j/f;->h:[I

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v3, v7

    move v14, v5

    move v5, v6

    move-object/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/f;->a(Lcom/google/re2j/f$a;II[IILcom/google/re2j/f$b;)Lcom/google/re2j/f$b;

    goto :goto_5

    :cond_b
    move v14, v5

    :goto_5
    add-int v6, v7, v17

    .line 19
    invoke-virtual {v10, v6}, Lcom/google/re2j/g;->b(I)I

    move-result v20

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/google/re2j/g;->c()I

    move-result v0

    if-ne v7, v0, :cond_c

    const/16 v21, 0x1

    goto :goto_6

    :cond_c
    const/16 v21, 0x0

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v8

    move v3, v7

    move v4, v6

    move/from16 v5, v19

    move/from16 v19, v6

    move/from16 v6, v20

    move/from16 v7, p3

    move-object v15, v8

    move/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/google/re2j/f;->j(Lcom/google/re2j/f$a;Lcom/google/re2j/f$a;IIIIIZ)V

    if-nez v17, :cond_d

    goto :goto_7

    .line 21
    :cond_d
    iget v0, v9, Lcom/google/re2j/f;->i:I

    if-nez v0, :cond_e

    iget-boolean v0, v9, Lcom/google/re2j/f;->g:Z

    if-eqz v0, :cond_e

    .line 22
    :goto_7
    invoke-direct {v9, v15}, Lcom/google/re2j/f;->c(Lcom/google/re2j/f$a;)V

    .line 23
    iget-boolean v0, v9, Lcom/google/re2j/f;->g:Z

    return v0

    :cond_e
    if-eq v14, v13, :cond_f

    add-int v6, v19, v18

    .line 24
    invoke-virtual {v10, v6}, Lcom/google/re2j/g;->f(I)I

    move-result v0

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    move v2, v0

    move v5, v1

    goto :goto_8

    :cond_f
    move v5, v14

    move/from16 v2, v18

    :goto_8
    move v3, v14

    move-object/from16 v8, v16

    move/from16 v4, v18

    move/from16 v0, v19

    move/from16 v6, v20

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x1

    goto/16 :goto_2
.end method

.method k()[I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/re2j/f;->i:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/re2j/p;->a:[I

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/re2j/f;->h:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

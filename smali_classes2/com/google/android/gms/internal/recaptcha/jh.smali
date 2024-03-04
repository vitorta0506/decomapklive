.class final Lcom/google/android/gms/internal/recaptcha/jh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/uh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/uh<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final q:[I

.field private static final r:Lsun/misc/Unsafe;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/recaptcha/gh;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:[I

.field private final j:I

.field private final k:I

.field private final l:Lcom/google/android/gms/internal/recaptcha/ug;

.field private final m:Lcom/google/android/gms/internal/recaptcha/ki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/ki<",
            "**>;"
        }
    .end annotation
.end field

.field private final n:Lcom/google/android/gms/internal/recaptcha/qf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/qf<",
            "*>;"
        }
    .end annotation
.end field

.field private final o:Lcom/google/android/gms/internal/recaptcha/lh;

.field private final p:Lcom/google/android/gms/internal/recaptcha/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/jh;->q:[I

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/vi;->l()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/jh;->r:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/recaptcha/gh;ZZ[IIILcom/google/android/gms/internal/recaptcha/lh;Lcom/google/android/gms/internal/recaptcha/ug;Lcom/google/android/gms/internal/recaptcha/ki;Lcom/google/android/gms/internal/recaptcha/qf;Lcom/google/android/gms/internal/recaptcha/bh;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/recaptcha/gh;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/recaptcha/lh;",
            "Lcom/google/android/gms/internal/recaptcha/ug;",
            "Lcom/google/android/gms/internal/recaptcha/ki<",
            "**>;",
            "Lcom/google/android/gms/internal/recaptcha/qf<",
            "*>;",
            "Lcom/google/android/gms/internal/recaptcha/bh;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->b:[Ljava/lang/Object;

    move v3, p3

    iput v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->c:I

    move v3, p4

    iput v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->d:I

    .line 1
    instance-of v3, v1, Lcom/google/android/gms/internal/recaptcha/dg;

    iput-boolean v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->g:Z

    move v3, p6

    iput-boolean v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->h:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, p5}, Lcom/google/android/gms/internal/recaptcha/qf;->h(Lcom/google/android/gms/internal/recaptcha/gh;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->f:Z

    move-object v3, p8

    iput-object v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->i:[I

    move v3, p9

    iput v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->j:I

    move v3, p10

    iput v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->k:I

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->o:Lcom/google/android/gms/internal/recaptcha/lh;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    iput-object v2, v0, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    iput-object v1, v0, Lcom/google/android/gms/internal/recaptcha/jh;->e:Lcom/google/android/gms/internal/recaptcha/gh;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/recaptcha/jh;->p:Lcom/google/android/gms/internal/recaptcha/bh;

    return-void
.end method

.method private final A(Ljava/lang/Object;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/jh;->r:Lsun/misc/Unsafe;

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 1
    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 3
    aget v8, v8, v3

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/jh;->F(I)I

    move-result v9

    const/16 v10, 0x11

    const/4 v11, 0x1

    if-gt v9, v10, :cond_0

    iget-object v10, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    add-int/lit8 v12, v3, 0x2

    .line 4
    aget v10, v10, v12

    and-int v12, v10, v1

    ushr-int/lit8 v10, v10, 0x14

    shl-int v10, v11, v10

    if-eq v12, v6, :cond_1

    int-to-long v5, v12

    .line 5
    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v6, v12

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :cond_1
    :goto_1
    and-int/2addr v7, v1

    int-to-long v12, v7

    const/16 v7, 0x3f

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_b

    .line 6
    :pswitch_0
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/recaptcha/gh;

    .line 8
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v9

    .line 9
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/recaptcha/hf;->c(ILcom/google/android/gms/internal/recaptcha/gh;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v7

    goto/16 :goto_3

    .line 10
    :pswitch_1
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 11
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    add-long v11, v9, v9

    shr-long/2addr v9, v7

    xor-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v7

    goto/16 :goto_6

    .line 12
    :pswitch_2
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 13
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    add-int v9, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v9

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_6

    .line 14
    :pswitch_3
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 15
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_a

    .line 16
    :pswitch_4
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 17
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_9

    .line 18
    :pswitch_5
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 19
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v7

    goto/16 :goto_6

    .line 20
    :pswitch_6
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 21
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_6

    .line 22
    :pswitch_7
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 23
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/recaptcha/zzpy;

    shl-int/lit8 v8, v8, 0x3

    .line 24
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    .line 25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzd()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto/16 :goto_4

    .line 26
    :pswitch_8
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 27
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 28
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/recaptcha/wh;->Q(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v7

    goto/16 :goto_3

    .line 29
    :pswitch_9
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 30
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 31
    instance-of v9, v7, Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz v9, :cond_2

    .line 32
    check-cast v7, Lcom/google/android/gms/internal/recaptcha/zzpy;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzd()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto/16 :goto_4

    .line 34
    :cond_2
    check-cast v7, Ljava/lang/String;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    .line 35
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->j(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_6

    .line 36
    :pswitch_a
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 37
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_5

    .line 38
    :pswitch_b
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 39
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_9

    .line 40
    :pswitch_c
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 41
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_a

    .line 42
    :pswitch_d
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 43
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v7

    goto/16 :goto_6

    .line 44
    :pswitch_e
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 45
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v8

    goto/16 :goto_8

    .line 46
    :pswitch_f
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 47
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v8

    goto/16 :goto_8

    .line 48
    :pswitch_10
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 49
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_9

    .line 50
    :pswitch_11
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 51
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_a

    .line 52
    :pswitch_12
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->L(I)Ljava/lang/Object;

    move-result-object v9

    .line 53
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/recaptcha/bh;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    goto/16 :goto_3

    .line 54
    :pswitch_13
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 55
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v9

    .line 56
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/recaptcha/wh;->L(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v7

    goto/16 :goto_3

    .line 57
    :pswitch_14
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 58
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->V(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 59
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto/16 :goto_2

    .line 60
    :pswitch_15
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 61
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->T(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 62
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto/16 :goto_2

    .line 63
    :pswitch_16
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 64
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->K(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 65
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto/16 :goto_2

    .line 66
    :pswitch_17
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 67
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->I(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 68
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto/16 :goto_2

    .line 69
    :pswitch_18
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 70
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->G(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 71
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto/16 :goto_2

    .line 72
    :pswitch_19
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 73
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->Y(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 74
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto/16 :goto_2

    .line 75
    :pswitch_1a
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 76
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->D(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 77
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto/16 :goto_2

    .line 78
    :pswitch_1b
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 79
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->I(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 80
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto/16 :goto_2

    .line 81
    :pswitch_1c
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 82
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->K(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 83
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto :goto_2

    .line 84
    :pswitch_1d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 85
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->N(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 86
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto :goto_2

    .line 87
    :pswitch_1e
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 88
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->a0(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 89
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto :goto_2

    .line 90
    :pswitch_1f
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 91
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->P(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 92
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto :goto_2

    .line 93
    :pswitch_20
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 94
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->I(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 95
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto :goto_2

    .line 96
    :pswitch_21
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 97
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/wh;->K(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 98
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    :goto_2
    add-int/2addr v8, v9

    goto/16 :goto_6

    .line 99
    :pswitch_22
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 100
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->U(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 101
    :pswitch_23
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 102
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->S(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 103
    :pswitch_24
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 104
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->J(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 105
    :pswitch_25
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 106
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->H(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 107
    :pswitch_26
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 108
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->F(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 109
    :pswitch_27
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 110
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->X(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 111
    :pswitch_28
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 112
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/recaptcha/wh;->E(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    .line 113
    :pswitch_29
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v9

    .line 114
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/recaptcha/wh;->R(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v7

    goto :goto_3

    .line 115
    :pswitch_2a
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/recaptcha/wh;->W(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 116
    :pswitch_2b
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 117
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->A(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 118
    :pswitch_2c
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 119
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->H(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 120
    :pswitch_2d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 121
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->J(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 122
    :pswitch_2e
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 123
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->M(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 124
    :pswitch_2f
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 125
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->Z(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 126
    :pswitch_30
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 127
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->O(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 128
    :pswitch_31
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 129
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->H(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 130
    :pswitch_32
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 131
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->J(ILjava/util/List;Z)I

    move-result v7

    :goto_3
    add-int/2addr v4, v7

    goto/16 :goto_b

    :pswitch_33
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 132
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/recaptcha/gh;

    .line 133
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v9

    .line 134
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/recaptcha/hf;->c(ILcom/google/android/gms/internal/recaptcha/gh;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v7

    goto :goto_3

    :pswitch_34
    and-int v9, v5, v10

    if-eqz v9, :cond_4

    .line 135
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    add-long v11, v9, v9

    shr-long/2addr v9, v7

    xor-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v7

    goto/16 :goto_6

    :pswitch_35
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 136
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    add-int v9, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v9

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_36
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 137
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_a

    :pswitch_37
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 138
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_9

    :pswitch_38
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 139
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_39
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 140
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_3a
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 141
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/recaptcha/zzpy;

    shl-int/lit8 v8, v8, 0x3

    .line 142
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    .line 143
    invoke-virtual {v7}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzd()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    :goto_4
    add-int/2addr v9, v7

    add-int/2addr v8, v9

    goto/16 :goto_7

    :pswitch_3b
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 144
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 145
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/recaptcha/wh;->Q(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3c
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 146
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 147
    instance-of v9, v7, Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz v9, :cond_3

    .line 148
    check-cast v7, Lcom/google/android/gms/internal/recaptcha/zzpy;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    .line 149
    invoke-virtual {v7}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzd()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v9

    goto :goto_4

    .line 150
    :cond_3
    check-cast v7, Ljava/lang/String;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    .line 151
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->j(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    :pswitch_3d
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 152
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    :goto_5
    add-int/2addr v7, v11

    goto/16 :goto_3

    :pswitch_3e
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 153
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto :goto_9

    :pswitch_3f
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 154
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    goto :goto_a

    :pswitch_40
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 155
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v7

    :goto_6
    add-int/2addr v8, v7

    :goto_7
    add-int/2addr v4, v8

    goto :goto_b

    :pswitch_41
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 156
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v8

    goto :goto_8

    :pswitch_42
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 157
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v8

    :goto_8
    add-int/2addr v7, v8

    goto/16 :goto_3

    :pswitch_43
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 158
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    :goto_9
    add-int/lit8 v7, v7, 0x4

    goto/16 :goto_3

    :pswitch_44
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 159
    invoke-static {v7}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v7

    :goto_a
    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_3

    :cond_4
    :goto_b
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 161
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ki;->a(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->f:Z

    if-nez v0, :cond_6

    return v4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 163
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final B(Ljava/lang/Object;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/jh;->r:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 1
    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/jh;->F(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 3
    aget v6, v6, v2

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/recaptcha/zzqx;->zzJ:Lcom/google/android/gms/internal/recaptcha/zzqx;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/zzqx;->zza()I

    move-result v4

    if-lt v5, v4, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/recaptcha/zzqx;->zzW:Lcom/google/android/gms/internal/recaptcha/zzqx;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/zzqx;->zza()I

    move-result v4

    if-gt v5, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    add-int/lit8 v9, v2, 0x2

    .line 7
    aget v4, v4, v9

    :cond_0
    const/16 v4, 0x3f

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_a

    .line 8
    :pswitch_0
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/recaptcha/gh;

    .line 10
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    .line 11
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/recaptcha/hf;->c(ILcom/google/android/gms/internal/recaptcha/gh;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v4

    goto/16 :goto_2

    .line 12
    :pswitch_1
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    add-long v9, v7, v7

    shr-long v6, v7, v4

    xor-long/2addr v6, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v4

    goto/16 :goto_5

    .line 14
    :pswitch_2
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_5

    .line 16
    :pswitch_3
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 17
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_9

    .line 18
    :pswitch_4
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 19
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_8

    .line 20
    :pswitch_5
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v4

    goto/16 :goto_5

    .line 22
    :pswitch_6
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 23
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_5

    .line 24
    :pswitch_7
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 25
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/recaptcha/zzpy;

    shl-int/lit8 v5, v6, 0x3

    .line 26
    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto/16 :goto_3

    .line 28
    :pswitch_8
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 30
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/recaptcha/wh;->Q(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v4

    goto/16 :goto_2

    .line 31
    :pswitch_9
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 33
    instance-of v5, v4, Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz v5, :cond_1

    .line 34
    check-cast v4, Lcom/google/android/gms/internal/recaptcha/zzpy;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto/16 :goto_3

    .line 36
    :cond_1
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    .line 37
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->j(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_5

    .line 38
    :pswitch_a
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 39
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_4

    .line 40
    :pswitch_b
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 41
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_8

    .line 42
    :pswitch_c
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 43
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_9

    .line 44
    :pswitch_d
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v4

    goto/16 :goto_5

    .line 46
    :pswitch_e
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v4

    goto/16 :goto_7

    .line 48
    :pswitch_f
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 49
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v4

    goto/16 :goto_7

    .line 50
    :pswitch_10
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 51
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_8

    .line 52
    :pswitch_11
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 53
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_9

    .line 54
    :pswitch_12
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->L(I)Ljava/lang/Object;

    move-result-object v5

    .line 55
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/recaptcha/bh;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    .line 56
    :pswitch_13
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 57
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    .line 58
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/recaptcha/wh;->L(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v4

    goto/16 :goto_2

    .line 59
    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 60
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->V(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 61
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto/16 :goto_1

    .line 62
    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 63
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->T(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 64
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto/16 :goto_1

    .line 65
    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 66
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->K(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 67
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto/16 :goto_1

    .line 68
    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 69
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->I(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 70
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto/16 :goto_1

    .line 71
    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 72
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->G(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 73
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto/16 :goto_1

    .line 74
    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 75
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->Y(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 76
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto/16 :goto_1

    .line 77
    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 78
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->D(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 79
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto/16 :goto_1

    .line 80
    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 81
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->I(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 82
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto/16 :goto_1

    .line 83
    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 84
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->K(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 85
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto :goto_1

    .line 86
    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 87
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->N(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 88
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto :goto_1

    .line 89
    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 90
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->a0(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 91
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto :goto_1

    .line 92
    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 93
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->P(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 94
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto :goto_1

    .line 95
    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 96
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->I(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 97
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto :goto_1

    .line 98
    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 99
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/wh;->K(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 100
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    :goto_1
    add-int/2addr v5, v6

    goto/16 :goto_5

    .line 101
    :pswitch_22
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 102
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->U(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 103
    :pswitch_23
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 104
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->S(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 105
    :pswitch_24
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 106
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->J(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 107
    :pswitch_25
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 108
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->H(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 109
    :pswitch_26
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 110
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->F(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 111
    :pswitch_27
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 112
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->X(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 113
    :pswitch_28
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 114
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/recaptcha/wh;->E(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_2

    .line 115
    :pswitch_29
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 116
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    .line 117
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/recaptcha/wh;->R(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v4

    goto :goto_2

    .line 118
    :pswitch_2a
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 119
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/recaptcha/wh;->W(ILjava/util/List;)I

    move-result v4

    goto :goto_2

    .line 120
    :pswitch_2b
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 121
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->A(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 122
    :pswitch_2c
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 123
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->H(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 124
    :pswitch_2d
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 125
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->J(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 126
    :pswitch_2e
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 127
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->M(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 128
    :pswitch_2f
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 129
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->Z(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 130
    :pswitch_30
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 131
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->O(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 132
    :pswitch_31
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 133
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->H(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 134
    :pswitch_32
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 135
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->J(ILjava/util/List;Z)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto/16 :goto_a

    .line 136
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/recaptcha/gh;

    .line 138
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    .line 139
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/recaptcha/hf;->c(ILcom/google/android/gms/internal/recaptcha/gh;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v4

    goto :goto_2

    .line 140
    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    add-long v9, v7, v7

    shr-long v6, v7, v4

    xor-long/2addr v6, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v4

    goto/16 :goto_5

    .line 142
    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_5

    .line 144
    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 145
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_9

    .line 146
    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 147
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_8

    .line 148
    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v4

    goto/16 :goto_5

    .line 150
    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto/16 :goto_5

    .line 152
    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/recaptcha/zzpy;

    shl-int/lit8 v5, v6, 0x3

    .line 154
    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    .line 155
    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    :goto_3
    add-int/2addr v6, v4

    add-int/2addr v5, v6

    goto/16 :goto_6

    .line 156
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 158
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/recaptcha/wh;->Q(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)I

    move-result v4

    goto/16 :goto_2

    .line 159
    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 161
    instance-of v5, v4, Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz v5, :cond_2

    .line 162
    check-cast v4, Lcom/google/android/gms/internal/recaptcha/zzpy;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    .line 163
    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    goto :goto_3

    .line 164
    :cond_2
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    .line 165
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->j(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    .line 166
    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 167
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 168
    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 169
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto :goto_8

    .line 170
    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 171
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    goto :goto_9

    .line 172
    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v4

    :goto_5
    add-int/2addr v5, v4

    :goto_6
    add-int/2addr v3, v5

    goto :goto_a

    .line 174
    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v4

    goto :goto_7

    .line 176
    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 177
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v4

    :goto_7
    add-int/2addr v6, v4

    add-int/2addr v3, v6

    goto :goto_a

    .line 178
    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 179
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    :goto_8
    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_2

    .line 180
    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 181
    invoke-static {v4}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v4

    :goto_9
    add-int/lit8 v4, v4, 0x8

    goto/16 :goto_2

    :cond_3
    :goto_a
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 183
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 184
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v3, p1

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static C(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final D(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static F(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final G(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static H(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final I(I)Lcom/google/android/gms/internal/recaptcha/hg;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/hg;

    return-object p1
.end method

.method private final J(I)Lcom/google/android/gms/internal/recaptcha/uh;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->b:[Ljava/lang/Object;

    .line 1
    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/uh;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/jh;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/jh;->b:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/recaptcha/ki<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 1
    aget v0, v0, p2

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/jh;->I(I)Lcom/google/android/gms/internal/recaptcha/hg;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p3

    .line 5
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/jh;->L(I)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/recaptcha/ah;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/recaptcha/ah;->c()Lcom/google/android/gms/internal/recaptcha/zg;

    move-result-object p2

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/recaptcha/hg;->h(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_3

    .line 11
    invoke-virtual {p4}, Lcom/google/android/gms/internal/recaptcha/ki;->f()Ljava/lang/Object;

    move-result-object p3

    .line 12
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/recaptcha/ah;->b(Lcom/google/android/gms/internal/recaptcha/zg;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzb:Lcom/google/android/gms/internal/recaptcha/zzpy;

    .line 14
    new-array v3, v3, [B

    .line 15
    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/hf;->n([B)Lcom/google/android/gms/internal/recaptcha/hf;

    move-result-object v4

    .line 16
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, p2, v5, v2}, Lcom/google/android/gms/internal/recaptcha/ah;->e(Lcom/google/android/gms/internal/recaptcha/hf;Lcom/google/android/gms/internal/recaptcha/zg;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/recaptcha/te;->a(Lcom/google/android/gms/internal/recaptcha/hf;[B)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v2

    invoke-virtual {p4, p3, v0, v2}, Lcom/google/android/gms/internal/recaptcha/ki;->k(Ljava/lang/Object;ILcom/google/android/gms/internal/recaptcha/zzpy;)V

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 19
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    return-object p3
.end method

.method private final L(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static M(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final N(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/recaptcha/mg;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 8
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method private final i(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 2
    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 3
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/recaptcha/mg;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    return-void

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 10
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    :cond_4
    return-void
.end method

.method private final j(Ljava/lang/Object;ILcom/google/android/gms/internal/recaptcha/sh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/jh;->p(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 1
    invoke-interface {p3}, Lcom/google/android/gms/internal/recaptcha/sh;->L()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->g:Z

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/recaptcha/sh;->K()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/recaptcha/sh;->H()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final k(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/jh;->D(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final l(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->D(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final m(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/recaptcha/bj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->f:Z

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 1
    array-length v3, v3

    sget-object v4, Lcom/google/android/gms/internal/recaptcha/jh;->r:Lsun/misc/Unsafe;

    const v5, 0xfffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0xfffff

    :goto_0
    if-ge v7, v3, :cond_4

    .line 2
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 3
    aget v11, v11, v7

    invoke-static {v10}, Lcom/google/android/gms/internal/recaptcha/jh;->F(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_1

    iget-object v13, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    add-int/lit8 v15, v7, 0x2

    .line 4
    aget v13, v13, v15

    and-int v15, v13, v5

    if-eq v15, v9, :cond_0

    int-to-long v8, v15

    .line 5
    invoke-virtual {v4, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v9, v15

    :cond_0
    ushr-int/lit8 v13, v13, 0x14

    shl-int v13, v14, v13

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    and-int/2addr v10, v5

    int-to-long v5, v10

    packed-switch v12, :pswitch_data_0

    :cond_2
    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 6
    :pswitch_0
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 7
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v6

    .line 8
    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto :goto_2

    .line 9
    :pswitch_1
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 10
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->w(IJ)V

    goto :goto_2

    .line 11
    :pswitch_2
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 12
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->A(II)V

    goto :goto_2

    .line 13
    :pswitch_3
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 14
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->G(IJ)V

    goto :goto_2

    .line 15
    :pswitch_4
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 16
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->y(II)V

    goto :goto_2

    .line 17
    :pswitch_5
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 18
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->q(II)V

    goto :goto_2

    .line 19
    :pswitch_6
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 20
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->C(II)V

    goto :goto_2

    .line 21
    :pswitch_7
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 22
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->F(ILcom/google/android/gms/internal/recaptcha/zzpy;)V

    goto :goto_2

    .line 23
    :pswitch_8
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 24
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 25
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v6

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->z(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_2

    .line 26
    :pswitch_9
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 27
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->v(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V

    goto/16 :goto_2

    .line 28
    :pswitch_a
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 29
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->u(Ljava/lang/Object;J)Z

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->g(IZ)V

    goto/16 :goto_2

    .line 30
    :pswitch_b
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 31
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->o(II)V

    goto/16 :goto_2

    .line 32
    :pswitch_c
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 33
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->v(IJ)V

    goto/16 :goto_2

    .line 34
    :pswitch_d
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 35
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->k(II)V

    goto/16 :goto_2

    .line 36
    :pswitch_e
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 37
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->K(IJ)V

    goto/16 :goto_2

    .line 38
    :pswitch_f
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 39
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->h(IJ)V

    goto/16 :goto_2

    .line 40
    :pswitch_10
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 41
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->z(Ljava/lang/Object;J)F

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->s(IF)V

    goto/16 :goto_2

    .line 42
    :pswitch_11
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 43
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->y(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->l(ID)V

    goto/16 :goto_2

    .line 44
    :pswitch_12
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2, v11, v5, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->n(Lcom/google/android/gms/internal/recaptcha/bj;ILjava/lang/Object;I)V

    goto/16 :goto_2

    .line 45
    :pswitch_13
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 46
    aget v10, v10, v7

    .line 47
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 48
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v6

    .line 49
    invoke-static {v10, v5, v2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->o(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_2

    .line 50
    :pswitch_14
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 51
    aget v10, v10, v7

    .line 52
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 53
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->v(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 54
    :pswitch_15
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 55
    aget v10, v10, v7

    .line 56
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 57
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->u(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 58
    :pswitch_16
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 59
    aget v10, v10, v7

    .line 60
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 61
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->t(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 62
    :pswitch_17
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 63
    aget v10, v10, v7

    .line 64
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 65
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->s(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 66
    :pswitch_18
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 67
    aget v10, v10, v7

    .line 68
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 69
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->k(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 70
    :pswitch_19
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 71
    aget v10, v10, v7

    .line 72
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 73
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->x(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 74
    :pswitch_1a
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 75
    aget v10, v10, v7

    .line 76
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 77
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->h(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 78
    :pswitch_1b
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 79
    aget v10, v10, v7

    .line 80
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 81
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->l(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 82
    :pswitch_1c
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 83
    aget v10, v10, v7

    .line 84
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 85
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->m(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 86
    :pswitch_1d
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 87
    aget v10, v10, v7

    .line 88
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 89
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->p(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 90
    :pswitch_1e
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 91
    aget v10, v10, v7

    .line 92
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 93
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->y(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 94
    :pswitch_1f
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 95
    aget v10, v10, v7

    .line 96
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 97
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->q(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 98
    :pswitch_20
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 99
    aget v10, v10, v7

    .line 100
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 101
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->n(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 102
    :pswitch_21
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 103
    aget v10, v10, v7

    .line 104
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 105
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/recaptcha/wh;->j(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 106
    :pswitch_22
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 107
    aget v10, v10, v7

    .line 108
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v11, 0x0

    .line 109
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/recaptcha/wh;->v(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    :pswitch_23
    const/4 v11, 0x0

    .line 110
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 111
    aget v10, v10, v7

    .line 112
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 113
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/recaptcha/wh;->u(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    :pswitch_24
    const/4 v11, 0x0

    .line 114
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 115
    aget v10, v10, v7

    .line 116
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 117
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/recaptcha/wh;->t(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    :pswitch_25
    const/4 v11, 0x0

    .line 118
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 119
    aget v10, v10, v7

    .line 120
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 121
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/recaptcha/wh;->s(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    :pswitch_26
    const/4 v11, 0x0

    .line 122
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 123
    aget v10, v10, v7

    .line 124
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 125
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/recaptcha/wh;->k(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    :pswitch_27
    const/4 v11, 0x0

    .line 126
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 127
    aget v10, v10, v7

    .line 128
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 129
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/recaptcha/wh;->x(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_2

    .line 130
    :pswitch_28
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 131
    aget v10, v10, v7

    .line 132
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 133
    invoke-static {v10, v5, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->i(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;)V

    goto/16 :goto_2

    .line 134
    :pswitch_29
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 135
    aget v10, v10, v7

    .line 136
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 137
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v6

    .line 138
    invoke-static {v10, v5, v2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->r(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_2

    .line 139
    :pswitch_2a
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 140
    aget v10, v10, v7

    .line 141
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 142
    invoke-static {v10, v5, v2}, Lcom/google/android/gms/internal/recaptcha/wh;->w(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;)V

    goto/16 :goto_2

    .line 143
    :pswitch_2b
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 144
    aget v10, v10, v7

    .line 145
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    .line 146
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/recaptcha/wh;->h(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_3

    :pswitch_2c
    const/4 v12, 0x0

    .line 147
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 148
    aget v10, v10, v7

    .line 149
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 150
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/recaptcha/wh;->l(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_3

    :pswitch_2d
    const/4 v12, 0x0

    .line 151
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 152
    aget v10, v10, v7

    .line 153
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 154
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/recaptcha/wh;->m(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_3

    :pswitch_2e
    const/4 v12, 0x0

    .line 155
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 156
    aget v10, v10, v7

    .line 157
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 158
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/recaptcha/wh;->p(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_3

    :pswitch_2f
    const/4 v12, 0x0

    .line 159
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 160
    aget v10, v10, v7

    .line 161
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 162
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/recaptcha/wh;->y(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_3

    :pswitch_30
    const/4 v12, 0x0

    .line 163
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 164
    aget v10, v10, v7

    .line 165
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 166
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/recaptcha/wh;->q(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_3

    :pswitch_31
    const/4 v12, 0x0

    .line 167
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 168
    aget v10, v10, v7

    .line 169
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 170
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/recaptcha/wh;->n(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_3

    :pswitch_32
    const/4 v12, 0x0

    .line 171
    iget-object v10, v0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 172
    aget v10, v10, v7

    .line 173
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 174
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/recaptcha/wh;->j(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_3

    :pswitch_33
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 175
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v6

    .line 176
    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_3

    :pswitch_34
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 177
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->w(IJ)V

    goto/16 :goto_3

    :pswitch_35
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 178
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->A(II)V

    goto/16 :goto_3

    :pswitch_36
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 179
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->G(IJ)V

    goto/16 :goto_3

    :pswitch_37
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 180
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->y(II)V

    goto/16 :goto_3

    :pswitch_38
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 181
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->q(II)V

    goto/16 :goto_3

    :pswitch_39
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 182
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->C(II)V

    goto/16 :goto_3

    :pswitch_3a
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 183
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->F(ILcom/google/android/gms/internal/recaptcha/zzpy;)V

    goto/16 :goto_3

    :pswitch_3b
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 184
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 185
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v6

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->z(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_3

    :pswitch_3c
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 186
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->v(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V

    goto/16 :goto_3

    :pswitch_3d
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 187
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->B(Ljava/lang/Object;J)Z

    move-result v5

    .line 188
    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->g(IZ)V

    goto :goto_3

    :pswitch_3e
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 189
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->o(II)V

    goto :goto_3

    :pswitch_3f
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 190
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->v(IJ)V

    goto :goto_3

    :pswitch_40
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 191
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->k(II)V

    goto :goto_3

    :pswitch_41
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 192
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->K(IJ)V

    goto :goto_3

    :pswitch_42
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 193
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->h(IJ)V

    goto :goto_3

    :pswitch_43
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 194
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->g(Ljava/lang/Object;J)F

    move-result v5

    .line 195
    invoke-interface {v2, v11, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->s(IF)V

    goto :goto_3

    :pswitch_44
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 196
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->f(Ljava/lang/Object;J)D

    move-result-wide v5

    .line 197
    invoke-interface {v2, v11, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->l(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x3

    const v5, 0xfffff

    goto/16 :goto_0

    .line 198
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 199
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/recaptcha/ki;->p(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V

    return-void

    .line 200
    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 201
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 v1, 0x0

    .line 202
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final n(Lcom/google/android/gms/internal/recaptcha/bj;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/bj;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/recaptcha/jh;->L(I)Ljava/lang/Object;

    move-result-object p4

    .line 2
    check-cast p4, Lcom/google/android/gms/internal/recaptcha/ah;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/recaptcha/ah;->c()Lcom/google/android/gms/internal/recaptcha/zg;

    move-result-object p4

    .line 3
    check-cast p3, Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 4
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/recaptcha/bj;->b(ILcom/google/android/gms/internal/recaptcha/zg;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final o(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static p(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final q(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/jh;->D(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/jh;->F(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v4

    .line 6
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v5

    :cond_1
    return v4

    .line 7
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v4

    .line 8
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v4

    .line 9
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4

    .line 10
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v5

    :cond_5
    return v4

    .line 11
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v4

    .line 12
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzb:Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/recaptcha/zzpy;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v4

    .line 13
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4

    .line 14
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 15
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v4

    .line 17
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz p2, :cond_c

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzb:Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/recaptcha/zzpy;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v4

    .line 19
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 21
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->B(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 22
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v5

    :cond_d
    return v4

    .line 23
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v5

    :cond_e
    return v4

    .line 24
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v5

    :cond_f
    return v4

    .line 25
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v5

    :cond_10
    return v4

    .line 26
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v5

    :cond_11
    return v4

    .line 27
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->g(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v5

    :cond_12
    return v4

    .line 28
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->f(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_13

    return v5

    :cond_13
    return v4

    .line 29
    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v5

    :cond_15
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final r(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static s(Ljava/lang/Object;ILcom/google/android/gms/internal/recaptcha/uh;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/recaptcha/uh;->h(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final t(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/recaptcha/jh;->D(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static u(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final v(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/recaptcha/bj;->c(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/recaptcha/bj;->F(ILcom/google/android/gms/internal/recaptcha/zzpy;)V

    return-void
.end method

.method static w(Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dh;Lcom/google/android/gms/internal/recaptcha/lh;Lcom/google/android/gms/internal/recaptcha/ug;Lcom/google/android/gms/internal/recaptcha/ki;Lcom/google/android/gms/internal/recaptcha/qf;Lcom/google/android/gms/internal/recaptcha/bh;)Lcom/google/android/gms/internal/recaptcha/jh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/recaptcha/dh;",
            "Lcom/google/android/gms/internal/recaptcha/lh;",
            "Lcom/google/android/gms/internal/recaptcha/ug;",
            "Lcom/google/android/gms/internal/recaptcha/ki<",
            "**>;",
            "Lcom/google/android/gms/internal/recaptcha/qf<",
            "*>;",
            "Lcom/google/android/gms/internal/recaptcha/bh;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/jh<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of p0, p1, Lcom/google/android/gms/internal/recaptcha/rh;

    if-eqz p0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/rh;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/recaptcha/jh;->x(Lcom/google/android/gms/internal/recaptcha/rh;Lcom/google/android/gms/internal/recaptcha/lh;Lcom/google/android/gms/internal/recaptcha/ug;Lcom/google/android/gms/internal/recaptcha/ki;Lcom/google/android/gms/internal/recaptcha/qf;Lcom/google/android/gms/internal/recaptcha/bh;)Lcom/google/android/gms/internal/recaptcha/jh;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/fi;

    const/4 p0, 0x0

    throw p0
.end method

.method static x(Lcom/google/android/gms/internal/recaptcha/rh;Lcom/google/android/gms/internal/recaptcha/lh;Lcom/google/android/gms/internal/recaptcha/ug;Lcom/google/android/gms/internal/recaptcha/ki;Lcom/google/android/gms/internal/recaptcha/qf;Lcom/google/android/gms/internal/recaptcha/bh;)Lcom/google/android/gms/internal/recaptcha/jh;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/rh;",
            "Lcom/google/android/gms/internal/recaptcha/lh;",
            "Lcom/google/android/gms/internal/recaptcha/ug;",
            "Lcom/google/android/gms/internal/recaptcha/ki<",
            "**>;",
            "Lcom/google/android/gms/internal/recaptcha/qf<",
            "*>;",
            "Lcom/google/android/gms/internal/recaptcha/bh;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/jh<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/recaptcha/rh;->E()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/recaptcha/rh;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v6, 0x1

    .line 6
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_4

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v4, 0x1

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_3

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_2

    :cond_3
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_4
    if-nez v6, :cond_5

    sget-object v6, Lcom/google/android/gms/internal/recaptcha/jh;->q:[I

    move-object v13, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v6, v4, 0x1

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_7

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_3
    add-int/lit8 v9, v6, 0x1

    .line 9
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_6

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_3

    :cond_6
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_7
    add-int/lit8 v8, v6, 0x1

    .line 10
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_9

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    .line 11
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_8
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_9
    add-int/lit8 v9, v8, 0x1

    .line 12
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 13
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_a
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b
    add-int/lit8 v11, v9, 0x1

    .line 14
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    .line 15
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_c
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d
    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 17
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_e
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_11

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 19
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_10
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_11
    add-int/lit8 v14, v13, 0x1

    .line 20
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 21
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_12
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_13
    add-int/lit8 v15, v14, 0x1

    .line 22
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_15

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 23
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_14
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_15
    add-int v16, v14, v12

    add-int v13, v16, v13

    .line 24
    new-array v13, v13, [I

    add-int v16, v4, v4

    add-int v16, v16, v6

    move v6, v4

    move v4, v15

    move/from16 v33, v12

    move v12, v9

    move/from16 v9, v33

    .line 25
    :goto_b
    sget-object v15, Lcom/google/android/gms/internal/recaptcha/jh;->r:Lsun/misc/Unsafe;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/recaptcha/rh;->b()[Ljava/lang/Object;

    move-result-object v17

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/recaptcha/rh;->zza()Lcom/google/android/gms/internal/recaptcha/gh;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    mul-int/lit8 v7, v11, 0x3

    .line 28
    new-array v7, v7, [I

    add-int/2addr v11, v11

    .line 29
    new-array v11, v11, [Ljava/lang/Object;

    add-int v21, v14, v9

    move/from16 v22, v14

    move/from16 v23, v21

    const/4 v9, 0x0

    const/16 v20, 0x0

    :goto_c
    if-ge v4, v3, :cond_32

    add-int/lit8 v24, v4, 0x1

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_17

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v2, v24

    const/16 v24, 0xd

    :goto_d
    add-int/lit8 v26, v2, 0x1

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    shl-int v2, v2, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_e

    :cond_17
    move/from16 v2, v24

    :goto_e
    add-int/lit8 v24, v2, 0x1

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v27, v5, 0x1

    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v28, v3

    const v3, 0xd800

    if-lt v5, v3, :cond_18

    and-int/lit16 v3, v5, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v2, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v27

    move/from16 v3, v28

    goto :goto_f

    :cond_18
    shl-int v3, v5, v24

    or-int/2addr v2, v3

    move/from16 v3, v27

    goto :goto_10

    :cond_19
    move/from16 v28, v3

    move/from16 v3, v24

    :goto_10
    and-int/lit16 v5, v2, 0xff

    move/from16 v24, v14

    and-int/lit16 v14, v2, 0x400

    if-eqz v14, :cond_1a

    add-int/lit8 v14, v20, 0x1

    .line 34
    aput v9, v13, v20

    move/from16 v20, v14

    :cond_1a
    const/16 v14, 0x33

    if-lt v5, v14, :cond_22

    add-int/lit8 v14, v3, 0x1

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v3, v14, :cond_1c

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_11
    add-int/lit8 v31, v14, 0x1

    .line 36
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v12

    const v12, 0xd800

    if-lt v14, v12, :cond_1b

    and-int/lit16 v12, v14, 0x1fff

    shl-int v12, v12, v27

    or-int/2addr v3, v12

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v12, v32

    goto :goto_11

    :cond_1b
    shl-int v12, v14, v27

    or-int/2addr v3, v12

    move/from16 v14, v31

    goto :goto_12

    :cond_1c
    move/from16 v32, v12

    move/from16 v14, v27

    :goto_12
    add-int/lit8 v12, v5, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v12, v14, :cond_1e

    const/16 v14, 0x11

    if-ne v12, v14, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v14, 0xc

    if-ne v12, v14, :cond_1f

    if-nez v10, :cond_1f

    .line 37
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v14, v16, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 38
    aget-object v16, v17, v16

    aput-object v16, v11, v12

    goto :goto_14

    .line 39
    :cond_1e
    :goto_13
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v14, v16, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 40
    aget-object v16, v17, v16

    aput-object v16, v11, v12

    :goto_14
    move/from16 v16, v14

    :cond_1f
    add-int/2addr v3, v3

    .line 41
    aget-object v12, v17, v3

    .line 42
    instance-of v14, v12, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_20

    .line 43
    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 44
    :cond_20
    check-cast v12, Ljava/lang/String;

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/recaptcha/jh;->M(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 45
    aput-object v12, v17, v3

    :goto_15
    move-object/from16 v31, v7

    move v14, v8

    .line 46
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    add-int/lit8 v3, v3, 0x1

    .line 47
    aget-object v7, v17, v3

    .line 48
    instance-of v12, v7, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_21

    .line 49
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 50
    :cond_21
    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->M(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 51
    aput-object v7, v17, v3

    :goto_16
    move v3, v8

    .line 52
    invoke-virtual {v15, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    move-object/from16 v30, v0

    move-object v7, v1

    move v1, v8

    move-object/from16 v29, v11

    const/16 v25, 0x1

    move v8, v3

    const/4 v3, 0x0

    goto/16 :goto_21

    :cond_22
    move-object/from16 v31, v7

    move v14, v8

    move/from16 v32, v12

    add-int/lit8 v7, v16, 0x1

    .line 53
    aget-object v8, v17, v16

    check-cast v8, Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/recaptcha/jh;->M(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/16 v12, 0x9

    if-eq v5, v12, :cond_2a

    const/16 v12, 0x11

    if-ne v5, v12, :cond_23

    goto :goto_1a

    :cond_23
    const/16 v12, 0x1b

    if-eq v5, v12, :cond_29

    const/16 v12, 0x31

    if-ne v5, v12, :cond_24

    goto :goto_18

    :cond_24
    const/16 v12, 0xc

    if-eq v5, v12, :cond_28

    const/16 v12, 0x1e

    if-eq v5, v12, :cond_28

    const/16 v12, 0x2c

    if-ne v5, v12, :cond_25

    goto :goto_17

    :cond_25
    const/16 v12, 0x32

    if-ne v5, v12, :cond_26

    add-int/lit8 v12, v22, 0x1

    .line 54
    aput v9, v13, v22

    div-int/lit8 v22, v9, 0x3

    add-int v22, v22, v22

    add-int/lit8 v27, v7, 0x1

    .line 55
    aget-object v7, v17, v7

    aput-object v7, v11, v22

    and-int/lit16 v7, v2, 0x800

    if-eqz v7, :cond_27

    add-int/lit8 v7, v27, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 56
    aget-object v27, v17, v27

    aput-object v27, v11, v22

    move/from16 v22, v12

    :cond_26
    const/16 v25, 0x1

    goto :goto_1b

    :cond_27
    move/from16 v22, v12

    move/from16 v12, v27

    const/16 v25, 0x1

    goto :goto_1c

    :cond_28
    :goto_17
    if-nez v10, :cond_26

    .line 57
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v27, v7, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 58
    aget-object v7, v17, v7

    aput-object v7, v11, v12

    goto :goto_19

    :cond_29
    :goto_18
    const/16 v25, 0x1

    .line 59
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v27, v7, 0x1

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    .line 60
    aget-object v7, v17, v7

    aput-object v7, v11, v12

    :goto_19
    move/from16 v12, v27

    goto :goto_1c

    :cond_2a
    :goto_1a
    const/16 v25, 0x1

    .line 61
    div-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    .line 62
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v11, v12

    :goto_1b
    move v12, v7

    .line 63
    :goto_1c
    invoke-virtual {v15, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    and-int/lit16 v7, v2, 0x1000

    const v27, 0xfffff

    move-object/from16 v29, v11

    const/16 v11, 0x1000

    if-ne v7, v11, :cond_2e

    const/16 v7, 0x11

    if-gt v5, v7, :cond_2e

    add-int/lit8 v7, v3, 0x1

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v11, 0xd800

    if-lt v3, v11, :cond_2c

    and-int/lit16 v3, v3, 0x1fff

    const/16 v26, 0xd

    :goto_1d
    add-int/lit8 v27, v7, 0x1

    .line 65
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v11, :cond_2b

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v26

    or-int/2addr v3, v7

    add-int/lit8 v26, v26, 0xd

    move/from16 v7, v27

    goto :goto_1d

    :cond_2b
    shl-int v7, v7, v26

    or-int/2addr v3, v7

    goto :goto_1e

    :cond_2c
    move/from16 v27, v7

    :goto_1e
    add-int v7, v6, v6

    div-int/lit8 v26, v3, 0x20

    add-int v7, v7, v26

    .line 66
    aget-object v11, v17, v7

    move-object/from16 v30, v0

    .line 67
    instance-of v0, v11, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2d

    .line 68
    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_1f

    .line 69
    :cond_2d
    check-cast v11, Ljava/lang/String;

    invoke-static {v1, v11}, Lcom/google/android/gms/internal/recaptcha/jh;->M(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 70
    aput-object v11, v17, v7

    :goto_1f
    move-object v7, v1

    .line 71
    invoke-virtual {v15, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit8 v3, v3, 0x20

    goto :goto_20

    :cond_2e
    move-object/from16 v30, v0

    move-object v7, v1

    move/from16 v27, v3

    const v1, 0xfffff

    const/4 v3, 0x0

    :goto_20
    const/16 v0, 0x12

    if-lt v5, v0, :cond_2f

    const/16 v0, 0x31

    if-gt v5, v0, :cond_2f

    add-int/lit8 v0, v23, 0x1

    .line 72
    aput v8, v13, v23

    move/from16 v23, v0

    :cond_2f
    move/from16 v16, v12

    :goto_21
    add-int/lit8 v0, v9, 0x1

    .line 73
    aput v4, v31, v9

    add-int/lit8 v4, v0, 0x1

    and-int/lit16 v9, v2, 0x200

    if-eqz v9, :cond_30

    const/high16 v9, 0x20000000

    goto :goto_22

    :cond_30
    const/4 v9, 0x0

    :goto_22
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_31

    const/high16 v2, 0x10000000

    goto :goto_23

    :cond_31
    const/4 v2, 0x0

    :goto_23
    or-int/2addr v2, v9

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v2, v5

    or-int/2addr v2, v8

    .line 74
    aput v2, v31, v0

    add-int/lit8 v9, v4, 0x1

    shl-int/lit8 v0, v3, 0x14

    or-int/2addr v0, v1

    .line 75
    aput v0, v31, v4

    move-object v1, v7

    move v8, v14

    move/from16 v14, v24

    move/from16 v4, v27

    move/from16 v3, v28

    move-object/from16 v11, v29

    move-object/from16 v0, v30

    move-object/from16 v7, v31

    move/from16 v12, v32

    const v5, 0xd800

    goto/16 :goto_c

    :cond_32
    move-object/from16 v31, v7

    move-object/from16 v29, v11

    move/from16 v32, v12

    move/from16 v24, v14

    move v14, v8

    .line 76
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/jh;

    move-object v4, v0

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/recaptcha/rh;->zza()Lcom/google/android/gms/internal/recaptcha/gh;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v1, v29

    const/16 v20, 0x0

    move-object/from16 v5, v31

    move-object v6, v1

    move v7, v14

    move/from16 v8, v32

    move-object v12, v13

    move/from16 v13, v24

    move/from16 v14, v21

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/internal/recaptcha/jh;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/recaptcha/gh;ZZ[IIILcom/google/android/gms/internal/recaptcha/lh;Lcom/google/android/gms/internal/recaptcha/ug;Lcom/google/android/gms/internal/recaptcha/ki;Lcom/google/android/gms/internal/recaptcha/qf;Lcom/google/android/gms/internal/recaptcha/bh;[B)V

    return-object v0
.end method

.method private static y(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static z(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final E()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->e:Lcom/google/android/gms/internal/recaptcha/gh;

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/dg;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/jh;->B(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/jh;->A(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 1
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 3
    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/jh;->F(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto/16 :goto_2

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto/16 :goto_2

    .line 13
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 15
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 17
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 19
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 21
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->u(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/mg;->a(Z)I

    move-result v3

    goto/16 :goto_2

    .line 28
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 30
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto/16 :goto_2

    .line 32
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 34
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto/16 :goto_2

    .line 36
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto/16 :goto_2

    .line 38
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->z(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 40
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->y(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 44
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 53
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->B(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/mg;->a(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->g(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->f(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 64
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/mg;->c(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->f:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 66
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->j:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/jh;->k:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/jh;->i:[I

    .line 1
    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/recaptcha/zzsh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zzc()V

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->i:[I

    .line 5
    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/jh;->i:[I

    .line 6
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/recaptcha/ug;->b(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->m(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->e(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;Lcom/google/android/gms/internal/recaptcha/pf;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/recaptcha/sh;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    .line 1
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v1, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    iget-object v12, v1, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    const/4 v13, 0x0

    move-object v3, v13

    move-object v14, v3

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->E()I

    move-result v4

    iget v5, v1, Lcom/google/android/gms/internal/recaptcha/jh;->c:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-lt v4, v5, :cond_3

    iget v5, v1, Lcom/google/android/gms/internal/recaptcha/jh;->d:I

    if-gt v4, v5, :cond_3

    iget-object v5, v1, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 3
    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v7

    const/4 v9, 0x0

    :goto_1
    if-gt v9, v5, :cond_3

    add-int v15, v5, v9

    ushr-int/2addr v15, v8

    mul-int/lit8 v16, v15, 0x3

    iget-object v7, v1, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 4
    aget v7, v7, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v7, :cond_1

    move/from16 v7, v16

    goto :goto_3

    :cond_1
    if-ge v4, v7, :cond_2

    add-int/lit8 v15, v15, -0x1

    move v5, v15

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v15, 0x1

    :goto_2
    const/4 v7, -0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    :goto_3
    if-gez v7, :cond_b

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_5

    iget v0, v1, Lcom/google/android/gms/internal/recaptcha/jh;->j:I

    :goto_4
    iget v3, v1, Lcom/google/android/gms/internal/recaptcha/jh;->k:I

    if-ge v0, v3, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/recaptcha/jh;->i:[I

    .line 5
    aget v3, v3, v0

    .line 6
    invoke-direct {v1, v2, v3, v14, v11}, Lcom/google/android/gms/internal/recaptcha/jh;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    if-eqz v14, :cond_1a

    .line 7
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/recaptcha/ki;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    :try_start_1
    iget-boolean v5, v1, Lcom/google/android/gms/internal/recaptcha/jh;->f:Z

    if-nez v5, :cond_6

    move-object v5, v13

    goto :goto_5

    :cond_6
    iget-object v5, v1, Lcom/google/android/gms/internal/recaptcha/jh;->e:Lcom/google/android/gms/internal/recaptcha/gh;

    .line 8
    invoke-virtual {v12, v10, v5, v4}, Lcom/google/android/gms/internal/recaptcha/qf;->c(Lcom/google/android/gms/internal/recaptcha/pf;Lcom/google/android/gms/internal/recaptcha/gh;I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    :goto_5
    if-eqz v5, :cond_8

    if-nez v3, :cond_7

    .line 9
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/recaptcha/qf;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    move-result-object v3

    :cond_7
    move-object v15, v3

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object v7, v15

    move-object v8, v14

    move-object v9, v11

    .line 10
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/recaptcha/qf;->d(Lcom/google/android/gms/internal/recaptcha/sh;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/pf;Lcom/google/android/gms/internal/recaptcha/uf;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;

    move-result-object v14

    move-object v3, v15

    goto :goto_0

    .line 11
    :cond_8
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/recaptcha/ki;->r(Lcom/google/android/gms/internal/recaptcha/sh;)Z

    if-nez v14, :cond_9

    .line 12
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/recaptcha/ki;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    .line 13
    :cond_9
    invoke-virtual {v11, v14, v0}, Lcom/google/android/gms/internal/recaptcha/ki;->q(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    iget v0, v1, Lcom/google/android/gms/internal/recaptcha/jh;->j:I

    :goto_6
    iget v3, v1, Lcom/google/android/gms/internal/recaptcha/jh;->k:I

    if-ge v0, v3, :cond_a

    iget-object v3, v1, Lcom/google/android/gms/internal/recaptcha/jh;->i:[I

    .line 14
    aget v3, v3, v0

    .line 15
    invoke-direct {v1, v2, v3, v14, v11}, Lcom/google/android/gms/internal/recaptcha/jh;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    if-eqz v14, :cond_1a

    .line 16
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/recaptcha/ki;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 17
    :cond_b
    :try_start_2
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/jh;->F(I)I

    move-result v9

    const v15, 0xfffff

    packed-switch v9, :pswitch_data_0

    if-nez v14, :cond_16

    .line 18
    invoke-virtual {v11}, Lcom/google/android/gms/internal/recaptcha/ki;->f()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_b

    :pswitch_0
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 19
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v8

    invoke-interface {v0, v8, v10}, Lcom/google/android/gms/internal/recaptcha/sh;->z(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v8

    .line 20
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 21
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 22
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->I()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 23
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 24
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 25
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->d()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 26
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 27
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 28
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->F()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 29
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 30
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 31
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 32
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 33
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 34
    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->l()I

    move-result v6

    .line 35
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->I(I)Lcom/google/android/gms/internal/recaptcha/hg;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 36
    invoke-interface {v8, v6}, Lcom/google/android/gms/internal/recaptcha/hg;->h(I)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_7

    .line 37
    :cond_c
    invoke-static {v4, v6, v14, v11}, Lcom/google/android/gms/internal/recaptcha/wh;->d(IILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_0

    :cond_d
    :goto_7
    and-int/2addr v5, v15

    int-to-long v8, v5

    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v8, v9, v5}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 39
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 40
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->G()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 41
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 43
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->H()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v8

    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 45
    :pswitch_8
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_e

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 46
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 47
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v9

    .line 48
    invoke-interface {v0, v9, v10}, Lcom/google/android/gms/internal/recaptcha/sh;->B(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v9

    .line 49
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/recaptcha/mg;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 50
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_e
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 51
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v8

    .line 52
    invoke-interface {v0, v8, v10}, Lcom/google/android/gms/internal/recaptcha/sh;->B(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v8

    .line 53
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    .line 55
    :goto_8
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 56
    :pswitch_9
    invoke-direct {v1, v2, v5, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->j(Ljava/lang/Object;ILcom/google/android/gms/internal/recaptcha/sh;)V

    .line 57
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 58
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->h()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 59
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 60
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 61
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 62
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 63
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 64
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->e()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 65
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 66
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 67
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->f()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 68
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 69
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 70
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->J()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 71
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 72
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 73
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 74
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 75
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 76
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->D()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 77
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 78
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 79
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->zza()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 80
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    invoke-direct {v1, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 82
    :pswitch_12
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->L(I)Ljava/lang/Object;

    move-result-object v4

    .line 83
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v5

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 84
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zza()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zzb()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v7

    .line 86
    invoke-static {v2, v5, v6, v7}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    .line 87
    :cond_f
    move-object v8, v7

    check-cast v8, Lcom/google/android/gms/internal/recaptcha/zzsh;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zze()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zza()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v8

    .line 88
    invoke-virtual {v8}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zzb()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object v8

    .line 89
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/recaptcha/bh;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v8

    .line 91
    :cond_10
    :goto_9
    check-cast v7, Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 92
    check-cast v4, Lcom/google/android/gms/internal/recaptcha/ah;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/ah;->c()Lcom/google/android/gms/internal/recaptcha/zg;

    move-result-object v4

    .line 93
    invoke-interface {v0, v7, v4, v10}, Lcom/google/android/gms/internal/recaptcha/sh;->w(Ljava/util/Map;Lcom/google/android/gms/internal/recaptcha/zg;Lcom/google/android/gms/internal/recaptcha/pf;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 94
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    .line 95
    invoke-virtual {v7, v2, v4, v5}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 96
    invoke-interface {v0, v4, v6, v10}, Lcom/google/android/gms/internal/recaptcha/sh;->u(Ljava/util/List;Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)V

    goto/16 :goto_0

    .line 97
    :pswitch_14
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 98
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 99
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->M(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 100
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 101
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->y(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 102
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 103
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->A(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 104
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 105
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->o(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v6, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v8, v5

    .line 106
    invoke-virtual {v6, v2, v8, v9}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 107
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/recaptcha/sh;->i(Ljava/util/List;)V

    .line 108
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->I(I)Lcom/google/android/gms/internal/recaptcha/hg;

    move-result-object v6

    .line 109
    invoke-static {v4, v5, v6, v14, v11}, Lcom/google/android/gms/internal/recaptcha/wh;->c(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/hg;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_19
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 110
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 111
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->x(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 112
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 113
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->s(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 114
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 115
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->p(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 116
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 117
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->r(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 118
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 119
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->n(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 120
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 121
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->v(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 122
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 123
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->j(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 124
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 125
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->t(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 126
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 127
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->k(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 128
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 129
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->M(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 130
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 131
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->y(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 132
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 133
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->A(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 134
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 135
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->o(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    iget-object v6, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v8, v5

    .line 136
    invoke-virtual {v6, v2, v8, v9}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 137
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/recaptcha/sh;->i(Ljava/util/List;)V

    .line 138
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->I(I)Lcom/google/android/gms/internal/recaptcha/hg;

    move-result-object v6

    .line 139
    invoke-static {v4, v5, v6, v14, v11}, Lcom/google/android/gms/internal/recaptcha/wh;->c(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/hg;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_27
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 140
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 141
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->x(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 142
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 143
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->m(Ljava/util/List;)V

    goto/16 :goto_0

    .line 144
    :pswitch_29
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v4

    and-int/2addr v5, v15

    int-to-long v5, v5

    iget-object v7, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    .line 145
    invoke-virtual {v7, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 146
    invoke-interface {v0, v5, v4, v10}, Lcom/google/android/gms/internal/recaptcha/sh;->q(Ljava/util/List;Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)V

    goto/16 :goto_0

    .line 147
    :pswitch_2a
    invoke-static {v5}, Lcom/google/android/gms/internal/recaptcha/jh;->p(I)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 148
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/recaptcha/cf;

    .line 149
    invoke-virtual {v5, v4, v8}, Lcom/google/android/gms/internal/recaptcha/cf;->N(Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_11
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v7, v5

    .line 150
    invoke-virtual {v4, v2, v7, v8}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/recaptcha/cf;

    .line 151
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/recaptcha/cf;->N(Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 152
    :pswitch_2b
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 153
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 154
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->s(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 155
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 156
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->p(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 157
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 158
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->r(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 159
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 160
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->n(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 161
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 162
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->v(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 163
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 164
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->j(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 165
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 166
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->t(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    and-int/2addr v5, v15

    int-to-long v5, v5

    .line 167
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/ug;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 168
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/recaptcha/sh;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 169
    :pswitch_33
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_12

    and-int v4, v5, v15

    int-to-long v4, v4

    .line 170
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 171
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v7

    .line 172
    invoke-interface {v0, v7, v10}, Lcom/google/android/gms/internal/recaptcha/sh;->z(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v7

    .line 173
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/recaptcha/mg;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 174
    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 175
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v6

    .line 176
    invoke-interface {v0, v6, v10}, Lcom/google/android/gms/internal/recaptcha/sh;->z(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v6

    .line 177
    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 178
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 179
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->I()J

    move-result-wide v8

    invoke-static {v2, v4, v5, v8, v9}, Lcom/google/android/gms/internal/recaptcha/vi;->w(Ljava/lang/Object;JJ)V

    .line 180
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 181
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->d()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 182
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 183
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->F()J

    move-result-wide v8

    invoke-static {v2, v4, v5, v8, v9}, Lcom/google/android/gms/internal/recaptcha/vi;->w(Ljava/lang/Object;JJ)V

    .line 184
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 185
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->a()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 186
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 187
    :pswitch_38
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->l()I

    move-result v6

    .line 188
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->I(I)Lcom/google/android/gms/internal/recaptcha/hg;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 189
    invoke-interface {v8, v6}, Lcom/google/android/gms/internal/recaptcha/hg;->h(I)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_a

    .line 190
    :cond_13
    invoke-static {v4, v6, v14, v11}, Lcom/google/android/gms/internal/recaptcha/wh;->d(IILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_0

    :cond_14
    :goto_a
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 191
    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 192
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 193
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->G()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 194
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 195
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->H()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 196
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 197
    :pswitch_3b
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_15

    and-int v4, v5, v15

    int-to-long v4, v4

    .line 198
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 199
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v7

    .line 200
    invoke-interface {v0, v7, v10}, Lcom/google/android/gms/internal/recaptcha/sh;->B(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v7

    .line 201
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/recaptcha/mg;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 202
    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 203
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v6

    .line 204
    invoke-interface {v0, v6, v10}, Lcom/google/android/gms/internal/recaptcha/sh;->B(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v6

    .line 205
    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 206
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 207
    :pswitch_3c
    invoke-direct {v1, v2, v5, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->j(Ljava/lang/Object;ILcom/google/android/gms/internal/recaptcha/sh;)V

    .line 208
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 209
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->h()Z

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->r(Ljava/lang/Object;JZ)V

    .line 210
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 211
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->b()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 212
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 213
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->e()J

    move-result-wide v8

    invoke-static {v2, v4, v5, v8, v9}, Lcom/google/android/gms/internal/recaptcha/vi;->w(Ljava/lang/Object;JJ)V

    .line 214
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 215
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->f()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 216
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 217
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->J()J

    move-result-wide v8

    invoke-static {v2, v4, v5, v8, v9}, Lcom/google/android/gms/internal/recaptcha/vi;->w(Ljava/lang/Object;JJ)V

    .line 218
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 219
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->g()J

    move-result-wide v8

    invoke-static {v2, v4, v5, v8, v9}, Lcom/google/android/gms/internal/recaptcha/vi;->w(Ljava/lang/Object;JJ)V

    .line 220
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 221
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->D()F

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->u(Ljava/lang/Object;JF)V

    .line 222
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v4, v5, v15

    int-to-long v4, v4

    .line 223
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/recaptcha/sh;->zza()D

    move-result-wide v8

    invoke-static {v2, v4, v5, v8, v9}, Lcom/google/android/gms/internal/recaptcha/vi;->t(Ljava/lang/Object;JD)V

    .line 224
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :goto_b
    move-object v14, v4

    .line 225
    :cond_16
    invoke-virtual {v11, v14, v0}, Lcom/google/android/gms/internal/recaptcha/ki;->q(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;)Z

    move-result v4
    :try_end_3
    .catch Lcom/google/android/gms/internal/recaptcha/zzrq; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_0

    iget v0, v1, Lcom/google/android/gms/internal/recaptcha/jh;->j:I

    :goto_c
    iget v3, v1, Lcom/google/android/gms/internal/recaptcha/jh;->k:I

    if-ge v0, v3, :cond_17

    iget-object v3, v1, Lcom/google/android/gms/internal/recaptcha/jh;->i:[I

    .line 226
    aget v3, v3, v0

    .line 227
    invoke-direct {v1, v2, v3, v14, v11}, Lcom/google/android/gms/internal/recaptcha/jh;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_17
    if-eqz v14, :cond_1a

    .line 228
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/recaptcha/ki;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 229
    :catch_0
    :try_start_4
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/recaptcha/ki;->r(Lcom/google/android/gms/internal/recaptcha/sh;)Z

    if-nez v14, :cond_18

    .line 230
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/recaptcha/ki;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    .line 231
    :cond_18
    invoke-virtual {v11, v14, v0}, Lcom/google/android/gms/internal/recaptcha/ki;->q(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_0

    iget v0, v1, Lcom/google/android/gms/internal/recaptcha/jh;->j:I

    :goto_d
    iget v3, v1, Lcom/google/android/gms/internal/recaptcha/jh;->k:I

    if-ge v0, v3, :cond_19

    iget-object v3, v1, Lcom/google/android/gms/internal/recaptcha/jh;->i:[I

    .line 232
    aget v3, v3, v0

    .line 233
    invoke-direct {v1, v2, v3, v14, v11}, Lcom/google/android/gms/internal/recaptcha/jh;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    if-eqz v14, :cond_1a

    .line 234
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/recaptcha/ki;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    return-void

    .line 235
    :goto_e
    iget v3, v1, Lcom/google/android/gms/internal/recaptcha/jh;->j:I

    :goto_f
    iget v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->k:I

    if-ge v3, v4, :cond_1b

    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/jh;->i:[I

    .line 236
    aget v4, v4, v3

    .line 237
    invoke-direct {v1, v2, v4, v14, v11}, Lcom/google/android/gms/internal/recaptcha/jh;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/ki;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    if-eqz v14, :cond_1c

    .line 238
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/recaptcha/ki;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    :cond_1c
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 1
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/jh;->F(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->D(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    .line 4
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v7

    .line 5
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_0

    .line 6
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/wh;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 8
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/wh;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 10
    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/wh;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 12
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/wh;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 15
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 17
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 19
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 21
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 23
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 25
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 27
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/wh;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 30
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/wh;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 33
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/wh;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 36
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->B(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->B(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 38
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 40
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 42
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 44
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    .line 46
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    .line 48
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->g(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 50
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->g(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 51
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->o(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->f(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 53
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->f(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 55
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->f:Z

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 57
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 p1, 0x0

    .line 59
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 3
    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 5
    aget v4, v4, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/jh;->F(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->i(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 7
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 10
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->i(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 11
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->l(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/jh;->p:Lcom/google/android/gms/internal/recaptcha/bh;

    .line 14
    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/wh;->B(Lcom/google/android/gms/internal/recaptcha/bh;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/jh;->l:Lcom/google/android/gms/internal/recaptcha/ug;

    .line 15
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/ug;->c(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->N(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 17
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/recaptcha/vi;->w(Ljava/lang/Object;JJ)V

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 20
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 23
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/recaptcha/vi;->w(Ljava/lang/Object;JJ)V

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 26
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 29
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 32
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 35
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 38
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->N(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 39
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 42
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->B(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->r(Ljava/lang/Object;JZ)V

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 45
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto :goto_1

    .line 48
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/recaptcha/vi;->w(Ljava/lang/Object;JJ)V

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto :goto_1

    .line 51
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->v(Ljava/lang/Object;JI)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto :goto_1

    .line 54
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/recaptcha/vi;->w(Ljava/lang/Object;JJ)V

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto :goto_1

    .line 57
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/recaptcha/vi;->w(Ljava/lang/Object;JJ)V

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto :goto_1

    .line 60
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->g(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->u(Ljava/lang/Object;JF)V

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    goto :goto_1

    .line 63
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vi;->f(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/recaptcha/vi;->t(Ljava/lang/Object;JD)V

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->k(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 66
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/wh;->f(Lcom/google/android/gms/internal/recaptcha/ki;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 67
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/wh;->e(Lcom/google/android/gms/internal/recaptcha/qf;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/recaptcha/bj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 1
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 3
    aget v4, v4, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/jh;->F(I)I

    move-result v5

    const/4 v6, 0x1

    const v7, 0xfffff

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    .line 7
    invoke-interface {p2, v4, v3, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_1

    .line 8
    :pswitch_1
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->w(IJ)V

    goto/16 :goto_1

    .line 10
    :pswitch_2
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 11
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->A(II)V

    goto/16 :goto_1

    .line 12
    :pswitch_3
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->G(IJ)V

    goto/16 :goto_1

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->y(II)V

    goto/16 :goto_1

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->q(II)V

    goto/16 :goto_1

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->C(II)V

    goto/16 :goto_1

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/recaptcha/zzpy;

    .line 22
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->F(ILcom/google/android/gms/internal/recaptcha/zzpy;)V

    goto/16 :goto_1

    .line 23
    :pswitch_8
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 25
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    invoke-interface {p2, v4, v3, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->z(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_1

    .line 26
    :pswitch_9
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/recaptcha/jh;->v(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V

    goto/16 :goto_1

    .line 28
    :pswitch_a
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->u(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->g(IZ)V

    goto/16 :goto_1

    .line 30
    :pswitch_b
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->o(II)V

    goto/16 :goto_1

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->v(IJ)V

    goto/16 :goto_1

    .line 34
    :pswitch_d
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->C(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->k(II)V

    goto/16 :goto_1

    .line 36
    :pswitch_e
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->K(IJ)V

    goto/16 :goto_1

    .line 38
    :pswitch_f
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->H(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->h(IJ)V

    goto/16 :goto_1

    .line 40
    :pswitch_10
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->z(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->s(IF)V

    goto/16 :goto_1

    .line 42
    :pswitch_11
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/jh;->y(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->l(ID)V

    goto/16 :goto_1

    :pswitch_12
    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 44
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v4, v3, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->n(Lcom/google/android/gms/internal/recaptcha/bj;ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 45
    :pswitch_13
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 46
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 48
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    .line 49
    invoke-static {v4, v3, p2, v5}, Lcom/google/android/gms/internal/recaptcha/wh;->o(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_1

    .line 50
    :pswitch_14
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 51
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 52
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 53
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->v(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 54
    :pswitch_15
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 55
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 56
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 57
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->u(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 58
    :pswitch_16
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 59
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 60
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 61
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->t(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 62
    :pswitch_17
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 63
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 64
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 65
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->s(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 66
    :pswitch_18
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 67
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 68
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 69
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->k(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 70
    :pswitch_19
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 71
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 72
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 73
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->x(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 74
    :pswitch_1a
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 75
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 76
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 77
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->h(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 78
    :pswitch_1b
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 79
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 80
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 81
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->l(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 82
    :pswitch_1c
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 83
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 84
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 85
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->m(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 86
    :pswitch_1d
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 87
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 88
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 89
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->p(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 90
    :pswitch_1e
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 91
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 92
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 93
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->y(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 94
    :pswitch_1f
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 95
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 96
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 97
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->q(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 98
    :pswitch_20
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 99
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 100
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 101
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->n(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 102
    :pswitch_21
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 103
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 104
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 105
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/recaptcha/wh;->j(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 106
    :pswitch_22
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 107
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 108
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 109
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->v(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 110
    :pswitch_23
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 111
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 112
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 113
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->u(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 114
    :pswitch_24
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 115
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 116
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 117
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->t(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 118
    :pswitch_25
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 119
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 120
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 121
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->s(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 122
    :pswitch_26
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 123
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 124
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 125
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->k(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 126
    :pswitch_27
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 127
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 128
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 129
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->x(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 130
    :pswitch_28
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 131
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 132
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 133
    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/recaptcha/wh;->i(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;)V

    goto/16 :goto_1

    .line 134
    :pswitch_29
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 135
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 136
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 137
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    .line 138
    invoke-static {v4, v3, p2, v5}, Lcom/google/android/gms/internal/recaptcha/wh;->r(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_1

    .line 139
    :pswitch_2a
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 140
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 141
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 142
    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/recaptcha/wh;->w(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;)V

    goto/16 :goto_1

    .line 143
    :pswitch_2b
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 144
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 145
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 146
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->h(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 147
    :pswitch_2c
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 148
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 149
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 150
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->l(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 151
    :pswitch_2d
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 152
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 153
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 154
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->m(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 155
    :pswitch_2e
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 156
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 157
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 158
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->p(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 159
    :pswitch_2f
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 160
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 161
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 162
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->y(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 163
    :pswitch_30
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 164
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 165
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 166
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->q(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 167
    :pswitch_31
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 168
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 169
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 170
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->n(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 171
    :pswitch_32
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 172
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 173
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 174
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/recaptcha/wh;->j(ILjava/util/List;Lcom/google/android/gms/internal/recaptcha/bj;Z)V

    goto/16 :goto_1

    .line 175
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 176
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 177
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    .line 178
    invoke-interface {p2, v4, v3, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_1

    .line 179
    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 180
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 181
    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->w(IJ)V

    goto/16 :goto_1

    .line 182
    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 183
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    .line 184
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->A(II)V

    goto/16 :goto_1

    .line 185
    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 186
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 187
    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->G(IJ)V

    goto/16 :goto_1

    .line 188
    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 189
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    .line 190
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->y(II)V

    goto/16 :goto_1

    .line 191
    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 192
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    .line 193
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->q(II)V

    goto/16 :goto_1

    .line 194
    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 195
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    .line 196
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->C(II)V

    goto/16 :goto_1

    .line 197
    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 198
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/recaptcha/zzpy;

    .line 199
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->F(ILcom/google/android/gms/internal/recaptcha/zzpy;)V

    goto/16 :goto_1

    .line 200
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 201
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 202
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v5

    invoke-interface {p2, v4, v3, v5}, Lcom/google/android/gms/internal/recaptcha/bj;->z(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/uh;)V

    goto/16 :goto_1

    .line 203
    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 204
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/recaptcha/jh;->v(ILjava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V

    goto/16 :goto_1

    .line 205
    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 206
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->B(Ljava/lang/Object;J)Z

    move-result v3

    .line 207
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->g(IZ)V

    goto/16 :goto_1

    .line 208
    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 209
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    .line 210
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->o(II)V

    goto :goto_1

    .line 211
    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 212
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 213
    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->v(IJ)V

    goto :goto_1

    .line 214
    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 215
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->h(Ljava/lang/Object;J)I

    move-result v3

    .line 216
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->k(II)V

    goto :goto_1

    .line 217
    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 218
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 219
    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->K(IJ)V

    goto :goto_1

    .line 220
    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 221
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 222
    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->h(IJ)V

    goto :goto_1

    .line 223
    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 224
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->g(Ljava/lang/Object;J)F

    move-result v3

    .line 225
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/recaptcha/bj;->s(IF)V

    goto :goto_1

    .line 226
    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/jh;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 227
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/recaptcha/vi;->f(Ljava/lang/Object;J)D

    move-result-wide v5

    .line 228
    invoke-interface {p2, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/bj;->l(ID)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/jh;->m:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 229
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/ki;->p(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 230
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 p1, 0x0

    .line 231
    throw p1

    .line 232
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/jh;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/recaptcha/jh;->j:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_c

    iget-object v2, v6, Lcom/google/android/gms/internal/recaptcha/jh;->i:[I

    .line 1
    aget v12, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    .line 2
    aget v13, v2, v12

    .line 3
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/recaptcha/jh;->G(I)I

    move-result v14

    iget-object v2, v6, Lcom/google/android/gms/internal/recaptcha/jh;->a:[I

    add-int/lit8 v4, v12, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/jh;->r:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 5
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v4

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/recaptcha/jh;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v9

    :cond_3
    :goto_2
    invoke-static {v14}, Lcom/google/android/gms/internal/recaptcha/jh;->F(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x44

    if-eq v0, v1, :cond_7

    const/16 v1, 0x31

    if-eq v0, v1, :cond_8

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 10
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/recaptcha/jh;->L(I)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/recaptcha/ah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/ah;->c()Lcom/google/android/gms/internal/recaptcha/zg;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/recaptcha/zg;->c:Lcom/google/android/gms/internal/recaptcha/zzuh;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/zzuh;->zzb()Lcom/google/android/gms/internal/recaptcha/zzui;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/recaptcha/zzui;->zzi:Lcom/google/android/gms/internal/recaptcha/zzui;

    if-ne v1, v2, :cond_b

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v11, :cond_6

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v2

    move-object v11, v2

    .line 15
    :cond_6
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/recaptcha/uh;->h(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v9

    .line 16
    :cond_7
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/recaptcha/jh;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 17
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->s(Ljava/lang/Object;ILcom/google/android/gms/internal/recaptcha/uh;)Z

    move-result v0

    if-nez v0, :cond_b

    return v9

    :cond_8
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 18
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/recaptcha/vi;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 20
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v1

    const/4 v2, 0x0

    .line 21
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 23
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/recaptcha/uh;->h(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v9

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/recaptcha/jh;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/recaptcha/jh;->J(I)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/recaptcha/jh;->s(Ljava/lang/Object;ILcom/google/android/gms/internal/recaptcha/uh;)Z

    move-result v0

    if-nez v0, :cond_b

    return v9

    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_c
    iget-boolean v0, v6, Lcom/google/android/gms/internal/recaptcha/jh;->f:Z

    if-nez v0, :cond_d

    return v3

    :cond_d
    iget-object v0, v6, Lcom/google/android/gms/internal/recaptcha/jh;->n:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 26
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    throw v11
.end method

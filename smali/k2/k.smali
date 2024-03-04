.class public final Lk2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/l;
.implements Lc2/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk2/k$a;
    }
.end annotation


# static fields
.field public static final y:Lc2/r;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/util/b0;

.field private final c:Lcom/google/android/exoplayer2/util/b0;

.field private final d:Lcom/google/android/exoplayer2/util/b0;

.field private final e:Lcom/google/android/exoplayer2/util/b0;

.field private final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lk2/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lk2/m;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:J

.field private l:I

.field private m:Lcom/google/android/exoplayer2/util/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lc2/n;

.field private s:[Lk2/k$a;

.field private t:[[J

.field private u:I

.field private v:J

.field private w:I

.field private x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lk2/i;->b:Lk2/i;

    sput-object v0, Lk2/k;->y:Lc2/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lk2/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lk2/k;->a:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput p1, p0, Lk2/k;->i:I

    .line 5
    new-instance p1, Lk2/m;

    invoke-direct {p1}, Lk2/m;-><init>()V

    iput-object p1, p0, Lk2/k;->g:Lk2/m;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk2/k;->h:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/util/b0;

    const/16 v2, 0x10

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/b0;-><init>(I)V

    iput-object p1, p0, Lk2/k;->e:Lcom/google/android/exoplayer2/util/b0;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/util/b0;

    sget-object v2, Lcom/google/android/exoplayer2/util/w;->a:[B

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    iput-object p1, p0, Lk2/k;->b:Lcom/google/android/exoplayer2/util/b0;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/util/b0;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/b0;-><init>(I)V

    iput-object p1, p0, Lk2/k;->c:Lcom/google/android/exoplayer2/util/b0;

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/util/b0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/b0;-><init>()V

    iput-object p1, p0, Lk2/k;->d:Lcom/google/android/exoplayer2/util/b0;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lk2/k;->n:I

    .line 13
    sget-object p1, Lc2/n;->S:Lc2/n;

    iput-object p1, p0, Lk2/k;->r:Lc2/n;

    new-array p1, v1, [Lk2/k$a;

    .line 14
    iput-object p1, p0, Lk2/k;->s:[Lk2/k$a;

    return-void
.end method

.method private A(Lc2/m;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lk2/k;->l:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk2/k;->e:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v2, v1}, Lc2/m;->g([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lk2/k;->w()V

    return v3

    .line 4
    :cond_0
    iput v2, p0, Lk2/k;->l:I

    .line 5
    iget-object v0, p0, Lk2/k;->e:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 6
    iget-object v0, p0, Lk2/k;->e:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->F()J

    move-result-wide v4

    iput-wide v4, p0, Lk2/k;->k:J

    .line 7
    iget-object v0, p0, Lk2/k;->e:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->n()I

    move-result v0

    iput v0, p0, Lk2/k;->j:I

    .line 8
    :cond_1
    iget-wide v4, p0, Lk2/k;->k:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lk2/k;->e:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v2}, Lc2/m;->readFully([BII)V

    .line 10
    iget v0, p0, Lk2/k;->l:I

    add-int/2addr v0, v2

    iput v0, p0, Lk2/k;->l:I

    .line 11
    iget-object v0, p0, Lk2/k;->e:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->I()J

    move-result-wide v4

    iput-wide v4, p0, Lk2/k;->k:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 12
    invoke-interface {p1}, Lc2/m;->a()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/a$a;

    if-eqz v0, :cond_3

    .line 14
    iget-wide v4, v0, Lk2/a$a;->b:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lk2/k;->l:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lk2/k;->k:J

    .line 16
    :cond_4
    :goto_0
    iget-wide v4, p0, Lk2/k;->k:J

    iget v0, p0, Lk2/k;->l:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_b

    .line 17
    iget v0, p0, Lk2/k;->j:I

    invoke-static {v0}, Lk2/k;->E(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lk2/k;->k:J

    add-long/2addr v2, v4

    iget v0, p0, Lk2/k;->l:I

    int-to-long v6, v0

    sub-long/2addr v2, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 19
    iget v0, p0, Lk2/k;->j:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_5

    .line 20
    invoke-direct {p0, p1}, Lk2/k;->u(Lc2/m;)V

    .line 21
    :cond_5
    iget-object p1, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    new-instance v0, Lk2/a$a;

    iget v4, p0, Lk2/k;->j:I

    invoke-direct {v0, v4, v2, v3}, Lk2/a$a;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 22
    iget-wide v4, p0, Lk2/k;->k:J

    iget p1, p0, Lk2/k;->l:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    .line 23
    invoke-direct {p0, v2, v3}, Lk2/k;->v(J)V

    goto :goto_3

    .line 24
    :cond_6
    invoke-direct {p0}, Lk2/k;->n()V

    goto :goto_3

    .line 25
    :cond_7
    iget v0, p0, Lk2/k;->j:I

    invoke-static {v0}, Lk2/k;->F(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    iget p1, p0, Lk2/k;->l:I

    if-ne p1, v2, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 27
    iget-wide v4, p0, Lk2/k;->k:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 28
    new-instance p1, Lcom/google/android/exoplayer2/util/b0;

    iget-wide v4, p0, Lk2/k;->k:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/b0;-><init>(I)V

    .line 29
    iget-object v0, p0, Lk2/k;->e:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v4

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iput-object p1, p0, Lk2/k;->m:Lcom/google/android/exoplayer2/util/b0;

    .line 31
    iput v1, p0, Lk2/k;->i:I

    goto :goto_3

    .line 32
    :cond_a
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v2

    iget p1, p0, Lk2/k;->l:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lk2/k;->z(J)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lk2/k;->m:Lcom/google/android/exoplayer2/util/b0;

    .line 34
    iput v1, p0, Lk2/k;->i:I

    :goto_3
    return v1

    :cond_b
    const-string p1, "Atom size less than header length (unsupported)."

    .line 35
    invoke-static {p1}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private B(Lc2/m;Lc2/a0;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lk2/k;->k:J

    iget v2, p0, Lk2/k;->l:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 2
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 3
    iget-object v4, p0, Lk2/k;->m:Lcom/google/android/exoplayer2/util/b0;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object p2

    iget v7, p0, Lk2/k;->l:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v7, v1}, Lc2/m;->readFully([BII)V

    .line 5
    iget p1, p0, Lk2/k;->j:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_0

    .line 6
    invoke-static {v4}, Lk2/k;->x(Lcom/google/android/exoplayer2/util/b0;)I

    move-result p1

    iput p1, p0, Lk2/k;->w:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk2/a$a;

    new-instance p2, Lk2/a$b;

    iget v0, p0, Lk2/k;->j:I

    invoke-direct {p2, v0, v4}, Lk2/a$b;-><init>(ILcom/google/android/exoplayer2/util/b0;)V

    invoke-virtual {p1, p2}, Lk2/a$a;->e(Lk2/a$b;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    .line 9
    invoke-interface {p1, p2}, Lc2/m;->k(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lc2/a0;->a:J

    const/4 p1, 0x1

    .line 11
    :goto_1
    invoke-direct {p0, v2, v3}, Lk2/k;->v(J)V

    if-eqz p1, :cond_4

    .line 12
    iget p1, p0, Lk2/k;->i:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    return v5
.end method

.method private C(Lc2/m;Lc2/a0;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Lc2/m;->getPosition()J

    move-result-wide v2

    .line 2
    iget v4, v0, Lk2/k;->n:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 3
    invoke-direct {v0, v2, v3}, Lk2/k;->q(J)I

    move-result v4

    iput v4, v0, Lk2/k;->n:I

    if-ne v4, v5, :cond_0

    return v5

    .line 4
    :cond_0
    iget-object v4, v0, Lk2/k;->s:[Lk2/k$a;

    iget v6, v0, Lk2/k;->n:I

    aget-object v4, v4, v6

    .line 5
    iget-object v14, v4, Lk2/k$a;->c:Lc2/e0;

    .line 6
    iget v15, v4, Lk2/k$a;->e:I

    .line 7
    iget-object v6, v4, Lk2/k$a;->b:Lk2/r;

    iget-object v7, v6, Lk2/r;->c:[J

    aget-wide v8, v7, v15

    .line 8
    iget-object v6, v6, Lk2/r;->d:[I

    aget v6, v6, v15

    .line 9
    iget-object v13, v4, Lk2/k$a;->d:Lc2/f0;

    sub-long v2, v8, v2

    .line 10
    iget v7, v0, Lk2/k;->o:I

    int-to-long v10, v7

    add-long/2addr v2, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    cmp-long v7, v2, v10

    if-ltz v7, :cond_c

    const-wide/32 v10, 0x40000

    cmp-long v7, v2, v10

    if-ltz v7, :cond_1

    move-object/from16 v1, p2

    const/16 v17, 0x1

    goto/16 :goto_3

    .line 11
    :cond_1
    iget-object v7, v4, Lk2/k$a;->a:Lk2/o;

    iget v7, v7, Lk2/o;->g:I

    if-ne v7, v12, :cond_2

    const-wide/16 v7, 0x8

    add-long/2addr v2, v7

    add-int/lit8 v6, v6, -0x8

    :cond_2
    long-to-int v3, v2

    .line 12
    invoke-interface {v1, v3}, Lc2/m;->k(I)V

    .line 13
    iget-object v2, v4, Lk2/k$a;->a:Lk2/o;

    iget v3, v2, Lk2/o;->j:I

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_5

    .line 14
    iget-object v2, v0, Lk2/k;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v2

    .line 15
    aput-byte v10, v2, v10

    .line 16
    aput-byte v10, v2, v12

    const/4 v3, 0x2

    .line 17
    aput-byte v10, v2, v3

    .line 18
    iget-object v3, v4, Lk2/k$a;->a:Lk2/o;

    iget v3, v3, Lk2/o;->j:I

    rsub-int/lit8 v7, v3, 0x4

    .line 19
    :goto_0
    iget v8, v0, Lk2/k;->p:I

    if-ge v8, v6, :cond_9

    .line 20
    iget v8, v0, Lk2/k;->q:I

    if-nez v8, :cond_4

    .line 21
    invoke-interface {v1, v2, v7, v3}, Lc2/m;->readFully([BII)V

    .line 22
    iget v8, v0, Lk2/k;->o:I

    add-int/2addr v8, v3

    iput v8, v0, Lk2/k;->o:I

    .line 23
    iget-object v8, v0, Lk2/k;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 24
    iget-object v8, v0, Lk2/k;->c:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/b0;->n()I

    move-result v8

    if-ltz v8, :cond_3

    .line 25
    iput v8, v0, Lk2/k;->q:I

    .line 26
    iget-object v8, v0, Lk2/k;->b:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 27
    iget-object v8, v0, Lk2/k;->b:Lcom/google/android/exoplayer2/util/b0;

    const/4 v9, 0x4

    invoke-interface {v14, v8, v9}, Lc2/e0;->a(Lcom/google/android/exoplayer2/util/b0;I)V

    .line 28
    iget v8, v0, Lk2/k;->p:I

    add-int/2addr v8, v9

    iput v8, v0, Lk2/k;->p:I

    add-int/2addr v6, v7

    goto :goto_0

    :cond_3
    const-string v1, "Invalid NAL length"

    .line 29
    invoke-static {v1, v11}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 30
    :cond_4
    invoke-interface {v14, v1, v8, v10}, Lc2/e0;->b(Lj3/f;IZ)I

    move-result v8

    .line 31
    iget v9, v0, Lk2/k;->o:I

    add-int/2addr v9, v8

    iput v9, v0, Lk2/k;->o:I

    .line 32
    iget v9, v0, Lk2/k;->p:I

    add-int/2addr v9, v8

    iput v9, v0, Lk2/k;->p:I

    .line 33
    iget v9, v0, Lk2/k;->q:I

    sub-int/2addr v9, v8

    iput v9, v0, Lk2/k;->q:I

    goto :goto_0

    .line 34
    :cond_5
    iget-object v2, v2, Lk2/o;->f:Lcom/google/android/exoplayer2/k1;

    iget-object v2, v2, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 35
    iget v2, v0, Lk2/k;->p:I

    if-nez v2, :cond_6

    .line 36
    iget-object v2, v0, Lk2/k;->d:Lcom/google/android/exoplayer2/util/b0;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/audio/c;->a(ILcom/google/android/exoplayer2/util/b0;)V

    .line 37
    iget-object v2, v0, Lk2/k;->d:Lcom/google/android/exoplayer2/util/b0;

    const/4 v3, 0x7

    invoke-interface {v14, v2, v3}, Lc2/e0;->a(Lcom/google/android/exoplayer2/util/b0;I)V

    .line 38
    iget v2, v0, Lk2/k;->p:I

    add-int/2addr v2, v3

    iput v2, v0, Lk2/k;->p:I

    :cond_6
    add-int/lit8 v6, v6, 0x7

    goto :goto_1

    :cond_7
    if-eqz v13, :cond_8

    .line 39
    invoke-virtual {v13, v1}, Lc2/f0;->d(Lc2/m;)V

    .line 40
    :cond_8
    :goto_1
    iget v2, v0, Lk2/k;->p:I

    if-ge v2, v6, :cond_9

    sub-int v2, v6, v2

    .line 41
    invoke-interface {v14, v1, v2, v10}, Lc2/e0;->b(Lj3/f;IZ)I

    move-result v2

    .line 42
    iget v3, v0, Lk2/k;->o:I

    add-int/2addr v3, v2

    iput v3, v0, Lk2/k;->o:I

    .line 43
    iget v3, v0, Lk2/k;->p:I

    add-int/2addr v3, v2

    iput v3, v0, Lk2/k;->p:I

    .line 44
    iget v3, v0, Lk2/k;->q:I

    sub-int/2addr v3, v2

    iput v3, v0, Lk2/k;->q:I

    goto :goto_1

    :cond_9
    move v1, v6

    .line 45
    iget-object v2, v4, Lk2/k$a;->b:Lk2/r;

    iget-object v3, v2, Lk2/r;->f:[J

    aget-wide v8, v3, v15

    .line 46
    iget-object v2, v2, Lk2/r;->g:[I

    aget v2, v2, v15

    if-eqz v13, :cond_a

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v6, v13

    move-object v7, v14

    move v10, v2

    move-object v2, v11

    move v11, v1

    const/16 v17, 0x1

    move v12, v3

    move-object v1, v13

    move-object/from16 v13, v16

    .line 47
    invoke-virtual/range {v6 .. v13}, Lc2/f0;->c(Lc2/e0;JIIILc2/e0$a;)V

    add-int/lit8 v15, v15, 0x1

    .line 48
    iget-object v3, v4, Lk2/k$a;->b:Lk2/r;

    iget v3, v3, Lk2/r;->b:I

    if-ne v15, v3, :cond_b

    .line 49
    invoke-virtual {v1, v14, v2}, Lc2/f0;->a(Lc2/e0;Lc2/e0$a;)V

    goto :goto_2

    :cond_a
    const/16 v17, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-wide v7, v8

    move v9, v2

    move v10, v1

    .line 50
    invoke-interface/range {v6 .. v12}, Lc2/e0;->c(JIIILc2/e0$a;)V

    .line 51
    :cond_b
    :goto_2
    iget v1, v4, Lk2/k$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Lk2/k$a;->e:I

    .line 52
    iput v5, v0, Lk2/k;->n:I

    const/4 v1, 0x0

    .line 53
    iput v1, v0, Lk2/k;->o:I

    .line 54
    iput v1, v0, Lk2/k;->p:I

    .line 55
    iput v1, v0, Lk2/k;->q:I

    return v1

    :cond_c
    const/16 v17, 0x1

    move-object/from16 v1, p2

    .line 56
    :goto_3
    iput-wide v8, v1, Lc2/a0;->a:J

    return v17
.end method

.method private D(Lc2/m;Lc2/a0;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/k;->g:Lk2/m;

    iget-object v1, p0, Lk2/k;->h:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lk2/m;->c(Lc2/m;Lc2/a0;Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-wide v0, p2, Lc2/a0;->a:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 3
    invoke-direct {p0}, Lk2/k;->n()V

    :cond_0
    return p1
.end method

.method private static E(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

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

.method private static F(I)Z
    .locals 1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

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

.method private G(Lk2/k$a;J)V
    .locals 3

    .line 1
    iget-object v0, p1, Lk2/k$a;->b:Lk2/r;

    .line 2
    invoke-virtual {v0, p2, p3}, Lk2/r;->a(J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, p2, p3}, Lk2/r;->b(J)I

    move-result v1

    .line 4
    :cond_0
    iput v1, p1, Lk2/k$a;->e:I

    return-void
.end method

.method public static synthetic j(Lk2/o;)Lk2/o;
    .locals 0

    invoke-static {p0}, Lk2/k;->r(Lk2/o;)Lk2/o;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k()[Lc2/l;
    .locals 1

    invoke-static {}, Lk2/k;->s()[Lc2/l;

    move-result-object v0

    return-object v0
.end method

.method private static l(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static m([Lk2/k$a;)[[J
    .locals 15

    .line 1
    array-length v0, p0

    new-array v0, v0, [[J

    .line 2
    array-length v1, p0

    new-array v1, v1, [I

    .line 3
    array-length v2, p0

    new-array v2, v2, [J

    .line 4
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 6
    aget-object v6, p0, v5

    iget-object v6, v6, Lk2/k$a;->b:Lk2/r;

    iget v6, v6, Lk2/r;->b:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 7
    aget-object v6, p0, v5

    iget-object v6, v6, Lk2/k$a;->b:Lk2/r;

    iget-object v6, v6, Lk2/r;->f:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 8
    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 9
    :goto_2
    array-length v12, p0

    if-ge v11, v12, :cond_2

    .line 10
    aget-boolean v12, v3, v11

    if-nez v12, :cond_1

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_1

    .line 11
    aget-wide v8, v2, v11

    move v10, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 12
    :cond_2
    aget v8, v1, v10

    .line 13
    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    .line 14
    aget-object v9, p0, v10

    iget-object v9, v9, Lk2/k$a;->b:Lk2/r;

    iget-object v9, v9, Lk2/r;->d:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 15
    aput v8, v1, v10

    .line 16
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_3

    .line 17
    aget-object v9, p0, v10

    iget-object v9, v9, Lk2/k$a;->b:Lk2/r;

    iget-object v9, v9, Lk2/r;->f:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    .line 18
    :cond_3
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private n()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lk2/k;->i:I

    .line 2
    iput v0, p0, Lk2/k;->l:I

    return-void
.end method

.method private static p(Lk2/r;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lk2/r;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lk2/r;->b(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method private q(J)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    .line 1
    :goto_0
    iget-object v1, v0, Lk2/k;->s:[Lk2/k$a;

    array-length v3, v1

    if-ge v7, v3, :cond_7

    .line 2
    aget-object v1, v1, v7

    .line 3
    iget v3, v1, Lk2/k$a;->e:I

    .line 4
    iget-object v1, v1, Lk2/k$a;->b:Lk2/r;

    iget v4, v1, Lk2/r;->b:I

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    iget-object v1, v1, Lk2/r;->c:[J

    aget-wide v4, v1, v3

    .line 6
    iget-object v1, v0, Lk2/k;->t:[[J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    aget-object v1, v1, v7

    aget-wide v16, v1, v3

    sub-long v4, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-ltz v1, :cond_2

    const-wide/32 v18, 0x40000

    cmp-long v1, v4, v18

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-ne v1, v13, :cond_5

    cmp-long v3, v4, v14

    if-gez v3, :cond_5

    :cond_4
    move v13, v1

    move-wide v14, v4

    move v6, v7

    move-wide/from16 v11, v16

    :cond_5
    cmp-long v3, v16, v8

    if-gez v3, :cond_6

    move v10, v1

    move v2, v7

    move-wide/from16 v8, v16

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v8, v3

    if-eqz v1, :cond_8

    if-eqz v10, :cond_8

    const-wide/32 v3, 0xa00000

    add-long/2addr v8, v3

    cmp-long v1, v11, v8

    if-gez v1, :cond_9

    :cond_8
    move v2, v6

    :cond_9
    return v2
.end method

.method private static synthetic r(Lk2/o;)Lk2/o;
    .locals 0

    return-object p0
.end method

.method private static synthetic s()[Lc2/l;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lc2/l;

    new-instance v1, Lk2/k;

    invoke-direct {v1}, Lk2/k;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static t(Lk2/r;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk2/k;->p(Lk2/r;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 2
    :cond_0
    iget-object p0, p0, Lk2/r;->c:[J

    aget-wide p1, p0, p1

    .line 3
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private u(Lc2/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/k;->d:Lcom/google/android/exoplayer2/util/b0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/b0;->L(I)V

    .line 2
    iget-object v0, p0, Lk2/k;->d:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lc2/m;->m([BII)V

    .line 3
    iget-object v0, p0, Lk2/k;->d:Lcom/google/android/exoplayer2/util/b0;

    invoke-static {v0}, Lk2/b;->e(Lcom/google/android/exoplayer2/util/b0;)V

    .line 4
    iget-object v0, p0, Lk2/k;->d:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->e()I

    move-result v0

    invoke-interface {p1, v0}, Lc2/m;->k(I)V

    .line 5
    invoke-interface {p1}, Lc2/m;->f()V

    return-void
.end method

.method private v(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/a$a;

    iget-wide v2, v0, Lk2/a$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/a$a;

    .line 3
    iget v2, v0, Lk2/a;->a:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lk2/k;->y(Lk2/a$a;)V

    .line 5
    iget-object v0, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iput v1, p0, Lk2/k;->i:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/a$a;

    invoke-virtual {v1, v0}, Lk2/a$a;->d(Lk2/a$a;)V

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, Lk2/k;->i:I

    if-eq p1, v1, :cond_3

    .line 10
    invoke-direct {p0}, Lk2/k;->n()V

    :cond_3
    return-void
.end method

.method private w()V
    .locals 5

    .line 1
    iget v0, p0, Lk2/k;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lk2/k;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lk2/k;->r:Lc2/n;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lc2/n;->q(II)Lc2/e0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lk2/k;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iget-object v4, p0, Lk2/k;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 4
    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/k1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object v1

    invoke-interface {v0, v1}, Lc2/e0;->d(Lcom/google/android/exoplayer2/k1;)V

    .line 5
    iget-object v0, p0, Lk2/k;->r:Lc2/n;

    invoke-interface {v0}, Lc2/n;->o()V

    .line 6
    iget-object v0, p0, Lk2/k;->r:Lc2/n;

    new-instance v1, Lc2/b0$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lc2/b0$b;-><init>(J)V

    invoke-interface {v0, v1}, Lc2/n;->l(Lc2/b0;)V

    :cond_1
    return-void
.end method

.method private static x(Lcom/google/android/exoplayer2/util/b0;)I
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/b0;->n()I

    move-result v0

    .line 3
    invoke-static {v0}, Lk2/k;->l(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/b0;->Q(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/b0;->n()I

    move-result v0

    invoke-static {v0}, Lk2/k;->l(I)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private y(Lk2/a$a;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v2, v0, Lk2/k;->w:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 3
    :goto_0
    new-instance v12, Lc2/x;

    invoke-direct {v12}, Lc2/x;-><init>()V

    const v2, 0x75647461

    .line 4
    invoke-virtual {v1, v2}, Lk2/a$a;->g(I)Lk2/a$b;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-static {v2}, Lk2/b;->B(Lk2/a$b;)Landroid/util/Pair;

    move-result-object v2

    .line 6
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 7
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v12, v3}, Lc2/x;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_1
    move-object v14, v2

    move-object v15, v3

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const v2, 0x6d657461

    .line 9
    invoke-virtual {v1, v2}, Lk2/a$a;->f(I)Lk2/a$a;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {v2}, Lk2/b;->n(Lk2/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 11
    :goto_2
    iget v2, v0, Lk2/k;->a:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    .line 12
    sget-object v16, Lk2/j;->a:Lk2/j;

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v13, v8

    move-object/from16 v8, v16

    .line 13
    invoke-static/range {v1 .. v8}, Lk2/b;->A(Lk2/a$a;Lc2/x;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/h;)Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move-wide v10, v3

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_4
    if-ge v6, v2, :cond_c

    .line 15
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lk2/r;

    .line 16
    iget v5, v8, Lk2/r;->b:I

    if-nez v5, :cond_5

    move-object/from16 v18, v1

    move/from16 v19, v2

    const/4 v1, -0x1

    const/4 v8, 0x1

    goto/16 :goto_9

    .line 17
    :cond_5
    iget-object v5, v8, Lk2/r;->a:Lk2/o;

    move-object/from16 v18, v1

    move/from16 v19, v2

    .line 18
    iget-wide v1, v5, Lk2/o;->e:J

    cmp-long v20, v1, v3

    if-eqz v20, :cond_6

    goto :goto_5

    :cond_6
    iget-wide v1, v8, Lk2/r;->h:J

    .line 19
    :goto_5
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 20
    new-instance v3, Lk2/k$a;

    iget-object v4, v0, Lk2/k;->r:Lc2/n;

    move-wide/from16 v21, v10

    iget v10, v5, Lk2/o;->b:I

    .line 21
    invoke-interface {v4, v6, v10}, Lc2/n;->q(II)Lc2/e0;

    move-result-object v4

    invoke-direct {v3, v5, v8, v4}, Lk2/k$a;-><init>(Lk2/o;Lk2/r;Lc2/e0;)V

    .line 22
    iget-object v4, v5, Lk2/o;->f:Lcom/google/android/exoplayer2/k1;

    iget-object v4, v4, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    const-string v10, "audio/true-hd"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 23
    iget v4, v8, Lk2/r;->e:I

    mul-int/lit8 v4, v4, 0x10

    goto :goto_6

    .line 24
    :cond_7
    iget v4, v8, Lk2/r;->e:I

    add-int/lit8 v4, v4, 0x1e

    .line 25
    :goto_6
    iget-object v10, v5, Lk2/o;->f:Lcom/google/android/exoplayer2/k1;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/k1;->b()Lcom/google/android/exoplayer2/k1$b;

    move-result-object v10

    .line 26
    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/k1$b;->W(I)Lcom/google/android/exoplayer2/k1$b;

    .line 27
    iget v4, v5, Lk2/o;->b:I

    const/4 v11, 0x2

    if-ne v4, v11, :cond_8

    const-wide/16 v23, 0x0

    cmp-long v4, v1, v23

    if-lez v4, :cond_8

    iget v4, v8, Lk2/r;->b:I

    const/4 v8, 0x1

    if-le v4, v8, :cond_8

    int-to-float v4, v4

    long-to-float v1, v1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    div-float/2addr v4, v1

    .line 28
    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/k1$b;->P(F)Lcom/google/android/exoplayer2/k1$b;

    .line 29
    :cond_8
    iget v1, v5, Lk2/o;->b:I

    invoke-static {v1, v12, v10}, Lk2/h;->k(ILc2/x;Lcom/google/android/exoplayer2/k1$b;)V

    .line 30
    iget v1, v5, Lk2/o;->b:I

    new-array v2, v11, [Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v4, 0x0

    aput-object v14, v2, v4

    .line 31
    iget-object v4, v0, Lk2/k;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    new-instance v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v8, v0, Lk2/k;->h:Ljava/util/List;

    invoke-direct {v4, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_7
    const/4 v8, 0x1

    aput-object v4, v2, v8

    .line 32
    invoke-static {v1, v15, v13, v10, v2}, Lk2/h;->l(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/k1$b;[Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 33
    iget-object v1, v3, Lk2/k$a;->c:Lc2/e0;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object v2

    invoke-interface {v1, v2}, Lc2/e0;->d(Lcom/google/android/exoplayer2/k1;)V

    .line 34
    iget v1, v5, Lk2/o;->b:I

    if-ne v1, v11, :cond_a

    const/4 v1, -0x1

    if-ne v7, v1, :cond_b

    .line 35
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    move v7, v2

    goto :goto_8

    :cond_a
    const/4 v1, -0x1

    .line 36
    :cond_b
    :goto_8
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v21

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4

    .line 37
    :cond_c
    iput v7, v0, Lk2/k;->u:I

    .line 38
    iput-wide v10, v0, Lk2/k;->v:J

    const/4 v1, 0x0

    new-array v1, v1, [Lk2/k$a;

    .line 39
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lk2/k$a;

    iput-object v1, v0, Lk2/k;->s:[Lk2/k$a;

    .line 40
    invoke-static {v1}, Lk2/k;->m([Lk2/k$a;)[[J

    move-result-object v1

    iput-object v1, v0, Lk2/k;->t:[[J

    .line 41
    iget-object v1, v0, Lk2/k;->r:Lc2/n;

    invoke-interface {v1}, Lc2/n;->o()V

    .line 42
    iget-object v1, v0, Lk2/k;->r:Lc2/n;

    invoke-interface {v1, v0}, Lc2/n;->l(Lc2/b0;)V

    return-void
.end method

.method private z(J)V
    .locals 13

    .line 1
    iget v0, p0, Lk2/k;->j:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget v1, p0, Lk2/k;->l:I

    int-to-long v5, v1

    add-long v9, p1, v5

    iget-wide v5, p0, Lk2/k;->k:J

    int-to-long v1, v1

    sub-long v11, v5, v1

    move-object v2, v0

    move-wide v5, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v0, p0, Lk2/k;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk2/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk2/k;->l:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lk2/k;->n:I

    .line 4
    iput v0, p0, Lk2/k;->o:I

    .line 5
    iput v0, p0, Lk2/k;->p:I

    .line 6
    iput v0, p0, Lk2/k;->q:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    .line 7
    iget p1, p0, Lk2/k;->i:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 8
    invoke-direct {p0}, Lk2/k;->n()V

    goto :goto_1

    .line 9
    :cond_0
    iget-object p1, p0, Lk2/k;->g:Lk2/m;

    invoke-virtual {p1}, Lk2/m;->g()V

    .line 10
    iget-object p1, p0, Lk2/k;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lk2/k;->s:[Lk2/k$a;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    .line 12
    invoke-direct {p0, v1, p3, p4}, Lk2/k;->G(Lk2/k$a;J)V

    .line 13
    iget-object v1, v1, Lk2/k$a;->d:Lc2/f0;

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Lc2/f0;->b()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Lc2/m;Lc2/a0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget v0, p0, Lk2/k;->i:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Lk2/k;->D(Lc2/m;Lc2/a0;)I

    move-result p1

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2}, Lk2/k;->C(Lc2/m;Lc2/a0;)I

    move-result p1

    return p1

    .line 5
    :cond_3
    invoke-direct {p0, p1, p2}, Lk2/k;->B(Lc2/m;Lc2/a0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_4
    invoke-direct {p0, p1}, Lk2/k;->A(Lc2/m;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public c(J)Lc2/b0$a;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lk2/k;->o(JI)Lc2/b0$a;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(Lc2/n;)V
    .locals 0

    iput-object p1, p0, Lk2/k;->r:Lc2/n;

    return-void
.end method

.method public h(Lc2/m;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lk2/k;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lk2/n;->d(Lc2/m;Z)Z

    move-result p1

    return p1
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lk2/k;->v:J

    return-wide v0
.end method

.method public o(JI)Lc2/b0$a;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    .line 1
    iget-object v4, v0, Lk2/k;->s:[Lk2/k$a;

    array-length v5, v4

    if-nez v5, :cond_0

    .line 2
    new-instance v1, Lc2/b0$a;

    sget-object v2, Lc2/c0;->c:Lc2/c0;

    invoke-direct {v1, v2}, Lc2/b0$a;-><init>(Lc2/c0;)V

    return-object v1

    :cond_0
    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    move v8, v3

    goto :goto_0

    .line 3
    :cond_1
    iget v8, v0, Lk2/k;->u:I

    :goto_0
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v8, v7, :cond_3

    .line 4
    aget-object v4, v4, v8

    iget-object v4, v4, Lk2/k$a;->b:Lk2/r;

    .line 5
    invoke-static {v4, v1, v2}, Lk2/k;->p(Lk2/r;J)I

    move-result v8

    if-ne v8, v7, :cond_2

    .line 6
    new-instance v1, Lc2/b0$a;

    sget-object v2, Lc2/c0;->c:Lc2/c0;

    invoke-direct {v1, v2}, Lc2/b0$a;-><init>(Lc2/c0;)V

    return-object v1

    .line 7
    :cond_2
    iget-object v11, v4, Lk2/r;->f:[J

    aget-wide v12, v11, v8

    .line 8
    iget-object v11, v4, Lk2/r;->c:[J

    aget-wide v14, v11, v8

    cmp-long v11, v12, v1

    if-gez v11, :cond_4

    .line 9
    iget v11, v4, Lk2/r;->b:I

    add-int/lit8 v11, v11, -0x1

    if-ge v8, v11, :cond_4

    .line 10
    invoke-virtual {v4, v1, v2}, Lk2/r;->b(J)I

    move-result v1

    if-eq v1, v7, :cond_4

    if-eq v1, v8, :cond_4

    .line 11
    iget-object v2, v4, Lk2/r;->f:[J

    aget-wide v5, v2, v1

    .line 12
    iget-object v2, v4, Lk2/r;->c:[J

    aget-wide v1, v2, v1

    goto :goto_1

    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    move-wide v12, v1

    :cond_4
    move-wide v1, v5

    move-wide v5, v9

    :goto_1
    if-ne v3, v7, :cond_6

    const/4 v3, 0x0

    .line 13
    :goto_2
    iget-object v4, v0, Lk2/k;->s:[Lk2/k$a;

    array-length v7, v4

    if-ge v3, v7, :cond_6

    .line 14
    iget v7, v0, Lk2/k;->u:I

    if-eq v3, v7, :cond_5

    .line 15
    aget-object v4, v4, v3

    iget-object v4, v4, Lk2/k$a;->b:Lk2/r;

    .line 16
    invoke-static {v4, v12, v13, v14, v15}, Lk2/k;->t(Lk2/r;JJ)J

    move-result-wide v14

    cmp-long v7, v5, v9

    if-eqz v7, :cond_5

    .line 17
    invoke-static {v4, v5, v6, v1, v2}, Lk2/k;->t(Lk2/r;JJ)J

    move-result-wide v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 18
    :cond_6
    new-instance v3, Lc2/c0;

    invoke-direct {v3, v12, v13, v14, v15}, Lc2/c0;-><init>(JJ)V

    cmp-long v4, v5, v9

    if-nez v4, :cond_7

    .line 19
    new-instance v1, Lc2/b0$a;

    invoke-direct {v1, v3}, Lc2/b0$a;-><init>(Lc2/c0;)V

    return-object v1

    .line 20
    :cond_7
    new-instance v4, Lc2/c0;

    invoke-direct {v4, v5, v6, v1, v2}, Lc2/c0;-><init>(JJ)V

    .line 21
    new-instance v1, Lc2/b0$a;

    invoke-direct {v1, v3, v4}, Lc2/b0$a;-><init>(Lc2/c0;Lc2/c0;)V

    return-object v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

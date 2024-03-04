.class public La2/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/n1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/d;

.field private final b:Lcom/google/android/exoplayer2/i3$b;

.field private final c:Lcom/google/android/exoplayer2/i3$d;

.field private final d:La2/n1$a;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "La2/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/exoplayer2/util/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/q<",
            "La2/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/exoplayer2/l2;

.field private h:Lcom/google/android/exoplayer2/util/n;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/d;

    iput-object v0, p0, La2/n1;->a:Lcom/google/android/exoplayer2/util/d;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/q;

    invoke-static {}, Lcom/google/android/exoplayer2/util/l0;->K()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, La2/h1;->a:La2/h1;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/q;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/q$b;)V

    iput-object v0, p0, La2/n1;->f:Lcom/google/android/exoplayer2/util/q;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/i3$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/i3$b;-><init>()V

    iput-object p1, p0, La2/n1;->b:Lcom/google/android/exoplayer2/i3$b;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/i3$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/i3$d;-><init>()V

    iput-object v0, p0, La2/n1;->c:Lcom/google/android/exoplayer2/i3$d;

    .line 6
    new-instance v0, La2/n1$a;

    invoke-direct {v0, p1}, La2/n1$a;-><init>(Lcom/google/android/exoplayer2/i3$b;)V

    iput-object v0, p0, La2/n1;->d:La2/n1$a;

    .line 7
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, La2/n1;->e:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic A0(La2/c$a;ZLa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->z2(La2/c$a;ZLa2/c;)V

    return-void
.end method

.method private A1()La2/c$a;
    .locals 1

    iget-object v0, p0, La2/n1;->d:La2/n1$a;

    invoke-virtual {v0}, La2/n1$a;->e()Lv2/q$b;

    move-result-object v0

    invoke-direct {p0, v0}, La2/n1;->z1(Lv2/q$b;)La2/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic A2(La2/c$a;IILa2/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, La2/c;->t(La2/c$a;II)V

    return-void
.end method

.method public static synthetic B0(La2/c$a;La2/c;)V
    .locals 0

    invoke-static {p0, p1}, La2/n1;->c2(La2/c$a;La2/c;)V

    return-void
.end method

.method private B1(ILv2/q$b;)La2/c$a;
    .locals 3
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2
    iget-object v2, p0, La2/n1;->d:La2/n1$a;

    .line 3
    invoke-virtual {v2, p2}, La2/n1$a;->f(Lv2/q$b;)Lcom/google/android/exoplayer2/i3;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p2}, La2/n1;->z1(Lv2/q$b;)La2/c$a;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/i3;->a:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {p0, v0, p1, p2}, La2/n1;->y1(Lcom/google/android/exoplayer2/i3;ILv2/q$b;)La2/c$a;

    move-result-object p1

    :goto_1
    return-object p1

    .line 6
    :cond_2
    iget-object p2, p0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    sget-object p2, Lcom/google/android/exoplayer2/i3;->a:Lcom/google/android/exoplayer2/i3;

    :goto_3
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p2, p1, v0}, La2/n1;->y1(Lcom/google/android/exoplayer2/i3;ILv2/q$b;)La2/c$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic B2(La2/c$a;ILa2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->s(La2/c$a;I)V

    return-void
.end method

.method public static synthetic C0(La2/c$a;Ljava/util/List;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->S1(La2/c$a;Ljava/util/List;La2/c;)V

    return-void
.end method

.method private C1()La2/c$a;
    .locals 1

    iget-object v0, p0, La2/n1;->d:La2/n1$a;

    invoke-virtual {v0}, La2/n1$a;->g()Lv2/q$b;

    move-result-object v0

    invoke-direct {p0, v0}, La2/n1;->z1(Lv2/q$b;)La2/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic C2(La2/c$a;Lh3/z;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->F(La2/c$a;Lh3/z;)V

    return-void
.end method

.method public static synthetic D0(La2/c$a;Lcom/google/android/exoplayer2/k2;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->o2(La2/c$a;Lcom/google/android/exoplayer2/k2;La2/c;)V

    return-void
.end method

.method private D1()La2/c$a;
    .locals 1

    iget-object v0, p0, La2/n1;->d:La2/n1$a;

    invoke-virtual {v0}, La2/n1$a;->h()Lv2/q$b;

    move-result-object v0

    invoke-direct {p0, v0}, La2/n1;->z1(Lv2/q$b;)La2/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic D2(La2/c$a;Lcom/google/android/exoplayer2/n3;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->N(La2/c$a;Lcom/google/android/exoplayer2/n3;)V

    return-void
.end method

.method public static synthetic E0(La2/c$a;Lcom/google/android/exoplayer2/s1;ILa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->k2(La2/c$a;Lcom/google/android/exoplayer2/s1;ILa2/c;)V

    return-void
.end method

.method private E1(Lcom/google/android/exoplayer2/PlaybackException;)La2/c$a;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 3
    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lv2/o;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lv2/q$b;

    invoke-direct {v0, p1}, Lv2/q$b;-><init>(Lv2/o;)V

    invoke-direct {p0, v0}, La2/n1;->z1(Lv2/q$b;)La2/c$a;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic E2(La2/c$a;Ljava/lang/Exception;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->B(La2/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic F0(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->r2(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;La2/c;)V

    return-void
.end method

.method private static synthetic F1(La2/c;Lcom/google/android/exoplayer2/util/l;)V
    .locals 0

    return-void
.end method

.method private static synthetic F2(La2/c$a;Ljava/lang/String;JJLa2/c;)V
    .locals 7

    .line 1
    invoke-interface {p6, p0, p1, p2, p3}, La2/c;->m(La2/c$a;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    .line 2
    invoke-interface/range {v0 .. v6}, La2/c;->c0(La2/c$a;Ljava/lang/String;JJ)V

    const/4 v3, 0x2

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    .line 3
    invoke-interface/range {v1 .. v6}, La2/c;->d0(La2/c$a;ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic G0(La2/c$a;Ljava/lang/Exception;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->E2(La2/c$a;Ljava/lang/Exception;La2/c;)V

    return-void
.end method

.method private static synthetic G1(La2/c$a;La2/c;)V
    .locals 0

    invoke-interface {p1, p0}, La2/c;->h0(La2/c$a;)V

    return-void
.end method

.method private static synthetic G2(La2/c$a;Ljava/lang/String;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->c(La2/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic H0(La2/c$a;Lv2/j;Lv2/m;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->h2(La2/c$a;Lv2/j;Lv2/m;La2/c;)V

    return-void
.end method

.method private static synthetic H1(La2/c$a;Ljava/lang/Exception;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->n0(La2/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic H2(La2/c$a;Lb2/e;La2/c;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, La2/c;->R(La2/c$a;Lb2/e;)V

    const/4 v0, 0x2

    .line 2
    invoke-interface {p2, p0, v0, p1}, La2/c;->h(La2/c$a;ILb2/e;)V

    return-void
.end method

.method public static synthetic I0(La2/c$a;La2/c;)V
    .locals 0

    invoke-static {p0, p1}, La2/n1;->M2(La2/c$a;La2/c;)V

    return-void
.end method

.method private static synthetic I1(La2/c$a;Ljava/lang/String;JJLa2/c;)V
    .locals 7

    .line 1
    invoke-interface {p6, p0, p1, p2, p3}, La2/c;->j(La2/c$a;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    .line 2
    invoke-interface/range {v0 .. v6}, La2/c;->S(La2/c$a;Ljava/lang/String;JJ)V

    const/4 v3, 0x1

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    .line 3
    invoke-interface/range {v1 .. v6}, La2/c;->d0(La2/c$a;ILjava/lang/String;J)V

    return-void
.end method

.method private static synthetic I2(La2/c$a;Lb2/e;La2/c;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, La2/c;->J(La2/c$a;Lb2/e;)V

    const/4 v0, 0x2

    .line 2
    invoke-interface {p2, p0, v0, p1}, La2/c;->s0(La2/c$a;ILb2/e;)V

    return-void
.end method

.method public static synthetic J0(La2/c$a;IILa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->A2(La2/c$a;IILa2/c;)V

    return-void
.end method

.method private static synthetic J1(La2/c$a;Ljava/lang/String;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->i(La2/c$a;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic J2(La2/c$a;JILa2/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, La2/c;->e(La2/c$a;JI)V

    return-void
.end method

.method public static synthetic K0(La2/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->m2(La2/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;La2/c;)V

    return-void
.end method

.method private static synthetic K1(La2/c$a;Lb2/e;La2/c;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, La2/c;->x0(La2/c$a;Lb2/e;)V

    const/4 v0, 0x1

    .line 2
    invoke-interface {p2, p0, v0, p1}, La2/c;->h(La2/c$a;ILb2/e;)V

    return-void
.end method

.method private static synthetic K2(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;La2/c;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1}, La2/c;->A(La2/c$a;Lcom/google/android/exoplayer2/k1;)V

    .line 2
    invoke-interface {p3, p0, p1, p2}, La2/c;->Q(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    const/4 p2, 0x2

    .line 3
    invoke-interface {p3, p0, p2, p1}, La2/c;->W(La2/c$a;ILcom/google/android/exoplayer2/k1;)V

    return-void
.end method

.method public static synthetic L0(La2/c$a;ILa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->a2(La2/c$a;ILa2/c;)V

    return-void
.end method

.method private static synthetic L1(La2/c$a;Lb2/e;La2/c;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, La2/c;->p(La2/c$a;Lb2/e;)V

    const/4 v0, 0x1

    .line 2
    invoke-interface {p2, p0, v0, p1}, La2/c;->s0(La2/c$a;ILb2/e;)V

    return-void
.end method

.method private static synthetic L2(La2/c$a;Lk3/y;La2/c;)V
    .locals 6

    .line 1
    invoke-interface {p2, p0, p1}, La2/c;->y(La2/c$a;Lk3/y;)V

    .line 2
    iget v2, p1, Lk3/y;->a:I

    iget v3, p1, Lk3/y;->b:I

    iget v4, p1, Lk3/y;->c:I

    iget v5, p1, Lk3/y;->d:F

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, La2/c;->u0(La2/c$a;IIIF)V

    return-void
.end method

.method public static synthetic M0(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->M1(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;La2/c;)V

    return-void
.end method

.method private static synthetic M1(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;La2/c;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1}, La2/c;->g0(La2/c$a;Lcom/google/android/exoplayer2/k1;)V

    .line 2
    invoke-interface {p3, p0, p1, p2}, La2/c;->O(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    const/4 p2, 0x1

    .line 3
    invoke-interface {p3, p0, p2, p1}, La2/c;->W(La2/c$a;ILcom/google/android/exoplayer2/k1;)V

    return-void
.end method

.method private static synthetic M2(La2/c$a;La2/c;)V
    .locals 0

    invoke-interface {p1, p0}, La2/c;->w(La2/c$a;)V

    return-void
.end method

.method public static synthetic N0(La2/c$a;La2/c;)V
    .locals 0

    invoke-static {p0, p1}, La2/n1;->X1(La2/c$a;La2/c;)V

    return-void
.end method

.method private static synthetic N1(La2/c$a;JLa2/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, La2/c;->q(La2/c$a;J)V

    return-void
.end method

.method private synthetic N2(Lcom/google/android/exoplayer2/l2;La2/c;Lcom/google/android/exoplayer2/util/l;)V
    .locals 2

    new-instance v0, La2/c$b;

    iget-object v1, p0, La2/n1;->e:Landroid/util/SparseArray;

    invoke-direct {v0, p3, v1}, La2/c$b;-><init>(Lcom/google/android/exoplayer2/util/l;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, La2/c;->u(Lcom/google/android/exoplayer2/l2;La2/c$b;)V

    return-void
.end method

.method public static synthetic O0(La2/c$a;La2/c;)V
    .locals 0

    invoke-static {p0, p1}, La2/n1;->x2(La2/c$a;La2/c;)V

    return-void
.end method

.method private static synthetic O1(La2/c$a;Ljava/lang/Exception;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->D(La2/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method private O2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/o;

    invoke-direct {v1, v0}, La2/o;-><init>(La2/c$a;)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    .line 3
    iget-object v0, p0, La2/n1;->f:Lcom/google/android/exoplayer2/util/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/q;->j()V

    return-void
.end method

.method public static synthetic P0(La2/c$a;Lv2/j;Lv2/m;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->g2(La2/c$a;Lv2/j;Lv2/m;La2/c;)V

    return-void
.end method

.method private static synthetic P1(La2/c$a;IJJLa2/c;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, La2/c;->o0(La2/c$a;IJJ)V

    return-void
.end method

.method public static synthetic Q0(La2/c$a;IJJLa2/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, La2/n1;->R1(La2/c$a;IJJLa2/c;)V

    return-void
.end method

.method private static synthetic Q1(La2/c$a;Lcom/google/android/exoplayer2/l2$b;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->d(La2/c$a;Lcom/google/android/exoplayer2/l2$b;)V

    return-void
.end method

.method public static synthetic R0(La2/c$a;ILcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La2/n1;->u2(La2/c$a;ILcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;La2/c;)V

    return-void
.end method

.method private static synthetic R1(La2/c$a;IJJLa2/c;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, La2/c;->e0(La2/c$a;IJJ)V

    return-void
.end method

.method public static synthetic S0(La2/c$a;Lv2/j;Lv2/m;Ljava/io/IOException;ZLa2/c;)V
    .locals 0

    invoke-static/range {p0 .. p5}, La2/n1;->i2(La2/c$a;Lv2/j;Lv2/m;Ljava/io/IOException;ZLa2/c;)V

    return-void
.end method

.method private static synthetic S1(La2/c$a;Ljava/util/List;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->V(La2/c$a;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic T0(La2/c$a;Lx2/e;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->T1(La2/c$a;Lx2/e;La2/c;)V

    return-void
.end method

.method private static synthetic T1(La2/c$a;Lx2/e;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->v(La2/c$a;Lx2/e;)V

    return-void
.end method

.method public static synthetic U0(La2/c$a;Lcom/google/android/exoplayer2/x1;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->l2(La2/c$a;Lcom/google/android/exoplayer2/x1;La2/c;)V

    return-void
.end method

.method private static synthetic U1(La2/c$a;Lcom/google/android/exoplayer2/o;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->k(La2/c$a;Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public static synthetic V0(La2/c$a;IJLa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La2/n1;->d2(La2/c$a;IJLa2/c;)V

    return-void
.end method

.method private static synthetic V1(La2/c$a;IZLa2/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, La2/c;->P(La2/c$a;IZ)V

    return-void
.end method

.method public static synthetic W0(La2/c$a;Ljava/lang/Exception;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->O1(La2/c$a;Ljava/lang/Exception;La2/c;)V

    return-void
.end method

.method private static synthetic W1(La2/c$a;Lv2/m;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->a0(La2/c$a;Lv2/m;)V

    return-void
.end method

.method public static synthetic X0(La2/c$a;Ljava/lang/String;JJLa2/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, La2/n1;->I1(La2/c$a;Ljava/lang/String;JJLa2/c;)V

    return-void
.end method

.method private static synthetic X1(La2/c$a;La2/c;)V
    .locals 0

    invoke-interface {p1, p0}, La2/c;->p0(La2/c$a;)V

    return-void
.end method

.method public static synthetic Y0(La2/c$a;Lcom/google/android/exoplayer2/l2$b;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->Q1(La2/c$a;Lcom/google/android/exoplayer2/l2$b;La2/c;)V

    return-void
.end method

.method private static synthetic Y1(La2/c$a;La2/c;)V
    .locals 0

    invoke-interface {p1, p0}, La2/c;->r0(La2/c$a;)V

    return-void
.end method

.method public static synthetic Z0(La2/c$a;Ljava/lang/String;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->G2(La2/c$a;Ljava/lang/String;La2/c;)V

    return-void
.end method

.method private static synthetic Z1(La2/c$a;La2/c;)V
    .locals 0

    invoke-interface {p1, p0}, La2/c;->l(La2/c$a;)V

    return-void
.end method

.method public static synthetic a1(La2/c$a;IJJLa2/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, La2/n1;->P1(La2/c$a;IJJLa2/c;)V

    return-void
.end method

.method private static synthetic a2(La2/c$a;ILa2/c;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0}, La2/c;->j0(La2/c$a;)V

    .line 2
    invoke-interface {p2, p0, p1}, La2/c;->f(La2/c$a;I)V

    return-void
.end method

.method public static synthetic b1(La2/c$a;La2/c;)V
    .locals 0

    invoke-static {p0, p1}, La2/n1;->Y1(La2/c$a;La2/c;)V

    return-void
.end method

.method private static synthetic b2(La2/c$a;Ljava/lang/Exception;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->g(La2/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic c1(La2/c$a;ZILa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->n2(La2/c$a;ZILa2/c;)V

    return-void
.end method

.method private static synthetic c2(La2/c$a;La2/c;)V
    .locals 0

    invoke-interface {p1, p0}, La2/c;->X(La2/c$a;)V

    return-void
.end method

.method public static synthetic d1(La2/c$a;ILa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->p2(La2/c$a;ILa2/c;)V

    return-void
.end method

.method private static synthetic d2(La2/c$a;IJLa2/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, La2/c;->f0(La2/c$a;IJ)V

    return-void
.end method

.method public static synthetic e1(La2/c$a;Lcom/google/android/exoplayer2/n3;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->D2(La2/c$a;Lcom/google/android/exoplayer2/n3;La2/c;)V

    return-void
.end method

.method private static synthetic e2(La2/c$a;ZLa2/c;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, La2/c;->a(La2/c$a;Z)V

    .line 2
    invoke-interface {p2, p0, p1}, La2/c;->L(La2/c$a;Z)V

    return-void
.end method

.method public static synthetic f1(La2/c$a;Lb2/e;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->K1(La2/c$a;Lb2/e;La2/c;)V

    return-void
.end method

.method private static synthetic f2(La2/c$a;ZLa2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->v0(La2/c$a;Z)V

    return-void
.end method

.method public static synthetic g1(La2/c$a;ILa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->q2(La2/c$a;ILa2/c;)V

    return-void
.end method

.method private static synthetic g2(La2/c$a;Lv2/j;Lv2/m;La2/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, La2/c;->m0(La2/c$a;Lv2/j;Lv2/m;)V

    return-void
.end method

.method public static synthetic h1(La2/c$a;ZILa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->t2(La2/c$a;ZILa2/c;)V

    return-void
.end method

.method private static synthetic h2(La2/c$a;Lv2/j;Lv2/m;La2/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, La2/c;->r(La2/c$a;Lv2/j;Lv2/m;)V

    return-void
.end method

.method public static synthetic i1(La2/c$a;Lv2/j;Lv2/m;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->j2(La2/c$a;Lv2/j;Lv2/m;La2/c;)V

    return-void
.end method

.method private static synthetic i2(La2/c$a;Lv2/j;Lv2/m;Ljava/io/IOException;ZLa2/c;)V
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, La2/c;->H(La2/c$a;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic j1(La2/c$a;Lb2/e;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->L1(La2/c$a;Lb2/e;La2/c;)V

    return-void
.end method

.method private static synthetic j2(La2/c$a;Lv2/j;Lv2/m;La2/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, La2/c;->M(La2/c$a;Lv2/j;Lv2/m;)V

    return-void
.end method

.method public static synthetic k1(La2/c$a;ILa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->B2(La2/c$a;ILa2/c;)V

    return-void
.end method

.method private static synthetic k2(La2/c$a;Lcom/google/android/exoplayer2/s1;ILa2/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, La2/c;->b0(La2/c$a;Lcom/google/android/exoplayer2/s1;I)V

    return-void
.end method

.method public static synthetic l1(La2/c$a;ZLa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->e2(La2/c$a;ZLa2/c;)V

    return-void
.end method

.method private static synthetic l2(La2/c$a;Lcom/google/android/exoplayer2/x1;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->n(La2/c$a;Lcom/google/android/exoplayer2/x1;)V

    return-void
.end method

.method public static synthetic m1(La2/n1;Lcom/google/android/exoplayer2/l2;La2/c;Lcom/google/android/exoplayer2/util/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La2/n1;->N2(Lcom/google/android/exoplayer2/l2;La2/c;Lcom/google/android/exoplayer2/util/l;)V

    return-void
.end method

.method private static synthetic m2(La2/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->z(La2/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public static synthetic n0(La2/c$a;Ljava/lang/Exception;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->H1(La2/c$a;Ljava/lang/Exception;La2/c;)V

    return-void
.end method

.method public static synthetic n1(La2/c;Lcom/google/android/exoplayer2/util/l;)V
    .locals 0

    invoke-static {p0, p1}, La2/n1;->F1(La2/c;Lcom/google/android/exoplayer2/util/l;)V

    return-void
.end method

.method private static synthetic n2(La2/c$a;ZILa2/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, La2/c;->Z(La2/c$a;ZI)V

    return-void
.end method

.method public static synthetic o0(La2/c$a;IZLa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->V1(La2/c$a;IZLa2/c;)V

    return-void
.end method

.method public static synthetic o1(La2/c$a;La2/c;)V
    .locals 0

    invoke-static {p0, p1}, La2/n1;->Z1(La2/c$a;La2/c;)V

    return-void
.end method

.method private static synthetic o2(La2/c$a;Lcom/google/android/exoplayer2/k2;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->E(La2/c$a;Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method

.method public static synthetic p0(La2/c$a;ZLa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->f2(La2/c$a;ZLa2/c;)V

    return-void
.end method

.method public static synthetic p1(La2/c$a;JLa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->N1(La2/c$a;JLa2/c;)V

    return-void
.end method

.method private static synthetic p2(La2/c$a;ILa2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->C(La2/c$a;I)V

    return-void
.end method

.method public static synthetic q0(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/n1;->K2(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;La2/c;)V

    return-void
.end method

.method public static synthetic q1(La2/c$a;Lb2/e;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->I2(La2/c$a;Lb2/e;La2/c;)V

    return-void
.end method

.method private static synthetic q2(La2/c$a;ILa2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->b(La2/c$a;I)V

    return-void
.end method

.method public static synthetic r0(La2/n1;)V
    .locals 0

    invoke-direct {p0}, La2/n1;->O2()V

    return-void
.end method

.method public static synthetic r1(La2/c$a;Ljava/lang/String;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->J1(La2/c$a;Ljava/lang/String;La2/c;)V

    return-void
.end method

.method private static synthetic r2(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->t0(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic s0(La2/c$a;Lh3/z;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->C2(La2/c$a;Lh3/z;La2/c;)V

    return-void
.end method

.method public static synthetic s1(La2/c$a;Ljava/lang/Object;JLa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La2/n1;->v2(La2/c$a;Ljava/lang/Object;JLa2/c;)V

    return-void
.end method

.method private static synthetic s2(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;La2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->G(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic t0(La2/c$a;Lk3/y;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->L2(La2/c$a;Lk3/y;La2/c;)V

    return-void
.end method

.method public static synthetic t1(La2/c$a;Ljava/lang/Exception;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->b2(La2/c$a;Ljava/lang/Exception;La2/c;)V

    return-void
.end method

.method private static synthetic t2(La2/c$a;ZILa2/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, La2/c;->o(La2/c$a;ZI)V

    return-void
.end method

.method public static synthetic u0(La2/c$a;ILa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->w2(La2/c$a;ILa2/c;)V

    return-void
.end method

.method public static synthetic u1(La2/c$a;La2/c;)V
    .locals 0

    invoke-static {p0, p1}, La2/n1;->G1(La2/c$a;La2/c;)V

    return-void
.end method

.method private static synthetic u2(La2/c$a;ILcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;La2/c;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1}, La2/c;->I(La2/c$a;I)V

    .line 2
    invoke-interface {p4, p0, p2, p3, p1}, La2/c;->Y(La2/c$a;Lcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;I)V

    return-void
.end method

.method public static synthetic v0(La2/c$a;Lv2/m;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->W1(La2/c$a;Lv2/m;La2/c;)V

    return-void
.end method

.method public static synthetic v1(La2/c$a;Ljava/lang/String;JJLa2/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, La2/n1;->F2(La2/c$a;Ljava/lang/String;JJLa2/c;)V

    return-void
.end method

.method private static synthetic v2(La2/c$a;Ljava/lang/Object;JLa2/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, La2/c;->w0(La2/c$a;Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic w0(La2/c$a;JILa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La2/n1;->J2(La2/c$a;JILa2/c;)V

    return-void
.end method

.method public static synthetic w1(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->s2(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;La2/c;)V

    return-void
.end method

.method private static synthetic w2(La2/c$a;ILa2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->k0(La2/c$a;I)V

    return-void
.end method

.method public static synthetic x0(La2/c$a;Lb2/e;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->H2(La2/c$a;Lb2/e;La2/c;)V

    return-void
.end method

.method private static synthetic x2(La2/c$a;La2/c;)V
    .locals 0

    invoke-interface {p1, p0}, La2/c;->U(La2/c$a;)V

    return-void
.end method

.method public static synthetic y0(La2/c$a;Lcom/google/android/exoplayer2/o;La2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->U1(La2/c$a;Lcom/google/android/exoplayer2/o;La2/c;)V

    return-void
.end method

.method private static synthetic y2(La2/c$a;ZLa2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->x(La2/c$a;Z)V

    return-void
.end method

.method public static synthetic z0(La2/c$a;ZLa2/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/n1;->y2(La2/c$a;ZLa2/c;)V

    return-void
.end method

.method private z1(Lv2/q$b;)La2/c$a;
    .locals 3
    .param p1    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, La2/n1;->d:La2/n1$a;

    invoke-virtual {v1, p1}, La2/n1$a;->f(Lv2/q$b;)Lcom/google/android/exoplayer2/i3;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p1, Lv2/o;->a:Ljava/lang/Object;

    iget-object v2, p0, La2/n1;->b:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 4
    invoke-virtual {p0, v1, v0, p1}, La2/n1;->y1(Lcom/google/android/exoplayer2/i3;ILv2/q$b;)La2/c$a;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    :goto_1
    iget-object p1, p0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result p1

    .line 6
    iget-object v1, p0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v2

    if-ge p1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/i3;->a:Lcom/google/android/exoplayer2/i3;

    .line 9
    :goto_3
    invoke-virtual {p0, v1, p1, v0}, La2/n1;->y1(Lcom/google/android/exoplayer2/i3;ILv2/q$b;)La2/c$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic z2(La2/c$a;ZLa2/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, La2/c;->T(La2/c$a;Z)V

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/e;

    invoke-direct {v1, v0, p1}, La2/e;-><init>(La2/c$a;I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public B(Z)V
    .locals 0

    return-void
.end method

.method public C(Lcom/google/android/exoplayer2/l2$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/c0;

    invoke-direct {v1, v0, p1}, La2/c0;-><init>(La2/c$a;Lcom/google/android/exoplayer2/l2$b;)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final D(ILv2/q$b;Lv2/j;Lv2/m;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/s0;

    invoke-direct {p2, p1, p3, p4}, La2/s0;-><init>(La2/c$a;Lv2/j;Lv2/m;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final E(ILv2/q$b;)V
    .locals 1
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/g1;

    invoke-direct {p2, p1}, La2/g1;-><init>(La2/c$a;)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final F(Lcom/google/android/exoplayer2/i3;I)V
    .locals 1

    .line 1
    iget-object p1, p0, La2/n1;->d:La2/n1$a;

    iget-object v0, p0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/l2;

    invoke-virtual {p1, v0}, La2/n1$a;->l(Lcom/google/android/exoplayer2/l2;)V

    .line 2
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object p1

    .line 3
    new-instance v0, La2/f;

    invoke-direct {v0, p1, p2}, La2/f;-><init>(La2/c$a;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final G(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/m1;

    invoke-direct {v1, v0, p1}, La2/m1;-><init>(La2/c$a;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final H(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, La2/n1;->A1()La2/c$a;

    move-result-object v7

    .line 2
    new-instance v8, La2/i;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, La2/i;-><init>(La2/c$a;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v7, p1, v8}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public I(Lcom/google/android/exoplayer2/o;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/t;

    invoke-direct {v1, v0, p1}, La2/t;-><init>(La2/c$a;Lcom/google/android/exoplayer2/o;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final J()V
    .locals 3

    .line 1
    iget-boolean v0, p0, La2/n1;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, La2/n1;->i:Z

    const/4 v1, -0x1

    .line 4
    new-instance v2, La2/j1;

    invoke-direct {v2, v0}, La2/j1;-><init>(La2/c$a;)V

    invoke-virtual {p0, v0, v1, v2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    :cond_0
    return-void
.end method

.method public K(Lcom/google/android/exoplayer2/x1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/x;

    invoke-direct {v1, v0, p1}, La2/x;-><init>(La2/c$a;Lcom/google/android/exoplayer2/x1;)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final L(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/a1;

    invoke-direct {v1, v0, p1}, La2/a1;-><init>(La2/c$a;Z)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public M(Lcom/google/android/exoplayer2/l2;Landroid/os/Looper;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    if-eqz v0, :cond_1

    iget-object v0, p0, La2/n1;->d:La2/n1$a;

    invoke-static {v0}, La2/n1$a;->a(La2/n1$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/l2;

    iput-object v0, p0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    .line 3
    iget-object v0, p0, La2/n1;->a:Lcom/google/android/exoplayer2/util/d;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/android/exoplayer2/util/d;->d(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/n;

    move-result-object v0

    iput-object v0, p0, La2/n1;->h:Lcom/google/android/exoplayer2/util/n;

    .line 4
    iget-object v0, p0, La2/n1;->f:Lcom/google/android/exoplayer2/util/q;

    new-instance v1, La2/f1;

    invoke-direct {v1, p0, p1}, La2/f1;-><init>(La2/n1;Lcom/google/android/exoplayer2/l2;)V

    .line 5
    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplayer2/util/q;->e(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/q$b;)Lcom/google/android/exoplayer2/util/q;

    move-result-object p1

    iput-object p1, p0, La2/n1;->f:Lcom/google/android/exoplayer2/util/q;

    return-void
.end method

.method public N(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/l;

    invoke-direct {v1, v0, p1, p2}, La2/l;-><init>(La2/c$a;IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public O()V
    .locals 0

    return-void
.end method

.method public final P(ILv2/q$b;I)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/l1;

    invoke-direct {p2, p1, p3}, La2/l1;-><init>(La2/c$a;I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method protected final P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/c$a;",
            "I",
            "Lcom/google/android/exoplayer2/util/q$a<",
            "La2/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La2/n1;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, La2/n1;->f:Lcom/google/android/exoplayer2/util/q;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/q;->l(ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final Q(ILv2/q$b;Ljava/lang/Exception;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/j0;

    invoke-direct {p2, p1, p3}, La2/j0;-><init>(La2/c$a;Ljava/lang/Exception;)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final R(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/g;

    invoke-direct {v1, v0, p1, p2}, La2/g;-><init>(La2/c$a;II)V

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public S(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, La2/n1;->E1(Lcom/google/android/exoplayer2/PlaybackException;)La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/a0;

    invoke-direct {v1, v0, p1}, La2/a0;-><init>(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public T(Lh3/z;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/f0;

    invoke-direct {v1, v0, p1}, La2/f0;-><init>(La2/c$a;Lh3/z;)V

    const/16 p1, 0x13

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public U(I)V
    .locals 0

    return-void
.end method

.method public final V(Ljava/util/List;Lv2/q$b;)V
    .locals 2
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv2/q$b;",
            ">;",
            "Lv2/q$b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, La2/n1;->d:La2/n1$a;

    iget-object v1, p0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/l2;

    invoke-virtual {v0, p1, p2, v1}, La2/n1$a;->k(Ljava/util/List;Lv2/q$b;Lcom/google/android/exoplayer2/l2;)V

    return-void
.end method

.method public W(Lcom/google/android/exoplayer2/n3;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/d0;

    invoke-direct {v1, v0, p1}, La2/d0;-><init>(La2/c$a;Lcom/google/android/exoplayer2/n3;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final X(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/c1;

    invoke-direct {v1, v0, p1}, La2/c1;-><init>(La2/c$a;Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final Y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/k0;

    invoke-direct {v1, v0}, La2/k0;-><init>(La2/c$a;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final Z(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, La2/n1;->E1(Lcom/google/android/exoplayer2/PlaybackException;)La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/y;

    invoke-direct {v1, v0, p1}, La2/y;-><init>(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/b1;

    invoke-direct {v1, v0, p1}, La2/b1;-><init>(La2/c$a;Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final a0(ILv2/q$b;)V
    .locals 1
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/d;

    invoke-direct {p2, p1}, La2/d;-><init>(La2/c$a;)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/i0;

    invoke-direct {v1, v0, p1}, La2/i0;-><init>(La2/c$a;Ljava/lang/Exception;)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public b0(La2/c;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, La2/n1;->f:Lcom/google/android/exoplayer2/util/q;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/q;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/m0;

    invoke-direct {v1, v0, p1}, La2/m0;-><init>(La2/c$a;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final c0(ILv2/q$b;Lv2/m;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/x0;

    invoke-direct {p2, p1, p3}, La2/x0;-><init>(La2/c$a;Lv2/m;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final d(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v7

    .line 2
    new-instance v8, La2/p0;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, La2/p0;-><init>(La2/c$a;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v7, p1, v8}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final d0(ILv2/q$b;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V
    .locals 6
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/w0;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, La2/w0;-><init>(La2/c$a;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p1, p3, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/n0;

    invoke-direct {v1, v0, p1}, La2/n0;-><init>(La2/c$a;Ljava/lang/String;)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final e0(ILv2/q$b;)V
    .locals 1
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/z;

    invoke-direct {p2, p1}, La2/z;-><init>(La2/c$a;)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final f(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v7

    .line 2
    new-instance v8, La2/o0;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, La2/o0;-><init>(La2/c$a;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v7, p1, v8}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public f0(Lcom/google/android/exoplayer2/l2;Lcom/google/android/exoplayer2/l2$c;)V
    .locals 0

    return-void
.end method

.method public final g(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/e0;

    invoke-direct {v1, v0, p1}, La2/e0;-><init>(La2/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final g0(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/e1;

    invoke-direct {v1, v0, p1, p2}, La2/e1;-><init>(La2/c$a;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final h(Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 2
    .param p2    # Lb2/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/v;

    invoke-direct {v1, v0, p1, p2}, La2/v;-><init>(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final h0(Lcom/google/android/exoplayer2/s1;I)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/s1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/w;

    invoke-direct {v1, v0, p1, p2}, La2/w;-><init>(La2/c$a;Lcom/google/android/exoplayer2/s1;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final i(Lb2/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/r;

    invoke-direct {v1, v0, p1}, La2/r;-><init>(La2/c$a;Lb2/e;)V

    const/16 p1, 0x3ef

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final i0(ILv2/q$b;Lv2/j;Lv2/m;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/u0;

    invoke-direct {p2, p1, p3, p4}, La2/u0;-><init>(La2/c$a;Lv2/j;Lv2/m;)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final j(Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 2
    .param p2    # Lb2/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/u;

    invoke-direct {v1, v0, p1, p2}, La2/u;-><init>(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final j0(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/d1;

    invoke-direct {v1, v0, p1, p2}, La2/d1;-><init>(La2/c$a;ZI)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public k(Lx2/e;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/y0;

    invoke-direct {v1, v0, p1}, La2/y0;-><init>(La2/c$a;Lx2/e;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public synthetic k0(ILv2/q$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/l;->a(Lcom/google/android/exoplayer2/drm/s;ILv2/q$b;)V

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/q0;

    invoke-direct {v1, v0, p1}, La2/q0;-><init>(La2/c$a;Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final l0(ILv2/q$b;)V
    .locals 1
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/v0;

    invoke-direct {p2, p1}, La2/v0;-><init>(La2/c$a;)V

    const/16 v0, 0x402

    invoke-virtual {p0, p1, v0, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final m(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/m;

    invoke-direct {v1, v0, p1, p2}, La2/m;-><init>(La2/c$a;J)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public m0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/z0;

    invoke-direct {v1, v0, p1}, La2/z0;-><init>(La2/c$a;Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final n(Lk3/y;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/r0;

    invoke-direct {v1, v0, p1}, La2/r0;-><init>(La2/c$a;Lk3/y;)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final o(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/h0;

    invoke-direct {v1, v0, p1}, La2/h0;-><init>(La2/c$a;Ljava/lang/Exception;)V

    const/16 p1, 0x406

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/k1;

    invoke-direct {v1, v0, p1}, La2/k1;-><init>(La2/c$a;I)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final p(Lb2/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->C1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/p;

    invoke-direct {v1, v0, p1}, La2/p;-><init>(La2/c$a;Lb2/e;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final q(Lcom/google/android/exoplayer2/k2;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/b0;

    invoke-direct {v1, v0, p1}, La2/b0;-><init>(La2/c$a;Lcom/google/android/exoplayer2/k2;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final r(ILv2/q$b;Lv2/j;Lv2/m;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, La2/n1;->B1(ILv2/q$b;)La2/c$a;

    move-result-object p1

    .line 2
    new-instance p2, La2/t0;

    invoke-direct {p2, p1, p3, p4}, La2/t0;-><init>(La2/c$a;Lv2/j;Lv2/m;)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public release()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, La2/n1;->h:Lcom/google/android/exoplayer2/util/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/n;

    new-instance v1, La2/i1;

    invoke-direct {v1, p0}, La2/i1;-><init>(La2/n1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->h(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s(Lb2/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/s;

    invoke-direct {v1, v0, p1}, La2/s;-><init>(La2/c$a;Lb2/e;)V

    const/16 p1, 0x3f7

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final t(IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->C1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/h;

    invoke-direct {v1, v0, p1, p2, p3}, La2/h;-><init>(La2/c$a;IJ)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final u(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/l0;

    invoke-direct {v1, v0, p1, p2, p3}, La2/l0;-><init>(La2/c$a;Ljava/lang/Object;J)V

    const/16 p1, 0x1a

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final v(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/g0;

    invoke-direct {v1, v0, p1}, La2/g0;-><init>(La2/c$a;Ljava/lang/Exception;)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final w(Lb2/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->C1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/q;

    invoke-direct {v1, v0, p1}, La2/q;-><init>(La2/c$a;Lb2/e;)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public final x(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, La2/n1;->D1()La2/c$a;

    move-result-object v7

    .line 2
    new-instance v8, La2/j;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, La2/j;-><init>(La2/c$a;IJJ)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v7, p1, v8}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method protected final x1()La2/c$a;
    .locals 1

    iget-object v0, p0, La2/n1;->d:La2/n1$a;

    invoke-virtual {v0}, La2/n1$a;->d()Lv2/q$b;

    move-result-object v0

    invoke-direct {p0, v0}, La2/n1;->z1(Lv2/q$b;)La2/c$a;

    move-result-object v0

    return-object v0
.end method

.method public final y(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, La2/n1;->C1()La2/c$a;

    move-result-object v0

    .line 2
    new-instance v1, La2/n;

    invoke-direct {v1, v0, p1, p2, p3}, La2/n;-><init>(La2/c$a;JI)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v0, p1, v1}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method protected final y1(Lcom/google/android/exoplayer2/i3;ILv2/q$b;)La2/c$a;
    .locals 17
    .param p3    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    .line 2
    :goto_0
    iget-object v1, v0, La2/n1;->a:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/d;->b()J

    move-result-wide v2

    .line 3
    iget-object v1, v0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    .line 4
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/i3;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    .line 5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result v1

    if-ne v5, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v6}, Lv2/o;->b()Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    .line 8
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->p()I

    move-result v1

    iget v11, v6, Lv2/o;->b:I

    if-ne v1, v11, :cond_2

    iget-object v1, v0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    .line 9
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->H()I

    move-result v1

    iget v11, v6, Lv2/o;->c:I

    if-ne v1, v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    .line 10
    iget-object v1, v0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->getCurrentPosition()J

    move-result-wide v9

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->J()J

    move-result-wide v7

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, La2/n1;->c:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i3$d;->d()J

    move-result-wide v9

    :cond_6
    :goto_3
    move-wide v7, v9

    .line 13
    :goto_4
    iget-object v1, v0, La2/n1;->d:La2/n1$a;

    invoke-virtual {v1}, La2/n1$a;->d()Lv2/q$b;

    move-result-object v11

    .line 14
    new-instance v16, La2/c$a;

    iget-object v1, v0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    .line 15
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v9

    iget-object v1, v0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    .line 16
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result v10

    iget-object v1, v0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    .line 17
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->getCurrentPosition()J

    move-result-wide v12

    iget-object v1, v0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    .line 18
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l2;->f()J

    move-result-wide v14

    move-object/from16 v1, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v15}, La2/c$a;-><init>(JLcom/google/android/exoplayer2/i3;ILv2/q$b;JLcom/google/android/exoplayer2/i3;ILv2/q$b;JJ)V

    return-object v16
.end method

.method public final z(Lcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, La2/n1;->i:Z

    .line 2
    :cond_0
    iget-object v0, p0, La2/n1;->d:La2/n1$a;

    iget-object v1, p0, La2/n1;->g:Lcom/google/android/exoplayer2/l2;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/l2;

    invoke-virtual {v0, v1}, La2/n1$a;->j(Lcom/google/android/exoplayer2/l2;)V

    .line 3
    invoke-virtual {p0}, La2/n1;->x1()La2/c$a;

    move-result-object v0

    const/16 v1, 0xb

    .line 4
    new-instance v2, La2/k;

    invoke-direct {v2, v0, p3, p1, p2}, La2/k;-><init>(La2/c$a;ILcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;)V

    invoke-virtual {p0, v0, v1, v2}, La2/n1;->P2(La2/c$a;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

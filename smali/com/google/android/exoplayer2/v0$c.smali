.class final Lcom/google/android/exoplayer2/v0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk3/w;
.implements Lcom/google/android/exoplayer2/audio/r;
.implements Lx2/m;
.implements Lo2/e;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$b;
.implements Lcom/google/android/exoplayer2/d$b;
.implements Lcom/google/android/exoplayer2/b$b;
.implements Lcom/google/android/exoplayer2/d3$b;
.implements Lcom/google/android/exoplayer2/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/v0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/v0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/v0$c;-><init>(Lcom/google/android/exoplayer2/v0;)V

    return-void
.end method

.method public static synthetic H(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/v0$c;->S(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method public static synthetic I(Lk3/y;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/v0$c;->W(Lk3/y;Lcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method public static synthetic J(IZLcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/v0$c;->V(IZLcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method public static synthetic K(Lx2/e;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/v0$c;->Q(Lx2/e;Lcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method public static synthetic L(Ljava/util/List;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/v0$c;->P(Ljava/util/List;Lcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method public static synthetic M(Lcom/google/android/exoplayer2/v0$c;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/v0$c;->R(Lcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method public static synthetic N(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/v0$c;->U(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method public static synthetic O(ZLcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/v0$c;->T(ZLcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method private static synthetic P(Ljava/util/List;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l2$d;->l(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic Q(Lx2/e;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l2$d;->k(Lx2/e;)V

    return-void
.end method

.method private synthetic R(Lcom/google/android/exoplayer2/l2$d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->I0(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/x1;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/l2$d;->K(Lcom/google/android/exoplayer2/x1;)V

    return-void
.end method

.method private static synthetic S(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l2$d;->g(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method private static synthetic T(ZLcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l2$d;->a(Z)V

    return-void
.end method

.method private static synthetic U(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l2$d;->I(Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method private static synthetic V(IZLcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/l2$d;->N(IZ)V

    return-void
.end method

.method private static synthetic W(Lk3/y;Lcom/google/android/exoplayer2/l2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/l2$d;->n(Lk3/y;)V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->L0(Lcom/google/android/exoplayer2/v0;Ljava/lang/Object;)V

    return-void
.end method

.method public B(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->a1(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/w0;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/w0;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/q;->l(ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public synthetic C(Lcom/google/android/exoplayer2/k1;)V
    .locals 0

    invoke-static {p0, p1}, Lk3/l;->a(Lk3/w;Lcom/google/android/exoplayer2/k1;)V

    return-void
.end method

.method public D(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/v0;->V0(Lcom/google/android/exoplayer2/v0;)V

    return-void
.end method

.method public E(F)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/v0;->O0(Lcom/google/android/exoplayer2/v0;)V

    return-void
.end method

.method public F(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->A()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->P0(ZI)I

    move-result v2

    .line 4
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/v0;->Q0(Lcom/google/android/exoplayer2/v0;ZII)V

    return-void
.end method

.method public synthetic G(Lcom/google/android/exoplayer2/k1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/g;->a(Lcom/google/android/exoplayer2/audio/r;Lcom/google/android/exoplayer2/k1;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->C0(Lcom/google/android/exoplayer2/v0;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->D0(Lcom/google/android/exoplayer2/v0;Z)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->a1(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    const/16 v1, 0x17

    new-instance v2, Lcom/google/android/exoplayer2/d1;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/d1;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/q;->l(ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1}, La2/a;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1}, La2/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, La2/a;->d(Ljava/lang/String;JJ)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1}, La2/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, La2/a;->f(Ljava/lang/String;JJ)V

    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->F0(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/x1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/x1;->b()Lcom/google/android/exoplayer2/x1$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/x1$b;->I(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/x1$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/x1$b;->F()Lcom/google/android/exoplayer2/x1;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v0;->G0(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/x1;)Lcom/google/android/exoplayer2/x1;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->H0(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/x1;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v1}, Lcom/google/android/exoplayer2/v0;->I0(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/x1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/x1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/v0;->J0(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/x1;)Lcom/google/android/exoplayer2/x1;

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->a1(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    const/16 v1, 0xe

    new-instance v2, Lcom/google/android/exoplayer2/y0;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/y0;-><init>(Lcom/google/android/exoplayer2/v0$c;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/q;->i(ILcom/google/android/exoplayer2/util/q$a;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->a1(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    const/16 v1, 0x1c

    new-instance v2, Lcom/google/android/exoplayer2/z0;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/z0;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/q;->i(ILcom/google/android/exoplayer2/util/q$a;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/v0;->a1(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/q;->f()V

    return-void
.end method

.method public h(Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 1
    .param p2    # Lb2/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->B0(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/k1;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La2/a;->h(Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    return-void
.end method

.method public i(Lb2/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->c1(Lcom/google/android/exoplayer2/v0;Lb2/e;)Lb2/e;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1}, La2/a;->i(Lb2/e;)V

    return-void
.end method

.method public j(Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 1
    .param p2    # Lb2/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->Y0(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/k1;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La2/a;->j(Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    return-void
.end method

.method public k(Lx2/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->E0(Lcom/google/android/exoplayer2/v0;Lx2/e;)Lx2/e;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->a1(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/c1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/c1;-><init>(Lx2/e;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/q;->l(ILcom/google/android/exoplayer2/util/q$a;)V

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

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->a1(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/a1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/a1;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/q;->l(ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public m(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La2/a;->m(J)V

    return-void
.end method

.method public n(Lk3/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->Z0(Lcom/google/android/exoplayer2/v0;Lk3/y;)Lk3/y;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->a1(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/b1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/b1;-><init>(Lk3/y;)V

    const/16 p1, 0x19

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/q;->l(ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public o(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1}, La2/a;->o(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->N0(Lcom/google/android/exoplayer2/v0;Landroid/graphics/SurfaceTexture;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/v0;->M0(Lcom/google/android/exoplayer2/v0;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/v0;->L0(Lcom/google/android/exoplayer2/v0;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/v0;->M0(Lcom/google/android/exoplayer2/v0;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/v0;->M0(Lcom/google/android/exoplayer2/v0;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public p(Lb2/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1}, La2/a;->p(Lb2/e;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/v0;->Y0(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/k1;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/v0;->W0(Lcom/google/android/exoplayer2/v0;Lb2/e;)Lb2/e;

    return-void
.end method

.method public q(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/v0;->R0(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/d3;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/v0;->S0(Lcom/google/android/exoplayer2/d3;)Lcom/google/android/exoplayer2/o;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->T0(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->U0(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/o;)Lcom/google/android/exoplayer2/o;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->a1(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    const/16 v1, 0x1d

    new-instance v2, Lcom/google/android/exoplayer2/x0;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/x0;-><init>(Lcom/google/android/exoplayer2/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/q;->l(ILcom/google/android/exoplayer2/util/q$a;)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/v0;->Q0(Lcom/google/android/exoplayer2/v0;ZII)V

    return-void
.end method

.method public s(Lb2/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->W0(Lcom/google/android/exoplayer2/v0;Lb2/e;)Lb2/e;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1}, La2/a;->s(Lb2/e;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/v0;->M0(Lcom/google/android/exoplayer2/v0;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->K0(Lcom/google/android/exoplayer2/v0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v0;->L0(Lcom/google/android/exoplayer2/v0;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/v0;->K0(Lcom/google/android/exoplayer2/v0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/v0;->L0(Lcom/google/android/exoplayer2/v0;Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/v0;->M0(Lcom/google/android/exoplayer2/v0;II)V

    return-void
.end method

.method public t(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, La2/a;->t(IJ)V

    return-void
.end method

.method public u(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, La2/a;->u(Ljava/lang/Object;J)V

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p2}, Lcom/google/android/exoplayer2/v0;->b1(Lcom/google/android/exoplayer2/v0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/v0;->a1(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object p1

    const/16 p2, 0x1a

    sget-object p3, Lcom/google/android/exoplayer2/e1;->a:Lcom/google/android/exoplayer2/e1;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/q;->l(ILcom/google/android/exoplayer2/util/q$a;)V

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1}, La2/a;->v(Ljava/lang/Exception;)V

    return-void
.end method

.method public w(Lb2/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1}, La2/a;->w(Lb2/e;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/v0;->B0(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/k1;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/v0;->c1(Lcom/google/android/exoplayer2/v0;Lb2/e;)Lb2/e;

    return-void
.end method

.method public x(IJJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, La2/a;->x(IJJ)V

    return-void
.end method

.method public y(JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/v0;->X0(Lcom/google/android/exoplayer2/v0;)La2/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, La2/a;->y(JI)V

    return-void
.end method

.method public z(Landroid/view/Surface;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/v0$c;->a:Lcom/google/android/exoplayer2/v0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/v0;->L0(Lcom/google/android/exoplayer2/v0;Ljava/lang/Object;)V

    return-void
.end method

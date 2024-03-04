.class public final Lcom/google/android/exoplayer2/k1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:I

.field private m:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private n:Lcom/google/android/exoplayer2/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:J

.field private p:I

.field private q:I

.field private r:F

.field private s:I

.field private t:F

.field private u:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:I

.field private w:Lk3/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->f:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->g:I

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->l:I

    const-wide v1, 0x7fffffffffffffffL

    .line 6
    iput-wide v1, p0, Lcom/google/android/exoplayer2/k1$b;->o:J

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->p:I

    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->q:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 9
    iput v1, p0, Lcom/google/android/exoplayer2/k1$b;->r:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    iput v1, p0, Lcom/google/android/exoplayer2/k1$b;->t:F

    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->v:I

    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->x:I

    .line 13
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->y:I

    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->z:I

    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->C:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->D:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/k1;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->a:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->b:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->c:Ljava/lang/String;

    .line 21
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->d:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->d:I

    .line 22
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->e:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->e:I

    .line 23
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->f:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->f:I

    .line 24
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->g:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->g:I

    .line 25
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->h:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 27
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->j:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->k:Ljava/lang/String;

    .line 29
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->m:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->l:I

    .line 30
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->m:Ljava/util/List;

    .line 31
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 32
    iget-wide v0, p1, Lcom/google/android/exoplayer2/k1;->p:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/k1$b;->o:J

    .line 33
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->q:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->p:I

    .line 34
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->r:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->q:I

    .line 35
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->s:F

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->r:F

    .line 36
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->t:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->s:I

    .line 37
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->u:F

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->t:F

    .line 38
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->v:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->u:[B

    .line 39
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->w:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->v:I

    .line 40
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->x:Lk3/c;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1$b;->w:Lk3/c;

    .line 41
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->y:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->x:I

    .line 42
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->z:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->y:I

    .line 43
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->A:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->z:I

    .line 44
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->B:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->A:I

    .line 45
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->C:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->B:I

    .line 46
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->D:I

    iput v0, p0, Lcom/google/android/exoplayer2/k1$b;->C:I

    .line 47
    iget p1, p1, Lcom/google/android/exoplayer2/k1;->E:I

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->D:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1$b;-><init>(Lcom/google/android/exoplayer2/k1;)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->f:I

    return p0
.end method

.method static synthetic B(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->g:I

    return p0
.end method

.method static synthetic C(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D(Lcom/google/android/exoplayer2/k1$b;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->l:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/k1$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/k1$b;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/k1$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k1$b;->o:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->p:I

    return p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->q:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/k1$b;)F
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->r:F

    return p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->s:I

    return p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/k1$b;)F
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->t:F

    return p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/k1$b;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->u:[B

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->v:I

    return p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/k1$b;)Lk3/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->w:Lk3/c;

    return-object p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->x:I

    return p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->y:I

    return p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->z:I

    return p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->A:I

    return p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->B:I

    return p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->C:I

    return p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k1$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->D:I

    return p0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->d:I

    return p0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/k1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/k1$b;->e:I

    return p0
.end method


# virtual methods
.method public E()Lcom/google/android/exoplayer2/k1;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/k1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/k1;-><init>(Lcom/google/android/exoplayer2/k1$b;Lcom/google/android/exoplayer2/k1$a;)V

    return-object v0
.end method

.method public F(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->C:I

    return-object p0
.end method

.method public G(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->f:I

    return-object p0
.end method

.method public H(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->x:I

    return-object p0
.end method

.method public I(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public J(Lk3/c;)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # Lk3/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->w:Lk3/c;

    return-object p0
.end method

.method public K(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->j:Ljava/lang/String;

    return-object p0
.end method

.method public L(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->D:I

    return-object p0
.end method

.method public M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    return-object p0
.end method

.method public N(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->A:I

    return-object p0
.end method

.method public O(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->B:I

    return-object p0
.end method

.method public P(F)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->r:F

    return-object p0
.end method

.method public Q(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->q:I

    return-object p0
.end method

.method public R(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public T(Ljava/util/List;)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/exoplayer2/k1$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->m:Ljava/util/List;

    return-object p0
.end method

.method public U(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public W(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->l:I

    return-object p0
.end method

.method public X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-object p0
.end method

.method public Y(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->z:I

    return-object p0
.end method

.method public Z(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->g:I

    return-object p0
.end method

.method public a0(F)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->t:F

    return-object p0
.end method

.method public b0([B)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->u:[B

    return-object p0
.end method

.method public c0(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->e:I

    return-object p0
.end method

.method public d0(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->s:I

    return-object p0
.end method

.method public e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public f0(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->y:I

    return-object p0
.end method

.method public g0(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->d:I

    return-object p0
.end method

.method public h0(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->v:I

    return-object p0
.end method

.method public i0(J)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/k1$b;->o:J

    return-object p0
.end method

.method public j0(I)Lcom/google/android/exoplayer2/k1$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/k1$b;->p:I

    return-object p0
.end method

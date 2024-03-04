.class final Lcom/google/android/exoplayer2/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/e2$a;,
        Lcom/google/android/exoplayer2/e2$b;,
        Lcom/google/android/exoplayer2/e2$c;,
        Lcom/google/android/exoplayer2/e2$d;
    }
.end annotation


# instance fields
.field private final a:La2/s1;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/e2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lv2/n;",
            "Lcom/google/android/exoplayer2/e2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/e2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/exoplayer2/e2$d;

.field private final f:Lv2/w$a;

.field private final g:Lcom/google/android/exoplayer2/drm/s$a;

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/e2$c;",
            "Lcom/google/android/exoplayer2/e2$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/e2$c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lv2/k0;

.field private k:Z

.field private l:Lj3/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/e2$d;La2/a;Landroid/os/Handler;La2/s1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/google/android/exoplayer2/e2;->a:La2/s1;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/e2;->e:Lcom/google/android/exoplayer2/e2$d;

    .line 4
    new-instance p1, Lv2/k0$a;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lv2/k0$a;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/e2;->j:Lv2/k0;

    .line 5
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/e2;->c:Ljava/util/IdentityHashMap;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/e2;->d:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    .line 8
    new-instance p1, Lv2/w$a;

    invoke-direct {p1}, Lv2/w$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/e2;->f:Lv2/w$a;

    .line 9
    new-instance p4, Lcom/google/android/exoplayer2/drm/s$a;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/drm/s$a;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/e2;->g:Lcom/google/android/exoplayer2/drm/s$a;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/e2;->h:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/e2;->i:Ljava/util/Set;

    .line 12
    invoke-virtual {p1, p3, p2}, Lv2/w$a;->f(Landroid/os/Handler;Lv2/w;)V

    .line 13
    invoke-virtual {p4, p3, p2}, Lcom/google/android/exoplayer2/drm/s$a;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method private B(II)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/e2$c;

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/e2;->d:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/exoplayer2/e2$c;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/e2$c;->a:Lv2/l;

    invoke-virtual {v2}, Lv2/l;->L()Lcom/google/android/exoplayer2/i3;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v2

    neg-int v2, v2

    .line 5
    invoke-direct {p0, p2, v2}, Lcom/google/android/exoplayer2/e2;->g(II)V

    .line 6
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/e2$c;->e:Z

    .line 7
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/e2;->k:Z

    if-eqz v2, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/e2;->u(Lcom/google/android/exoplayer2/e2$c;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/e2;Lv2/q;Lcom/google/android/exoplayer2/i3;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2;->t(Lv2/q;Lcom/google/android/exoplayer2/i3;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/e2;)Lv2/w$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/e2;->f:Lv2/w$a;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/e2;)Lcom/google/android/exoplayer2/drm/s$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/e2;->g:Lcom/google/android/exoplayer2/drm/s$a;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/e2$c;Lv2/q$b;)Lv2/q$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/e2;->n(Lcom/google/android/exoplayer2/e2$c;Lv2/q$b;)Lv2/q$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/e2$c;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/e2;->r(Lcom/google/android/exoplayer2/e2$c;I)I

    move-result p0

    return p0
.end method

.method private g(II)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2$c;

    .line 3
    iget v1, v0, Lcom/google/android/exoplayer2/e2$c;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/e2$c;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/e2$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/e2$b;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/e2$b;->a:Lv2/q;

    iget-object p1, p1, Lcom/google/android/exoplayer2/e2$b;->b:Lv2/q$c;

    invoke-interface {v0, p1}, Lv2/q;->c(Lv2/q$c;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/e2$c;

    .line 4
    iget-object v2, v1, Lcom/google/android/exoplayer2/e2$c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/e2;->j(Lcom/google/android/exoplayer2/e2$c;)V

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/e2$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/e2$b;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/e2$b;->a:Lv2/q;

    iget-object p1, p1, Lcom/google/android/exoplayer2/e2$b;->b:Lv2/q$c;

    invoke-interface {v0, p1}, Lv2/q;->o(Lv2/q$c;)V

    :cond_0
    return-void
.end method

.method private static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->A(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static n(Lcom/google/android/exoplayer2/e2$c;Lv2/q$b;)Lv2/q$b;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2$c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2$c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/q$b;

    iget-wide v1, v1, Lv2/o;->d:J

    iget-wide v3, p1, Lv2/o;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    iget-object v0, p1, Lv2/o;->a:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/e2;->p(Lcom/google/android/exoplayer2/e2$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, Lv2/q$b;->c(Ljava/lang/Object;)Lv2/q$b;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static p(Lcom/google/android/exoplayer2/e2$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/e2$c;->b:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->D(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static r(Lcom/google/android/exoplayer2/e2$c;I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/e2$c;->d:I

    add-int/2addr p1, p0

    return p1
.end method

.method private synthetic t(Lv2/q;Lcom/google/android/exoplayer2/i3;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/e2;->e:Lcom/google/android/exoplayer2/e2$d;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/e2$d;->c()V

    return-void
.end method

.method private u(Lcom/google/android/exoplayer2/e2$c;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/e2$c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/e2$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->h:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2$b;

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/e2$b;->a:Lv2/q;

    iget-object v2, v0, Lcom/google/android/exoplayer2/e2$b;->b:Lv2/q$c;

    invoke-interface {v1, v2}, Lv2/q;->a(Lv2/q$c;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/exoplayer2/e2$b;->a:Lv2/q;

    iget-object v2, v0, Lcom/google/android/exoplayer2/e2$b;->c:Lcom/google/android/exoplayer2/e2$a;

    invoke-interface {v1, v2}, Lv2/q;->n(Lv2/w;)V

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/e2$b;->a:Lv2/q;

    iget-object v0, v0, Lcom/google/android/exoplayer2/e2$b;->c:Lcom/google/android/exoplayer2/e2$a;

    invoke-interface {v1, v0}, Lv2/q;->i(Lcom/google/android/exoplayer2/drm/s;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private x(Lcom/google/android/exoplayer2/e2$c;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/e2$c;->a:Lv2/l;

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/d2;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/d2;-><init>(Lcom/google/android/exoplayer2/e2;)V

    .line 3
    new-instance v2, Lcom/google/android/exoplayer2/e2$a;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/e2$a;-><init>(Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/e2$c;)V

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/e2;->h:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/exoplayer2/e2$b;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/e2$b;-><init>(Lv2/q;Lv2/q$c;Lcom/google/android/exoplayer2/e2$a;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/android/exoplayer2/util/l0;->w()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lv2/q;->e(Landroid/os/Handler;Lv2/w;)V

    .line 6
    invoke-static {}, Lcom/google/android/exoplayer2/util/l0;->w()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lv2/q;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2;->l:Lj3/b0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/e2;->a:La2/s1;

    invoke-interface {v0, v1, p1, v2}, Lv2/q;->k(Lv2/q$c;Lj3/b0;La2/s1;)V

    return-void
.end method


# virtual methods
.method public A(IILv2/k0;)Lcom/google/android/exoplayer2/i3;
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e2;->q()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iput-object p3, p0, Lcom/google/android/exoplayer2/e2;->j:Lv2/k0;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2;->B(II)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e2;->i()Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/util/List;Lv2/k0;)Lcom/google/android/exoplayer2/i3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/e2$c;",
            ">;",
            "Lv2/k0;",
            ")",
            "Lcom/google/android/exoplayer2/i3;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/e2;->B(II)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/e2;->f(ILjava/util/List;Lv2/k0;)Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    return-object p1
.end method

.method public D(Lv2/k0;)Lcom/google/android/exoplayer2/i3;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e2;->q()I

    move-result v0

    .line 2
    invoke-interface {p1}, Lv2/k0;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    invoke-interface {p1}, Lv2/k0;->f()Lv2/k0;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1, v0}, Lv2/k0;->h(II)Lv2/k0;

    move-result-object p1

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/e2;->j:Lv2/k0;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e2;->i()Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    return-object p1
.end method

.method public f(ILjava/util/List;Lv2/k0;)Lcom/google/android/exoplayer2/i3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/e2$c;",
            ">;",
            "Lv2/k0;",
            ")",
            "Lcom/google/android/exoplayer2/i3;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iput-object p3, p0, Lcom/google/android/exoplayer2/e2;->j:Lv2/k0;

    move p3, p1

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2$c;

    if-lez p3, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/e2$c;

    .line 6
    iget-object v2, v1, Lcom/google/android/exoplayer2/e2$c;->a:Lv2/l;

    invoke-virtual {v2}, Lv2/l;->L()Lcom/google/android/exoplayer2/i3;

    move-result-object v2

    .line 7
    iget v1, v1, Lcom/google/android/exoplayer2/e2$c;->d:I

    .line 8
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v2

    add-int/2addr v1, v2

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/e2$c;->b(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/e2$c;->b(I)V

    .line 11
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/e2$c;->a:Lv2/l;

    invoke-virtual {v1}, Lv2/l;->L()Lcom/google/android/exoplayer2/i3;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v1

    .line 13
    invoke-direct {p0, p3, v1}, Lcom/google/android/exoplayer2/e2;->g(II)V

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2;->d:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplayer2/e2$c;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/e2;->k:Z

    if-eqz v1, :cond_2

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/e2;->x(Lcom/google/android/exoplayer2/e2$c;)V

    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/e2;->j(Lcom/google/android/exoplayer2/e2$c;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e2;->i()Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    return-object p1
.end method

.method public h(Lv2/q$b;Lj3/b;J)Lv2/n;
    .locals 2

    .line 1
    iget-object v0, p1, Lv2/o;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/e2;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lv2/o;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/e2;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lv2/q$b;->c(Ljava/lang/Object;)Lv2/q$b;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2$c;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/e2;->l(Lcom/google/android/exoplayer2/e2$c;)V

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/e2$c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/e2$c;->a:Lv2/l;

    .line 8
    invoke-virtual {v1, p1, p2, p3, p4}, Lv2/l;->H(Lv2/q$b;Lj3/b;J)Lv2/k;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/google/android/exoplayer2/e2;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/e2;->k()V

    return-object p1
.end method

.method public i()Lcom/google/android/exoplayer2/i3;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/i3;->a:Lcom/google/android/exoplayer2/i3;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/e2$c;

    .line 5
    iput v1, v2, Lcom/google/android/exoplayer2/e2$c;->d:I

    .line 6
    iget-object v2, v2, Lcom/google/android/exoplayer2/e2$c;->a:Lv2/l;

    invoke-virtual {v2}, Lv2/l;->L()Lcom/google/android/exoplayer2/i3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/q2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplayer2/e2;->j:Lv2/k0;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/q2;-><init>(Ljava/util/Collection;Lv2/k0;)V

    return-object v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/e2;->k:Z

    return v0
.end method

.method public v(IIILv2/k0;)Lcom/google/android/exoplayer2/i3;
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e2;->q()I

    move-result v1

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3
    iput-object p4, p0, Lcom/google/android/exoplayer2/e2;->j:Lv2/k0;

    if-eq p1, p2, :cond_3

    if-ne p1, p3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p4

    sub-int v1, p2, p1

    add-int/2addr v1, p3

    sub-int/2addr v1, v0

    add-int/lit8 v0, p2, -0x1

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/e2$c;

    iget v1, v1, Lcom/google/android/exoplayer2/e2$c;->d:I

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-static {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/util/l0;->v0(Ljava/util/List;III)V

    :goto_1
    if-gt p4, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/e2$c;

    .line 9
    iput v1, p1, Lcom/google/android/exoplayer2/e2$c;->d:I

    .line 10
    iget-object p1, p1, Lcom/google/android/exoplayer2/e2$c;->a:Lv2/l;

    invoke-virtual {p1}, Lv2/l;->L()Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result p1

    add-int/2addr v1, p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e2;->i()Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e2;->i()Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    return-object p1
.end method

.method public w(Lj3/b0;)V
    .locals 3
    .param p1    # Lj3/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/e2;->k:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/e2;->l:Lj3/b0;

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2$c;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/e2;->x(Lcom/google/android/exoplayer2/e2$c;)V

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/e2;->i:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/e2;->k:Z

    return-void
.end method

.method public y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/e2$b;

    .line 2
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/e2$b;->a:Lv2/q;

    iget-object v3, v1, Lcom/google/android/exoplayer2/e2$b;->b:Lv2/q$c;

    invoke-interface {v2, v3}, Lv2/q;->a(Lv2/q$c;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    .line 3
    invoke-static {v3, v4, v2}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/e2$b;->a:Lv2/q;

    iget-object v3, v1, Lcom/google/android/exoplayer2/e2$b;->c:Lcom/google/android/exoplayer2/e2$a;

    invoke-interface {v2, v3}, Lv2/q;->n(Lv2/w;)V

    .line 5
    iget-object v2, v1, Lcom/google/android/exoplayer2/e2$b;->a:Lv2/q;

    iget-object v1, v1, Lcom/google/android/exoplayer2/e2$b;->c:Lcom/google/android/exoplayer2/e2$a;

    invoke-interface {v2, v1}, Lv2/q;->i(Lcom/google/android/exoplayer2/drm/s;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/e2;->k:Z

    return-void
.end method

.method public z(Lv2/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->c:Ljava/util/IdentityHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2$c;

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/e2$c;->a:Lv2/l;

    invoke-virtual {v1, p1}, Lv2/l;->d(Lv2/n;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/e2$c;->c:Ljava/util/List;

    check-cast p1, Lv2/k;

    iget-object p1, p1, Lv2/k;->a:Lv2/q$b;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/e2;->k()V

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/e2;->u(Lcom/google/android/exoplayer2/e2$c;)V

    return-void
.end method

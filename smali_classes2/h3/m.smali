.class public Lh3/m;
.super Lh3/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/m$f;,
        Lh3/m$c;,
        Lh3/m$g;,
        Lh3/m$b;,
        Lh3/m$i;,
        Lh3/m$h;,
        Lh3/m$e;,
        Lh3/m$d;
    }
.end annotation


# static fields
.field private static final k:Lcom/google/common/collect/y6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y6<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcom/google/common/collect/y6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y6<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/Object;

.field public final e:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lh3/s$b;

.field private final g:Z

.field private h:Lh3/m$d;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private i:Lh3/m$f;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/audio/e;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lh3/i;->a:Lh3/i;

    .line 2
    invoke-static {v0}, Lcom/google/common/collect/y6;->a(Ljava/util/Comparator;)Lcom/google/common/collect/y6;

    move-result-object v0

    sput-object v0, Lh3/m;->k:Lcom/google/common/collect/y6;

    .line 3
    sget-object v0, Lh3/h;->a:Lh3/h;

    invoke-static {v0}, Lcom/google/common/collect/y6;->a(Ljava/util/Comparator;)Lcom/google/common/collect/y6;

    move-result-object v0

    sput-object v0, Lh3/m;->l:Lcom/google/common/collect/y6;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lh3/a$b;

    invoke-direct {v0}, Lh3/a$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lh3/m;-><init>(Landroid/content/Context;Lh3/s$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lh3/s$b;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lh3/m$d;->k(Landroid/content/Context;)Lh3/m$d;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lh3/m;-><init>(Landroid/content/Context;Lh3/z;Lh3/s$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lh3/z;Lh3/s$b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3, p1}, Lh3/m;-><init>(Lh3/z;Lh3/s$b;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lh3/z;Lh3/s$b;Landroid/content/Context;)V
    .locals 1
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Lh3/u;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh3/m;->d:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lh3/m;->e:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lh3/m;->f:Lh3/s$b;

    .line 8
    instance-of p2, p1, Lh3/m$d;

    if-eqz p2, :cond_1

    .line 9
    check-cast p1, Lh3/m$d;

    iput-object p1, p0, Lh3/m;->h:Lh3/m$d;

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    .line 10
    sget-object p2, Lh3/m$d;->a1:Lh3/m$d;

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lh3/m$d;->k(Landroid/content/Context;)Lh3/m$d;

    move-result-object p2

    .line 11
    :goto_1
    invoke-virtual {p2}, Lh3/m$d;->j()Lh3/m$d$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lh3/m$d$a;->g0(Lh3/z;)Lh3/m$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lh3/m$d$a;->b0()Lh3/m$d;

    move-result-object p1

    iput-object p1, p0, Lh3/m;->h:Lh3/m$d;

    .line 12
    :goto_2
    sget-object p1, Lcom/google/android/exoplayer2/audio/e;->g:Lcom/google/android/exoplayer2/audio/e;

    iput-object p1, p0, Lh3/m;->j:Lcom/google/android/exoplayer2/audio/e;

    if-eqz p3, :cond_3

    .line 13
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/l0;->r0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lh3/m;->g:Z

    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    .line 14
    sget p1, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_4

    .line 15
    invoke-static {p3}, Lh3/m$f;->g(Landroid/content/Context;)Lh3/m$f;

    move-result-object p1

    iput-object p1, p0, Lh3/m;->i:Lh3/m$f;

    .line 16
    :cond_4
    iget-object p1, p0, Lh3/m;->h:Lh3/m$d;

    iget-boolean p1, p1, Lh3/m$d;->M:Z

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    const-string p1, "DefaultTrackSelector"

    const-string p2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 17
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static A(Lh3/u$a;Lh3/z;[Lh3/s$a;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lh3/u$a;->d()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    invoke-virtual {p0, v3}, Lh3/u$a;->f(I)Lv2/q0;

    move-result-object v4

    .line 4
    invoke-static {v4, p1, v1}, Lh3/m;->B(Lv2/q0;Lh3/z;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lh3/u$a;->h()Lv2/q0;

    move-result-object v3

    .line 6
    invoke-static {v3, p1, v1}, Lh3/m;->B(Lv2/q0;Lh3/z;Ljava/util/Map;)V

    :goto_1
    if-ge v2, v0, :cond_3

    .line 7
    invoke-virtual {p0, v2}, Lh3/u$a;->e(I)I

    move-result p1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/x;

    if-nez p1, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    iget-object v3, p1, Lh3/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {p0, v2}, Lh3/u$a;->f(I)Lv2/q0;

    move-result-object v3

    iget-object v4, p1, Lh3/x;->a:Lv2/o0;

    invoke-virtual {v3, v4}, Lv2/q0;->c(Lv2/o0;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 11
    new-instance v3, Lh3/s$a;

    iget-object v4, p1, Lh3/x;->a:Lv2/o0;

    iget-object p1, p1, Lh3/x;->b:Lcom/google/common/collect/ImmutableList;

    .line 12
    invoke-static {p1}, Lcom/google/common/primitives/f;->j(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lh3/s$a;-><init>(Lv2/o0;[I)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 13
    :goto_2
    aput-object v3, p2, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static B(Lv2/q0;Lh3/z;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/q0;",
            "Lh3/z;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lh3/x;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lv2/q0;->a:I

    if-ge v0, v1, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Lv2/q0;->b(I)Lv2/o0;

    move-result-object v1

    .line 3
    iget-object v2, p1, Lh3/z;->y:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh3/x;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v1}, Lh3/x;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/x;

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, v2, Lh3/x;->b:Lcom/google/common/collect/ImmutableList;

    .line 6
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lh3/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    :cond_1
    invoke-virtual {v1}, Lh3/x;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected static C(Lcom/google/android/exoplayer2/k1;Ljava/lang/String;Z)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lh3/m;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    invoke-static {p0}, Lh3/m;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "-"

    .line 5
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/util/l0;->H0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/l0;->H0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private static D(Lv2/o0;IIZ)I
    .locals 8

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_2

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lv2/o0;->a:I

    if-ge v1, v2, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lv2/o0;->b(I)Lcom/google/android/exoplayer2/k1;

    move-result-object v2

    .line 3
    iget v3, v2, Lcom/google/android/exoplayer2/k1;->q:I

    if-lez v3, :cond_1

    iget v4, v2, Lcom/google/android/exoplayer2/k1;->r:I

    if-lez v4, :cond_1

    .line 4
    invoke-static {p3, p1, p2, v3, v4}, Lh3/m;->E(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 5
    iget v4, v2, Lcom/google/android/exoplayer2/k1;->q:I

    iget v2, v2, Lcom/google/android/exoplayer2/k1;->r:I

    mul-int v5, v4, v2

    .line 6
    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f7ae148    # 0.98f

    mul-float v6, v6, v7

    float-to-int v6, v6

    if-lt v4, v6, :cond_1

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    if-lt v2, v3, :cond_1

    if-ge v5, v0, :cond_1

    move v0, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static E(ZIIII)Landroid/graphics/Point;
    .locals 3

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eq v1, p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_2
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_3

    .line 1
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/l0;->l(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 2
    :cond_3
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lcom/google/android/exoplayer2/util/l0;->l(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static G(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method private static H(Ljava/lang/String;)I
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "video/avc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "video/hevc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "video/av01"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    return v4

    :pswitch_1
    return v5

    :pswitch_2
    return v3

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private I(Lcom/google/android/exoplayer2/k1;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/m;->h:Lh3/m$d;

    iget-boolean v1, v1, Lh3/m$d;->M:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lh3/m;->g:Z

    if-nez v1, :cond_2

    iget v1, p1, Lcom/google/android/exoplayer2/k1;->y:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 3
    invoke-static {p1}, Lh3/m;->J(Lcom/google/android/exoplayer2/k1;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/util/l0;->a:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lh3/m;->i:Lh3/m$f;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lh3/m$f;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget v1, Lcom/google/android/exoplayer2/util/l0;->a:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lh3/m;->i:Lh3/m$f;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lh3/m$f;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh3/m;->i:Lh3/m$f;

    .line 6
    invoke-virtual {v1}, Lh3/m$f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh3/m;->i:Lh3/m$f;

    .line 7
    invoke-virtual {v1}, Lh3/m$f;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh3/m;->i:Lh3/m$f;

    iget-object v2, p0, Lh3/m;->j:Lcom/google/android/exoplayer2/audio/e;

    .line 8
    invoke-virtual {v1, v2, p1}, Lh3/m$f;->a(Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/k1;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static J(Lcom/google/android/exoplayer2/k1;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "audio/ac4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/eac3-joc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static K(IZ)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/v2;->f(I)I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

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

.method private synthetic L(Lh3/m$d;ZILv2/o0;[I)Ljava/util/List;
    .locals 6

    new-instance v5, Lh3/d;

    invoke-direct {v5, p0}, Lh3/d;-><init>(Lh3/m;)V

    move v0, p3

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    invoke-static/range {v0 .. v5}, Lh3/m$b;->e(ILv2/o0;Lh3/m$d;[IZLcom/google/common/base/q;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic M(Lh3/m$d;Ljava/lang/String;ILv2/o0;[I)Ljava/util/List;
    .locals 0

    invoke-static {p2, p3, p0, p4, p1}, Lh3/m$g;->e(ILv2/o0;Lh3/m$d;[ILjava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic N(Lh3/m$d;[IILv2/o0;[I)Ljava/util/List;
    .locals 0

    aget p1, p1, p2

    invoke-static {p2, p3, p0, p4, p1}, Lh3/m$i;->h(ILv2/o0;Lh3/m$d;[II)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic O(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v1, p0, p1

    :cond_2
    :goto_0
    return v1
.end method

.method private static synthetic P(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static Q(Lh3/u$a;[[[I[Lcom/google/android/exoplayer2/x2;[Lh3/s;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lh3/u$a;->d()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_5

    .line 2
    invoke-virtual {p0, v2}, Lh3/u$a;->e(I)I

    move-result v5

    .line 3
    aget-object v7, p3, v2

    if-eq v5, v6, :cond_0

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    :cond_0
    if-eqz v7, :cond_4

    .line 4
    aget-object v8, p1, v2

    .line 5
    invoke-virtual {p0, v2}, Lh3/u$a;->f(I)Lv2/q0;

    move-result-object v9

    .line 6
    invoke-static {v8, v9, v7}, Lh3/m;->T([[ILv2/q0;Lh3/s;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-ne v5, v6, :cond_2

    if-eq v4, v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    if-eq v3, v1, :cond_3

    :goto_1
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    move v3, v2

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    :goto_3
    if-eq v4, v1, :cond_6

    if-eq v3, v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    .line 7
    new-instance p0, Lcom/google/android/exoplayer2/x2;

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/x2;-><init>(Z)V

    .line 8
    aput-object p0, p2, v4

    .line 9
    aput-object p0, p2, v3

    :cond_7
    return-void
.end method

.method private R()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/m;->h:Lh3/m$d;

    iget-boolean v1, v1, Lh3/m$d;->M:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lh3/m;->g:Z

    if-nez v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lh3/m;->i:Lh3/m$f;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lh3/m$f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lh3/b0;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected static S(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private static T([[ILv2/q0;Lh3/s;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p2}, Lh3/v;->h()Lv2/o0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lv2/q0;->c(Lv2/o0;)I

    move-result p1

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Lh3/v;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lh3/v;->c(I)I

    move-result v3

    aget v2, v2, v3

    .line 4
    invoke-static {v2}, Lcom/google/android/exoplayer2/v2;->h(I)I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private Y(ILh3/u$a;[[[ILh3/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lh3/m$h<",
            "TT;>;>(I",
            "Lh3/u$a;",
            "[[[I",
            "Lh3/m$h$a<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/util/Pair<",
            "Lh3/s$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p2 .. p2}, Lh3/u$a;->d()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    .line 3
    invoke-virtual {v0, v4}, Lh3/u$a;->e(I)I

    move-result v5

    move/from16 v6, p1

    if-ne v6, v5, :cond_6

    .line 4
    invoke-virtual {v0, v4}, Lh3/u$a;->f(I)Lv2/q0;

    move-result-object v5

    const/4 v7, 0x0

    .line 5
    :goto_1
    iget v8, v5, Lv2/q0;->a:I

    if-ge v7, v8, :cond_6

    .line 6
    invoke-virtual {v5, v7}, Lv2/q0;->b(I)Lv2/o0;

    move-result-object v8

    .line 7
    aget-object v9, p3, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p4

    .line 8
    invoke-interface {v10, v4, v8, v9}, Lh3/m$h$a;->a(ILv2/o0;[I)Ljava/util/List;

    move-result-object v9

    .line 9
    iget v11, v8, Lv2/o0;->a:I

    new-array v11, v11, [Z

    const/4 v12, 0x0

    .line 10
    :goto_2
    iget v13, v8, Lv2/o0;->a:I

    if-ge v12, v13, :cond_5

    .line 11
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lh3/m$h;

    .line 12
    invoke-virtual {v13}, Lh3/m$h;->a()I

    move-result v14

    .line 13
    aget-boolean v15, v11, v12

    if-nez v15, :cond_4

    if-nez v14, :cond_0

    goto :goto_6

    :cond_0
    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 14
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    move/from16 v17, v2

    goto :goto_5

    .line 15
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v3, v16

    .line 17
    :goto_3
    iget v15, v8, Lv2/o0;->a:I

    if-ge v3, v15, :cond_3

    .line 18
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lh3/m$h;

    .line 19
    invoke-virtual {v15}, Lh3/m$h;->a()I

    move-result v0

    move/from16 v17, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 20
    invoke-virtual {v13, v15}, Lh3/m$h;->b(Lh3/m$h;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 22
    aput-boolean v0, v11, v3

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_3

    :cond_3
    move/from16 v17, v2

    move-object v13, v14

    .line 23
    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_4
    :goto_6
    move/from16 v17, v2

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_2

    :cond_5
    move/from16 v17, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_1

    :cond_6
    move-object/from16 v10, p4

    move/from16 v17, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto/16 :goto_0

    .line 24
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p5

    .line 25
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 27
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh3/m$h;

    iget v3, v3, Lh3/m$h;->c:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/m$h;

    .line 30
    new-instance v2, Lh3/s$a;

    iget-object v3, v0, Lh3/m$h;->b:Lv2/o0;

    invoke-direct {v2, v3, v1}, Lh3/s$a;-><init>(Lv2/o0;[I)V

    iget v0, v0, Lh3/m$h;->a:I

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private a0(Lh3/m$d;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lh3/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lh3/m;->h:Lh3/m$d;

    invoke-virtual {v1, p1}, Lh3/m$d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iput-object p1, p0, Lh3/m;->h:Lh3/m$d;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 6
    iget-boolean p1, p1, Lh3/m$d;->M:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lh3/m;->e:Landroid/content/Context;

    if-nez p1, :cond_1

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lh3/b0;->d()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic o(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1}, Lh3/m;->P(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic p(Lh3/m;Lcom/google/android/exoplayer2/k1;)Z
    .locals 0

    invoke-direct {p0, p1}, Lh3/m;->I(Lcom/google/android/exoplayer2/k1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lh3/m$d;[IILv2/o0;[I)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lh3/m;->N(Lh3/m$d;[IILv2/o0;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lh3/m$d;Ljava/lang/String;ILv2/o0;[I)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lh3/m;->M(Lh3/m$d;Ljava/lang/String;ILv2/o0;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lh3/m;Lh3/m$d;ZILv2/o0;[I)Ljava/util/List;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lh3/m;->L(Lh3/m$d;ZILv2/o0;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1}, Lh3/m;->O(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static synthetic u(Lv2/o0;IIZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lh3/m;->D(Lv2/o0;IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic v(II)I
    .locals 0

    invoke-static {p0, p1}, Lh3/m;->G(II)I

    move-result p0

    return p0
.end method

.method static synthetic w(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lh3/m;->H(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic x()Lcom/google/common/collect/y6;
    .locals 1

    sget-object v0, Lh3/m;->k:Lcom/google/common/collect/y6;

    return-object v0
.end method

.method static synthetic y()Lcom/google/common/collect/y6;
    .locals 1

    sget-object v0, Lh3/m;->l:Lcom/google/common/collect/y6;

    return-object v0
.end method

.method private static z(Lh3/u$a;Lh3/m$d;[Lh3/s$a;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lh3/u$a;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lh3/u$a;->f(I)Lv2/q0;

    move-result-object v2

    .line 3
    invoke-virtual {p1, v1, v2}, Lh3/m$d;->n(ILv2/q0;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p1, v1, v2}, Lh3/m$d;->m(ILv2/q0;)Lh3/m$e;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v4, v3, Lh3/m$e;->b:[I

    array-length v4, v4

    if-eqz v4, :cond_1

    .line 6
    new-instance v4, Lh3/s$a;

    iget v5, v3, Lh3/m$e;->a:I

    .line 7
    invoke-virtual {v2, v5}, Lv2/q0;->b(I)Lv2/o0;

    move-result-object v2

    iget-object v5, v3, Lh3/m$e;->b:[I

    iget v3, v3, Lh3/m$e;->d:I

    invoke-direct {v4, v2, v5, v3}, Lh3/s$a;-><init>(Lv2/o0;[II)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 8
    :goto_1
    aput-object v4, p2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public F()Lh3/m$d;
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/m;->h:Lh3/m$d;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected U(Lh3/u$a;[[[I[ILh3/m$d;)[Lh3/s$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lh3/u$a;->d()I

    move-result v0

    .line 2
    new-array v1, v0, [Lh3/s$a;

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lh3/m;->Z(Lh3/u$a;[[[I[ILh3/m$d;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lh3/s$a;

    aput-object v2, v1, v3

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lh3/m;->V(Lh3/u$a;[[[I[ILh3/m$d;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 6
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lh3/s$a;

    aput-object v3, v1, v2

    :cond_1
    const/4 v2, 0x0

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    .line 7
    :cond_2
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Lh3/s$a;

    iget-object v3, v3, Lh3/s$a;->a:Lv2/o0;

    check-cast p3, Lh3/s$a;

    iget-object p3, p3, Lh3/s$a;->b:[I

    aget p3, p3, v2

    invoke-virtual {v3, p3}, Lv2/o0;->b(I)Lcom/google/android/exoplayer2/k1;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    .line 8
    :goto_0
    invoke-virtual {p0, p1, p2, p4, p3}, Lh3/m;->X(Lh3/u$a;[[[ILh3/m$d;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 9
    iget-object v3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lh3/s$a;

    aput-object p3, v1, v3

    :cond_3
    :goto_1
    if-ge v2, v0, :cond_5

    .line 10
    invoke-virtual {p1, v2}, Lh3/u$a;->e(I)I

    move-result p3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_4

    const/4 v3, 0x1

    if-eq p3, v3, :cond_4

    const/4 v3, 0x3

    if-eq p3, v3, :cond_4

    .line 11
    invoke-virtual {p1, v2}, Lh3/u$a;->f(I)Lv2/q0;

    move-result-object v3

    aget-object v4, p2, v2

    .line 12
    invoke-virtual {p0, p3, v3, v4, p4}, Lh3/m;->W(ILv2/q0;[[ILh3/m$d;)Lh3/s$a;

    move-result-object p3

    aput-object p3, v1, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method protected V(Lh3/u$a;[[[I[ILh3/m$d;)Landroid/util/Pair;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/u$a;",
            "[[[I[I",
            "Lh3/m$d;",
            ")",
            "Landroid/util/Pair<",
            "Lh3/s$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lh3/u$a;->d()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, v0}, Lh3/u$a;->e(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lh3/u$a;->f(I)Lv2/q0;

    move-result-object v1

    iget v1, v1, Lv2/q0;->a:I

    if-lez v1, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 4
    new-instance v4, Lh3/g;

    invoke-direct {v4, p0, p4, p3}, Lh3/g;-><init>(Lh3/m;Lh3/m$d;Z)V

    sget-object v5, Lh3/j;->a:Lh3/j;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lh3/m;->Y(ILh3/u$a;[[[ILh3/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected W(ILv2/q0;[[ILh3/m$d;)Lh3/s$a;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    move-object v4, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v5, p2, Lv2/q0;->a:I

    if-ge v1, v5, :cond_3

    .line 2
    invoke-virtual {p2, v1}, Lv2/q0;->b(I)Lv2/o0;

    move-result-object v5

    .line 3
    aget-object v6, p3, v1

    const/4 v7, 0x0

    .line 4
    :goto_1
    iget v8, v5, Lv2/o0;->a:I

    if-ge v7, v8, :cond_2

    .line 5
    aget v8, v6, v7

    iget-boolean v9, p4, Lh3/m$d;->N:Z

    invoke-static {v8, v9}, Lh3/m;->K(IZ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 6
    invoke-virtual {v5, v7}, Lv2/o0;->b(I)Lcom/google/android/exoplayer2/k1;

    move-result-object v8

    .line 7
    new-instance v9, Lh3/m$c;

    aget v10, v6, v7

    invoke-direct {v9, v8, v10}, Lh3/m$c;-><init>(Lcom/google/android/exoplayer2/k1;I)V

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v9, v4}, Lh3/m$c;->a(Lh3/m$c;)I

    move-result v8

    if-lez v8, :cond_1

    :cond_0
    move-object v2, v5

    move v3, v7

    move-object v4, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    new-instance p1, Lh3/s$a;

    const/4 p2, 0x1

    new-array p2, p2, [I

    aput v3, p2, v0

    invoke-direct {p1, v2, p2}, Lh3/s$a;-><init>(Lv2/o0;[I)V

    :goto_2
    return-object p1
.end method

.method protected X(Lh3/u$a;[[[ILh3/m$d;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/u$a;",
            "[[[I",
            "Lh3/m$d;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lh3/s$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    new-instance v4, Lh3/e;

    invoke-direct {v4, p3, p4}, Lh3/e;-><init>(Lh3/m$d;Ljava/lang/String;)V

    sget-object v5, Lh3/k;->a:Lh3/k;

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lh3/m;->Y(ILh3/u$a;[[[ILh3/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected Z(Lh3/u$a;[[[I[ILh3/m$d;)Landroid/util/Pair;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/u$a;",
            "[[[I[I",
            "Lh3/m$d;",
            ")",
            "Landroid/util/Pair<",
            "Lh3/s$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    new-instance v4, Lh3/f;

    invoke-direct {v4, p4, p3}, Lh3/f;-><init>(Lh3/m$d;[I)V

    sget-object v5, Lh3/l;->a:Lh3/l;

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lh3/m;->Y(ILh3/u$a;[[[ILh3/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b()Lh3/z;
    .locals 1

    invoke-virtual {p0}, Lh3/m;->F()Lh3/m$d;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lh3/m;->i:Lh3/m$f;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lh3/m$f;->f()V

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-super {p0}, Lh3/b0;->g()V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public i(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/m;->j:Lcom/google/android/exoplayer2/audio/e;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/audio/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Lh3/m;->j:Lcom/google/android/exoplayer2/audio/e;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0}, Lh3/m;->R()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j(Lh3/z;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lh3/m$d;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lh3/m$d;

    invoke-direct {p0, v0}, Lh3/m;->a0(Lh3/m$d;)V

    .line 3
    :cond_0
    new-instance v0, Lh3/m$d$a;

    invoke-virtual {p0}, Lh3/m;->F()Lh3/m$d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh3/m$d$a;-><init>(Lh3/m$d;Lh3/m$a;)V

    invoke-virtual {v0, p1}, Lh3/m$d$a;->g0(Lh3/z;)Lh3/m$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lh3/m$d$a;->b0()Lh3/m$d;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lh3/m;->a0(Lh3/m$d;)V

    return-void
.end method

.method protected final n(Lh3/u$a;[[[I[ILv2/q$b;Lcom/google/android/exoplayer2/i3;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/u$a;",
            "[[[I[I",
            "Lv2/q$b;",
            "Lcom/google/android/exoplayer2/i3;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/x2;",
            "[",
            "Lh3/s;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh3/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/m;->h:Lh3/m$d;

    .line 3
    iget-boolean v2, v1, Lh3/m$d;->M:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lh3/m;->i:Lh3/m$f;

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-virtual {v2, p0, v3}, Lh3/m$f;->b(Lh3/m;Landroid/os/Looper;)V

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Lh3/u$a;->d()I

    move-result v0

    .line 7
    invoke-virtual {p0, p1, p2, p3, v1}, Lh3/m;->U(Lh3/u$a;[[[I[ILh3/m$d;)[Lh3/s$a;

    move-result-object p3

    .line 8
    invoke-static {p1, v1, p3}, Lh3/m;->A(Lh3/u$a;Lh3/z;[Lh3/s$a;)V

    .line 9
    invoke-static {p1, v1, p3}, Lh3/m;->z(Lh3/u$a;Lh3/m$d;[Lh3/s$a;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    .line 10
    invoke-virtual {p1, v3}, Lh3/u$a;->e(I)I

    move-result v5

    .line 11
    invoke-virtual {v1, v3}, Lh3/m$d;->l(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lh3/z;->z:Lcom/google/common/collect/ImmutableSet;

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    :cond_1
    aput-object v4, p3, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v3, p0, Lh3/m;->f:Lh3/s$b;

    .line 15
    invoke-virtual {p0}, Lh3/b0;->a()Lj3/d;

    move-result-object v5

    .line 16
    invoke-interface {v3, p3, v5, p4, p5}, Lh3/s$b;->a([Lh3/s$a;Lj3/d;Lv2/q$b;Lcom/google/android/exoplayer2/i3;)[Lh3/s;

    move-result-object p3

    .line 17
    new-array p4, v0, [Lcom/google/android/exoplayer2/x2;

    const/4 p5, 0x0

    :goto_1
    if-ge p5, v0, :cond_9

    .line 18
    invoke-virtual {p1, p5}, Lh3/u$a;->e(I)I

    move-result v3

    .line 19
    invoke-virtual {v1, p5}, Lh3/m$d;->l(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    iget-object v5, v1, Lh3/z;->z:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_6

    .line 20
    invoke-virtual {p1, p5}, Lh3/u$a;->e(I)I

    move-result v3

    const/4 v5, -0x2

    if-eq v3, v5, :cond_7

    aget-object v3, p3, p5

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    .line 21
    sget-object v3, Lcom/google/android/exoplayer2/x2;->b:Lcom/google/android/exoplayer2/x2;

    goto :goto_5

    :cond_8
    move-object v3, v4

    :goto_5
    aput-object v3, p4, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 22
    :cond_9
    iget-boolean p5, v1, Lh3/m$d;->O:Z

    if-eqz p5, :cond_a

    .line 23
    invoke-static {p1, p2, p4, p3}, Lh3/m;->Q(Lh3/u$a;[[[I[Lcom/google/android/exoplayer2/x2;[Lh3/s;)V

    .line 24
    :cond_a
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

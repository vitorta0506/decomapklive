.class public final Lcom/google/android/exoplayer2/q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:Z

.field B:Z

.field final a:Landroid/content/Context;

.field b:Lcom/google/android/exoplayer2/util/d;

.field c:J

.field d:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lcom/google/android/exoplayer2/y2;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lv2/q$a;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lh3/b0;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lcom/google/android/exoplayer2/q1;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lj3/d;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/google/common/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/h<",
            "Lcom/google/android/exoplayer2/util/d;",
            "La2/a;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/os/Looper;

.field k:Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field l:Lcom/google/android/exoplayer2/audio/e;

.field m:Z

.field n:I

.field o:Z

.field p:Z

.field q:I

.field r:I

.field s:Z

.field t:Lcom/google/android/exoplayer2/z2;

.field u:J

.field v:J

.field w:Lcom/google/android/exoplayer2/p1;

.field x:J

.field y:J

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/t;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/t;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/v;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/v;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/q$b;-><init>(Landroid/content/Context;Lcom/google/common/base/w;Lcom/google/common/base/w;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/w;Lcom/google/common/base/w;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/w<",
            "Lcom/google/android/exoplayer2/y2;",
            ">;",
            "Lcom/google/common/base/w<",
            "Lv2/q$a;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v4, Lcom/google/android/exoplayer2/u;

    invoke-direct {v4, p1}, Lcom/google/android/exoplayer2/u;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/exoplayer2/w;->a:Lcom/google/android/exoplayer2/w;

    new-instance v6, Lcom/google/android/exoplayer2/s;

    invoke-direct {v6, p1}, Lcom/google/android/exoplayer2/s;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/google/android/exoplayer2/r;->a:Lcom/google/android/exoplayer2/r;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/q$b;-><init>(Landroid/content/Context;Lcom/google/common/base/w;Lcom/google/common/base/w;Lcom/google/common/base/w;Lcom/google/common/base/w;Lcom/google/common/base/w;Lcom/google/common/base/h;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/w;Lcom/google/common/base/w;Lcom/google/common/base/w;Lcom/google/common/base/w;Lcom/google/common/base/w;Lcom/google/common/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/w<",
            "Lcom/google/android/exoplayer2/y2;",
            ">;",
            "Lcom/google/common/base/w<",
            "Lv2/q$a;",
            ">;",
            "Lcom/google/common/base/w<",
            "Lh3/b0;",
            ">;",
            "Lcom/google/common/base/w<",
            "Lcom/google/android/exoplayer2/q1;",
            ">;",
            "Lcom/google/common/base/w<",
            "Lj3/d;",
            ">;",
            "Lcom/google/common/base/h<",
            "Lcom/google/android/exoplayer2/util/d;",
            "La2/a;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/q$b;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/q$b;->d:Lcom/google/common/base/w;

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/q$b;->e:Lcom/google/common/base/w;

    .line 7
    iput-object p4, p0, Lcom/google/android/exoplayer2/q$b;->f:Lcom/google/common/base/w;

    .line 8
    iput-object p5, p0, Lcom/google/android/exoplayer2/q$b;->g:Lcom/google/common/base/w;

    .line 9
    iput-object p6, p0, Lcom/google/android/exoplayer2/q$b;->h:Lcom/google/common/base/w;

    .line 10
    iput-object p7, p0, Lcom/google/android/exoplayer2/q$b;->i:Lcom/google/common/base/h;

    .line 11
    invoke-static {}, Lcom/google/android/exoplayer2/util/l0;->K()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$b;->j:Landroid/os/Looper;

    .line 12
    sget-object p1, Lcom/google/android/exoplayer2/audio/e;->g:Lcom/google/android/exoplayer2/audio/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$b;->l:Lcom/google/android/exoplayer2/audio/e;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/google/android/exoplayer2/q$b;->n:I

    const/4 p2, 0x1

    .line 14
    iput p2, p0, Lcom/google/android/exoplayer2/q$b;->q:I

    .line 15
    iput p1, p0, Lcom/google/android/exoplayer2/q$b;->r:I

    .line 16
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/q$b;->s:Z

    .line 17
    sget-object p1, Lcom/google/android/exoplayer2/z2;->g:Lcom/google/android/exoplayer2/z2;

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$b;->t:Lcom/google/android/exoplayer2/z2;

    const-wide/16 p3, 0x1388

    .line 18
    iput-wide p3, p0, Lcom/google/android/exoplayer2/q$b;->u:J

    const-wide/16 p3, 0x3a98

    .line 19
    iput-wide p3, p0, Lcom/google/android/exoplayer2/q$b;->v:J

    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/j$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/j$b;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j$b;->a()Lcom/google/android/exoplayer2/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$b;->w:Lcom/google/android/exoplayer2/p1;

    .line 21
    sget-object p1, Lcom/google/android/exoplayer2/util/d;->a:Lcom/google/android/exoplayer2/util/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$b;->b:Lcom/google/android/exoplayer2/util/d;

    const-wide/16 p3, 0x1f4

    .line 22
    iput-wide p3, p0, Lcom/google/android/exoplayer2/q$b;->x:J

    const-wide/16 p3, 0x7d0

    .line 23
    iput-wide p3, p0, Lcom/google/android/exoplayer2/q$b;->y:J

    .line 24
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/q$b;->A:Z

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lj3/d;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/q$b;->i(Landroid/content/Context;)Lj3/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Lcom/google/android/exoplayer2/y2;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/q$b;->f(Landroid/content/Context;)Lcom/google/android/exoplayer2/y2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Lh3/b0;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/q$b;->h(Landroid/content/Context;)Lh3/b0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Lv2/q$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/q$b;->g(Landroid/content/Context;)Lv2/q$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Landroid/content/Context;)Lcom/google/android/exoplayer2/y2;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/m;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic g(Landroid/content/Context;)Lv2/q$a;
    .locals 2

    new-instance v0, Lv2/f;

    new-instance v1, Lc2/i;

    invoke-direct {v1}, Lc2/i;-><init>()V

    invoke-direct {v0, p0, v1}, Lv2/f;-><init>(Landroid/content/Context;Lc2/r;)V

    return-object v0
.end method

.method private static synthetic h(Landroid/content/Context;)Lh3/b0;
    .locals 1

    new-instance v0, Lh3/m;

    invoke-direct {v0, p0}, Lh3/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic i(Landroid/content/Context;)Lj3/d;
    .locals 0

    invoke-static {p0}, Lj3/o;->l(Landroid/content/Context;)Lj3/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method e()Lcom/google/android/exoplayer2/a3;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q$b;->B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/q$b;->B:Z

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/a3;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/q$b;)V

    return-object v0
.end method

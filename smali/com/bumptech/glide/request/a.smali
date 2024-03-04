.class public abstract Lcom/bumptech/glide/request/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bumptech/glide/request/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:Lcom/bumptech/glide/load/engine/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/Priority;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Le0/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:I

.field private q:Le0/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le0/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/bumptech/glide/request/a;->b:F

    .line 3
    sget-object v0, Lcom/bumptech/glide/load/engine/j;->e:Lcom/bumptech/glide/load/engine/j;

    iput-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/load/engine/j;

    .line 4
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/a;->d:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->i:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/bumptech/glide/request/a;->j:I

    .line 7
    iput v1, p0, Lcom/bumptech/glide/request/a;->k:I

    .line 8
    invoke-static {}, Lu0/c;->a()Lu0/c;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/a;->l:Le0/b;

    .line 9
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->n:Z

    .line 10
    new-instance v1, Le0/e;

    invoke-direct {v1}, Le0/e;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/a;->q:Le0/e;

    .line 11
    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    .line 12
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/request/a;->s:Ljava/lang/Class;

    .line 13
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->y:Z

    return-void
.end method

.method private N(I)Z
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/a;->a:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result p1

    return p1
.end method

.method private static O(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private X(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/a;->h0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method private g0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/a;->h0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method private h0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;Z)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/a;->o0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/a;->Y(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/bumptech/glide/request/a;->y:Z

    return-object p1
.end method

.method private i0()Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final A()Le0/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->l:Le0/b;

    return-object v0
.end method

.method public final B()F
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/a;->b:F

    return v0
.end method

.method public final C()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->u:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final D()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le0/h<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    return-object v0
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->z:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->w:Z

    return v0
.end method

.method protected final H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    return v0
.end method

.method public final J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->i:Z

    return v0
.end method

.method public final K()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a;->N(I)Z

    move-result v0

    return v0
.end method

.method M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->y:Z

    return v0
.end method

.method public final P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->n:Z

    return v0
.end method

.method public final Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->m:Z

    return v0
.end method

.method public final R()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a;->N(I)Z

    move-result v0

    return v0
.end method

.method public final S()Z
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/request/a;->k:I

    iget v1, p0, Lcom/bumptech/glide/request/a;->j:I

    invoke-static {v0, v1}, Lv0/k;->u(II)Z

    move-result v0

    return v0
.end method

.method public T()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->t:Z

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/request/a;->i0()Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method public U()Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->e:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/a;->Y(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method public V()Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->d:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/a;->X(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method public W()Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->c:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/q;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/q;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/a;->X(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method final Y(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/a;->Y(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a;->k(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/a;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/bumptech/glide/request/a;->r0(Le0/h;Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public Z(I)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/request/a;->a0(II)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/request/a;
    .locals 4
    .param p1    # Lcom/bumptech/glide/request/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->a(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p1, Lcom/bumptech/glide/request/a;->b:F

    iput v0, p0, Lcom/bumptech/glide/request/a;->b:F

    .line 5
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p1, Lcom/bumptech/glide/request/a;->w:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->w:Z

    .line 7
    :cond_2
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p1, Lcom/bumptech/glide/request/a;->z:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->z:Z

    .line 9
    :cond_3
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p1, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/load/engine/j;

    iput-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/load/engine/j;

    .line 11
    :cond_4
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p1, Lcom/bumptech/glide/request/a;->d:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/a;->d:Lcom/bumptech/glide/Priority;

    .line 13
    :cond_5
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p1, Lcom/bumptech/glide/request/a;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/a;->e:Landroid/graphics/drawable/Drawable;

    .line 15
    iput v1, p0, Lcom/bumptech/glide/request/a;->f:I

    .line 16
    iget v0, p0, Lcom/bumptech/glide/request/a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 17
    :cond_6
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 18
    iget v0, p1, Lcom/bumptech/glide/request/a;->f:I

    iput v0, p0, Lcom/bumptech/glide/request/a;->f:I

    .line 19
    iput-object v2, p0, Lcom/bumptech/glide/request/a;->e:Landroid/graphics/drawable/Drawable;

    .line 20
    iget v0, p0, Lcom/bumptech/glide/request/a;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 21
    :cond_7
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p1, Lcom/bumptech/glide/request/a;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/a;->g:Landroid/graphics/drawable/Drawable;

    .line 23
    iput v1, p0, Lcom/bumptech/glide/request/a;->h:I

    .line 24
    iget v0, p0, Lcom/bumptech/glide/request/a;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 25
    :cond_8
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    iget v0, p1, Lcom/bumptech/glide/request/a;->h:I

    iput v0, p0, Lcom/bumptech/glide/request/a;->h:I

    .line 27
    iput-object v2, p0, Lcom/bumptech/glide/request/a;->g:Landroid/graphics/drawable/Drawable;

    .line 28
    iget v0, p0, Lcom/bumptech/glide/request/a;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 29
    :cond_9
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-boolean v0, p1, Lcom/bumptech/glide/request/a;->i:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->i:Z

    .line 31
    :cond_a
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    iget v0, p1, Lcom/bumptech/glide/request/a;->k:I

    iput v0, p0, Lcom/bumptech/glide/request/a;->k:I

    .line 33
    iget v0, p1, Lcom/bumptech/glide/request/a;->j:I

    iput v0, p0, Lcom/bumptech/glide/request/a;->j:I

    .line 34
    :cond_b
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    iget-object v0, p1, Lcom/bumptech/glide/request/a;->l:Le0/b;

    iput-object v0, p0, Lcom/bumptech/glide/request/a;->l:Le0/b;

    .line 36
    :cond_c
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p1, Lcom/bumptech/glide/request/a;->s:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/a;->s:Ljava/lang/Class;

    .line 38
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p1, Lcom/bumptech/glide/request/a;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/a;->o:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v1, p0, Lcom/bumptech/glide/request/a;->p:I

    .line 41
    iget v0, p0, Lcom/bumptech/glide/request/a;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 42
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    iget v0, p1, Lcom/bumptech/glide/request/a;->p:I

    iput v0, p0, Lcom/bumptech/glide/request/a;->p:I

    .line 44
    iput-object v2, p0, Lcom/bumptech/glide/request/a;->o:Landroid/graphics/drawable/Drawable;

    .line 45
    iget v0, p0, Lcom/bumptech/glide/request/a;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 46
    :cond_f
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p1, Lcom/bumptech/glide/request/a;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/a;->u:Landroid/content/res/Resources$Theme;

    .line 48
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-boolean v0, p1, Lcom/bumptech/glide/request/a;->n:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->n:Z

    .line 50
    :cond_11
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    iget-boolean v0, p1, Lcom/bumptech/glide/request/a;->m:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->m:Z

    .line 52
    :cond_12
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    iget-boolean v0, p1, Lcom/bumptech/glide/request/a;->y:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->y:Z

    .line 55
    :cond_13
    iget v0, p1, Lcom/bumptech/glide/request/a;->a:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/a;->O(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 56
    iget-boolean v0, p1, Lcom/bumptech/glide/request/a;->x:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->x:Z

    .line 57
    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->n:Z

    if-nez v0, :cond_15

    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget v0, p0, Lcom/bumptech/glide/request/a;->a:I

    and-int/lit16 v0, v0, -0x801

    .line 60
    iput-boolean v1, p0, Lcom/bumptech/glide/request/a;->m:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    .line 61
    iput v0, p0, Lcom/bumptech/glide/request/a;->a:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->y:Z

    .line 63
    :cond_15
    iget v0, p0, Lcom/bumptech/glide/request/a;->a:I

    iget v1, p1, Lcom/bumptech/glide/request/a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->q:Le0/e;

    iget-object p1, p1, Lcom/bumptech/glide/request/a;->q:Le0/e;

    invoke-virtual {v0, p1}, Le0/e;->b(Le0/e;)V

    .line 65
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public a0(II)Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/a;->a0(II)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/a;->k:I

    .line 4
    iput p2, p0, Lcom/bumptech/glide/request/a;->j:I

    .line 5
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 6
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    .line 4
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->T()Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method public b0(I)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/a;->h:I

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit16 p1, p1, 0x80

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/request/a;->g:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    .line 6
    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->e:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/a;->o0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method public d0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->d0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/a;->g:Landroid/graphics/drawable/Drawable;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit8 p1, p1, 0x40

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bumptech/glide/request/a;->h:I

    and-int/lit16 p1, p1, -0x81

    .line 6
    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->d:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/a;->o0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method public e0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->e0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lcom/bumptech/glide/request/a;->d:Lcom/bumptech/glide/Priority;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/request/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/bumptech/glide/request/a;

    .line 3
    iget v0, p1, Lcom/bumptech/glide/request/a;->b:F

    iget v2, p0, Lcom/bumptech/glide/request/a;->b:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/a;->f:I

    iget v2, p1, Lcom/bumptech/glide/request/a;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-static {v0, v2}, Lv0/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/a;->h:I

    iget v2, p1, Lcom/bumptech/glide/request/a;->h:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->g:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {v0, v2}, Lv0/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/a;->p:I

    iget v2, p1, Lcom/bumptech/glide/request/a;->p:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->o:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {v0, v2}, Lv0/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->i:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/a;->i:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/a;->j:I

    iget v2, p1, Lcom/bumptech/glide/request/a;->j:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/a;->k:I

    iget v2, p1, Lcom/bumptech/glide/request/a;->k:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->m:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/a;->m:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->n:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/a;->n:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->w:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/a;->w:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->x:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/a;->x:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/load/engine/j;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/load/engine/j;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->d:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->q:Le0/e;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->q:Le0/e;

    .line 8
    invoke-virtual {v0, v2}, Le0/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->s:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->s:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->l:Le0/b;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->l:Le0/b;

    .line 11
    invoke-static {v0, v2}, Lv0/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->u:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/request/a;->u:Landroid/content/res/Resources$Theme;

    .line 12
    invoke-static {v0, p1}, Lv0/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Lcom/bumptech/glide/request/a;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/a;

    .line 2
    new-instance v1, Le0/e;

    invoke-direct {v1}, Le0/e;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/a;->q:Le0/e;

    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/request/a;->q:Le0/e;

    invoke-virtual {v1, v2}, Le0/e;->b(Le0/e;)V

    .line 4
    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/bumptech/glide/request/a;->t:Z

    .line 7
    iput-boolean v1, v0, Lcom/bumptech/glide/request/a;->v:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g(Ljava/lang/Class;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->g(Ljava/lang/Class;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/request/a;->s:Ljava/lang/Class;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->h(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/j;

    iput-object p1, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/load/engine/j;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/a;->b:F

    invoke-static {v0}, Lv0/k;->l(F)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/bumptech/glide/request/a;->f:I

    invoke-static {v1, v0}, Lv0/k;->o(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lv0/k;->p(Ljava/lang/Object;I)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/bumptech/glide/request/a;->h:I

    invoke-static {v1, v0}, Lv0/k;->o(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lv0/k;->p(Ljava/lang/Object;I)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/bumptech/glide/request/a;->p:I

    invoke-static {v1, v0}, Lv0/k;->o(II)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lv0/k;->p(Ljava/lang/Object;I)I

    move-result v0

    .line 8
    iget-boolean v1, p0, Lcom/bumptech/glide/request/a;->i:Z

    invoke-static {v1, v0}, Lv0/k;->q(ZI)I

    move-result v0

    .line 9
    iget v1, p0, Lcom/bumptech/glide/request/a;->j:I

    invoke-static {v1, v0}, Lv0/k;->o(II)I

    move-result v0

    .line 10
    iget v1, p0, Lcom/bumptech/glide/request/a;->k:I

    invoke-static {v1, v0}, Lv0/k;->o(II)I

    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/bumptech/glide/request/a;->m:Z

    invoke-static {v1, v0}, Lv0/k;->q(ZI)I

    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/bumptech/glide/request/a;->n:Z

    invoke-static {v1, v0}, Lv0/k;->q(ZI)I

    move-result v0

    .line 13
    iget-boolean v1, p0, Lcom/bumptech/glide/request/a;->w:Z

    invoke-static {v1, v0}, Lv0/k;->q(ZI)I

    move-result v0

    .line 14
    iget-boolean v1, p0, Lcom/bumptech/glide/request/a;->x:Z

    invoke-static {v1, v0}, Lv0/k;->q(ZI)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/load/engine/j;

    invoke-static {v1, v0}, Lv0/k;->p(Ljava/lang/Object;I)I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->d:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lv0/k;->p(Ljava/lang/Object;I)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->q:Le0/e;

    invoke-static {v1, v0}, Lv0/k;->p(Ljava/lang/Object;I)I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    invoke-static {v1, v0}, Lv0/k;->p(Ljava/lang/Object;I)I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->s:Ljava/lang/Class;

    invoke-static {v1, v0}, Lv0/k;->p(Ljava/lang/Object;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->l:Le0/b;

    invoke-static {v1, v0}, Lv0/k;->p(Ljava/lang/Object;I)I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->u:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lv0/k;->p(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public i()Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/gif/h;->b:Le0/d;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/a;->k0(Le0/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/bumptech/glide/request/a;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->j()Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget v0, p0, Lcom/bumptech/glide/request/a;->a:I

    and-int/lit16 v0, v0, -0x801

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/bumptech/glide/request/a;->m:Z

    const v2, -0x20001

    and-int/2addr v0, v2

    .line 6
    iput-boolean v1, p0, Lcom/bumptech/glide/request/a;->n:Z

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/bumptech/glide/request/a;->a:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->y:Z

    .line 9
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method protected final j0()Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->t:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/request/a;->i0()Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->h:Le0/d;

    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/a;->k0(Le0/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public k0(Le0/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Le0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Le0/d<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/a;->k0(Le0/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->q:Le0/e;

    invoke-virtual {v0, p1, p2}, Le0/e;->c(Le0/d;Ljava/lang/Object;)Le0/e;

    .line 6
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public l(I)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/a;->f:I

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/request/a;->e:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    .line 6
    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public l0(Le0/b;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Le0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/b;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->l0(Le0/b;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le0/b;

    iput-object p1, p0, Lcom/bumptech/glide/request/a;->l:Le0/b;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public m()Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->c:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/q;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/q;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/a;->g0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method

.method public m0(F)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->m0(F)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 3
    iput p1, p0, Lcom/bumptech/glide/request/a;->b:F

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n()Lcom/bumptech/glide/load/engine/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/load/engine/j;

    return-object v0
.end method

.method public n0(Z)Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/a;->n0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 3
    iput-boolean p1, p0, Lcom/bumptech/glide/request/a;->i:Z

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/a;->f:I

    return v0
.end method

.method final o0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/a;->o0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a;->k(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/a;

    .line 4
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public final p()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final q()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public q0(Le0/h;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/request/a;->r0(Le0/h;Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/a;->p:I

    return v0
.end method

.method r0(Le0/h;Z)Lcom/bumptech/glide/request/a;
    .locals 2
    .param p1    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/a;->r0(Le0/h;Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/o;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>(Le0/h;Z)V

    .line 4
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/bumptech/glide/request/a;->s0(Ljava/lang/Class;Le0/h;Z)Lcom/bumptech/glide/request/a;

    .line 5
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/bumptech/glide/request/a;->s0(Ljava/lang/Class;Le0/h;Z)Lcom/bumptech/glide/request/a;

    .line 6
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/o;->a()Le0/h;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/bumptech/glide/request/a;->s0(Ljava/lang/Class;Le0/h;Z)Lcom/bumptech/glide/request/a;

    .line 7
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/e;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/gif/e;-><init>(Le0/h;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/bumptech/glide/request/a;->s0(Ljava/lang/Class;Le0/h;Z)Lcom/bumptech/glide/request/a;

    .line 8
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->x:Z

    return v0
.end method

.method s0(Ljava/lang/Class;Le0/h;Z)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Le0/h<",
            "TY;>;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/request/a;->s0(Ljava/lang/Class;Le0/h;Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    or-int/lit16 p1, p1, 0x800

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/bumptech/glide/request/a;->n:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->y:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 10
    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 11
    iput-boolean p2, p0, Lcom/bumptech/glide/request/a;->m:Z

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public final t()Le0/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->q:Le0/e;

    return-object v0
.end method

.method public varargs t0([Le0/h;)Lcom/bumptech/glide/request/a;
    .locals 2
    .param p1    # [Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    new-instance v0, Le0/c;

    invoke-direct {v0, p1}, Le0/c;-><init>([Le0/h;)V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/a;->r0(Le0/h;Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/a;->j:I

    return v0
.end method

.method public varargs u0([Le0/h;)Lcom/bumptech/glide/request/a;
    .locals 1
    .param p1    # [Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Le0/c;

    invoke-direct {v0, p1}, Le0/c;-><init>([Le0/h;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/a;->r0(Le0/h;Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/a;->k:I

    return v0
.end method

.method public v0(Z)Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->v0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/a;->z:Z

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/a;->a:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    return-object p1
.end method

.method public final w()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/a;->h:I

    return v0
.end method

.method public final y()Lcom/bumptech/glide/Priority;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final z()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->s:Ljava/lang/Class;

    return-object v0
.end method

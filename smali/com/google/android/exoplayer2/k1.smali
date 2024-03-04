.class public final Lcom/google/android/exoplayer2/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/k1$b;
    }
.end annotation


# static fields
.field private static final G:Lcom/google/android/exoplayer2/k1;

.field public static final H:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/k1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field private F:I

.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/android/exoplayer2/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final p:J

.field public final q:I

.field public final r:I

.field public final s:F

.field public final t:I

.field public final u:F

.field public final v:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final w:I

.field public final x:Lk3/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/k1;->G:Lcom/google/android/exoplayer2/k1;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/j1;->a:Lcom/google/android/exoplayer2/j1;

    sput-object v0, Lcom/google/android/exoplayer2/k1;->H:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/k1$b;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->a(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->l(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->w(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->y(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/k1;->d:I

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->z(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/k1;->e:I

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->A(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/k1;->f:I

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->B(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k1;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 10
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/k1;->h:I

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->C(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->i:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->D(Lcom/google/android/exoplayer2/k1$b;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->b(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->k:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->c(Lcom/google/android/exoplayer2/k1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->d(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/k1;->m:I

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->e(Lcom/google/android/exoplayer2/k1$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->e(Lcom/google/android/exoplayer2/k1$b;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->f(Lcom/google/android/exoplayer2/k1$b;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->g(Lcom/google/android/exoplayer2/k1$b;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/k1;->p:J

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->h(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k1;->q:I

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->i(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k1;->r:I

    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->j(Lcom/google/android/exoplayer2/k1$b;)F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k1;->s:F

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->k(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->k(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer2/k1;->t:I

    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->m(Lcom/google/android/exoplayer2/k1$b;)F

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->m(Lcom/google/android/exoplayer2/k1$b;)F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/google/android/exoplayer2/k1;->u:F

    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->n(Lcom/google/android/exoplayer2/k1$b;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/k1;->v:[B

    .line 25
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->o(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k1;->w:I

    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->p(Lcom/google/android/exoplayer2/k1$b;)Lk3/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/k1;->x:Lk3/c;

    .line 27
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->q(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k1;->y:I

    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->r(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k1;->z:I

    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->s(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k1;->A:I

    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->t(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->t(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/google/android/exoplayer2/k1;->B:I

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->u(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->u(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v3

    :goto_4
    iput v3, p0, Lcom/google/android/exoplayer2/k1;->C:I

    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->v(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k1;->D:I

    .line 33
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->x(Lcom/google/android/exoplayer2/k1$b;)I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcom/google/android/exoplayer2/k1;->E:I

    goto :goto_5

    .line 35
    :cond_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/k1$b;->x(Lcom/google/android/exoplayer2/k1$b;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/k1;->E:I

    :goto_5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/k1$b;Lcom/google/android/exoplayer2/k1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;-><init>(Lcom/google/android/exoplayer2/k1$b;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k1;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/k1;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k1;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k1;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/c;->a(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/k1;->G:Lcom/google/android/exoplayer2/k1;

    iget-object v4, v3, Lcom/google/android/exoplayer2/k1;->a:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/k1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/k1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/4 v4, 0x1

    .line 4
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k1;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/4 v4, 0x2

    .line 5
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/4 v4, 0x3

    .line 6
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/k1;->d:I

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 7
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->g0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/4 v4, 0x4

    .line 8
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/k1;->e:I

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->c0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/4 v4, 0x5

    .line 9
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/k1;->f:I

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->G(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/4 v4, 0x6

    .line 11
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/k1;->g:I

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->Z(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/4 v4, 0x7

    .line 12
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k1;->i:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/16 v4, 0x8

    .line 13
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v5, v3, Lcom/google/android/exoplayer2/k1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 14
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/16 v4, 0x9

    .line 15
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k1;->k:Ljava/lang/String;

    .line 16
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/16 v4, 0xa

    .line 18
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    .line 19
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    const/16 v4, 0xb

    .line 21
    invoke-static {v4}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v3, v3, Lcom/google/android/exoplayer2/k1;->m:I

    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/k1$b;->W(I)Lcom/google/android/exoplayer2/k1$b;

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 24
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/k1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0xd

    .line 25
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0xe

    .line 26
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/k1;->G:Lcom/google/android/exoplayer2/k1;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/k1;->p:J

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 27
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/k1$b;->i0(J)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0xf

    .line 28
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->q:I

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->j0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x10

    .line 29
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->r:I

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->Q(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x11

    .line 30
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->s:F

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->P(F)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x12

    .line 31
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->t:I

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->d0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x13

    .line 33
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->u:F

    .line 34
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->a0(F)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x14

    .line 36
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->b0([B)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x15

    .line 37
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->w:I

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->h0(I)Lcom/google/android/exoplayer2/k1$b;

    const/16 v1, 0x16

    .line 38
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    sget-object v2, Lk3/c;->f:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v1

    check-cast v1, Lk3/c;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k1$b;->J(Lk3/c;)Lcom/google/android/exoplayer2/k1$b;

    :cond_0
    const/16 v1, 0x17

    .line 40
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v3, Lcom/google/android/exoplayer2/k1;->y:I

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k1$b;->H(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x18

    .line 41
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->z:I

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->f0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x19

    .line 42
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->A:I

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->Y(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x1a

    .line 43
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->B:I

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->N(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x1b

    .line 44
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->C:I

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->O(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x1c

    .line 46
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k1;->D:I

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->F(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    const/16 v2, 0x1d

    .line 48
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v3, Lcom/google/android/exoplayer2/k1;->E:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/k1$b;->L(I)Lcom/google/android/exoplayer2/k1$b;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object p0

    return-object p0

    .line 50
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private static h(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    .line 2
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/k1$b;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/k1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/k1$b;-><init>(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1$a;)V

    return-object v0
.end method

.method public c(I)Lcom/google/android/exoplayer2/k1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->b()Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/k1$b;->L(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/google/android/exoplayer2/k1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/k1;

    .line 3
    iget v2, p0, Lcom/google/android/exoplayer2/k1;->F:I

    if-eqz v2, :cond_2

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->F:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/k1;->d:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->e:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->f:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->g:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->m:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->m:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/k1;->p:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/k1;->p:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->q:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->q:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->r:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->r:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->t:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->t:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->w:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->w:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->y:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->y:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->z:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->z:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->A:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->A:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->B:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->B:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->C:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->C:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->D:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->D:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->E:I

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->E:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->s:F

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->s:F

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->u:F

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->u:F

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->a:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->b:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->i:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->k:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    .line 11
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->v:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->v:[B

    .line 13
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 14
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->x:Lk3/c;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->x:Lk3/c;

    .line 15
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 16
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k1;->g(Lcom/google/android/exoplayer2/k1;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public f()I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/k1;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->r:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public g(Lcom/google/android/exoplayer2/k1;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/k1;->F:I

    if-nez v0, :cond_7

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->i:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->k:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-wide v1, p0, Lcom/google/android/exoplayer2/k1;->p:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->r:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->s:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->t:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->u:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->z:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->A:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->B:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->C:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->D:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->E:I

    add-int/2addr v0, v1

    .line 28
    iput v0, p0, Lcom/google/android/exoplayer2/k1;->F:I

    .line 29
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/k1;->F:I

    return v0
.end method

.method public j()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 4
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 5
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/k1;->d:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x4

    .line 6
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/k1;->e:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x5

    .line 7
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/k1;->f:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x6

    .line 8
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/k1;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x7

    .line 9
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 10
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v2, 0x9

    .line 11
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 12
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    .line 13
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/k1;->m:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->i(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    .line 16
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0xe

    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/k1;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0xf

    .line 18
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x10

    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x11

    .line 20
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->s:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x12

    .line 21
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x13

    .line 22
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->u:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x14

    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->v:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0x15

    .line 24
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->x:Lk3/c;

    if-eqz v1, :cond_1

    const/16 v1, 0x16

    .line 26
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->x:Lk3/c;

    invoke-virtual {v2}, Lk3/c;->f()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/16 v1, 0x17

    .line 27
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x18

    .line 28
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->z:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x19

    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1a

    .line 30
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->B:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1b

    .line 31
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->C:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1c

    .line 32
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->D:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1d

    .line 33
    invoke-static {v1}, Lcom/google/android/exoplayer2/k1;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->E:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->s:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/k1;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/k1;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

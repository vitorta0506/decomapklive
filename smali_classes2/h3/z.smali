.class public Lh3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/z$a;
    }
.end annotation


# static fields
.field public static final A:Lh3/z;

.field public static final B:Lh3/z;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final C:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lh3/z;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final m:I

.field public final n:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final t:I

.field public final u:I

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lv2/o0;",
            "Lh3/x;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh3/z$a;

    invoke-direct {v0}, Lh3/z$a;-><init>()V

    invoke-virtual {v0}, Lh3/z$a;->A()Lh3/z;

    move-result-object v0

    sput-object v0, Lh3/z;->A:Lh3/z;

    .line 2
    sput-object v0, Lh3/z;->B:Lh3/z;

    .line 3
    sget-object v0, Lh3/y;->a:Lh3/y;

    sput-object v0, Lh3/z;->C:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method protected constructor <init>(Lh3/z$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lh3/z$a;->a(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->a:I

    .line 3
    invoke-static {p1}, Lh3/z$a;->b(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->b:I

    .line 4
    invoke-static {p1}, Lh3/z$a;->m(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->c:I

    .line 5
    invoke-static {p1}, Lh3/z$a;->t(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->d:I

    .line 6
    invoke-static {p1}, Lh3/z$a;->u(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->e:I

    .line 7
    invoke-static {p1}, Lh3/z$a;->v(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->f:I

    .line 8
    invoke-static {p1}, Lh3/z$a;->w(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->g:I

    .line 9
    invoke-static {p1}, Lh3/z$a;->x(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->h:I

    .line 10
    invoke-static {p1}, Lh3/z$a;->y(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->i:I

    .line 11
    invoke-static {p1}, Lh3/z$a;->z(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->j:I

    .line 12
    invoke-static {p1}, Lh3/z$a;->c(Lh3/z$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/z;->k:Z

    .line 13
    invoke-static {p1}, Lh3/z$a;->d(Lh3/z$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lh3/z;->l:Lcom/google/common/collect/ImmutableList;

    .line 14
    invoke-static {p1}, Lh3/z$a;->e(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->m:I

    .line 15
    invoke-static {p1}, Lh3/z$a;->f(Lh3/z$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lh3/z;->n:Lcom/google/common/collect/ImmutableList;

    .line 16
    invoke-static {p1}, Lh3/z$a;->g(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->o:I

    .line 17
    invoke-static {p1}, Lh3/z$a;->h(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->p:I

    .line 18
    invoke-static {p1}, Lh3/z$a;->i(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->q:I

    .line 19
    invoke-static {p1}, Lh3/z$a;->j(Lh3/z$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lh3/z;->r:Lcom/google/common/collect/ImmutableList;

    .line 20
    invoke-static {p1}, Lh3/z$a;->k(Lh3/z$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lh3/z;->s:Lcom/google/common/collect/ImmutableList;

    .line 21
    invoke-static {p1}, Lh3/z$a;->l(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->t:I

    .line 22
    invoke-static {p1}, Lh3/z$a;->n(Lh3/z$a;)I

    move-result v0

    iput v0, p0, Lh3/z;->u:I

    .line 23
    invoke-static {p1}, Lh3/z$a;->o(Lh3/z$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/z;->v:Z

    .line 24
    invoke-static {p1}, Lh3/z$a;->p(Lh3/z$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/z;->w:Z

    .line 25
    invoke-static {p1}, Lh3/z$a;->q(Lh3/z$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/z;->x:Z

    .line 26
    invoke-static {p1}, Lh3/z$a;->r(Lh3/z$a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lh3/z;->y:Lcom/google/common/collect/ImmutableMap;

    .line 27
    invoke-static {p1}, Lh3/z$a;->s(Lh3/z$a;)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lh3/z;->z:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lh3/z;
    .locals 1

    new-instance v0, Lh3/z$a;

    invoke-direct {v0, p0}, Lh3/z$a;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lh3/z$a;->A()Lh3/z;

    move-result-object p0

    return-object p0
.end method

.method protected static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lh3/z$a;
    .locals 1

    new-instance v0, Lh3/z$a;

    invoke-direct {v0, p0}, Lh3/z$a;-><init>(Lh3/z;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lh3/z;

    .line 3
    iget v2, p0, Lh3/z;->a:I

    iget v3, p1, Lh3/z;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->b:I

    iget v3, p1, Lh3/z;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->c:I

    iget v3, p1, Lh3/z;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->d:I

    iget v3, p1, Lh3/z;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->e:I

    iget v3, p1, Lh3/z;->e:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->f:I

    iget v3, p1, Lh3/z;->f:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->g:I

    iget v3, p1, Lh3/z;->g:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->h:I

    iget v3, p1, Lh3/z;->h:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/z;->k:Z

    iget-boolean v3, p1, Lh3/z;->k:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->i:I

    iget v3, p1, Lh3/z;->i:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->j:I

    iget v3, p1, Lh3/z;->j:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lh3/z;->l:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lh3/z;->l:Lcom/google/common/collect/ImmutableList;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lh3/z;->m:I

    iget v3, p1, Lh3/z;->m:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lh3/z;->n:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lh3/z;->n:Lcom/google/common/collect/ImmutableList;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lh3/z;->o:I

    iget v3, p1, Lh3/z;->o:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->p:I

    iget v3, p1, Lh3/z;->p:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->q:I

    iget v3, p1, Lh3/z;->q:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lh3/z;->r:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lh3/z;->r:Lcom/google/common/collect/ImmutableList;

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lh3/z;->s:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lh3/z;->s:Lcom/google/common/collect/ImmutableList;

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lh3/z;->t:I

    iget v3, p1, Lh3/z;->t:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lh3/z;->u:I

    iget v3, p1, Lh3/z;->u:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/z;->v:Z

    iget-boolean v3, p1, Lh3/z;->v:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/z;->w:Z

    iget-boolean v3, p1, Lh3/z;->w:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/z;->x:Z

    iget-boolean v3, p1, Lh3/z;->x:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lh3/z;->y:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Lh3/z;->y:Lcom/google/common/collect/ImmutableMap;

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lh3/z;->z:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Lh3/z;->z:Lcom/google/common/collect/ImmutableSet;

    .line 9
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lh3/z;->a:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v2, p0, Lh3/z;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v2, p0, Lh3/z;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v2, p0, Lh3/z;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v2, p0, Lh3/z;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v2, p0, Lh3/z;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v2, p0, Lh3/z;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v2, p0, Lh3/z;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v2, p0, Lh3/z;->k:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v2, p0, Lh3/z;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v2, p0, Lh3/z;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v2, p0, Lh3/z;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v2, p0, Lh3/z;->m:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, Lh3/z;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v2, p0, Lh3/z;->o:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget v2, p0, Lh3/z;->p:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget v2, p0, Lh3/z;->q:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v2, p0, Lh3/z;->r:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-object v2, p0, Lh3/z;->s:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget v2, p0, Lh3/z;->t:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget v2, p0, Lh3/z;->u:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-boolean v2, p0, Lh3/z;->v:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-boolean v2, p0, Lh3/z;->w:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-boolean v2, p0, Lh3/z;->x:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-object v2, p0, Lh3/z;->y:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object v1, p0, Lh3/z;->z:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

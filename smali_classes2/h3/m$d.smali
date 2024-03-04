.class public final Lh3/m$d;
.super Lh3/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/m$d$a;
    }
.end annotation


# static fields
.field public static final V1:Lh3/m$d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final a1:Lh3/m$d;

.field public static final a2:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lh3/m$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final D:Z

.field public final E:Z

.field public final F:Z

.field public final G:Z

.field public final H:Z

.field public final I:Z

.field public final J:Z

.field public final K:Z

.field public final L:Z

.field public final M:Z

.field public final N:Z

.field public final O:Z

.field public final P:Z

.field private final Q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lv2/q0;",
            "Lh3/m$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final R:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh3/m$d$a;

    invoke-direct {v0}, Lh3/m$d$a;-><init>()V

    invoke-virtual {v0}, Lh3/m$d$a;->b0()Lh3/m$d;

    move-result-object v0

    sput-object v0, Lh3/m$d;->a1:Lh3/m$d;

    .line 2
    sput-object v0, Lh3/m$d;->V1:Lh3/m$d;

    .line 3
    sget-object v0, Lh3/n;->a:Lh3/n;

    sput-object v0, Lh3/m$d;->a2:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method private constructor <init>(Lh3/m$d$a;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lh3/z;-><init>(Lh3/z$a;)V

    .line 3
    invoke-static {p1}, Lh3/m$d$a;->U(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->D:Z

    .line 4
    invoke-static {p1}, Lh3/m$d$a;->V(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->E:Z

    .line 5
    invoke-static {p1}, Lh3/m$d$a;->W(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->F:Z

    .line 6
    invoke-static {p1}, Lh3/m$d$a;->X(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->G:Z

    .line 7
    invoke-static {p1}, Lh3/m$d$a;->Y(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->H:Z

    .line 8
    invoke-static {p1}, Lh3/m$d$a;->Z(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->I:Z

    .line 9
    invoke-static {p1}, Lh3/m$d$a;->a0(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->J:Z

    .line 10
    invoke-static {p1}, Lh3/m$d$a;->M(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->K:Z

    .line 11
    invoke-static {p1}, Lh3/m$d$a;->N(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->L:Z

    .line 12
    invoke-static {p1}, Lh3/m$d$a;->O(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->M:Z

    .line 13
    invoke-static {p1}, Lh3/m$d$a;->P(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->N:Z

    .line 14
    invoke-static {p1}, Lh3/m$d$a;->Q(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->O:Z

    .line 15
    invoke-static {p1}, Lh3/m$d$a;->R(Lh3/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lh3/m$d;->P:Z

    .line 16
    invoke-static {p1}, Lh3/m$d$a;->S(Lh3/m$d$a;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lh3/m$d;->Q:Landroid/util/SparseArray;

    .line 17
    invoke-static {p1}, Lh3/m$d$a;->T(Lh3/m$d$a;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lh3/m$d;->R:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lh3/m$d$a;Lh3/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh3/m$d;-><init>(Lh3/m$d$a;)V

    return-void
.end method

.method public static synthetic d(Landroid/os/Bundle;)Lh3/m$d;
    .locals 0

    invoke-static {p0}, Lh3/m$d;->o(Landroid/os/Bundle;)Lh3/m$d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lh3/m$d;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lh3/m$d;->Q:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic f(Lh3/m$d;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lh3/m$d;->R:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private static g(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static h(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lv2/q0;",
            "Lh3/m$e;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lv2/q0;",
            "Lh3/m$e;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 5
    invoke-static {v4, v3}, Lh3/m$d;->i(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static i(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lv2/q0;",
            "Lh3/m$e;",
            ">;",
            "Ljava/util/Map<",
            "Lv2/q0;",
            "Lh3/m$e;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/q0;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static k(Landroid/content/Context;)Lh3/m$d;
    .locals 1

    new-instance v0, Lh3/m$d$a;

    invoke-direct {v0, p0}, Lh3/m$d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lh3/m$d$a;->b0()Lh3/m$d;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic o(Landroid/os/Bundle;)Lh3/m$d;
    .locals 2

    new-instance v0, Lh3/m$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh3/m$d$a;-><init>(Landroid/os/Bundle;Lh3/m$a;)V

    invoke-virtual {v0}, Lh3/m$d$a;->b0()Lh3/m$d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Lh3/z$a;
    .locals 1

    invoke-virtual {p0}, Lh3/m$d;->j()Lh3/m$d$a;

    move-result-object v0

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
    const-class v2, Lh3/m$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lh3/m$d;

    .line 3
    invoke-super {p0, p1}, Lh3/z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->D:Z

    iget-boolean v3, p1, Lh3/m$d;->D:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->E:Z

    iget-boolean v3, p1, Lh3/m$d;->E:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->F:Z

    iget-boolean v3, p1, Lh3/m$d;->F:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->G:Z

    iget-boolean v3, p1, Lh3/m$d;->G:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->H:Z

    iget-boolean v3, p1, Lh3/m$d;->H:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->I:Z

    iget-boolean v3, p1, Lh3/m$d;->I:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->J:Z

    iget-boolean v3, p1, Lh3/m$d;->J:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->K:Z

    iget-boolean v3, p1, Lh3/m$d;->K:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->L:Z

    iget-boolean v3, p1, Lh3/m$d;->L:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->M:Z

    iget-boolean v3, p1, Lh3/m$d;->M:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->N:Z

    iget-boolean v3, p1, Lh3/m$d;->N:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->O:Z

    iget-boolean v3, p1, Lh3/m$d;->O:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lh3/m$d;->P:Z

    iget-boolean v3, p1, Lh3/m$d;->P:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lh3/m$d;->R:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lh3/m$d;->R:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-static {v2, v3}, Lh3/m$d;->g(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lh3/m$d;->Q:Landroid/util/SparseArray;

    iget-object p1, p1, Lh3/m$d;->Q:Landroid/util/SparseArray;

    .line 5
    invoke-static {v2, p1}, Lh3/m$d;->h(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

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
    invoke-super {p0}, Lh3/z;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v2, p0, Lh3/m$d;->D:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v2, p0, Lh3/m$d;->E:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v2, p0, Lh3/m$d;->F:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v2, p0, Lh3/m$d;->G:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v2, p0, Lh3/m$d;->H:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v2, p0, Lh3/m$d;->I:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v2, p0, Lh3/m$d;->J:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v2, p0, Lh3/m$d;->K:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-boolean v2, p0, Lh3/m$d;->L:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-boolean v2, p0, Lh3/m$d;->M:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-boolean v2, p0, Lh3/m$d;->N:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-boolean v2, p0, Lh3/m$d;->O:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-boolean v1, p0, Lh3/m$d;->P:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public j()Lh3/m$d$a;
    .locals 2

    new-instance v0, Lh3/m$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh3/m$d$a;-><init>(Lh3/m$d;Lh3/m$a;)V

    return-object v0
.end method

.method public l(I)Z
    .locals 1

    iget-object v0, p0, Lh3/m$d;->R:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public m(ILv2/q0;)Lh3/m$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lh3/m$d;->Q:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/m$e;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public n(ILv2/q0;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lh3/m$d;->Q:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

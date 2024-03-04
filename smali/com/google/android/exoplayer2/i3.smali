.class public abstract Lcom/google/android/exoplayer2/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/i3$c;,
        Lcom/google/android/exoplayer2/i3$b;,
        Lcom/google/android/exoplayer2/i3$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/i3;

.field public static final b:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/i3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/i3$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/i3$a;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/i3;->a:Lcom/google/android/exoplayer2/i3;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/h3;->a:Lcom/google/android/exoplayer2/h3;

    sput-object v0, Lcom/google/android/exoplayer2/i3;->b:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i3;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/i3;->b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i3;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i3;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/i3$d;->u:Lcom/google/android/exoplayer2/h$a;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/i3;->w(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/b;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i3;->c(Lcom/google/android/exoplayer2/h$a;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/exoplayer2/i3$b;->h:Lcom/google/android/exoplayer2/h$a;

    const/4 v2, 0x1

    .line 5
    invoke-static {v2}, Lcom/google/android/exoplayer2/i3;->w(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/b;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/i3;->c(Lcom/google/android/exoplayer2/h$a;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x2

    .line 7
    invoke-static {v2}, Lcom/google/android/exoplayer2/i3;->w(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    .line 8
    new-instance v2, Lcom/google/android/exoplayer2/i3$c;

    if-nez p0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/i3;->d(I)[I

    move-result-object p0

    .line 10
    :cond_0
    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/exoplayer2/i3$c;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V

    return-object v2
.end method

.method private static c(Lcom/google/android/exoplayer2/h$a;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/h;",
            ">(",
            "Lcom/google/android/exoplayer2/h$a<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableList$b;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$b;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/g;->a(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static d(I)[I
    .locals 2

    .line 1
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 2
    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static w(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e(Z)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/i3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/i3;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v3

    if-ne v1, v3, :cond_b

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3;->m()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->m()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/i3$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/i3$d;-><init>()V

    .line 5
    new-instance v3, Lcom/google/android/exoplayer2/i3$b;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/i3$b;-><init>()V

    .line 6
    new-instance v4, Lcom/google/android/exoplayer2/i3$d;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/i3$d;-><init>()V

    .line 7
    new-instance v5, Lcom/google/android/exoplayer2/i3$b;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/i3$b;-><init>()V

    const/4 v6, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 9
    invoke-virtual {p0, v6, v1}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v7

    invoke-virtual {p1, v6, v4}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/i3$d;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->m()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 11
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v4

    .line 12
    invoke-virtual {p1, v1, v5, v0}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/i3$b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/i3;->e(Z)I

    move-result v1

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/i3;->e(Z)I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 15
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/i3;->g(Z)I

    move-result v3

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/i3;->g(Z)I

    move-result v4

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    :goto_2
    if-eq v1, v3, :cond_a

    .line 17
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/i3;->i(IIZ)I

    move-result v4

    .line 18
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/i3;->i(IIZ)I

    move-result v1

    if-eq v4, v1, :cond_9

    return v2

    :cond_9
    move v1, v4

    goto :goto_2

    :cond_a
    return v0

    :cond_b
    :goto_3
    return v2
.end method

.method public abstract f(Ljava/lang/Object;)I
.end method

.method public g(Z)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method public final h(ILcom/google/android/exoplayer2/i3$b;Lcom/google/android/exoplayer2/i3$d;IZ)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/i3;->j(ILcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/i3$d;->p:I

    if-ne v0, p1, :cond_1

    .line 3
    invoke-virtual {p0, p2, p4, p5}, Lcom/google/android/exoplayer2/i3;->i(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/i3$d;->o:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/i3$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/i3$d;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/i3$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/i3$b;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v2

    const/16 v3, 0xd9

    add-int/2addr v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v5

    if-ge v4, v5, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    .line 5
    invoke-virtual {p0, v4, v0}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/i3$d;->hashCode()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v3, 0x1f

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->m()I

    move-result v0

    add-int/2addr v3, v0

    const/4 v0, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->m()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 8
    invoke-virtual {p0, v0, v1, v5}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/i3$b;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/i3;->e(Z)I

    move-result v0

    :goto_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    .line 10
    invoke-virtual {p0, v0, v2, v5}, Lcom/google/android/exoplayer2/i3;->i(IIZ)I

    move-result v0

    goto :goto_2

    :cond_2
    return v3
.end method

.method public i(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/i3;->g(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/i3;->e(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 4
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/i3;->g(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    goto :goto_1

    :cond_4
    add-int/2addr p1, v0

    :goto_1
    return p1
.end method

.method public final j(ILcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p1

    return-object p1
.end method

.method public abstract k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;
.end method

.method public l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p1

    return-object p1
.end method

.method public abstract m()I
.end method

.method public final n(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/i3$d;",
            "Lcom/google/android/exoplayer2/i3$b;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/i3;->o(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public final o(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJJ)Landroid/util/Pair;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/i3$d;",
            "Lcom/google/android/exoplayer2/i3$b;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    .line 2
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/google/android/exoplayer2/i3;->s(ILcom/google/android/exoplayer2/i3$d;J)Lcom/google/android/exoplayer2/i3$d;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3$d;->e()J

    move-result-wide p4

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget p3, p1, Lcom/google/android/exoplayer2/i3$d;->o:I

    .line 5
    invoke-virtual {p0, p3, p2}, Lcom/google/android/exoplayer2/i3;->j(ILcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 6
    :goto_0
    iget v0, p1, Lcom/google/android/exoplayer2/i3$d;->p:I

    if-ge p3, v0, :cond_1

    iget-wide v0, p2, Lcom/google/android/exoplayer2/i3$b;->e:J

    cmp-long v2, v0, p4

    if-eqz v2, :cond_1

    add-int/lit8 v0, p3, 0x1

    .line 7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/i3;->j(ILcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplayer2/i3$b;->e:J

    cmp-long v3, v1, p4

    if-gtz v3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    .line 9
    iget-wide v0, p2, Lcom/google/android/exoplayer2/i3$b;->e:J

    sub-long/2addr p4, v0

    .line 10
    iget-wide v0, p2, Lcom/google/android/exoplayer2/i3$b;->d:J

    cmp-long p1, v0, p6

    if-eqz p1, :cond_2

    const-wide/16 p6, 0x1

    sub-long/2addr v0, p6

    .line 11
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    :cond_2
    const-wide/16 p6, 0x0

    .line 12
    invoke-static {p6, p7, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 13
    iget-object p1, p2, Lcom/google/android/exoplayer2/i3$b;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public p(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/i3;->e(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/i3;->g(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 4
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/i3;->e(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    goto :goto_1

    :cond_4
    sub-int/2addr p1, v0

    :goto_1
    return p1
.end method

.method public abstract q(I)Ljava/lang/Object;
.end method

.method public final r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/i3;->s(ILcom/google/android/exoplayer2/i3$d;J)Lcom/google/android/exoplayer2/i3$d;

    move-result-object p1

    return-object p1
.end method

.method public abstract s(ILcom/google/android/exoplayer2/i3$d;J)Lcom/google/android/exoplayer2/i3$d;
.end method

.method public abstract t()I
.end method

.method public final u()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->t()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v(ILcom/google/android/exoplayer2/i3$b;Lcom/google/android/exoplayer2/i3$d;IZ)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/i3;->h(ILcom/google/android/exoplayer2/i3$b;Lcom/google/android/exoplayer2/i3$d;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

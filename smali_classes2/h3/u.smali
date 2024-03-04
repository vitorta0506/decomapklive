.class public abstract Lh3/u;
.super Lh3/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/u$a;
    }
.end annotation


# instance fields
.field private c:Lh3/u$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh3/b0;-><init>()V

    return-void
.end method

.method private static k([Lcom/google/android/exoplayer2/w2;Lv2/o0;[IZ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_4

    .line 3
    aget-object v6, p0, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4
    :goto_1
    iget v9, p1, Lv2/o0;->a:I

    if-ge v7, v9, :cond_0

    .line 5
    invoke-virtual {p1, v7}, Lv2/o0;->b(I)Lcom/google/android/exoplayer2/k1;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/google/android/exoplayer2/w2;->a(Lcom/google/android/exoplayer2/k1;)I

    move-result v9

    .line 6
    invoke-static {v9}, Lcom/google/android/exoplayer2/v2;->f(I)I

    move-result v9

    .line 7
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 8
    :cond_0
    aget v6, p2, v3

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-gt v8, v4, :cond_2

    if-ne v8, v4, :cond_3

    if-eqz p3, :cond_3

    if-nez v5, :cond_3

    if-eqz v6, :cond_3

    :cond_2
    move v0, v3

    move v5, v6

    move v4, v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private static l(Lcom/google/android/exoplayer2/w2;Lv2/o0;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget v0, p1, Lv2/o0;->a:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p1, Lv2/o0;->a:I

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lv2/o0;->b(I)Lcom/google/android/exoplayer2/k1;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/w2;->a(Lcom/google/android/exoplayer2/k1;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static m([Lcom/google/android/exoplayer2/w2;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/w2;->r()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final f(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lh3/u$a;

    iput-object p1, p0, Lh3/u;->c:Lh3/u$a;

    return-void
.end method

.method public final h([Lcom/google/android/exoplayer2/w2;Lv2/q0;Lv2/q$b;Lcom/google/android/exoplayer2/i3;)Lh3/c0;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 2
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Lv2/o0;

    .line 3
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_0

    .line 4
    iget v9, v1, Lv2/q0;->a:I

    new-array v10, v9, [Lv2/o0;

    aput-object v10, v5, v8

    .line 5
    new-array v9, v9, [[I

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lh3/u;->m([Lcom/google/android/exoplayer2/w2;)[I

    move-result-object v4

    const/4 v8, 0x0

    .line 7
    :goto_1
    iget v9, v1, Lv2/q0;->a:I

    if-ge v8, v9, :cond_3

    .line 8
    invoke-virtual {v1, v8}, Lv2/q0;->b(I)Lv2/o0;

    move-result-object v9

    .line 9
    iget v10, v9, Lv2/o0;->c:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 10
    :goto_2
    invoke-static {p1, v9, v2, v10}, Lh3/u;->k([Lcom/google/android/exoplayer2/w2;Lv2/o0;[IZ)I

    move-result v10

    .line 11
    array-length v11, v0

    if-ne v10, v11, :cond_2

    .line 12
    iget v11, v9, Lv2/o0;->a:I

    new-array v11, v11, [I

    goto :goto_3

    .line 13
    :cond_2
    aget-object v11, v0, v10

    invoke-static {v11, v9}, Lh3/u;->l(Lcom/google/android/exoplayer2/w2;Lv2/o0;)[I

    move-result-object v11

    .line 14
    :goto_3
    aget v12, v2, v10

    .line 15
    aget-object v13, v5, v10

    aput-object v9, v13, v12

    .line 16
    aget-object v9, v6, v10

    aput-object v11, v9, v12

    .line 17
    aget v9, v2, v10

    add-int/2addr v9, v3

    aput v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 18
    :cond_3
    array-length v1, v0

    new-array v10, v1, [Lv2/q0;

    .line 19
    array-length v1, v0

    new-array v8, v1, [Ljava/lang/String;

    .line 20
    array-length v1, v0

    new-array v9, v1, [I

    .line 21
    :goto_4
    array-length v1, v0

    if-ge v7, v1, :cond_4

    .line 22
    aget v1, v2, v7

    .line 23
    new-instance v3, Lv2/q0;

    aget-object v11, v5, v7

    .line 24
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/l0;->A0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lv2/o0;

    invoke-direct {v3, v11}, Lv2/q0;-><init>([Lv2/o0;)V

    aput-object v3, v10, v7

    .line 25
    aget-object v3, v6, v7

    .line 26
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/l0;->A0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    aput-object v1, v6, v7

    .line 27
    aget-object v1, v0, v7

    invoke-interface {v1}, Lcom/google/android/exoplayer2/w2;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    .line 28
    aget-object v1, v0, v7

    invoke-interface {v1}, Lcom/google/android/exoplayer2/w2;->f()I

    move-result v1

    aput v1, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 29
    :cond_4
    array-length v1, v0

    aget v1, v2, v1

    .line 30
    new-instance v13, Lv2/q0;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 31
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/l0;->A0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/o0;

    invoke-direct {v13, v0}, Lv2/q0;-><init>([Lv2/o0;)V

    .line 32
    new-instance v0, Lh3/u$a;

    move-object v7, v0

    move-object v11, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v13}, Lh3/u$a;-><init>([Ljava/lang/String;[I[Lv2/q0;[I[[[ILv2/q0;)V

    move-object v7, p0

    move-object v8, v0

    move-object v9, v6

    move-object v10, v4

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 33
    invoke-virtual/range {v7 .. v12}, Lh3/u;->n(Lh3/u$a;[[[I[ILv2/q$b;Lcom/google/android/exoplayer2/i3;)Landroid/util/Pair;

    move-result-object v1

    .line 34
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lh3/v;

    invoke-static {v0, v2}, Lh3/a0;->a(Lh3/u$a;[Lh3/v;)Lcom/google/android/exoplayer2/n3;

    move-result-object v2

    .line 35
    new-instance v3, Lh3/c0;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Lcom/google/android/exoplayer2/x2;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lh3/s;

    invoke-direct {v3, v4, v1, v2, v0}, Lh3/c0;-><init>([Lcom/google/android/exoplayer2/x2;[Lh3/s;Lcom/google/android/exoplayer2/n3;Ljava/lang/Object;)V

    return-object v3
.end method

.method protected abstract n(Lh3/u$a;[[[I[ILv2/q$b;Lcom/google/android/exoplayer2/i3;)Landroid/util/Pair;
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
.end method

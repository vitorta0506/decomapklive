.class public abstract Lh3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/s;


# instance fields
.field protected final a:Lv2/o0;

.field protected final b:I

.field protected final c:[I

.field private final d:I

.field private final e:[Lcom/google/android/exoplayer2/k1;

.field private final f:[J

.field private g:I


# direct methods
.method public constructor <init>(Lv2/o0;[II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 3
    iput p3, p0, Lh3/c;->d:I

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lv2/o0;

    iput-object p3, p0, Lh3/c;->a:Lv2/o0;

    .line 5
    array-length p3, p2

    iput p3, p0, Lh3/c;->b:I

    .line 6
    new-array p3, p3, [Lcom/google/android/exoplayer2/k1;

    iput-object p3, p0, Lh3/c;->e:[Lcom/google/android/exoplayer2/k1;

    const/4 p3, 0x0

    .line 7
    :goto_1
    array-length v0, p2

    if-ge p3, v0, :cond_1

    .line 8
    iget-object v0, p0, Lh3/c;->e:[Lcom/google/android/exoplayer2/k1;

    aget v2, p2, p3

    invoke-virtual {p1, v2}, Lv2/o0;->b(I)Lcom/google/android/exoplayer2/k1;

    move-result-object v2

    aput-object v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p0, Lh3/c;->e:[Lcom/google/android/exoplayer2/k1;

    sget-object p3, Lh3/b;->a:Lh3/b;

    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 10
    iget p2, p0, Lh3/c;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lh3/c;->c:[I

    .line 11
    :goto_2
    iget p2, p0, Lh3/c;->b:I

    if-ge v1, p2, :cond_2

    .line 12
    iget-object p2, p0, Lh3/c;->c:[I

    iget-object p3, p0, Lh3/c;->e:[Lcom/google/android/exoplayer2/k1;

    aget-object p3, p3, v1

    invoke-virtual {p1, p3}, Lv2/o0;->c(Lcom/google/android/exoplayer2/k1;)I

    move-result p3

    aput p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lh3/c;->f:[J

    return-void
.end method

.method public static synthetic m(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;)I
    .locals 0

    invoke-static {p0, p1}, Lh3/c;->n(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;)I

    move-result p0

    return p0
.end method

.method private static synthetic n(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;)I
    .locals 0

    iget p1, p1, Lcom/google/android/exoplayer2/k1;->h:I

    iget p0, p0, Lcom/google/android/exoplayer2/k1;->h:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final b(I)Lcom/google/android/exoplayer2/k1;
    .locals 1

    iget-object v0, p0, Lh3/c;->e:[Lcom/google/android/exoplayer2/k1;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final c(I)I
    .locals 1

    iget-object v0, p0, Lh3/c;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public d(F)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
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

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lh3/c;

    .line 3
    iget-object v2, p0, Lh3/c;->a:Lv2/o0;

    iget-object v3, p1, Lh3/c;->a:Lv2/o0;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lh3/c;->c:[I

    iget-object p1, p1, Lh3/c;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

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

.method public synthetic f()V
    .locals 0

    invoke-static {p0}, Lh3/r;->a(Lh3/s;)V

    return-void
.end method

.method public final g(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lh3/c;->b:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lh3/c;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final h()Lv2/o0;
    .locals 1

    iget-object v0, p0, Lh3/c;->a:Lv2/o0;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lh3/c;->g:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lh3/c;->a:Lv2/o0;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lh3/c;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lh3/c;->g:I

    .line 3
    :cond_0
    iget v0, p0, Lh3/c;->g:I

    return v0
.end method

.method public synthetic i(Z)V
    .locals 0

    invoke-static {p0, p1}, Lh3/r;->b(Lh3/s;Z)V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public final k()Lcom/google/android/exoplayer2/k1;
    .locals 2

    iget-object v0, p0, Lh3/c;->e:[Lcom/google/android/exoplayer2/k1;

    invoke-interface {p0}, Lh3/s;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public synthetic l()V
    .locals 0

    invoke-static {p0}, Lh3/r;->c(Lh3/s;)V

    return-void
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Lh3/c;->c:[I

    array-length v0, v0

    return v0
.end method

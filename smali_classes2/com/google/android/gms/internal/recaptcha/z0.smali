.class public final Lcom/google/android/gms/internal/recaptcha/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/internal/recaptcha/xj;

.field private b:Lcom/google/android/gms/internal/recaptcha/yj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/xj;->z()Lcom/google/android/gms/internal/recaptcha/xj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z0;->a:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zj;->t()Lcom/google/android/gms/internal/recaptcha/yj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z0;->b:Lcom/google/android/gms/internal/recaptcha/yj;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/yj;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z0;->a:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/xj;->x()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzd()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z0;->b:Lcom/google/android/gms/internal/recaptcha/yj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/z9;->b()Lcom/google/android/gms/internal/recaptcha/w9;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [[B

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/z0;->a:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/xj;->x()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzs()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge p1, v2, :cond_0

    .line 5
    aget-object v6, v3, p1

    .line 6
    array-length v6, v6

    add-int/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-array p1, v4, [B

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 8
    aget-object v7, v3, v4

    .line 9
    array-length v8, v7

    invoke-static {v7, v5, p1, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/recaptcha/w9;->a([B)Lcom/google/android/gms/internal/recaptcha/v9;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/v9;->e()[B

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzn([B)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/yj;->o(Lcom/google/android/gms/internal/recaptcha/zzpy;)Lcom/google/android/gms/internal/recaptcha/yj;

    return-object v0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z0;->b:Lcom/google/android/gms/internal/recaptcha/yj;

    return-object p1
.end method

.method final b(I)Lcom/google/android/gms/internal/recaptcha/yj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z0;->b:Lcom/google/android/gms/internal/recaptcha/yj;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z0;->a:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/xj;->t()I

    move-result v1

    mul-int v1, v1, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z0;->a:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/xj;->u()I

    move-result p1

    add-int/2addr v1, p1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/yj;->p(I)Lcom/google/android/gms/internal/recaptcha/yj;

    return-object v0
.end method

.method final c(Lcom/google/android/gms/internal/recaptcha/zzkn;)Lcom/google/android/gms/internal/recaptcha/yj;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzkn<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/recaptcha/yj;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z0;->a:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/xj;->A()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v1, v2

    .line 4
    new-array v1, v1, [B

    .line 5
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzs()[B

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/f1;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/recaptcha/zzke;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    div-int/lit8 v2, v3, 0x8

    .line 9
    aget-byte v5, v1, v2

    rem-int/lit8 v6, v3, 0x8

    shl-int v6, v4, v6

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z0;->b:Lcom/google/android/gms/internal/recaptcha/yj;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzn([B)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/recaptcha/yj;->q(Lcom/google/android/gms/internal/recaptcha/zzpy;)Lcom/google/android/gms/internal/recaptcha/yj;

    return-object p1
.end method

.method final d(I)Lcom/google/android/gms/internal/recaptcha/yj;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z0;->a:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/xj;->w()I

    move-result v0

    if-eqz v0, :cond_0

    int-to-long v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z0;->a:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/xj;->v()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z0;->a:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/xj;->w()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/z0;->b:Lcom/google/android/gms/internal/recaptcha/yj;

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    .line 6
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/recaptcha/yj;->r(I)Lcom/google/android/gms/internal/recaptcha/yj;

    return-object v2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z0;->b:Lcom/google/android/gms/internal/recaptcha/yj;

    return-object p1
.end method

.method public final e()Lcom/google/android/gms/internal/recaptcha/zj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z0;->b:Lcom/google/android/gms/internal/recaptcha/yj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/zj;

    return-object v0
.end method

.method public final f(Lcom/google/android/gms/internal/recaptcha/xj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z0;->a:Lcom/google/android/gms/internal/recaptcha/xj;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zj;->t()Lcom/google/android/gms/internal/recaptcha/yj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z0;->b:Lcom/google/android/gms/internal/recaptcha/yj;

    return-void
.end method

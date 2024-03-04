.class public abstract Lcom/google/android/gms/internal/recaptcha/zzkn;
.super Lcom/google/android/gms/internal/recaptcha/zzke;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/zzke<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/recaptcha/zzkj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/zzke;-><init>()V

    return-void
.end method

.method static zzh(I)I
    .locals 6

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    return v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "collection too large"

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzj(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzkn;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzn(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzkn;

    move-result-object p0

    return-object p0
.end method

.method public static zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/recaptcha/zzkn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/recaptcha/zzkn<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 2
    array-length v0, p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzn(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzkn;

    move-result-object p0

    return-object p0
.end method

.method public static zzl()Lcom/google/android/gms/internal/recaptcha/zzkn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/recaptcha/zzkn<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/f9;->g:Lcom/google/android/gms/internal/recaptcha/f9;

    return-object v0
.end method

.method private static varargs zzn(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzkn;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/zzkn<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzh(I)I

    move-result v2

    .line 2
    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v3, p0, :cond_2

    .line 3
    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/recaptcha/y8;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 4
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 5
    invoke-static {v9}, Lcom/google/android/gms/internal/recaptcha/n8;->a(I)I

    move-result v10

    :goto_1
    and-int v11, v10, v7

    .line 6
    aget-object v12, v6, v11

    if-nez v12, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 7
    aput-object v4, p1, v8

    .line 8
    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_3

    .line 11
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/recaptcha/h9;

    .line 12
    invoke-direct {p1, p0, v5}, Lcom/google/android/gms/internal/recaptcha/h9;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 13
    :cond_3
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzh(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_4

    .line 14
    invoke-static {v8, p1}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzn(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzkn;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    array-length p0, p1

    shr-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v8, v0, :cond_5

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_5
    move-object v4, p1

    .line 16
    new-instance p0, Lcom/google/android/gms/internal/recaptcha/f9;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/recaptcha/f9;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    .line 17
    :cond_6
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/recaptcha/h9;

    .line 18
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/recaptcha/h9;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 19
    :cond_7
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/f9;->g:Lcom/google/android/gms/internal/recaptcha/f9;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/recaptcha/zzkn;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/zzkn;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzkn;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    if-ne p1, p0, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_5

    .line 6
    check-cast p1, Ljava/util/Set;

    .line 7
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_5

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :catch_0
    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/g9;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zze()Lcom/google/android/gms/internal/recaptcha/j9;

    move-result-object v0

    return-object v0
.end method

.method public zzd()Lcom/google/android/gms/internal/recaptcha/zzkj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zzkn;->zza:Lcom/google/android/gms/internal/recaptcha/zzkj;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzi()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zzkn;->zza:Lcom/google/android/gms/internal/recaptcha/zzkj;

    :cond_0
    return-object v0
.end method

.method public abstract zze()Lcom/google/android/gms/internal/recaptcha/j9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/j9<",
            "TE;>;"
        }
    .end annotation
.end method

.method zzi()Lcom/google/android/gms/internal/recaptcha/zzkj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzke;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzk([Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    return-object v0
.end method

.method zzm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

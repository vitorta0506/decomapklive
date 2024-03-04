.class final Lcom/google/android/gms/internal/recaptcha/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/recaptcha/ah;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/zzsh;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p0, v2, v0}, Lcom/google/android/gms/internal/recaptcha/ah;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/zzsh;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zzb()Lcom/google/android/gms/internal/recaptcha/zzsh;

    move-result-object p0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/zzsh;->zzd(Lcom/google/android/gms/internal/recaptcha/zzsh;)V

    :cond_1
    return-object p0
.end method

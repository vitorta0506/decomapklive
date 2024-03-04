.class public final Lcom/google/android/gms/internal/recaptcha/p2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/q3;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/v3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/recaptcha/u3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/recaptcha/q3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    .line 2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/p2;->a:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    .line 3
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/p2;->b:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/p2;->c:Ljava/util/List;

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/zzkj;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzq(I)Lcom/google/android/gms/internal/recaptcha/k9;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " with "

    const-string v4, "MobStore.FileStorage"

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/q3;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/recaptcha/q3;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, "Cannot register backend, name empty"

    .line 7
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/p2;->a:Ljava/util/Map;

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/recaptcha/q3;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/recaptcha/q3;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1e

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot override Backend "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/v3;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/v3;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "Cannot register transform, name empty"

    .line 13
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/p2;->b:Ljava/util/Map;

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/v3;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/v3;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x23

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot to override Transform "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/p2;->c:Ljava/util/List;

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final e(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/n2;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzj()Lcom/google/android/gms/internal/recaptcha/q8;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzj()Lcom/google/android/gms/internal/recaptcha/q8;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "transform="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/f8;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/f8;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/recaptcha/f8;->b()Lcom/google/android/gms/internal/recaptcha/f8;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/recaptcha/f8;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzm(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzo()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 7
    check-cast v6, Ljava/lang/String;

    .line 8
    invoke-static {v6}, Lcom/google/android/gms/internal/recaptcha/l3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/recaptcha/q8;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/q8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/q8;->f()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 10
    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/recaptcha/p2;->b:Ljava/util/Map;

    .line 11
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/recaptcha/v3;

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/recaptcha/q8;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/q8;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 13
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzew;

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x15

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No such transform: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzew;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/q8;->f()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzh()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/m2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/recaptcha/m2;-><init>(Lcom/google/android/gms/internal/recaptcha/k2;)V

    .line 16
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/recaptcha/m2;->g(Lcom/google/android/gms/internal/recaptcha/p2;)Lcom/google/android/gms/internal/recaptcha/m2;

    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/recaptcha/p2;->a:Ljava/util/Map;

    .line 18
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/recaptcha/q3;

    if-eqz v5, :cond_9

    .line 19
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/recaptcha/m2;->c(Lcom/google/android/gms/internal/recaptcha/q3;)Lcom/google/android/gms/internal/recaptcha/m2;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/p2;->c:Ljava/util/List;

    .line 20
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/recaptcha/m2;->e(Ljava/util/List;)Lcom/google/android/gms/internal/recaptcha/m2;

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/recaptcha/m2;->h(Ljava/util/List;)Lcom/google/android/gms/internal/recaptcha/m2;

    .line 22
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/recaptcha/m2;->f(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/m2;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    .line 24
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    .line 27
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 29
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 30
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/recaptcha/v3;

    .line 31
    invoke-interface {v4}, Lcom/google/android/gms/internal/recaptcha/v3;->D()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 32
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 34
    :cond_8
    :goto_5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/recaptcha/m2;->d(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/m2;

    new-instance p1, Lcom/google/android/gms/internal/recaptcha/n2;

    .line 35
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/recaptcha/n2;-><init>(Lcom/google/android/gms/internal/recaptcha/m2;)V

    return-object p1

    .line 36
    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/zzew;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    const-string v1, "Cannot open, unregistered backend: %s"

    .line 37
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/recaptcha/zzew;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lcom/google/android/gms/internal/recaptcha/o2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/recaptcha/o2<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/p2;->e(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/n2;

    move-result-object p1

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/recaptcha/o2;->a(Lcom/google/android/gms/internal/recaptcha/n2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/p2;->e(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/n2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->b()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->a()Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/recaptcha/q3;->f(Landroid/net/Uri;)V

    return-void
.end method

.method public final c(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/p2;->e(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/n2;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/p2;->e(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/n2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->b()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/recaptcha/n2;->b()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->b()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/recaptcha/n2;->a()Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/q3;->g(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/zzew;

    const-string p2, "Cannot rename file across backends"

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/zzew;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/p2;->e(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/n2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->b()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->a()Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/recaptcha/q3;->d(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

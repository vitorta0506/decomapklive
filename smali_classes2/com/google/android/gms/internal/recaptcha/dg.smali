.class public abstract Lcom/google/android/gms/internal/recaptcha/dg;
.super Lcom/google/android/gms/internal/recaptcha/ge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/recaptcha/zf<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/recaptcha/ge<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/recaptcha/dg<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/recaptcha/li;

.field protected zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/dg;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/ge;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/li;->c()Lcom/google/android/gms/internal/recaptcha/li;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/dg;->zzc:Lcom/google/android/gms/internal/recaptcha/li;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/dg;->zzd:I

    return-void
.end method

.method static varargs j(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 10
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static k(Lcom/google/android/gms/internal/recaptcha/gh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/rh;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/rh;-><init>(Lcom/google/android/gms/internal/recaptcha/gh;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static l(Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/recaptcha/dg;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/dg;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static p(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/dg;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/recaptcha/dg;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/dg;->zzb:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/dg;

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/dg;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 5
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/vi;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/dg;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/recaptcha/dg;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method static q(Lcom/google/android/gms/internal/recaptcha/dg;Lcom/google/android/gms/internal/recaptcha/bf;Lcom/google/android/gms/internal/recaptcha/pf;)Lcom/google/android/gms/internal/recaptcha/dg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/recaptcha/dg<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/recaptcha/bf;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/recaptcha/zzrr;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/cf;->V(Lcom/google/android/gms/internal/recaptcha/bf;)Lcom/google/android/gms/internal/recaptcha/cf;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/uh;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;Lcom/google/android/gms/internal/recaptcha/pf;)V

    .line 6
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/recaptcha/uh;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/recaptcha/zzrr; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/recaptcha/zzrr;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/recaptcha/zzrr;

    throw p0

    .line 9
    :cond_0
    throw p0

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/recaptcha/zzrr;

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/recaptcha/zzrr;

    throw p0

    .line 12
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/recaptcha/zzrr;

    .line 13
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/recaptcha/zzrr;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzh(Lcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/zzrr;

    throw p2

    :catch_2
    move-exception p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzl()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/recaptcha/zzrr;

    .line 15
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/recaptcha/zzrr;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 16
    :cond_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzh(Lcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/zzrr;

    throw p1
.end method

.method protected static r()Lcom/google/android/gms/internal/recaptcha/ig;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/eg;->f()Lcom/google/android/gms/internal/recaptcha/eg;

    move-result-object v0

    return-object v0
.end method

.method protected static s()Lcom/google/android/gms/internal/recaptcha/lg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/recaptcha/lg<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/qh;->d()Lcom/google/android/gms/internal/recaptcha/qh;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final H()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/recaptcha/uh;->h(Ljava/lang/Object;)Z

    move-result v2

    if-eq v0, v2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    const/4 v3, 0x2

    .line 4
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public final K()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/dg;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/recaptcha/uh;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/dg;->zzd:I

    :cond_0
    return v0
.end method

.method public final M()Lcom/google/android/gms/internal/recaptcha/nh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/nh<",
            "TMessageType;>;"
        }
    .end annotation

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/nh;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/recaptcha/hf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/if;->L(Lcom/google/android/gms/internal/recaptcha/hf;)Lcom/google/android/gms/internal/recaptcha/if;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/uh;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V

    return-void
.end method

.method public final bridge synthetic b()Lcom/google/android/gms/internal/recaptcha/fh;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/zf;

    return-object v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/dg;->zzd:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/dg;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/uh;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/recaptcha/fh;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/zf;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/recaptcha/zf;->k(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/zf;

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/recaptcha/gh;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/dg;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ge;->zza:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/recaptcha/uh;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/ge;->zza:I

    return v0
.end method

.method final i(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/dg;->zzd:I

    return-void
.end method

.method protected abstract m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected final n()Lcom/google/android/gms/internal/recaptcha/zf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/recaptcha/dg<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/recaptcha/zf<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/zf;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/recaptcha/zf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/zf;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/recaptcha/zf;->k(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/zf;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/recaptcha/ih;->a(Lcom/google/android/gms/internal/recaptcha/gh;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

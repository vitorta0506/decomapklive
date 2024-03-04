.class public abstract Lcom/google/android/gms/internal/measurement/x8;
.super Lcom/google/android/gms/internal/measurement/i7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/x8<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/u8<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/i7<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/measurement/cb;

.field protected zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/x8;->zza:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/i7;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/cb;->c()Lcom/google/android/gms/internal/measurement/cb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x8;->zzc:Lcom/google/android/gms/internal/measurement/cb;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/x8;->zzd:I

    return-void
.end method

.method protected static k()Lcom/google/android/gms/internal/measurement/b9;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/y8;->f()Lcom/google/android/gms/internal/measurement/y8;

    move-result-object v0

    return-object v0
.end method

.method protected static l()Lcom/google/android/gms/internal/measurement/c9;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/p9;->d()Lcom/google/android/gms/internal/measurement/p9;

    move-result-object v0

    return-object v0
.end method

.method protected static m(Lcom/google/android/gms/internal/measurement/c9;)Lcom/google/android/gms/internal/measurement/c9;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/c9;->V(I)Lcom/google/android/gms/internal/measurement/c9;

    move-result-object p0

    return-object p0
.end method

.method protected static n()Lcom/google/android/gms/internal/measurement/d9;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->d()Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    return-object v0
.end method

.method protected static o(Lcom/google/android/gms/internal/measurement/d9;)Lcom/google/android/gms/internal/measurement/d9;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/d9;->j(I)Lcom/google/android/gms/internal/measurement/d9;

    move-result-object p0

    return-object p0
.end method

.method static varargs p(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method protected static q(Lcom/google/android/gms/internal/measurement/z9;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ja;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ja;-><init>(Lcom/google/android/gms/internal/measurement/z9;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static r(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/x8;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/x8;->zza:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static u(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/x8;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/x8;->zza:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/x8;

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

    check-cast v1, Lcom/google/android/gms/internal/measurement/x8;

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
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/x8;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/x8;->v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/measurement/x8;

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


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/internal/measurement/y9;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/x8;->v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/u8;

    return-object v0
.end method

.method public final synthetic b()Lcom/google/android/gms/internal/measurement/y9;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/x8;->v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/u8;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/u8;->m(Lcom/google/android/gms/internal/measurement/x8;)Lcom/google/android/gms/internal/measurement/u8;

    return-object v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/x8;->zzd:I

    return v0
.end method

.method public final d(Lcom/google/android/gms/internal/measurement/f8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->a()Lcom/google/android/gms/internal/measurement/ha;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ka;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/g8;->a(Lcom/google/android/gms/internal/measurement/f8;)Lcom/google/android/gms/internal/measurement/g8;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/ka;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;)V

    return-void
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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->a()Lcom/google/android/gms/internal/measurement/ha;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ka;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/x8;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/ka;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f()Lcom/google/android/gms/internal/measurement/z9;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/x8;->v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/x8;

    return-object v0
.end method

.method public final g()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/x8;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->a()Lcom/google/android/gms/internal/measurement/ha;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ka;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/ka;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/x8;->zzd:I

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/i7;->zzb:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->a()Lcom/google/android/gms/internal/measurement/ha;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ka;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/ka;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/i7;->zzb:I

    return v0
.end method

.method final i(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/x8;->zzd:I

    return-void
.end method

.method protected final s()Lcom/google/android/gms/internal/measurement/u8;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/x8;->v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/u8;

    return-object v0
.end method

.method public final t()Lcom/google/android/gms/internal/measurement/u8;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/x8;->v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/u8;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/u8;->m(Lcom/google/android/gms/internal/measurement/x8;)Lcom/google/android/gms/internal/measurement/u8;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ba;->a(Lcom/google/android/gms/internal/measurement/z9;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

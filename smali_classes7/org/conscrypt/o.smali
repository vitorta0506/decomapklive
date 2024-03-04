.class final Lorg/conscrypt/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/o$a;
    }
.end annotation


# direct methods
.method private static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/conscrypt/n;->c:Lorg/conscrypt/n$b;

    invoke-virtual {v0}, Lorg/conscrypt/n$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/lang/ClassLoader;
    .locals 1

    const-class v0, Lorg/conscrypt/NativeCrypto;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method static c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lorg/conscrypt/o;->b()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 3
    invoke-static {}, Lorg/conscrypt/o;->f()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "conscrypt_openjdk_jni"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "conscrypt"

    aput-object v4, v2, v3

    .line 4
    invoke-static {v1, v0, v2}, Lorg/conscrypt/p;->i(Ljava/lang/ClassLoader;Ljava/util/List;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lorg/conscrypt/o;->d(Ljava/util/List;)V

    .line 6
    invoke-static {v0}, Lorg/conscrypt/o;->g(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/conscrypt/p$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/p$c;

    .line 2
    invoke-virtual {v0}, Lorg/conscrypt/p$c;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/conscrypt/n;->b:Lorg/conscrypt/n$c;

    invoke-virtual {v0}, Lorg/conscrypt/n$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conscrypt_openjdk_jni-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/conscrypt/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/conscrypt/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/conscrypt/p$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/conscrypt/o$a;->a:Lorg/conscrypt/o$a;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/p$c;

    iget-object v0, v0, Lorg/conscrypt/p$c;->e:Ljava/lang/Throwable;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/p$c;

    .line 4
    iget-object v1, v1, Lorg/conscrypt/p$c;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p0, v0, Ljava/lang/Error;

    if-eqz p0, :cond_1

    .line 6
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    throw p0
.end method

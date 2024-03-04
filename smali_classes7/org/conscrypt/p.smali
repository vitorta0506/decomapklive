.class final Lorg/conscrypt/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/p$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/io/File;

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/conscrypt/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/p;->a:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lorg/conscrypt/p;->g()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lorg/conscrypt/n;->c()Ljava/io/File;

    move-result-object v0

    .line 4
    :cond_0
    sput-object v0, Lorg/conscrypt/p;->b:Ljava/io/File;

    const-string v1, "-D{0}: {1}"

    const-string v2, "org.conscrypt.native.workdir"

    .line 5
    invoke-static {v1, v2, v0}, Lorg/conscrypt/p;->o(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "org.conscrypt.native.deleteLibAfterLoading"

    const-string v1, "true"

    .line 6
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lorg/conscrypt/p;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/conscrypt/p;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/conscrypt/p;->o(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static c(Ljava/lang/Class;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 7
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v3}, Lorg/conscrypt/p;->d(Ljava/io/Closeable;)V

    .line 11
    invoke-static {v2}, Lorg/conscrypt/p;->d(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_1
    invoke-static {v3}, Lorg/conscrypt/p;->d(Ljava/io/Closeable;)V

    .line 14
    invoke-static {v2}, Lorg/conscrypt/p;->d(Ljava/io/Closeable;)V

    throw p0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static e(Ljava/net/URL;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x2000

    :try_start_2
    new-array p1, p1, [B

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    invoke-static {p0}, Lorg/conscrypt/p;->d(Ljava/io/Closeable;)V

    .line 7
    invoke-static {v1}, Lorg/conscrypt/p;->d(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v1, v0

    .line 8
    :goto_2
    invoke-static {v0}, Lorg/conscrypt/p;->d(Ljava/io/Closeable;)V

    .line 9
    invoke-static {v1}, Lorg/conscrypt/p;->d(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lorg/conscrypt/p;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static g()Ljava/io/File;
    .locals 4

    const-string v0, "org.conscrypt.native.workdir"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "Unable to find or create working directory: {0}"

    .line 4
    invoke-static {v2, v0}, Lorg/conscrypt/p;->n(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2
.end method

.method private static h(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lorg/conscrypt/p$c;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/conscrypt/p;->j(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, p0, v1, p2}, Lorg/conscrypt/p;->k(Ljava/lang/ClassLoader;Ljava/lang/String;ZLjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static varargs i(Ljava/lang/ClassLoader;Ljava/util/List;[Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lorg/conscrypt/p$c;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 2
    invoke-static {v3, p0, p1}, Lorg/conscrypt/p;->h(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static j(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lorg/conscrypt/p$c;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF/native/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, Lorg/conscrypt/n;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, ".jnilib"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "META-INF/native/lib"

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dynlib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x2e

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 9
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 11
    :try_start_0
    sget-object v6, Lorg/conscrypt/p;->b:Ljava/io/File;

    invoke-static {v4, v0, v6}, Lorg/conscrypt/a0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Lorg/conscrypt/a0;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "{0} exists but cannot be executed even when execute permissions set; check volume for \"noexec\" flag; use -D{1}=[path] to set native working directory separately."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v4, "org.conscrypt.native.workdir"

    aput-object v4, v2, v5

    .line 15
    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    :goto_1
    invoke-static {v2, v3}, Lorg/conscrypt/p;->e(Ljava/net/URL;Ljava/io/File;)V

    .line 17
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5, p2}, Lorg/conscrypt/p;->k(Ljava/lang/ClassLoader;Ljava/lang/String;ZLjava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    sget-boolean p1, Lorg/conscrypt/p;->c:Z

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_5
    if-nez v1, :cond_6

    .line 20
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    :cond_6
    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v2, "Failed creating temp file ({0})"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 22
    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 24
    invoke-static {p0, v5, v1, p1}, Lorg/conscrypt/p$c;->a(Ljava/lang/String;ZZLjava/lang/Throwable;)Lorg/conscrypt/p$c;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_8

    .line 25
    sget-boolean p0, Lorg/conscrypt/p;->c:Z

    if-eqz p0, :cond_7

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p0

    goto :goto_2

    :cond_7
    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_8

    .line 27
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    :cond_8
    return v1

    :goto_3
    if-eqz v3, :cond_a

    .line 28
    sget-boolean p1, Lorg/conscrypt/p;->c:Z

    if-eqz p1, :cond_9

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_9
    if-nez v1, :cond_a

    .line 30
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 31
    :cond_a
    throw p0
.end method

.method private static k(Ljava/lang/ClassLoader;Ljava/lang/String;ZLjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lorg/conscrypt/p$c;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lorg/conscrypt/q;

    invoke-static {p0, v0}, Lorg/conscrypt/p;->q(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0, p1, p2}, Lorg/conscrypt/p;->m(Ljava/lang/Class;Ljava/lang/String;Z)Lorg/conscrypt/p$c;

    move-result-object p0

    .line 3
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean p0, p0, Lorg/conscrypt/p$c;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 5
    :catch_0
    :cond_0
    invoke-static {p1, p2}, Lorg/conscrypt/p;->l(Ljava/lang/String;Z)Lorg/conscrypt/p$c;

    move-result-object p0

    .line 6
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean p0, p0, Lorg/conscrypt/p$c;->c:Z

    return p0
.end method

.method private static l(Ljava/lang/String;Z)Lorg/conscrypt/p$c;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/q;->a(Ljava/lang/String;Z)V

    .line 2
    invoke-static {p0, p1, v0}, Lorg/conscrypt/p$c;->b(Ljava/lang/String;ZZ)Lorg/conscrypt/p$c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {p0, p1, v0, v1}, Lorg/conscrypt/p$c;->a(Ljava/lang/String;ZZLjava/lang/Throwable;)Lorg/conscrypt/p$c;

    move-result-object p0

    return-object p0
.end method

.method private static m(Ljava/lang/Class;Ljava/lang/String;Z)Lorg/conscrypt/p$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/conscrypt/p$c;"
        }
    .end annotation

    new-instance v0, Lorg/conscrypt/p$a;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/p$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/p$c;

    return-object p0
.end method

.method private static n(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lorg/conscrypt/p;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static o(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lorg/conscrypt/p;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, p0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/conscrypt/p;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static q(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-static {p1}, Lorg/conscrypt/p;->c(Ljava/lang/Class;)[B

    move-result-object v0

    .line 3
    new-instance v1, Lorg/conscrypt/p$b;

    invoke-direct {v1, p0, p1, v0}, Lorg/conscrypt/p$b;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;[B)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

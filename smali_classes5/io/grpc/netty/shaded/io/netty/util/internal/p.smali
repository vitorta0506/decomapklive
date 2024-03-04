.class public final Lio/grpc/netty/shaded/io/netty/util/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/internal/p$c;
    }
.end annotation


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final b:Ljava/io/File;

.field private static final c:Z

.field private static final d:Z

.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/p;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    const-string v2, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/p;->e:[B

    const-string v1, "io.grpc.netty.shaded.io.netty.native.workdir"

    .line 4
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-Dio.netty.native.workdir: "

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/p;->b:Ljava/io/File;

    .line 9
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T0()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/p;->b:Ljava/io/File;

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (io.netty.tmpdir)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    :goto_0
    const-string v0, "io.grpc.netty.shaded.io.netty.native.deleteLibAfterLoading"

    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c:Z

    .line 13
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "-Dio.netty.native.deleteLibAfterLoading: {}"

    invoke-interface {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "io.grpc.netty.shaded.io.netty.native.tryPatchShadedId"

    .line 14
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/p;->d:Z

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "-Dio.netty.native.tryPatchShadedId: {}"

    invoke-interface {v2, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io!netty!util!internal!NativeLibraryLoader"

    const/16 v2, 0x21

    const/16 v3, 0x2e

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "Could not find prefix added to %s to get %s. When shading, only adding a package prefix is supported"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static b(Ljava/lang/Class;)[B
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
    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c(Ljava/io/Closeable;)V

    .line 11
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c(Ljava/io/Closeable;)V

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
    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c(Ljava/io/Closeable;)V

    .line 14
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c(Ljava/io/Closeable;)V

    .line 15
    throw p0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Ljava/io/Closeable;)V
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

.method private static d(I)[B
    .locals 5

    .line 1
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 2
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/p;->e:[B

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Q0()Ljava/util/Random;

    move-result-object v3

    array-length v4, v2

    .line 3
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    .line 5
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URL;

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple resources found for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred while getting the resources for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 10

    const-string v0, ".jnilib"

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 4
    :try_start_0
    invoke-static {p1, v3, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->h(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v6

    .line 5
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v3}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "META-INF/native/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {v7, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->e(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_3

    .line 9
    :try_start_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->g0()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 10
    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v8, "META-INF/native/lib"

    if-eqz v7, :cond_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".dynlib"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_0
    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->e(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->c(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 14
    throw p0

    .line 15
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->c(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 17
    throw p0

    .line 18
    :cond_3
    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 19
    invoke-virtual {v6, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v6, Lio/grpc/netty/shaded/io/netty/util/internal/p;->b:Ljava/io/File;

    invoke-static {v2, v0, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->s(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 22
    :try_start_3
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 23
    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v7, 0x2000

    :try_start_5
    new-array v7, v7, [B

    .line 24
    :goto_2
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_4

    .line 25
    invoke-virtual {v6, v7, v5, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 26
    :cond_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 27
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->m(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    :cond_5
    invoke-static {v6}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 30
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p1, p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->h(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 31
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c(Ljava/io/Closeable;)V

    .line 32
    invoke-static {v9}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c(Ljava/io/Closeable;)V

    .line 33
    sget-boolean p0, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c:Z

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_7

    .line 34
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_7
    return-void

    :catchall_1
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v6, v9

    goto/16 :goto_8

    :catch_2
    move-exception p0

    move-object v6, v9

    :goto_3
    move-object v9, v2

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v6, v9

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v6, v9

    goto/16 :goto_9

    :catch_4
    move-exception p0

    move-object v6, v9

    goto :goto_5

    :catch_5
    move-exception p0

    move-object v2, v9

    move-object v6, v2

    :goto_4
    move-object v9, v0

    goto :goto_6

    :catchall_4
    move-exception p0

    move-object v0, v9

    move-object v6, v0

    goto :goto_9

    :catch_6
    move-exception p0

    move-object v0, v9

    move-object v6, v0

    .line 35
    :goto_5
    :try_start_7
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not load a native library: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 37
    invoke-static {p1, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->c(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 38
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception p0

    goto :goto_9

    :catch_7
    move-exception p0

    move-object v2, v9

    move-object v6, v2

    :goto_6
    if-eqz v9, :cond_8

    .line 39
    :try_start_8
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 40
    invoke-static {v9}, Lio/grpc/netty/shaded/io/netty/util/internal/p$c;->a(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 41
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v0, "{} exists but cannot be executed even when execute permissions set; check volume for \"noexec\" flag; use -D{}=[path] to set native working directory separately."

    .line 42
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "io.grpc.netty.shaded.io.netty.native.workdir"

    .line 43
    invoke-interface {p1, v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p1

    .line 44
    :try_start_9
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "Error checking if {} is on a file store mounted with noexec"

    invoke-interface {v0, v1, v9, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    :cond_8
    :goto_7
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->c(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 47
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception p0

    move-object v0, v9

    :goto_8
    move-object v9, v2

    .line 48
    :goto_9
    invoke-static {v9}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c(Ljava/io/Closeable;)V

    .line 49
    invoke-static {v6}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c(Ljava/io/Closeable;)V

    if-eqz v0, :cond_a

    .line 50
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/p;->c:Z

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_a

    .line 51
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 52
    :cond_a
    throw p0
.end method

.method public static varargs g(Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    :try_start_0
    invoke-static {v3, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->f(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 4
    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v5, "Loaded library with name \'{}\'"

    invoke-interface {v4, v5, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v3

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load any of the given libraries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->c(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 9
    throw p0
.end method

.method private static h(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "Successfully loaded the library {}"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    const-class v2, Lio/grpc/netty/shaded/io/netty/util/internal/q;

    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->n(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->i(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 3
    sget-object p0, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    move-object v1, p0

    .line 4
    :try_start_1
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/q;->a(Ljava/lang/String;Z)V

    .line 5
    sget-object p0, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 6
    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 7
    throw p0

    :goto_1
    if-eqz v1, :cond_0

    .line 8
    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    invoke-static {p1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->j(Ljava/lang/String;Ljava/lang/NoSuchMethodError;)V

    :goto_2
    return-void
.end method

.method private static i(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/p$a;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/p$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of p1, p0, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 3
    check-cast p0, Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    instance-of p2, p1, Ljava/lang/UnsatisfiedLinkError;

    if-eqz p2, :cond_0

    .line 6
    check-cast p1, Ljava/lang/UnsatisfiedLinkError;

    throw p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw p1

    :cond_1
    return-void
.end method

.method private static j(Ljava/lang/String;Ljava/lang/NoSuchMethodError;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/LinkageError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Possible multiple incompatible native libraries on the classpath for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3
    :cond_0
    throw p1
.end method

.method private static k(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/p;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->g0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static l(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Execution of \'{}\' failed."

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v4, "Execution of \'{}\' failed: {}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v4, "Execution of \'{}\' succeed: {}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    .line 4
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v3, v0, p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 5
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/p;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v3, v0, p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return v1
.end method

.method static m(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->d(I)[B

    move-result-object p1

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install_name_tool -id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->l(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "codesign -s - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->l(Ljava/lang/String;)Z

    return-void
.end method

.method private static n(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
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

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 2
    :try_start_1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->b(Ljava/lang/Class;)[B

    move-result-object v1

    .line 3
    new-instance v2, Lio/grpc/netty/shaded/io/netty/util/internal/p$b;

    invoke-direct {v2, p0, p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/p$b;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;[B)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 4
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 5
    throw p0

    :catch_2
    move-exception p0

    .line 6
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 7
    throw p0

    :catch_3
    move-exception p0

    .line 8
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 9
    throw p0

    .line 10
    :cond_0
    throw v0
.end method

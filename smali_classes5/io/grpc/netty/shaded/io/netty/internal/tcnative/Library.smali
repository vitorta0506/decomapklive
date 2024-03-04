.class public final Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "netty_tcnative"

    const-string v1, "libnetty_tcnative"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;

    .line 3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Exception;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/NullPointerException;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/IllegalArgumentException;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/OutOfMemoryError;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, [B

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/b;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateCallback;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/d;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/c;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->e(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "java.library.path"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    sget-object v5, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->a:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_4

    .line 6
    :try_start_0
    aget-object v5, v5, v3

    invoke-static {v5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception v5

    .line 7
    sget-object v6, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->a:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 8
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_1

    .line 9
    new-instance v8, Ljava/io/File;

    aget-object v9, v0, v7

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    if-lez v3, :cond_2

    const-string v6, ", "

    .line 12
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    throw v0

    :catch_1
    move-exception v0

    .line 15
    throw v0

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    return-void

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "provided"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io!netty!internal!tcnative!Library"

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

.method private static native aprHasThreads()Z
.end method

.method private static native aprMajorVersion()I
.end method

.method private static native aprVersionString()Ljava/lang/String;
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    sput-object p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->aprMajorVersion()I

    move-result p0

    if-lt p0, v1, :cond_2

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->aprHasThreads()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/UnsatisfiedLinkError;

    const-string p1, "Missing APR_HAS_THREADS"

    invoke-direct {p0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/UnsatisfiedLinkError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported APR Version ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->aprVersionString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->initialize0()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->initialize(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private static c(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static varargs e(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->d(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static native initialize0()Z
.end method

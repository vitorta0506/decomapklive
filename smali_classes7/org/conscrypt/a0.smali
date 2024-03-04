.class final Lorg/conscrypt/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/conscrypt/a0;->j()I

    move-result v0

    sput v0, Lorg/conscrypt/a0;->a:I

    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Ljava/security/spec/ECParameterSpec;

    const-string v2, "getCurveName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    sput-object v0, Lorg/conscrypt/a0;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method static a(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v0

    .line 3
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 4
    invoke-static {v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x2710

    if-ge v4, v5, :cond_2

    .line 4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p1, v6, v7

    const-string v7, "%s%d%04d%s"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to create temporary file: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v2, :cond_3

    .line 10
    throw v2

    .line 11
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to create temporary file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static c()Ljava/security/KeyStore;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "TrustManagerFactory.PKIX"

    .line 3
    invoke-static {v2}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v2

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 5
    invoke-static {v6}, Lorg/conscrypt/i;->d(Ljava/security/Provider;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_3

    :cond_0
    :try_start_1
    const-string v7, "PKIX"

    .line 6
    invoke-static {v7, v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 7
    invoke-virtual {v6, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 8
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    .line 9
    array-length v7, v6

    if-lez v7, :cond_3

    .line 10
    array-length v7, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_1
    if-ge v9, v7, :cond_2

    aget-object v11, v6, v9

    .line 11
    instance-of v12, v11, Ljavax/net/ssl/X509TrustManager;

    if-eqz v12, :cond_1

    .line 12
    check-cast v11, Ljavax/net/ssl/X509TrustManager;

    .line 13
    invoke-interface {v11}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    add-int/lit8 v15, v10, 0x1

    .line 14
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v14}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v13, v13, 0x1

    move v10, v15

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-le v10, v8, :cond_3

    goto :goto_4

    :catch_1
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-object v0
.end method

.method public static d()Lorg/conscrypt/k;
    .locals 1

    invoke-static {}, Lorg/conscrypt/s;->b()Lorg/conscrypt/s;

    move-result-object v0

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    const-string v0, "Conscrypt"

    return-object v0
.end method

.method static f(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lorg/conscrypt/a0$a;

    invoke-direct {v0}, Lorg/conscrypt/a0$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static h()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.Application"

    invoke-static {}, Lorg/conscrypt/a0;->g()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :catchall_0
    return v0
.end method

.method static i(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "conscrypt.ct.enable"

    .line 1
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "\\."

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "conscrypt.ct.enforce"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_2
    const-string v3, "."

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_4
    :goto_1
    return v0
.end method

.method private static j()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/conscrypt/a0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lorg/conscrypt/a0;->l()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static k(Ljava/lang/String;)I
    .locals 4

    const-string v0, "\\."

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 4
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    aget p0, v0, v1

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 6
    aget p0, v0, v2

    return p0

    .line 7
    :cond_1
    aget p0, v0, v1

    return p0
.end method

.method private static l()I
    .locals 2

    const-string v0, "java.specification.version"

    const-string v1, "1.6"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/a0;->k(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static m()Lorg/conscrypt/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static n()Lorg/conscrypt/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static o()Lgl/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static p(Lgl/a;)Lgl/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method static r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static s(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static t()V
    .locals 0

    return-void
.end method

.method static u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

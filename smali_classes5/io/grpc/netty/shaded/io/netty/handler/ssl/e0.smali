.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final b:Ljava/lang/Throwable;

.field static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Z

.field private static final h:Z

.field private static final i:Z

.field private static final j:Z

.field private static final k:Z

.field static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final m:[Ljava/lang/String;

.field static final n:Ljava/lang/String;

.field static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const-string v1, "io.grpc.netty.shaded.io.netty.handler.ssl.openssl.useKeyManagerFactory"

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    sput-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "x25519"

    const-string v4, "secp256r1"

    const-string v5, "secp384r1"

    const-string v6, "secp521r1"

    .line 2
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->p:[Ljava/lang/String;

    const-string v3, "io.grpc.netty.shaded.io.netty.handler.ssl.noOpenSsl"

    const/4 v4, 0x0

    .line 3
    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, " will be unavailable."

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "OpenSSL was explicit disabled with -Dio.netty.handler.ssl.noOpenSsl=true"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netty-tcnative explicit disabled; "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/o0;

    .line 6
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_0
    :try_start_0
    const-string v2, "io.grpc.netty.shaded.io.netty.internal.tcnative.SSLContext"

    .line 8
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 9
    invoke-static {v2, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netty-tcnative not in the classpath; "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/o0;

    .line 11
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-interface {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_3

    .line 13
    :try_start_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 14
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load netty-tcnative; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/o0;

    .line 15
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " will be unavailable, unless the application has already loaded the symbols by some other means. See https://netty.io/wiki/forked-tomcat-native.html for more information."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-interface {v0, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    const-string v0, "io.grpc.netty.shaded.io.netty.handler.ssl.openssl.engine"

    .line 17
    invoke-static {v0, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 18
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v5, "Initialize netty-tcnative using engine: \'default\'"

    invoke-interface {v3, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_1
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v5, "Initialize netty-tcnative using engine: \'{}\'"

    invoke-interface {v3, v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    :goto_2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->f(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    if-nez v2, :cond_2

    move-object v2, v0

    .line 21
    :cond_2
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to initialize netty-tcnative; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/o0;

    .line 22
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " will be unavailable. See https://netty.io/wiki/forked-tomcat-native.html for more information."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-interface {v3, v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 24
    :cond_3
    :goto_3
    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->b:Ljava/lang/Throwable;

    const-string v2, ""

    if-nez v0, :cond_27

    .line 25
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->versionString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "netty-tcnative using native library: {}"

    invoke-interface {v0, v5, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v5, Ljava/util/LinkedHashSet;

    const/16 v0, 0x80

    invoke-direct {v5, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 28
    sget-object v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->p:[Ljava/lang/String;

    .line 29
    array-length v8, v7

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 30
    :goto_4
    array-length v10, v7

    if-ge v9, v10, :cond_4

    .line 31
    aget-object v10, v7, v9

    invoke-static {v10}, Lio/grpc/netty/shaded/io/netty/handler/ssl/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 32
    :cond_4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->t()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BoringSSL"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    sput-boolean v9, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->k:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_6

    const-string v2, "TLS_AES_128_GCM_SHA256"

    const-string v9, "TLS_AES_256_GCM_SHA384"

    const-string v11, "TLS_CHACHA20_POLY1305_SHA256"

    .line 33
    filled-new-array {v2, v9, v11}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->m:[Ljava/lang/String;

    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    array-length v0, v2

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v0, :cond_5

    aget-object v12, v2, v11

    .line 36
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 37
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 38
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->n:Ljava/lang/String;

    goto :goto_6

    .line 39
    :cond_6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->m:[Ljava/lang/String;

    .line 40
    sput-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->n:Ljava/lang/String;

    :goto_6
    const/16 v0, 0x3f

    .line 41
    :try_start_3
    invoke-static {v0, v10}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .line 42
    :try_start_4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->JDK:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->isTlsv13Supported(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_16

    if-eqz v0, :cond_a

    .line 43
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 45
    sget-boolean v13, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->k:Z

    invoke-static {v9, v13}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h;->i(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 46
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 47
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_9

    const/4 v0, 0x0

    goto :goto_8

    .line 48
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0, v10}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_16

    const/4 v0, 0x1

    :goto_8
    move v2, v0

    goto :goto_9

    :catch_1
    :cond_a
    const/4 v2, 0x0

    :goto_9
    :try_start_6
    const-string v0, "ALL"

    .line 50
    invoke-static {v11, v12, v0, v4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    .line 51
    invoke-static {v11, v12, v10}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->newSSL(JZ)J

    move-result-wide v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_15

    const-wide/16 v21, 0x0

    .line 52
    :try_start_7
    invoke-static/range {v19 .. v20}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getCiphers(J)[Ljava/lang/String;

    move-result-object v0

    array-length v9, v0

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v9, :cond_d

    aget-object v14, v0, v13

    if-eqz v14, :cond_c

    .line 53
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_c

    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    if-nez v2, :cond_b

    .line 54
    invoke-static {v14}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->i(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    goto :goto_b

    .line 55
    :cond_b
    invoke-interface {v5, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 56
    :cond_d
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->k:Z

    if-eqz v0, :cond_e

    .line 57
    sget-object v9, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->m:[Ljava/lang/String;

    invoke-static {v5, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v9, "AEAD-AES128-GCM-SHA256"

    const-string v13, "AEAD-AES256-GCM-SHA384"

    const-string v14, "AEAD-CHACHA20-POLY1305-SHA256"

    .line 58
    filled-new-array {v9, v13, v14}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_e
    const-string v9, "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCCBtayYNDrM3NFnkBbwTd6gaWp\na84ENvkWzWgFGtVAe5iZUChqrAPNdgnQs7Brb3cCBYRDWOlxtnaGmhhDOoRkFMucWEyuFEWUfops\nk0PxjfeRn+JJUEEO4Zt1JslKGUz7hbBD0gCyjgxni9bdLWK/l8YakuBu1dGYF/9FTyiY3QaKOW9a\nUtYdaKMs3zFC3JIW4FDuyxbxFwoBqvLelSbpRRAH4KjqWd+2LRPNqDw+COEAmrZnfBuwZGc/ZhK9\nihorqrOYddFiWn8/GuMEBkCaQsmzhhOb9cUX5+R5jHiL3OodvKid7nJ6tGJuwdpdlYudQv6sWh4x\n0q+vRVLewaaFAgMBAAECggEAP8tPJvFtTxhNJAkCloHz0D0vpDHqQBMgntlkgayqmBqLwhyb18pR\ni0qwgh7HHc7wWqOOQuSqlEnrWRrdcI6TSe8R/sErzfTQNoznKWIPYcI/hskk4sdnQ//Yn9/Jvnsv\nU/BBjOTJxtD+sQbhAl80JcA3R+5sArURQkfzzHOL/YMqzAsn5hTzp7HZCxUqBk3KaHRxV7NefeOE\nxlZuWSmxYWfbFIs4kx19/1t7h8CHQWezw+G60G2VBtSBBxDnhBWvqG6R/wpzJ3nEhPLLY9T+XIHe\nipzdMOOOUZorfIg7M+pyYPji+ZIZxIpY5OjrOzXHciAjRtr5Y7l99K1CG1LguQKBgQDrQfIMxxtZ\nvxU/1cRmUV9l7pt5bjV5R6byXq178LxPKVYNjdZ840Q0/OpZEVqaT1xKVi35ohP1QfNjxPLlHD+K\niDAR9z6zkwjIrbwPCnb5kuXy4lpwPcmmmkva25fI7qlpHtbcuQdoBdCfr/KkKaUCMPyY89LCXgEw\n5KTDj64UywKBgQCNfbO+eZLGzhiHhtNJurresCsIGWlInv322gL8CSfBMYl6eNfUTZvUDdFhPISL\nUljKWzXDrjw0ujFSPR0XhUGtiq89H+HUTuPPYv25gVXO+HTgBFZEPl4PpA+BUsSVZy0NddneyqLk\n42Wey9omY9Q8WsdNQS5cbUvy0uG6WFoX7wKBgQDZ1jpW8pa0x2bZsQsm4vo+3G5CRnZlUp+XlWt2\ndDcp5dC0xD1zbs1dc0NcLeGDOTDv9FSl7hok42iHXXq8AygjEm/QcuwwQ1nC2HxmQP5holAiUs4D\nWHM8PWs3wFYPzE459EBoKTxeaeP/uWAn+he8q7d5uWvSZlEcANs/6e77eQKBgD21Ar0hfFfj7mK8\n9E0FeRZBsqK3omkfnhcYgZC11Xa2SgT1yvs2Va2n0RcdM5kncr3eBZav2GYOhhAdwyBM55XuE/sO\neokDVutNeuZ6d5fqV96TRaRBpvgfTvvRwxZ9hvKF4Vz+9wfn/JvCwANaKmegF6ejs7pvmF3whq2k\ndrZVAoGAX5YxQ5XMTD0QbMAl7/6qp6S58xNoVdfCkmkj1ZLKaHKIjS/benkKGlySVQVPexPfnkZx\np/Vv9yyphBoudiTBS9Uog66ueLYZqpgxlM/6OhYg86Gm3U2ycvMxYjBM1NFiyze21AqAhI+HX+Ot\nmraV2/guSgDgZAhukRZzeQ2RucI=\n-----END PRIVATE KEY-----"

    .line 59
    sget-object v13, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-static {v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->valueOf([B)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_13

    .line 60
    :try_start_8
    invoke-static {v11, v12, v6}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateCallback;)V

    .line 61
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->p()Ljava/security/cert/X509Certificate;

    move-result-object v13

    .line 62
    sget-object v14, Lkg/k;->a:Lkg/k;

    new-array v15, v10, [Ljava/security/cert/X509Certificate;

    aput-object v13, v15, v4

    invoke-static {v14, v15}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->T(Lkg/k;[Ljava/security/cert/X509Certificate;)J

    move-result-wide v23
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 63
    :try_start_9
    invoke-static/range {v23 .. v24}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->parseX509Chain(J)J

    move-result-wide v25
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 64
    :try_start_a
    sget-object v13, Lkg/t0;->g:Lkg/t0;

    .line 65
    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object v14

    .line 66
    invoke-static {v13, v14}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->R(Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;)J

    move-result-wide v13
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 67
    :try_start_b
    invoke-static {v13, v14, v6}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->parsePrivateKey(JLjava/lang/String;)J

    move-result-wide v27
    :try_end_b
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-wide/from16 v29, v13

    move-wide/from16 v13, v19

    move-wide/from16 v15, v25

    move-wide/from16 v17, v27

    .line 68
    :try_start_c
    invoke-static/range {v13 .. v18}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setKeyMaterial(JJJ)V
    :try_end_c
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 69
    :try_start_d
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v0, :cond_f

    .line 70
    invoke-static {v1, v10}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v13, :cond_11

    .line 71
    :try_start_e
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v13, "System property \'io.netty.handler.ssl.openssl.useKeyManagerFactory\' is deprecated and so will be ignored in the future"

    invoke-interface {v1, v13}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_d

    :catchall_2
    move v1, v0

    goto :goto_e

    :cond_f
    if-eqz v13, :cond_10

    .line 72
    :try_start_f
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "System property \'io.netty.handler.ssl.openssl.useKeyManagerFactory\' is deprecated and will be ignored when using BoringSSL"

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_c

    :catchall_3
    const/4 v1, 0x1

    goto :goto_e

    :cond_10
    :goto_c
    const/4 v0, 0x1

    :cond_11
    :goto_d
    move v1, v0

    goto :goto_f

    :catchall_4
    const/4 v1, 0x0

    .line 73
    :goto_e
    :try_start_10
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v13, "Failed to get useKeyManagerFactory system property."

    invoke-interface {v0, v13}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 74
    :goto_f
    :try_start_11
    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-wide/from16 v13, v29

    const/4 v15, 0x1

    goto/16 :goto_16

    :catchall_5
    move-exception v0

    move-wide/from16 v13, v29

    const/4 v15, 0x1

    goto/16 :goto_1c

    :catchall_6
    move-exception v0

    move-wide/from16 v13, v29

    const/4 v15, 0x1

    goto/16 :goto_1d

    :catch_2
    move-wide/from16 v13, v29

    const/4 v15, 0x1

    goto :goto_15

    :catchall_7
    move-exception v0

    move-wide/from16 v13, v29

    goto :goto_10

    :catch_3
    move-wide/from16 v13, v29

    goto :goto_14

    :catchall_8
    move-exception v0

    move-wide/from16 v29, v13

    move-wide/from16 v27, v21

    :goto_10
    const/4 v1, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1d

    :catch_4
    move-wide/from16 v29, v13

    move-wide/from16 v27, v21

    goto :goto_14

    :catchall_9
    move-exception v0

    move/from16 v29, v2

    move-wide/from16 v13, v21

    move-wide/from16 v27, v13

    goto :goto_12

    :catch_5
    move-wide/from16 v13, v21

    move-wide/from16 v27, v13

    goto :goto_14

    :catchall_a
    move-exception v0

    move/from16 v29, v2

    move-wide/from16 v13, v21

    move-wide/from16 v25, v13

    goto :goto_11

    :catch_6
    move-wide/from16 v13, v21

    move-wide/from16 v25, v13

    goto :goto_13

    :catchall_b
    move-exception v0

    move/from16 v29, v2

    move-wide/from16 v13, v21

    move-wide/from16 v23, v13

    move-wide/from16 v25, v23

    :goto_11
    move-wide/from16 v27, v25

    :goto_12
    const/4 v1, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1e

    :catch_7
    move-wide/from16 v13, v21

    move-wide/from16 v23, v13

    move-wide/from16 v25, v23

    :goto_13
    move-wide/from16 v27, v25

    :goto_14
    const/4 v1, 0x0

    const/4 v15, 0x0

    .line 75
    :goto_15
    :try_start_12
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v4, "KeyManagerFactory not supported."

    invoke-interface {v0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    .line 76
    :try_start_13
    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    .line 77
    :goto_16
    :try_start_14
    invoke-static/range {v19 .. v20}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeSSL(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    cmp-long v0, v23, v21

    if-eqz v0, :cond_12

    .line 78
    :try_start_15
    invoke-static/range {v23 .. v24}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeBIO(J)V

    goto :goto_17

    :catchall_c
    move-exception v0

    move/from16 v23, v1

    goto/16 :goto_22

    :cond_12
    :goto_17
    cmp-long v0, v13, v21

    if-eqz v0, :cond_13

    .line 79
    invoke-static {v13, v14}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeBIO(J)V

    :cond_13
    cmp-long v0, v25, v21

    if-eqz v0, :cond_14

    .line 80
    invoke-static/range {v25 .. v26}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    :cond_14
    cmp-long v0, v27, v21

    if-eqz v0, :cond_15

    .line 81
    invoke-static/range {v27 .. v28}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freePrivateKey(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    :cond_15
    :try_start_16
    const-string v0, "jdk.tls.namedGroups"

    .line 82
    invoke-static {v0, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v4, ","

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v4, Ljava/util/LinkedHashSet;

    array-length v6, v0

    invoke-direct {v4, v6}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 85
    new-instance v6, Ljava/util/LinkedHashSet;

    array-length v9, v0

    invoke-direct {v6, v9}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 86
    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 87
    array-length v13, v0

    const/4 v14, 0x0

    :goto_18
    if-ge v14, v13, :cond_17

    aget-object v10, v0, v14

    move-object/from16 v18, v0

    .line 88
    invoke-static {v10}, Lio/grpc/netty/shaded/io/netty/handler/ssl/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    move/from16 v23, v1

    move/from16 v29, v2

    const/4 v1, 0x1

    :try_start_17
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 89
    invoke-static {v11, v12, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->c(J[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 90
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 92
    :cond_16
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_19
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v29

    const/4 v10, 0x1

    goto :goto_18

    :cond_17
    move/from16 v23, v1

    move/from16 v29, v2

    .line 93
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    if-eqz v0, :cond_18

    .line 94
    :try_start_18
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "All configured namedGroups are not supported: {}. Use default: {}."

    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    .line 95
    invoke-interface {v9, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->p:[Ljava/lang/String;

    .line 96
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-interface {v0, v1, v2, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    goto :goto_1b

    :catchall_d
    move-exception v0

    move-object v7, v8

    goto/16 :goto_20

    .line 98
    :cond_18
    :try_start_19
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 99
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 100
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v4, "Using configured namedGroups -D \'jdk.tls.namedGroup\': {} "

    .line 101
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-interface {v2, v4, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a

    .line 103
    :cond_19
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v4, "Using supported configured namedGroups: {}. Unsupported namedGroups: {}. "

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-interface {v9, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-interface {v2, v4, v1, v8}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :goto_1a
    invoke-interface {v6, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    goto :goto_1b

    :catchall_e
    move-exception v0

    goto :goto_20

    :cond_1a
    move/from16 v23, v1

    move/from16 v29, v2

    :goto_1b
    move-object v7, v8

    .line 108
    :try_start_1a
    invoke-static {v11, v12}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->free(J)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    move/from16 v1, v23

    move/from16 v2, v29

    goto/16 :goto_24

    :catch_8
    move-exception v0

    move/from16 v2, v29

    goto :goto_23

    :catchall_f
    move-exception v0

    move/from16 v23, v1

    move/from16 v29, v2

    goto :goto_22

    :catchall_10
    move-exception v0

    :goto_1c
    move/from16 v29, v2

    goto :goto_1f

    :catchall_11
    move-exception v0

    :goto_1d
    move/from16 v29, v2

    .line 109
    :goto_1e
    :try_start_1b
    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 110
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    :catchall_12
    move-exception v0

    goto :goto_1f

    :catchall_13
    move-exception v0

    move/from16 v29, v2

    move-wide/from16 v13, v21

    move-wide/from16 v23, v13

    move-wide/from16 v25, v23

    move-wide/from16 v27, v25

    const/4 v1, 0x0

    const/4 v15, 0x0

    .line 111
    :goto_1f
    :try_start_1c
    invoke-static/range {v19 .. v20}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeSSL(J)V

    cmp-long v2, v23, v21

    if-eqz v2, :cond_1b

    .line 112
    invoke-static/range {v23 .. v24}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeBIO(J)V

    :cond_1b
    cmp-long v2, v13, v21

    if-eqz v2, :cond_1c

    .line 113
    invoke-static {v13, v14}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeBIO(J)V

    :cond_1c
    cmp-long v2, v25, v21

    if-eqz v2, :cond_1d

    .line 114
    invoke-static/range {v25 .. v26}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    :cond_1d
    cmp-long v2, v27, v21

    if-eqz v2, :cond_1e

    .line 115
    invoke-static/range {v27 .. v28}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    .line 116
    :cond_1e
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    :catchall_14
    move-exception v0

    move/from16 v23, v1

    :goto_20
    move/from16 v2, v29

    goto :goto_22

    :catchall_15
    move-exception v0

    move/from16 v29, v2

    goto :goto_21

    :catchall_16
    move-exception v0

    const/4 v2, 0x0

    :goto_21
    const/4 v15, 0x0

    const/16 v23, 0x0

    .line 117
    :goto_22
    :try_start_1d
    invoke-static {v11, v12}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->free(J)I

    .line 118
    throw v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9

    :catch_9
    move-exception v0

    goto :goto_23

    :catch_a
    move-exception v0

    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v23, 0x0

    .line 119
    :goto_23
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v4, "Failed to get the list of available OpenSSL cipher suites."

    invoke-interface {v1, v4, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v1, v23

    .line 120
    :goto_24
    sput-object v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->o:[Ljava/lang/String;

    .line 121
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->e:Ljava/util/Set;

    .line 122
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 123
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 124
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 125
    invoke-static {v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->i(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f

    const-string v7, "TLS"

    .line 126
    invoke-static {v5, v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "SSL"

    .line 127
    invoke-static {v5, v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 128
    :cond_1f
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 129
    :cond_20
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->c:[Ljava/lang/String;

    invoke-static {v4, v3, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->a(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 130
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->e:[Ljava/lang/String;

    invoke-static {v4, v3, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->a(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 131
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->m:[Ljava/lang/String;

    invoke-static {v4, v3, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->a(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 132
    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->w(Ljava/util/List;Ljava/lang/Iterable;)V

    .line 133
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->c:Ljava/util/List;

    .line 134
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->f:Ljava/util/Set;

    .line 135
    new-instance v4, Ljava/util/LinkedHashSet;

    sget-object v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->e:Ljava/util/Set;

    .line 136
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v4, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 137
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 138
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 139
    sput-object v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->d:Ljava/util/Set;

    .line 140
    sput-boolean v15, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->g:Z

    .line 141
    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->h:Z

    .line 142
    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    const-string v3, "SSLv2Hello"

    .line 143
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->b:I

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->d(II)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "SSLv2"

    .line 145
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_21
    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->c:I

    invoke-static {v6, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->d(II)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "SSLv3"

    .line 147
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_22
    const/4 v3, 0x4

    .line 148
    sget v4, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->d:I

    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->d(II)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "TLSv1"

    .line 149
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_23
    const/16 v3, 0x8

    .line 150
    sget v4, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->e:I

    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->d(II)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "TLSv1.1"

    .line 151
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_24
    const/16 v3, 0x10

    .line 152
    sget v4, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->f:I

    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->d(II)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "TLSv1.2"

    .line 153
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    if-eqz v2, :cond_26

    const/16 v2, 0x20

    .line 154
    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->g:I

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->d(II)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "TLSv1.3"

    .line 155
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 156
    sput-boolean v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->j:Z

    goto :goto_26

    :cond_26
    const/4 v2, 0x0

    .line 157
    sput-boolean v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->j:Z

    .line 158
    :goto_26
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l:Ljava/util/Set;

    .line 159
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->c()Z

    move-result v2

    sput-boolean v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->i:Z

    .line 160
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "Supported protocols (OpenSSL): {} "

    .line 161
    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Default cipher suites (OpenSSL): {}"

    .line 162
    invoke-interface {v2, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27

    .line 163
    :cond_27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->c:Ljava/util/List;

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->e:Ljava/util/Set;

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->f:Ljava/util/Set;

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->d:Ljava/util/Set;

    const/4 v1, 0x0

    .line 167
    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->g:Z

    .line 168
    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->h:Z

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l:Ljava/util/Set;

    .line 170
    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->i:Z

    .line 171
    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->j:Z

    .line 172
    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->k:Z

    .line 173
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->m:[Ljava/lang/String;

    .line 174
    sput-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->n:Ljava/lang/String;

    .line 175
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->p:[Ljava/lang/String;

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->o:[Ljava/lang/String;

    :cond_28
    :goto_27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->f:Ljava/util/Set;

    return-object v0
.end method

.method static b(Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->k:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->m:[Ljava/lang/String;

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 3
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v1, ":"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, "TLS"

    const/4 v7, 0x1

    if-ge v5, v3, :cond_2

    aget-object v8, v2, v5

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 6
    :cond_0
    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 7
    invoke-static {v8, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 8
    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v7

    or-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 9
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    :goto_3
    if-ge v4, v2, :cond_3

    aget-object v3, p1, v4

    .line 12
    invoke-static {v3, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->n:Ljava/lang/String;

    const-string v1, "BoringSSL doesn\'t allow to enable or disable TLSv1.3 ciphers explicitly. Provided TLSv1.3 ciphers: \'{}\', default TLSv1.3 ciphers that will be used: \'{}\'."

    invoke-interface {p0, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    :cond_4
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->n:Ljava/lang/String;

    return-object p0

    :cond_5
    return-object p1
.end method

.method private static c()Z
    .locals 7

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->s()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/32 v4, 0x10002000

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    const/16 v0, 0x10

    const-wide/16 v4, -0x1

    .line 2
    :try_start_0
    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->enableOcsp(JZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_2

    .line 4
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->free(J)I

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception v2

    move-wide v0, v4

    :goto_0
    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->free(J)I

    .line 5
    :cond_0
    throw v2

    :catch_1
    move-wide v0, v4

    :goto_1
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->free(J)I

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_2
    return v2
.end method

.method private static d(II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    cmp-long v3, p0, v1

    if-eqz v3, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->free(J)I

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    .line 3
    throw p0

    :catch_0
    return v0
.end method

.method public static e()V
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    const-string v2, "failed to load the required native library"

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "provided"

    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Library;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static g()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->s()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x10002000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h()Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static i()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->k:Z

    return v0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->k:Z

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h;->i(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    .line 2
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->i:Z

    return v0
.end method

.method static l()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->j:Z

    return v0
.end method

.method private static m()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B0()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->z0()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    const-string v3, "linux"

    .line 4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x5f

    const-string v5, "_"

    const-string v6, "netty_tcnative"

    if-eqz v3, :cond_1

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A0()Ljava/util/Set;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_fedora"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const-class v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 14
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 15
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->g(Ljava/lang/ClassLoader;[Ljava/lang/String;)V

    return-void
.end method

.method static n(Lkg/j;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/j;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkg/j;->p1()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method static o(Lio/grpc/netty/shaded/io/netty/util/s;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static p()Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->c:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----"

    .line 2
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public static q()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method static r()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->h:Z

    return v0
.end method

.method public static s()I
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->version()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->versionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

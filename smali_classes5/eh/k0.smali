.class Leh/k0;
.super Leh/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/k0$b;,
        Leh/k0$a;
    }
.end annotation


# static fields
.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Z


# instance fields
.field private final a:Leh/q2;

.field private b:Leh/k0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GRPC_XDS_BOOTSTRAP"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leh/k0;->c:Ljava/lang/String;

    const-string v0, "io.grpc.xds.bootstrap"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leh/k0;->d:Ljava/lang/String;

    const-string v0, "GRPC_XDS_BOOTSTRAP_CONFIG"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leh/k0;->e:Ljava/lang/String;

    const-string v0, "io.grpc.xds.bootstrapConfig"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leh/k0;->f:Ljava/lang/String;

    const-string v0, "GRPC_EXPERIMENTAL_XDS_FEDERATION"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Leh/k0;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Leh/j0;-><init>()V

    .line 2
    sget-object v0, Leh/k0$b;->a:Leh/k0$b;

    iput-object v0, p0, Leh/k0;->b:Leh/k0$a;

    const-string v0, "bootstrapper"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object v0

    invoke-static {v0}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object v0

    iput-object v0, p0, Leh/k0;->a:Leh/q2;

    return-void
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/xds/XdsInitializationException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lio/grpc/xds/XdsInitializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bootstrap: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Ljava/util/List;Ljava/lang/String;)Lio/grpc/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/xds/XdsInitializationException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "type"

    .line 2
    invoke-static {v0, v1}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "insecure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "tls"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "google_default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-static {}, Lio/grpc/b0;->a()Lio/grpc/e;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_1
    invoke-static {}, Lio/grpc/TlsChannelCredentials;->a()Lio/grpc/e;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_2
    invoke-static {}, Lfg/b;->a()Lio/grpc/e;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    new-instance p0, Lio/grpc/xds/XdsInitializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bootstrap: server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with \'channel_creds\' type unspecified"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4a6dc5 -> :sswitch_2
        0x1c0fb -> :sswitch_1
        0x204438dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Ljava/util/List;Leh/q2;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Leh/q2;",
            ")",
            "Ljava/util/List<",
            "Leh/j0$d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/xds/XdsInitializationException;
        }
    .end annotation

    .line 1
    sget-object v0, Leh/q2$b;->b:Leh/q2$b;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Configured with {0} xDS servers"

    invoke-virtual {p1, v0, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lio/grpc/internal/b1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "server_uri"

    .line 5
    invoke-static {v2, v3}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6
    sget-object v5, Leh/q2$b;->b:Leh/q2$b;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v4

    const-string v7, "xDS server URI: {0}"

    invoke-virtual {p1, v5, v7, v6}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "channel_creds"

    .line 7
    invoke-static {v2, v6}, Lio/grpc/internal/b1;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 9
    invoke-static {v6}, Lio/grpc/internal/b1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v3}, Leh/k0;->d(Ljava/util/List;Ljava/lang/String;)Lio/grpc/e;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "server_features"

    .line 10
    invoke-static {v2, v7}, Lio/grpc/internal/b1;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v2, v7, v4

    const-string v8, "Server features: {0}"

    .line 11
    invoke-virtual {p1, v5, v8, v7}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "xds_v3"

    .line 12
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_1
    invoke-static {v3, v6, v2}, Leh/j0$d;->b(Ljava/lang/String;Lio/grpc/e;Z)Leh/j0$d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Lio/grpc/xds/XdsInitializationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Server "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": no supported channel credentials found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_2
    new-instance p0, Lio/grpc/xds/XdsInitializationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid bootstrap: server "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \'channel_creds\' required"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_3
    new-instance p0, Lio/grpc/xds/XdsInitializationException;

    const-string p1, "Invalid bootstrap: missing \'server_uri\'"

    invoke-direct {p0, p1}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Leh/j0$b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/xds/XdsInitializationException;
        }
    .end annotation

    .line 1
    sget-object v0, Leh/k0;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Leh/k0;->d:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, p0, Leh/k0;->a:Leh/q2;

    sget-object v4, Leh/q2$b;->b:Leh/q2$b;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const-string v6, "Reading bootstrap file from {0}"

    invoke-virtual {v3, v4, v6, v5}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v3, p0, Leh/k0;->b:Leh/k0$a;

    invoke-interface {v3, v0}, Leh/k0$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lio/grpc/xds/XdsInitializationException;

    const-string v2, "Fail to read bootstrap file"

    invoke-direct {v1, v2, v0}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_1
    sget-object v3, Leh/k0;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget-object v3, Leh/k0;->f:Ljava/lang/String;

    :goto_1
    if-eqz v3, :cond_3

    .line 7
    iget-object v4, p0, Leh/k0;->a:Leh/q2;

    sget-object v5, Leh/q2$b;->b:Leh/q2$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading bootstrap from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 8
    :try_start_1
    invoke-static {v3}, Lio/grpc/internal/a1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    iget-object v3, p0, Leh/k0;->a:Leh/q2;

    sget-object v4, Leh/q2$b;->a:Leh/q2$b;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v1, "Bootstrap configuration:\n{0}"

    invoke-virtual {v3, v4, v1, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, v0}, Leh/k0;->b(Ljava/util/Map;)Leh/j0$b;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 11
    new-instance v1, Lio/grpc/xds/XdsInitializationException;

    const-string v2, "Failed to parse JSON"

    invoke-direct {v1, v2, v0}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 12
    :cond_3
    new-instance v0, Lio/grpc/xds/XdsInitializationException;

    const-string v1, "Cannot find bootstrap configuration\nEnvironment variables searched:\n- GRPC_XDS_BOOTSTRAP\n- GRPC_XDS_BOOTSTRAP_CONFIG\n\nJava System Properties searched:\n- io.grpc.xds.bootstrap\n- io.grpc.xds.bootstrapConfig\n\n"

    invoke-direct {v0, v1}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Ljava/util/Map;)Leh/j0$b;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Leh/j0$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/xds/XdsInitializationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Leh/j0$b;->b()Leh/j0$b$a;

    move-result-object v2

    const-string v3, "xds_servers"

    .line 2
    invoke-static {v1, v3}, Lio/grpc/internal/b1;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 3
    iget-object v5, v0, Leh/k0;->a:Leh/q2;

    invoke-static {v4, v5}, Leh/k0;->e(Ljava/util/List;Leh/q2;)Ljava/util/List;

    move-result-object v4

    .line 4
    invoke-virtual {v2, v4}, Leh/j0$b$a;->g(Ljava/util/List;)Leh/j0$b$a;

    .line 5
    invoke-static {}, Leh/a1$c;->a()Leh/a1$c$a;

    move-result-object v5

    const-string v6, "node"

    .line 6
    invoke-static {v1, v6}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_6

    const-string v10, "id"

    .line 7
    invoke-static {v6, v10}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 8
    iget-object v11, v0, Leh/k0;->a:Leh/q2;

    sget-object v12, Leh/q2$b;->b:Leh/q2$b;

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v10, v13, v8

    const-string v14, "Node id: {0}"

    invoke-virtual {v11, v12, v14, v13}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v5, v10}, Leh/a1$c$a;->n(Ljava/lang/String;)Leh/a1$c$a;

    :cond_0
    const-string v10, "cluster"

    .line 10
    invoke-static {v6, v10}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 11
    iget-object v11, v0, Leh/k0;->a:Leh/q2;

    sget-object v12, Leh/q2$b;->b:Leh/q2$b;

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v10, v13, v8

    const-string v14, "Node cluster: {0}"

    invoke-virtual {v11, v12, v14, v13}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v5, v10}, Leh/a1$c$a;->m(Ljava/lang/String;)Leh/a1$c$a;

    :cond_1
    const-string v10, "metadata"

    .line 13
    invoke-static {v6, v10}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 14
    invoke-virtual {v5, v10}, Leh/a1$c$a;->p(Ljava/util/Map;)Leh/a1$c$a;

    :cond_2
    const-string v10, "locality"

    .line 15
    invoke-static {v6, v10}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v10, "region"

    .line 16
    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, ""

    if-eqz v11, :cond_3

    .line 17
    invoke-static {v6, v10}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_3
    move-object v10, v12

    :goto_0
    const-string v11, "zone"

    .line 18
    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 19
    invoke-static {v6, v11}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_4
    move-object v11, v12

    :goto_1
    const-string v13, "sub_zone"

    .line 20
    invoke-interface {v6, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 21
    invoke-static {v6, v13}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 22
    :cond_5
    iget-object v6, v0, Leh/k0;->a:Leh/q2;

    sget-object v13, Leh/q2$b;->b:Leh/q2$b;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v10, v14, v8

    aput-object v11, v14, v9

    aput-object v12, v14, v7

    const-string v15, "Locality region: {0}, zone: {0}, subZone: {0}"

    invoke-virtual {v6, v13, v15, v14}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {v10, v11, v12}, Leh/t1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Leh/t1;

    move-result-object v6

    .line 24
    invoke-virtual {v5, v6}, Leh/a1$c$a;->o(Leh/t1;)Leh/a1$c$a;

    .line 25
    :cond_6
    invoke-static {}, Lio/grpc/internal/GrpcUtil;->h()Lio/grpc/internal/GrpcUtil$h;

    move-result-object v6

    .line 26
    iget-object v10, v0, Leh/k0;->a:Leh/q2;

    sget-object v11, Leh/q2$b;->b:Leh/q2$b;

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v6, v12, v8

    const-string v13, "Build version: {0}"

    invoke-virtual {v10, v11, v13, v12}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v6}, Lio/grpc/internal/GrpcUtil$h;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Leh/a1$c$a;->l(Ljava/lang/String;)Leh/a1$c$a;

    .line 28
    invoke-virtual {v6}, Lio/grpc/internal/GrpcUtil$h;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Leh/a1$c$a;->q(Ljava/lang/String;)Leh/a1$c$a;

    .line 29
    invoke-virtual {v6}, Lio/grpc/internal/GrpcUtil$h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Leh/a1$c$a;->r(Ljava/lang/String;)Leh/a1$c$a;

    const-string v6, "envoy.lb.does_not_support_overprovisioning"

    .line 30
    invoke-virtual {v5, v6}, Leh/a1$c$a;->j(Ljava/lang/String;)Leh/a1$c$a;

    .line 31
    invoke-virtual {v5}, Leh/a1$c$a;->k()Leh/a1$c;

    move-result-object v5

    invoke-virtual {v2, v5}, Leh/j0$b$a;->e(Leh/a1$c;)Leh/j0$b$a;

    const-string v5, "certificate_providers"

    .line 32
    invoke-static {v1, v5}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 33
    iget-object v6, v0, Leh/k0;->a:Leh/q2;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v8

    const-string v12, "Configured with {0} cert providers"

    invoke-virtual {v6, v11, v12, v10}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 35
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 36
    invoke-static {v5, v11}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    const-string v13, "plugin_name"

    .line 37
    invoke-static {v12, v13}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Leh/k0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 38
    iget-object v14, v0, Leh/k0;->a:Leh/q2;

    sget-object v15, Leh/q2$b;->b:Leh/q2$b;

    move-object/from16 v16, v4

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v11, v4, v8

    aput-object v13, v4, v9

    const-string v7, "cert provider: {0}, plugin name: {1}"

    invoke-virtual {v14, v15, v7, v4}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "config"

    .line 39
    invoke-static {v12, v4}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v7, v4}, Leh/k0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 40
    invoke-static {v13, v4}, Leh/j0$c;->b(Ljava/lang/String;Ljava/util/Map;)Leh/j0$c;

    move-result-object v4

    .line 41
    invoke-interface {v6, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v16

    const/4 v7, 0x2

    goto :goto_2

    :cond_7
    move-object/from16 v16, v4

    .line 42
    invoke-virtual {v2, v6}, Leh/j0$b$a;->c(Ljava/util/Map;)Leh/j0$b$a;

    goto :goto_3

    :cond_8
    move-object/from16 v16, v4

    :goto_3
    const-string v4, "server_listener_resource_name_template"

    .line 43
    invoke-static {v1, v4}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    iget-object v5, v0, Leh/k0;->a:Leh/q2;

    sget-object v6, Leh/q2$b;->b:Leh/q2$b;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v8

    const-string v10, "server_listener_resource_name_template: {0}"

    invoke-virtual {v5, v6, v10, v7}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v2, v4}, Leh/j0$b$a;->f(Ljava/lang/String;)Leh/j0$b$a;

    .line 46
    sget-boolean v4, Leh/k0;->g:Z

    if-nez v4, :cond_9

    .line 47
    invoke-virtual {v2}, Leh/j0$b$a;->b()Leh/j0$b;

    move-result-object v1

    return-object v1

    :cond_9
    const-string v4, "client_default_listener_resource_name_template"

    .line 48
    invoke-static {v1, v4}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    iget-object v5, v0, Leh/k0;->a:Leh/q2;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v8

    const-string v10, "client_default_listener_resource_name_template: {0}"

    invoke-virtual {v5, v6, v10, v7}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_a

    .line 50
    invoke-virtual {v2, v4}, Leh/j0$b$a;->d(Ljava/lang/String;)Leh/j0$b$a;

    :cond_a
    const-string v4, "authorities"

    .line 51
    invoke-static {v1, v4}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 52
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v4

    if-eqz v1, :cond_10

    .line 53
    iget-object v5, v0, Leh/k0;->a:Leh/q2;

    new-array v7, v9, [Ljava/lang/Object;

    .line 54
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    const-string v10, "Configured with {0} xDS server authorities"

    .line 55
    invoke-virtual {v5, v6, v10, v7}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 57
    iget-object v7, v0, Leh/k0;->a:Leh/q2;

    sget-object v10, Leh/q2$b;->b:Leh/q2$b;

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v6, v11, v8

    const-string v12, "xDS server authority: {0}"

    invoke-virtual {v7, v10, v12, v11}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-static {v1, v6}, Lio/grpc/internal/b1;->k(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    const-string v11, "client_listener_resource_name_template"

    .line 59
    invoke-static {v7, v11}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 60
    iget-object v12, v0, Leh/k0;->a:Leh/q2;

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v11, v13, v8

    const-string v14, "client_listener_resource_name_template: {0}"

    invoke-virtual {v12, v10, v14, v13}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "xdstp://"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v11, :cond_b

    .line 62
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "envoy.config.listener.v3.Listener/%s"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 63
    :cond_b
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 64
    :goto_5
    invoke-static {v7, v3}, Lio/grpc/internal/b1;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 65
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_6

    .line 66
    :cond_c
    iget-object v10, v0, Leh/k0;->a:Leh/q2;

    invoke-static {v7, v10}, Leh/k0;->e(Ljava/util/List;Leh/q2;)Ljava/util/List;

    move-result-object v7

    goto :goto_7

    :cond_d
    :goto_6
    move-object/from16 v7, v16

    .line 67
    :goto_7
    invoke-static {v11, v7}, Leh/j0$a;->b(Ljava/lang/String;Ljava/util/List;)Leh/j0$a;

    move-result-object v7

    .line 68
    invoke-virtual {v4, v6, v7}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_4

    .line 69
    :cond_e
    new-instance v1, Lio/grpc/xds/XdsInitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client_listener_resource_name_template: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' does not start with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_f
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v2, v1}, Leh/j0$b$a;->a(Ljava/util/Map;)Leh/j0$b$a;

    .line 71
    :cond_10
    invoke-virtual {v2}, Leh/j0$b$a;->b()Leh/j0$b;

    move-result-object v1

    return-object v1

    .line 72
    :cond_11
    new-instance v1, Lio/grpc/xds/XdsInitializationException;

    const-string v2, "Invalid bootstrap: \'xds_servers\' does not exist."

    invoke-direct {v1, v2}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

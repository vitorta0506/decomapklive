.class final Lgg/a;
.super Lio/grpc/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgg/a$b;,
        Lgg/a$c;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/logging/Logger;

.field private static final f:Lgg/a$b;

.field private static final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Z

.field final b:Lcom/google/auth/Credentials;

.field private c:Lio/grpc/s0;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lgg/a;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lgg/a;->e:Ljava/util/logging/Logger;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lgg/a;->h(Ljava/lang/ClassLoader;)Lgg/a$b;

    move-result-object v0

    sput-object v0, Lgg/a;->f:Lgg/a$b;

    .line 4
    invoke-static {}, Lgg/a;->i()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgg/a;->g:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/google/auth/Credentials;)V
    .locals 1

    .line 1
    sget-object v0, Lgg/a;->f:Lgg/a$b;

    invoke-direct {p0, p1, v0}, Lgg/a;-><init>(Lcom/google/auth/Credentials;Lgg/a$b;)V

    return-void
.end method

.method constructor <init>(Lcom/google/auth/Credentials;Lgg/a$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/grpc/b;-><init>()V

    const-string v0, "creds"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lgg/a;->g:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Lgg/a$b;->a(Lcom/google/auth/Credentials;)Lcom/google/auth/Credentials;

    move-result-object p1

    .line 7
    :cond_1
    iput-boolean v0, p0, Lgg/a;->a:Z

    .line 8
    iput-object p1, p0, Lgg/a;->b:Lcom/google/auth/Credentials;

    return-void
.end method

.method static synthetic b(Lgg/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lgg/a;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lgg/a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lgg/a;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic d(Lgg/a;)Lio/grpc/s0;
    .locals 0

    iget-object p0, p0, Lgg/a;->c:Lio/grpc/s0;

    return-object p0
.end method

.method static synthetic e(Lgg/a;Lio/grpc/s0;)Lio/grpc/s0;
    .locals 0

    iput-object p1, p0, Lgg/a;->c:Lio/grpc/s0;

    return-object p1
.end method

.method static synthetic f(Ljava/util/Map;)Lio/grpc/s0;
    .locals 0

    invoke-static {p0}, Lgg/a;->l(Ljava/util/Map;)Lio/grpc/s0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lgg/a;->e:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static h(Ljava/lang/ClassLoader;)Lgg/a$b;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.auth.oauth2.ServiceAccountCredentials"

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    new-instance v2, Lgg/a$b;

    invoke-direct {v2, v1, p0}, Lgg/a$b;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    :goto_0
    sget-object v1, Lgg/a;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to create JWT helper. This is unexpected"

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_2
    return-object v0
.end method

.method private static i()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/auth/Credentials;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.auth.oauth2.GoogleCredentials"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    const-class v1, Lcom/google/auth/Credentials;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lgg/a;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Failed to load GoogleCredentials"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static j(Ljava/net/URI;)Ljava/net/URI;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v8, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 2
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lio/grpc/Status;->n:Lio/grpc/Status;

    const-string v1, "Unable to construct service URI after removing port"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/Status;->c()Lio/grpc/StatusException;

    move-result-object p0

    throw p0
.end method

.method private static k(Ljava/lang/String;Lio/grpc/MethodDescriptor;)Ljava/net/URI;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    :try_start_0
    new-instance p1, Ljava/net/URI;

    const-string v2, "https"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p0

    const/16 v0, 0x1bb

    if-ne p0, v0, :cond_0

    .line 4
    invoke-static {p1}, Lgg/a;->j(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    .line 5
    sget-object p1, Lio/grpc/Status;->n:Lio/grpc/Status;

    const-string v0, "Unable to construct service URI for auth"

    invoke-virtual {p1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/Status;->c()Lio/grpc/StatusException;

    move-result-object p0

    throw p0
.end method

.method private static l(Ljava/util/Map;)Lio/grpc/s0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lio/grpc/s0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/grpc/s0;

    invoke-direct {v0}, Lio/grpc/s0;-><init>()V

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-bin"

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    sget-object v3, Lio/grpc/s0;->d:Lio/grpc/s0$f;

    invoke-static {v2, v3}, Lio/grpc/s0$i;->f(Ljava/lang/String;Lio/grpc/s0$f;)Lio/grpc/s0$i;

    move-result-object v3

    .line 5
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->b()Lcom/google/common/io/BaseEncoding;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/common/io/BaseEncoding;->d(Ljava/lang/CharSequence;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/grpc/s0;->t(Lio/grpc/s0$i;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v3, Lio/grpc/s0;->e:Lio/grpc/s0$d;

    invoke-static {v2, v3}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v3

    .line 8
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v3, v4}, Lio/grpc/s0;->t(Lio/grpc/s0$i;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(Lio/grpc/b$b;Ljava/util/concurrent/Executor;Lio/grpc/b$a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/b$b;->c()Lio/grpc/SecurityLevel;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lgg/a;->a:Z

    if-eqz v1, :cond_0

    sget-object v1, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    if-eq v0, v1, :cond_0

    .line 3
    sget-object p1, Lio/grpc/Status;->n:Lio/grpc/Status;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Credentials require channel with PRIVACY_AND_INTEGRITY security level. Observed security level: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 5
    invoke-virtual {p3, p1}, Lio/grpc/b$a;->b(Lio/grpc/Status;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lio/grpc/b$b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authority"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/b$b;->b()Lio/grpc/MethodDescriptor;

    move-result-object p1

    invoke-static {v0, p1}, Lgg/a;->k(Ljava/lang/String;Lio/grpc/MethodDescriptor;)Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Lio/grpc/StatusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-object v0, p0, Lgg/a;->b:Lcom/google/auth/Credentials;

    new-instance v1, Lgg/a$a;

    invoke-direct {v1, p0, p3}, Lgg/a$a;-><init>(Lgg/a;Lio/grpc/b$a;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/auth/Credentials;->getRequestMetadata(Ljava/net/URI;Ljava/util/concurrent/Executor;Lcom/google/auth/a;)V

    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lio/grpc/StatusException;->getStatus()Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/grpc/b$a;->b(Lio/grpc/Status;)V

    return-void
.end method

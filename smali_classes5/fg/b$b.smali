.class public final Lfg/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lio/grpc/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfg/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfg/b$b;-><init>()V

    return-void
.end method

.method private static c()Lig/r;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lig/o;->f()Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    move-result-object v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Lio/grpc/alts/internal/k$e;

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    sget-object v3, Lfg/c;->a:Lio/grpc/internal/f2$d;

    .line 4
    invoke-static {v3}, Lio/grpc/internal/g2;->c(Lio/grpc/internal/f2$d;)Lio/grpc/internal/g2;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lio/grpc/alts/internal/k$e;-><init>(Ljava/util/List;Lio/grpc/internal/p1;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;)V

    return-object v1

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()Lio/grpc/e;
    .locals 5

    .line 1
    invoke-static {}, Lfg/b$b;->c()Lig/r;

    move-result-object v0

    invoke-static {v0}, Lig/p;->a(Lig/r;)Lio/grpc/e;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfg/b$b;->a:Lio/grpc/b;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0, v1}, Lio/grpc/n;->a(Lio/grpc/e;Lio/grpc/b;)Lio/grpc/e;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/auth/oauth2/GoogleCredentials;->getApplicationDefault()Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v1

    invoke-static {v1}, Lgg/b;->a(Lcom/google/auth/Credentials;)Lio/grpc/b;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Lfg/a;

    sget-object v3, Lio/grpc/Status;->n:Lio/grpc/Status;

    const-string v4, "Failed to get Google default credentials"

    .line 6
    invoke-virtual {v3, v4}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    invoke-direct {v2, v1}, Lfg/a;-><init>(Lio/grpc/Status;)V

    move-object v1, v2

    .line 8
    :goto_0
    invoke-static {v0, v1}, Lio/grpc/n;->a(Lio/grpc/e;Lio/grpc/b;)Lio/grpc/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Lio/grpc/b;)Lfg/b$b;
    .locals 0

    iput-object p1, p0, Lfg/b$b;->a:Lio/grpc/b;

    return-object p0
.end method

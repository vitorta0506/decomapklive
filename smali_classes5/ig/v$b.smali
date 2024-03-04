.class final Lig/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/g0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private a:Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

.field private b:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

.field final synthetic c:Lig/v;


# direct methods
.method private constructor <init>(Lig/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lig/v$b;->c:Lig/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;->TLS:Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

    iput-object p1, p0, Lig/v$b;->a:Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

    return-void
.end method

.method synthetic constructor <init>(Lig/v;Lig/v$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lig/v$b;-><init>(Lig/v;)V

    return-void
.end method

.method static synthetic c(Lig/v$b;Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;)Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;
    .locals 0

    iput-object p1, p0, Lig/v$b;->a:Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    sget-object v0, Lig/v$a;->a:[I

    iget-object v1, p0, Lig/v$b;->a:Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lig/v$b;->a:Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/16 v0, 0x50

    return v0
.end method

.method public b()Lig/g0;
    .locals 3

    .line 1
    iget-object v0, p0, Lig/v$b;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    .line 2
    iget-object v1, p0, Lig/v$b;->a:Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

    sget-object v2, Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;->TLS:Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lig/o;->f()Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    move-result-object v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    :goto_0
    iget-object v1, p0, Lig/v$b;->a:Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

    iget-object v2, p0, Lig/v$b;->c:Lig/v;

    .line 6
    invoke-static {v2}, Lig/v;->z(Lig/v;)Lio/grpc/internal/h1;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/h1;->x()Lio/grpc/internal/p1;

    move-result-object v2

    .line 7
    invoke-static {v1, v0, v2}, Lig/v;->E(Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Lio/grpc/internal/p1;)Lig/g0;

    move-result-object v0

    return-object v0
.end method

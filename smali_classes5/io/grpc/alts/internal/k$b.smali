.class final Lio/grpc/alts/internal/k$b;
.super Lio/grpc/alts/internal/g0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/g0$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/alts/internal/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/grpc/alts/internal/g0$b$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/grpc/alts/internal/j;

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/a0;->b()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lio/grpc/alts/internal/j;->a()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lio/grpc/alts/internal/a0;->a(Lio/grpc/alts/internal/RpcProtocolVersions;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/a0$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/grpc/alts/internal/a0$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lio/grpc/alts/internal/g0$b$a;

    sget-object v1, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    new-instance v2, Lio/grpc/c0$c;

    new-instance v3, Lio/grpc/c0$b;

    iget-object p1, p1, Lio/grpc/alts/internal/j;->a:Lio/grpc/alts/internal/AltsContext;

    .line 7
    invoke-static {p1}, Lcom/google/protobuf/Any;->pack(Lcom/google/protobuf/l1;)Lcom/google/protobuf/Any;

    move-result-object p1

    const-string v4, "alts"

    invoke-direct {v3, v4, p1}, Lio/grpc/c0$b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lio/grpc/c0$c;-><init>(Lio/grpc/c0$b;)V

    invoke-direct {v0, v1, v2}, Lio/grpc/alts/internal/g0$b$a;-><init>(Lio/grpc/SecurityLevel;Lio/grpc/c0$c;)V

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local Rpc Protocol Versions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Lio/grpc/alts/internal/a0;->b()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " are not compatible with peer Rpc Protocol Versions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Lio/grpc/alts/internal/j;->a()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object p1

    throw p1
.end method

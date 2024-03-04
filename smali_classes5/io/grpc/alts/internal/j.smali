.class public final Lio/grpc/alts/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lio/grpc/alts/internal/AltsContext;


# direct methods
.method public constructor <init>(Lio/grpc/alts/internal/HandshakerResult;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/AltsContext;->newBuilder()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakerResult;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/AltsContext$b;->m0(Ljava/lang/String;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakerResult;->getRecordProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/AltsContext$b;->s0(Ljava/lang/String;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    sget-object v1, Lio/grpc/alts/internal/SecurityLevel;->INTEGRITY_AND_PRIVACY:Lio/grpc/alts/internal/SecurityLevel;

    .line 5
    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/AltsContext$b;->t0(Lio/grpc/alts/internal/SecurityLevel;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakerResult;->getPeerIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/alts/internal/Identity;->getServiceAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/AltsContext$b;->r0(Ljava/lang/String;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakerResult;->getLocalIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/alts/internal/Identity;->getServiceAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/AltsContext$b;->o0(Ljava/lang/String;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakerResult;->getPeerRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/AltsContext$b;->q0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakerResult;->getPeerIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/Identity;->getAttributesMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/AltsContext$b;->l0(Ljava/util/Map;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext$b;->X()Lio/grpc/alts/internal/AltsContext;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/j;->a:Lio/grpc/alts/internal/AltsContext;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/j;->a:Lio/grpc/alts/internal/AltsContext;

    invoke-virtual {v0}, Lio/grpc/alts/internal/AltsContext;->getPeerRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    return-object v0
.end method

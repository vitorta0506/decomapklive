.class public final enum Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

.field public static final enum ALLOW:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

.field public static final enum DENY:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;->ALLOW:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    .line 2
    new-instance v1, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    const-string v3, "DENY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;->DENY:Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;->$VALUES:[Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;
    .locals 1

    const-class v0, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;
    .locals 1

    sget-object v0, Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;->$VALUES:[Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    invoke-virtual {v0}, [Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/internal/rbac/engine/GrpcAuthorizationEngine$Action;

    return-object v0
.end method
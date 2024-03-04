.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PortSpecifierCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

.field public static final enum NAMED_PORT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

.field public static final enum PORTSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

.field public static final enum PORT_VALUE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    const-string v1, "PORT_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->PORT_VALUE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    const-string v4, "NAMED_PORT"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->NAMED_PORT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    const-string v6, "PORTSPECIFIER_NOT_SET"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->PORTSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    new-array v3, v3, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    .line 4
    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->NAMED_PORT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->PORT_VALUE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->PORTSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->value:I

    return v0
.end method

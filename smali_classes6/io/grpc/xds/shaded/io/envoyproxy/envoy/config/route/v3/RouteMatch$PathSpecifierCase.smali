.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PathSpecifierCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

.field public static final enum CONNECT_MATCHER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

.field public static final enum PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

.field public static final enum PATHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

.field public static final enum PREFIX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

.field public static final enum SAFE_REGEX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    const-string v1, "PREFIX"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->PREFIX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    const-string v4, "PATH"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    const-string v6, "SAFE_REGEX"

    const/16 v7, 0xa

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->SAFE_REGEX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    const-string v7, "CONNECT_MATCHER"

    const/4 v8, 0x3

    const/16 v9, 0xc

    invoke-direct {v6, v7, v8, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->CONNECT_MATCHER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    .line 5
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    const-string v9, "PATHSPECIFIER_NOT_SET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->PATHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->CONNECT_MATCHER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->SAFE_REGEX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->PREFIX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->PATHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->value:I

    return v0
.end method

.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

.field public static final enum ACTION_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

.field public static final enum DIRECT_RESPONSE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

.field public static final enum FILTER_ACTION:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

.field public static final enum REDIRECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

.field public static final enum ROUTE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    const-string v1, "ROUTE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->ROUTE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    const-string v4, "REDIRECT"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->REDIRECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    const-string v7, "DIRECT_RESPONSE"

    const/4 v8, 0x7

    invoke-direct {v4, v7, v3, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->DIRECT_RESPONSE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    .line 4
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    const-string v8, "FILTER_ACTION"

    const/16 v9, 0x11

    invoke-direct {v7, v8, v6, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->FILTER_ACTION:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    const-string v9, "ACTION_NOT_SET"

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->ACTION_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    aput-object v0, v9, v2

    aput-object v1, v9, v5

    aput-object v4, v9, v3

    aput-object v7, v9, v6

    aput-object v8, v9, v10

    .line 6
    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->REDIRECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->ROUTE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->FILTER_ACTION:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->DIRECT_RESPONSE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->ACTION_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->value:I

    return v0
.end method

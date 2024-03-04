.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryParameterMatchSpecifierCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

.field public static final enum PRESENT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

.field public static final enum QUERYPARAMETERMATCHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

.field public static final enum STRING_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    const-string v1, "STRING_MATCH"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->STRING_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    const-string v3, "PRESENT_MATCH"

    const/4 v4, 0x1

    const/4 v5, 0x6

    invoke-direct {v1, v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->PRESENT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    .line 3
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    const-string v5, "QUERYPARAMETERMATCHSPECIFIER_NOT_SET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->QUERYPARAMETERMATCHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->PRESENT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->STRING_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->QUERYPARAMETERMATCHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher$QueryParameterMatchSpecifierCase;->value:I

    return v0
.end method

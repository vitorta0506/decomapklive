.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransformationCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

.field public static final enum SCHEME_TO_OVERWRITE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

.field public static final enum TRANSFORMATION_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    const-string v1, "SCHEME_TO_OVERWRITE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;->SCHEME_TO_OVERWRITE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    const-string v4, "TRANSFORMATION_NOT_SET"

    invoke-direct {v1, v4, v3, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;->TRANSFORMATION_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    const/4 v4, 0x2

    new-array v4, v4, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;->SCHEME_TO_OVERWRITE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;->TRANSFORMATION_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$TransformationCase;->value:I

    return v0
.end method

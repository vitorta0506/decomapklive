.class Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/OpenCensusConfig$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/OpenCensusConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/u0$h$a<",
        "Ljava/lang/Integer;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/OpenCensusConfig$TraceContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/OpenCensusConfig$TraceContext;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/OpenCensusConfig$TraceContext;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/OpenCensusConfig$TraceContext;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/OpenCensusConfig$TraceContext;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/OpenCensusConfig$TraceContext;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/OpenCensusConfig$b;->a(Ljava/lang/Integer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/OpenCensusConfig$TraceContext;

    move-result-object p1

    return-object p1
.end method

.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$FilterSpecifierCase;
    }
.end annotation


# static fields
.field public static final AND_FILTER_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

.field public static final DURATION_FILTER_FIELD_NUMBER:I = 0x2

.field public static final EXTENSION_FILTER_FIELD_NUMBER:I = 0xb

.field public static final GRPC_STATUS_FILTER_FIELD_NUMBER:I = 0xa

.field public static final HEADER_FILTER_FIELD_NUMBER:I = 0x8

.field public static final METADATA_FILTER_FIELD_NUMBER:I = 0xc

.field public static final NOT_HEALTH_CHECK_FILTER_FIELD_NUMBER:I = 0x3

.field public static final OR_FILTER_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_FLAG_FILTER_FIELD_NUMBER:I = 0x9

.field public static final RUNTIME_FILTER_FIELD_NUMBER:I = 0x5

.field public static final STATUS_CODE_FILTER_FIELD_NUMBER:I = 0x1

.field public static final TRACEABLE_FILTER_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private filterSpecifierCase_:I

.field private filterSpecifier_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_19

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    goto/16 :goto_2

    .line 14
    :sswitch_0
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter$b;

    move-result-object v4

    .line 16
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 17
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter$b;

    .line 18
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 19
    :cond_2
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto :goto_0

    .line 20
    :sswitch_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 21
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter$c;

    move-result-object v4

    .line 22
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 23
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter$c;

    .line 24
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 25
    :cond_4
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto :goto_0

    .line 26
    :sswitch_2
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 27
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    move-result-object v4

    .line 28
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 29
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;

    .line 30
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 31
    :cond_6
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto/16 :goto_0

    .line 32
    :sswitch_3
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_7

    .line 33
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter$b;

    move-result-object v4

    .line 34
    :cond_7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_8

    .line 35
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter$b;

    .line 36
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 37
    :cond_8
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto/16 :goto_0

    .line 38
    :sswitch_4
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 39
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter$b;

    move-result-object v4

    .line 40
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_a

    .line 41
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter$b;

    .line 42
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 43
    :cond_a
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto/16 :goto_0

    .line 44
    :sswitch_5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_b

    .line 45
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter$b;

    move-result-object v4

    .line 46
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 47
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter$b;

    .line 48
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 49
    :cond_c
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto/16 :goto_0

    .line 50
    :sswitch_6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_d

    .line 51
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter$b;

    move-result-object v4

    .line 52
    :cond_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_e

    .line 53
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter$b;

    .line 54
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 55
    :cond_e
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto/16 :goto_0

    .line 56
    :sswitch_7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_f

    .line 57
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter$b;

    move-result-object v4

    .line 58
    :cond_f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_10

    .line 59
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter$b;

    .line 60
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 61
    :cond_10
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto/16 :goto_0

    .line 62
    :sswitch_8
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11

    .line 63
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter$b;

    move-result-object v4

    .line 64
    :cond_11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_12

    .line 65
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter$b;

    .line 66
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 67
    :cond_12
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto/16 :goto_0

    .line 68
    :sswitch_9
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13

    .line 69
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter$b;

    move-result-object v4

    .line 70
    :cond_13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_14

    .line 71
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter$b;

    .line 72
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 73
    :cond_14
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto/16 :goto_0

    .line 74
    :sswitch_a
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 75
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter$b;

    move-result-object v4

    .line 76
    :cond_15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_16

    .line 77
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter$b;

    .line 78
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 79
    :cond_16
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    goto/16 :goto_0

    .line 80
    :sswitch_b
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    if-ne v2, v3, :cond_17

    .line 81
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter$b;

    move-result-object v4

    .line 82
    :cond_17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    if-eqz v4, :cond_18

    .line 83
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter$b;

    .line 84
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    .line 85
    :cond_18
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_c
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 86
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 87
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 88
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 90
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 91
    :cond_19
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 92
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0xa -> :sswitch_b
        0x12 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x3a -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x52 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    return p1
.end method

.method static synthetic access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getFilterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$FilterSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getFilterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$FilterSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getMetadataFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getMetadataFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getExtensionFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getExtensionFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 10
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getGrpcStatusFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getGrpcStatusFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 12
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getResponseFlagFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getResponseFlagFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 14
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getHeaderFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getHeaderFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 16
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getOrFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getOrFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 18
    :pswitch_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getAndFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getAndFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 20
    :pswitch_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getRuntimeFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getRuntimeFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 22
    :pswitch_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getTraceableFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getTraceableFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 24
    :pswitch_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getNotHealthCheckFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getNotHealthCheckFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 26
    :pswitch_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getDurationFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getDurationFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 28
    :pswitch_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getStatusCodeFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getStatusCodeFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 30
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAndFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    move-result-object v0

    return-object v0
.end method

.method public getAndFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    return-object v0
.end method

.method public getDurationFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDurationFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/g;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFilterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$FilterSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$FilterSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$FilterSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getGrpcStatusFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    move-result-object v0

    return-object v0
.end method

.method public getGrpcStatusFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/h;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/i;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/j;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    move-result-object v0

    return-object v0
.end method

.method public getNotHealthCheckFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    move-result-object v0

    return-object v0
.end method

.method public getNotHealthCheckFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/k;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    move-result-object v0

    return-object v0
.end method

.method public getOrFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    move-result-object v0

    return-object v0
.end method

.method public getOrFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/l;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getResponseFlagFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFlagFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/m;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimeFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimeFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/n;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 21
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    .line 22
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    .line 25
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 27
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    .line 28
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_9
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 30
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    .line 31
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    .line 33
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    .line 34
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_b
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 36
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    .line 37
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStatusCodeFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCodeFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/o;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    move-result-object v0

    return-object v0
.end method

.method public getTraceableFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    move-result-object v0

    return-object v0
.end method

.method public getTraceableFilterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/p;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasAndFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDurationFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExtensionFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGrpcStatusFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeaderFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadataFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotHealthCheckFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOrFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResponseFlagFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRuntimeFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusCodeFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTraceableFilter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getMetadataFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getExtensionFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getGrpcStatusFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getResponseFlagFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getHeaderFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getOrFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getAndFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_7
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getRuntimeFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getTraceableFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_9
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getNotHealthCheckFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_a
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getDurationFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_b
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->getStatusCodeFilter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/StatusCodeFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/DurationFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/NotHealthCheckFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/TraceableFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/RuntimeFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AndFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/OrFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/HeaderFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ResponseFlagFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 20
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 22
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/ExtensionFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifierCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLogFilter;->filterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/MetadataFilter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

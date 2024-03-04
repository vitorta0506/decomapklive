.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$StripPortModeCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$UpgradeConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$h;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$f;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$g;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;
    }
.end annotation


# static fields
.field public static final ACCESS_LOG_FIELD_NUMBER:I = 0xd

.field public static final ADD_USER_AGENT_FIELD_NUMBER:I = 0x6

.field public static final ALWAYS_SET_REQUEST_ID_IN_RESPONSE_FIELD_NUMBER:I = 0x25

.field public static final CODEC_TYPE_FIELD_NUMBER:I = 0x1

.field public static final COMMON_HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0x23

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

.field public static final DELAYED_CLOSE_TIMEOUT_FIELD_NUMBER:I = 0x1a

.field public static final DRAIN_TIMEOUT_FIELD_NUMBER:I = 0xc

.field public static final FORWARD_CLIENT_CERT_DETAILS_FIELD_NUMBER:I = 0x10

.field public static final GENERATE_REQUEST_ID_FIELD_NUMBER:I = 0xf

.field public static final HTTP2_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0x9

.field public static final HTTP3_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0x2c

.field public static final HTTP_FILTERS_FIELD_NUMBER:I = 0x5

.field public static final HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final INTERNAL_ADDRESS_CONFIG_FIELD_NUMBER:I = 0x19

.field public static final LOCAL_REPLY_CONFIG_FIELD_NUMBER:I = 0x26

.field public static final MAX_REQUEST_HEADERS_KB_FIELD_NUMBER:I = 0x1d

.field public static final MERGE_SLASHES_FIELD_NUMBER:I = 0x21

.field public static final NORMALIZE_PATH_FIELD_NUMBER:I = 0x1e

.field public static final ORIGINAL_IP_DETECTION_EXTENSIONS_FIELD_NUMBER:I = 0x2e

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_NORMALIZATION_OPTIONS_FIELD_NUMBER:I = 0x2b

.field public static final PATH_WITH_ESCAPED_SLASHES_ACTION_FIELD_NUMBER:I = 0x2d

.field public static final PRESERVE_EXTERNAL_REQUEST_ID_FIELD_NUMBER:I = 0x20

.field public static final PROXY_100_CONTINUE_FIELD_NUMBER:I = 0x12

.field public static final RDS_FIELD_NUMBER:I = 0x3

.field public static final REPRESENT_IPV4_REMOTE_ADDRESS_AS_IPV4_MAPPED_IPV6_FIELD_NUMBER:I = 0x14

.field public static final REQUEST_HEADERS_TIMEOUT_FIELD_NUMBER:I = 0x29

.field public static final REQUEST_ID_EXTENSION_FIELD_NUMBER:I = 0x24

.field public static final REQUEST_TIMEOUT_FIELD_NUMBER:I = 0x1c

.field public static final ROUTE_CONFIG_FIELD_NUMBER:I = 0x4

.field public static final SCHEME_HEADER_TRANSFORMATION_FIELD_NUMBER:I = 0x30

.field public static final SCOPED_ROUTES_FIELD_NUMBER:I = 0x1f

.field public static final SERVER_HEADER_TRANSFORMATION_FIELD_NUMBER:I = 0x22

.field public static final SERVER_NAME_FIELD_NUMBER:I = 0xa

.field public static final SET_CURRENT_CLIENT_CERT_DETAILS_FIELD_NUMBER:I = 0x11

.field public static final SKIP_XFF_APPEND_FIELD_NUMBER:I = 0x15

.field public static final STAT_PREFIX_FIELD_NUMBER:I = 0x2

.field public static final STREAM_ERROR_ON_INVALID_HTTP_MESSAGE_FIELD_NUMBER:I = 0x28

.field public static final STREAM_IDLE_TIMEOUT_FIELD_NUMBER:I = 0x18

.field public static final STRIP_ANY_HOST_PORT_FIELD_NUMBER:I = 0x2a

.field public static final STRIP_MATCHING_HOST_PORT_FIELD_NUMBER:I = 0x27

.field public static final STRIP_TRAILING_HOST_DOT_FIELD_NUMBER:I = 0x2f

.field public static final TRACING_FIELD_NUMBER:I = 0x7

.field public static final UPGRADE_CONFIGS_FIELD_NUMBER:I = 0x17

.field public static final USE_REMOTE_ADDRESS_FIELD_NUMBER:I = 0xe

.field public static final VIA_FIELD_NUMBER:I = 0x16

.field public static final XFF_NUM_TRUSTED_HOPS_FIELD_NUMBER:I = 0x13

.field private static final serialVersionUID:J


# instance fields
.field private accessLog_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;",
            ">;"
        }
    .end annotation
.end field

.field private addUserAgent_:Lcom/google/protobuf/BoolValue;

.field private alwaysSetRequestIdInResponse_:Z

.field private codecType_:I

.field private commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

.field private delayedCloseTimeout_:Lcom/google/protobuf/Duration;

.field private drainTimeout_:Lcom/google/protobuf/Duration;

.field private forwardClientCertDetails_:I

.field private generateRequestId_:Lcom/google/protobuf/BoolValue;

.field private http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

.field private http3ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

.field private httpFilters_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;",
            ">;"
        }
    .end annotation
.end field

.field private httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

.field private internalAddressConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

.field private localReplyConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

.field private maxRequestHeadersKb_:Lcom/google/protobuf/UInt32Value;

.field private memoizedIsInitialized:B

.field private mergeSlashes_:Z

.field private normalizePath_:Lcom/google/protobuf/BoolValue;

.field private originalIpDetectionExtensions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private pathNormalizationOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

.field private pathWithEscapedSlashesAction_:I

.field private preserveExternalRequestId_:Z

.field private proxy100Continue_:Z

.field private representIpv4RemoteAddressAsIpv4MappedIpv6_:Z

.field private requestHeadersTimeout_:Lcom/google/protobuf/Duration;

.field private requestIdExtension_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

.field private requestTimeout_:Lcom/google/protobuf/Duration;

.field private routeSpecifierCase_:I

.field private routeSpecifier_:Ljava/lang/Object;

.field private schemeHeaderTransformation_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

.field private serverHeaderTransformation_:I

.field private volatile serverName_:Ljava/lang/Object;

.field private setCurrentClientCertDetails_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

.field private skipXffAppend_:Z

.field private volatile statPrefix_:Ljava/lang/Object;

.field private streamErrorOnInvalidHttpMessage_:Lcom/google/protobuf/BoolValue;

.field private streamIdleTimeout_:Lcom/google/protobuf/Duration;

.field private stripMatchingHostPort_:Z

.field private stripPortModeCase_:I

.field private stripPortMode_:Ljava/lang/Object;

.field private stripTrailingHostDot_:Z

.field private tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

.field private upgradeConfigs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$UpgradeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private useRemoteAddress_:Lcom/google/protobuf/BoolValue;

.field private volatile via_:Ljava/lang/Object;

.field private xffNumTrustedHops_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    .line 9
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    const/4 v1, -0x1

    .line 10
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->memoizedIsInitialized:B

    .line 11
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    const-string v1, ""

    .line 12
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    .line 14
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    .line 15
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    .line 18
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    .line 19
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    .line 21
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    .line 5
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    const/4 p1, -0x1

    .line 6
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;-><init>()V

    .line 23
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x4

    if-nez v1, :cond_25

    .line 25
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 26
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 27
    :sswitch_0
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->schemeHeaderTransformation_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$c;

    move-result-object v6

    .line 29
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->schemeHeaderTransformation_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    if-eqz v6, :cond_0

    .line 30
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$c;

    .line 31
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->schemeHeaderTransformation_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    goto :goto_0

    .line 32
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripTrailingHostDot_:Z

    goto :goto_0

    :sswitch_2
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_2

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 34
    :cond_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    .line 36
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 38
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    goto :goto_0

    .line 39
    :sswitch_4
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http3ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    if-eqz v4, :cond_3

    .line 40
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions$b;

    move-result-object v6

    .line 41
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http3ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    if-eqz v6, :cond_0

    .line 42
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions$b;

    .line 43
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http3ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    goto :goto_0

    .line 44
    :sswitch_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathNormalizationOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    if-eqz v4, :cond_4

    .line 45
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions$b;

    move-result-object v6

    .line 46
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathNormalizationOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    if-eqz v6, :cond_0

    .line 47
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions$b;

    .line 48
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathNormalizationOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    goto/16 :goto_0

    .line 49
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortMode_:Ljava/lang/Object;

    const/16 v4, 0x2a

    .line 50
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    goto/16 :goto_0

    .line 51
    :sswitch_7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestHeadersTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_5

    .line 52
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v6

    .line 53
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestHeadersTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v6, :cond_0

    .line 54
    invoke-virtual {v6, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 55
    invoke-virtual {v6}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestHeadersTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 56
    :sswitch_8
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamErrorOnInvalidHttpMessage_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_6

    .line 57
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v6

    .line 58
    :cond_6
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamErrorOnInvalidHttpMessage_:Lcom/google/protobuf/BoolValue;

    if-eqz v6, :cond_0

    .line 59
    invoke-virtual {v6, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 60
    invoke-virtual {v6}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamErrorOnInvalidHttpMessage_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    .line 61
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripMatchingHostPort_:Z

    goto/16 :goto_0

    .line 62
    :sswitch_a
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->localReplyConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    if-eqz v4, :cond_7

    .line 63
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig$b;

    move-result-object v6

    .line 64
    :cond_7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->localReplyConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    if-eqz v6, :cond_0

    .line 65
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig$b;

    .line 66
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->localReplyConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    goto/16 :goto_0

    .line 67
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->alwaysSetRequestIdInResponse_:Z

    goto/16 :goto_0

    .line 68
    :sswitch_c
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestIdExtension_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    if-eqz v4, :cond_8

    .line 69
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension$b;

    move-result-object v6

    .line 70
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestIdExtension_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    if-eqz v6, :cond_0

    .line 71
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension$b;

    .line 72
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestIdExtension_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    goto/16 :goto_0

    .line 73
    :sswitch_d
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    if-eqz v4, :cond_9

    .line 74
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions$b;

    move-result-object v6

    .line 75
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    if-eqz v6, :cond_0

    .line 76
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions$b;

    .line 77
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    goto/16 :goto_0

    .line 78
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 79
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    goto/16 :goto_0

    .line 80
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->mergeSlashes_:Z

    goto/16 :goto_0

    .line 81
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->preserveExternalRequestId_:Z

    goto/16 :goto_0

    .line 82
    :sswitch_11
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_a

    .line 83
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes$c;

    move-result-object v6

    .line 84
    :cond_a
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    if-eqz v6, :cond_b

    .line 85
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes$c;

    .line 86
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    .line 87
    :cond_b
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    goto/16 :goto_0

    .line 88
    :sswitch_12
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->normalizePath_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_c

    .line 89
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v6

    .line 90
    :cond_c
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->normalizePath_:Lcom/google/protobuf/BoolValue;

    if-eqz v6, :cond_0

    .line 91
    invoke-virtual {v6, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 92
    invoke-virtual {v6}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->normalizePath_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    .line 93
    :sswitch_13
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->maxRequestHeadersKb_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_d

    .line 94
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v6

    .line 95
    :cond_d
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/UInt32Value;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->maxRequestHeadersKb_:Lcom/google/protobuf/UInt32Value;

    if-eqz v6, :cond_0

    .line 96
    invoke-virtual {v6, v4}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 97
    invoke-virtual {v6}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->maxRequestHeadersKb_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 98
    :sswitch_14
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_e

    .line 99
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v6

    .line 100
    :cond_e
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v6, :cond_0

    .line 101
    invoke-virtual {v6, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 102
    invoke-virtual {v6}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 103
    :sswitch_15
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->delayedCloseTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_f

    .line 104
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v6

    .line 105
    :cond_f
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->delayedCloseTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v6, :cond_0

    .line 106
    invoke-virtual {v6, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 107
    invoke-virtual {v6}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->delayedCloseTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 108
    :sswitch_16
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->internalAddressConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    if-eqz v4, :cond_10

    .line 109
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig$b;

    move-result-object v6

    .line 110
    :cond_10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->internalAddressConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    if-eqz v6, :cond_0

    .line 111
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig$b;

    .line 112
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->internalAddressConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    goto/16 :goto_0

    .line 113
    :sswitch_17
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamIdleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_11

    .line 114
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v6

    .line 115
    :cond_11
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamIdleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v6, :cond_0

    .line 116
    invoke-virtual {v6, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 117
    invoke-virtual {v6}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamIdleTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    :sswitch_18
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_12

    .line 118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 119
    :cond_12
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    .line 120
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$UpgradeConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$UpgradeConfig;

    .line 121
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 123
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 124
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->skipXffAppend_:Z

    goto/16 :goto_0

    .line 125
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->representIpv4RemoteAddressAsIpv4MappedIpv6_:Z

    goto/16 :goto_0

    .line 126
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v4

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->xffNumTrustedHops_:I

    goto/16 :goto_0

    .line 127
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->proxy100Continue_:Z

    goto/16 :goto_0

    .line 128
    :sswitch_1e
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->setCurrentClientCertDetails_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    if-eqz v4, :cond_13

    .line 129
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails$b;

    move-result-object v6

    .line 130
    :cond_13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->setCurrentClientCertDetails_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    if-eqz v6, :cond_0

    .line 131
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails$b;

    .line 132
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->setCurrentClientCertDetails_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    goto/16 :goto_0

    .line 133
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 134
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    goto/16 :goto_0

    .line 135
    :sswitch_20
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->generateRequestId_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_14

    .line 136
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v6

    .line 137
    :cond_14
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->generateRequestId_:Lcom/google/protobuf/BoolValue;

    if-eqz v6, :cond_0

    .line 138
    invoke-virtual {v6, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 139
    invoke-virtual {v6}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->generateRequestId_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    .line 140
    :sswitch_21
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->useRemoteAddress_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_15

    .line 141
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v6

    .line 142
    :cond_15
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->useRemoteAddress_:Lcom/google/protobuf/BoolValue;

    if-eqz v6, :cond_0

    .line 143
    invoke-virtual {v6, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 144
    invoke-virtual {v6}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->useRemoteAddress_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    :sswitch_22
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_16

    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 146
    :cond_16
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    .line 147
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;

    .line 148
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 149
    :sswitch_23
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->drainTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_17

    .line 150
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v6

    .line 151
    :cond_17
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->drainTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v6, :cond_0

    .line 152
    invoke-virtual {v6, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 153
    invoke-virtual {v6}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->drainTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 154
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 155
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 156
    :sswitch_25
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    if-eqz v4, :cond_18

    .line 157
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions$b;

    move-result-object v6

    .line 158
    :cond_18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    if-eqz v6, :cond_0

    .line 159
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions$b;

    .line 160
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    goto/16 :goto_0

    .line 161
    :sswitch_26
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    if-eqz v4, :cond_19

    .line 162
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions$c;

    move-result-object v6

    .line 163
    :cond_19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    if-eqz v6, :cond_0

    .line 164
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions$c;

    .line 165
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    goto/16 :goto_0

    .line 166
    :sswitch_27
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    if-eqz v4, :cond_1a

    .line 167
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing$b;

    move-result-object v6

    .line 168
    :cond_1a
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    if-eqz v6, :cond_0

    .line 169
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing$b;

    .line 170
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    goto/16 :goto_0

    .line 171
    :sswitch_28
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->addUserAgent_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_1b

    .line 172
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v6

    .line 173
    :cond_1b
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->addUserAgent_:Lcom/google/protobuf/BoolValue;

    if-eqz v6, :cond_0

    .line 174
    invoke-virtual {v6, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 175
    invoke-virtual {v6}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->addUserAgent_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    :sswitch_29
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_1c

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 177
    :cond_1c
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    .line 178
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;

    .line 179
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 180
    :sswitch_2a
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    if-ne v4, v3, :cond_1d

    .line 181
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    move-result-object v6

    .line 182
    :cond_1d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    if-eqz v6, :cond_1e

    .line 183
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;->s0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    .line 184
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    .line 185
    :cond_1e
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    goto/16 :goto_0

    .line 186
    :sswitch_2b
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1f

    .line 187
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds$b;

    move-result-object v6

    .line 188
    :cond_1f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    if-eqz v6, :cond_20

    .line 189
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds$b;

    .line 190
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    .line 191
    :cond_20
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    goto/16 :goto_0

    .line 192
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 193
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 194
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 195
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_2e
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 196
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 197
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 198
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_21

    .line 199
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    :cond_21
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_22

    .line 200
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    :cond_22
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_23

    .line 201
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    :cond_23
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_24

    .line 202
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    .line 203
    :cond_24
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 204
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_25
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_26

    .line 205
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    :cond_26
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_27

    .line 206
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    :cond_27
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_28

    .line 207
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    :cond_28
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_29

    .line 208
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    .line 209
    :cond_29
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 210
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2e
        0x8 -> :sswitch_2d
        0x12 -> :sswitch_2c
        0x1a -> :sswitch_2b
        0x22 -> :sswitch_2a
        0x2a -> :sswitch_29
        0x32 -> :sswitch_28
        0x3a -> :sswitch_27
        0x42 -> :sswitch_26
        0x4a -> :sswitch_25
        0x52 -> :sswitch_24
        0x62 -> :sswitch_23
        0x6a -> :sswitch_22
        0x72 -> :sswitch_21
        0x7a -> :sswitch_20
        0x80 -> :sswitch_1f
        0x8a -> :sswitch_1e
        0x90 -> :sswitch_1d
        0x98 -> :sswitch_1c
        0xa0 -> :sswitch_1b
        0xa8 -> :sswitch_1a
        0xb2 -> :sswitch_19
        0xba -> :sswitch_18
        0xc2 -> :sswitch_17
        0xca -> :sswitch_16
        0xd2 -> :sswitch_15
        0xe2 -> :sswitch_14
        0xea -> :sswitch_13
        0xf2 -> :sswitch_12
        0xfa -> :sswitch_11
        0x100 -> :sswitch_10
        0x108 -> :sswitch_f
        0x110 -> :sswitch_e
        0x11a -> :sswitch_d
        0x122 -> :sswitch_c
        0x128 -> :sswitch_b
        0x132 -> :sswitch_a
        0x138 -> :sswitch_9
        0x142 -> :sswitch_8
        0x14a -> :sswitch_7
        0x150 -> :sswitch_6
        0x15a -> :sswitch_5
        0x162 -> :sswitch_4
        0x168 -> :sswitch_3
        0x172 -> :sswitch_2
        0x178 -> :sswitch_1
        0x182 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$10002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortMode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamErrorOnInvalidHttpMessage_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$10202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathNormalizationOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    return-object p1
.end method

.method static synthetic access$10302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripTrailingHostDot_:Z

    return p1
.end method

.method static synthetic access$10402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    return p1
.end method

.method static synthetic access$10502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    return p1
.end method

.method static synthetic access$10600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$11100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    return p0
.end method

.method static synthetic access$6002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    return p1
.end method

.method static synthetic access$6100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->addUserAgent_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$6502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    return-object p1
.end method

.method static synthetic access$6602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    return-object p1
.end method

.method static synthetic access$6702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    return-object p1
.end method

.method static synthetic access$6802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    return-object p1
.end method

.method static synthetic access$6902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http3ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    return-object p1
.end method

.method static synthetic access$7000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    return p0
.end method

.method static synthetic access$7102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    return p1
.end method

.method static synthetic access$7202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->schemeHeaderTransformation_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    return-object p1
.end method

.method static synthetic access$7302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->maxRequestHeadersKb_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$7402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamIdleTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$7502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$7602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestHeadersTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$7702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->drainTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$7802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->delayedCloseTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$7900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$7902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->useRemoteAddress_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$8102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->xffNumTrustedHops_:I

    return p1
.end method

.method static synthetic access$8200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$8202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->internalAddressConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    return-object p1
.end method

.method static synthetic access$8402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->skipXffAppend_:Z

    return p1
.end method

.method static synthetic access$8500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->generateRequestId_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$8702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->preserveExternalRequestId_:Z

    return p1
.end method

.method static synthetic access$8802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->alwaysSetRequestIdInResponse_:Z

    return p1
.end method

.method static synthetic access$8900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    return p0
.end method

.method static synthetic access$8902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    return p1
.end method

.method static synthetic access$9002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->setCurrentClientCertDetails_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    return-object p1
.end method

.method static synthetic access$9102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->proxy100Continue_:Z

    return p1
.end method

.method static synthetic access$9202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->representIpv4RemoteAddressAsIpv4MappedIpv6_:Z

    return p1
.end method

.method static synthetic access$9300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->normalizePath_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$9502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->mergeSlashes_:Z

    return p1
.end method

.method static synthetic access$9600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    return p0
.end method

.method static synthetic access$9602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    return p1
.end method

.method static synthetic access$9702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestIdExtension_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    return-object p1
.end method

.method static synthetic access$9802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->localReplyConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    return-object p1
.end method

.method static synthetic access$9902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripMatchingHostPort_:Z

    return p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;->t0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStatPrefix()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStatPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpFiltersList()Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpFiltersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasAddUserAgent()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasAddUserAgent()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 10
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasAddUserAgent()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAddUserAgent()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAddUserAgent()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasTracing()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasTracing()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 14
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasTracing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasCommonHttpProtocolOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasCommonHttpProtocolOptions()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 18
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasCommonHttpProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttpProtocolOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttpProtocolOptions()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 22
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttpProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttp2ProtocolOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttp2ProtocolOptions()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 26
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttp2ProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttp3ProtocolOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttp3ProtocolOptions()Z

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 30
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttp3ProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp3ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp3ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 33
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 35
    :cond_11
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    if-eq v1, v2, :cond_12

    return v3

    .line 36
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasSchemeHeaderTransformation()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasSchemeHeaderTransformation()Z

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    .line 37
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasSchemeHeaderTransformation()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSchemeHeaderTransformation()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSchemeHeaderTransformation()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    .line 40
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasMaxRequestHeadersKb()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasMaxRequestHeadersKb()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 41
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasMaxRequestHeadersKb()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getMaxRequestHeadersKb()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getMaxRequestHeadersKb()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    .line 44
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasStreamIdleTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasStreamIdleTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_17

    return v3

    .line 45
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasStreamIdleTimeout()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v3

    .line 48
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_19

    return v3

    .line 49
    :cond_19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestTimeout()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v3

    .line 52
    :cond_1a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestHeadersTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestHeadersTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_1b

    return v3

    .line 53
    :cond_1b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestHeadersTimeout()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestHeadersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestHeadersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v3

    .line 56
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasDrainTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasDrainTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_1d

    return v3

    .line 57
    :cond_1d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasDrainTimeout()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDrainTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDrainTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 60
    :cond_1e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasDelayedCloseTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasDelayedCloseTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 61
    :cond_1f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasDelayedCloseTimeout()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 62
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDelayedCloseTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDelayedCloseTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v3

    .line 64
    :cond_20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAccessLogList()Ljava/util/List;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAccessLogList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v3

    .line 66
    :cond_21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasUseRemoteAddress()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasUseRemoteAddress()Z

    move-result v2

    if-eq v1, v2, :cond_22

    return v3

    .line 67
    :cond_22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasUseRemoteAddress()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 68
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getUseRemoteAddress()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getUseRemoteAddress()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v3

    .line 70
    :cond_23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getXffNumTrustedHops()I

    move-result v1

    .line 71
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getXffNumTrustedHops()I

    move-result v2

    if-eq v1, v2, :cond_24

    return v3

    .line 72
    :cond_24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getOriginalIpDetectionExtensionsList()Ljava/util/List;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getOriginalIpDetectionExtensionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v3

    .line 74
    :cond_25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasInternalAddressConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasInternalAddressConfig()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 75
    :cond_26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasInternalAddressConfig()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 76
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getInternalAddressConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getInternalAddressConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v3

    .line 78
    :cond_27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSkipXffAppend()Z

    move-result v1

    .line 79
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSkipXffAppend()Z

    move-result v2

    if-eq v1, v2, :cond_28

    return v3

    .line 80
    :cond_28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getVia()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getVia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v3

    .line 82
    :cond_29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasGenerateRequestId()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasGenerateRequestId()Z

    move-result v2

    if-eq v1, v2, :cond_2a

    return v3

    .line 83
    :cond_2a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasGenerateRequestId()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 84
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getGenerateRequestId()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getGenerateRequestId()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v3

    .line 86
    :cond_2b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getPreserveExternalRequestId()Z

    move-result v1

    .line 87
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getPreserveExternalRequestId()Z

    move-result v2

    if-eq v1, v2, :cond_2c

    return v3

    .line 88
    :cond_2c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAlwaysSetRequestIdInResponse()Z

    move-result v1

    .line 89
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAlwaysSetRequestIdInResponse()Z

    move-result v2

    if-eq v1, v2, :cond_2d

    return v3

    .line 90
    :cond_2d
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    if-eq v1, v2, :cond_2e

    return v3

    .line 91
    :cond_2e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasSetCurrentClientCertDetails()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasSetCurrentClientCertDetails()Z

    move-result v2

    if-eq v1, v2, :cond_2f

    return v3

    .line 92
    :cond_2f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasSetCurrentClientCertDetails()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 93
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSetCurrentClientCertDetails()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    move-result-object v1

    .line 94
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSetCurrentClientCertDetails()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 95
    :cond_30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getProxy100Continue()Z

    move-result v1

    .line 96
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getProxy100Continue()Z

    move-result v2

    if-eq v1, v2, :cond_31

    return v3

    .line 97
    :cond_31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRepresentIpv4RemoteAddressAsIpv4MappedIpv6()Z

    move-result v1

    .line 98
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRepresentIpv4RemoteAddressAsIpv4MappedIpv6()Z

    move-result v2

    if-eq v1, v2, :cond_32

    return v3

    .line 99
    :cond_32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getUpgradeConfigsList()Ljava/util/List;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getUpgradeConfigsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v3

    .line 101
    :cond_33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasNormalizePath()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasNormalizePath()Z

    move-result v2

    if-eq v1, v2, :cond_34

    return v3

    .line 102
    :cond_34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasNormalizePath()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 103
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getNormalizePath()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getNormalizePath()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v3

    .line 105
    :cond_35
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getMergeSlashes()Z

    move-result v1

    .line 106
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getMergeSlashes()Z

    move-result v2

    if-eq v1, v2, :cond_36

    return v3

    .line 107
    :cond_36
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    if-eq v1, v2, :cond_37

    return v3

    .line 108
    :cond_37
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestIdExtension()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestIdExtension()Z

    move-result v2

    if-eq v1, v2, :cond_38

    return v3

    .line 109
    :cond_38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestIdExtension()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 110
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestIdExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestIdExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v3

    .line 112
    :cond_39
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasLocalReplyConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasLocalReplyConfig()Z

    move-result v2

    if-eq v1, v2, :cond_3a

    return v3

    .line 113
    :cond_3a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasLocalReplyConfig()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 114
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getLocalReplyConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getLocalReplyConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v3

    .line 116
    :cond_3b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripMatchingHostPort()Z

    move-result v1

    .line 117
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripMatchingHostPort()Z

    move-result v2

    if-eq v1, v2, :cond_3c

    return v3

    .line 118
    :cond_3c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasStreamErrorOnInvalidHttpMessage()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasStreamErrorOnInvalidHttpMessage()Z

    move-result v2

    if-eq v1, v2, :cond_3d

    return v3

    .line 119
    :cond_3d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasStreamErrorOnInvalidHttpMessage()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 120
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamErrorOnInvalidHttpMessage()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamErrorOnInvalidHttpMessage()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v3

    .line 122
    :cond_3e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasPathNormalizationOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasPathNormalizationOptions()Z

    move-result v2

    if-eq v1, v2, :cond_3f

    return v3

    .line 123
    :cond_3f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasPathNormalizationOptions()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 124
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getPathNormalizationOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    move-result-object v1

    .line 125
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getPathNormalizationOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    return v3

    .line 126
    :cond_40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripTrailingHostDot()Z

    move-result v1

    .line 127
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripTrailingHostDot()Z

    move-result v2

    if-eq v1, v2, :cond_41

    return v3

    .line 128
    :cond_41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRouteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRouteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v3

    .line 129
    :cond_42
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_45

    const/4 v2, 0x4

    if-eq v1, v2, :cond_44

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_43

    goto :goto_0

    .line 130
    :cond_43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getScopedRoutes()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    move-result-object v1

    .line 131
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getScopedRoutes()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v3

    .line 132
    :cond_44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    move-result-object v1

    .line 133
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v3

    .line 134
    :cond_45
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v3

    .line 136
    :cond_46
    :goto_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripPortModeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$StripPortModeCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripPortModeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$StripPortModeCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    return v3

    .line 137
    :cond_47
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_48

    goto :goto_1

    .line 138
    :cond_48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripAnyHostPort()Z

    move-result v1

    .line 139
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripAnyHostPort()Z

    move-result v2

    if-eq v1, v2, :cond_49

    return v3

    .line 140
    :cond_49
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    return v3

    :cond_4a
    return v0
.end method

.method public getAccessLog(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;

    return-object p1
.end method

.method public getAccessLogCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAccessLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    return-object v0
.end method

.method public getAccessLogOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/b;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/b;

    return-object p1
.end method

.method public getAccessLogOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    return-object v0
.end method

.method public getAddUserAgent()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->addUserAgent_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAddUserAgentOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAddUserAgent()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getAlwaysSetRequestIdInResponse()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->alwaysSetRequestIdInResponse_:Z

    return v0
.end method

.method public getCodecType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;

    :cond_0
    return-object v0
.end method

.method public getCodecTypeValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    return v0
.end method

.method public getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCommonHttpProtocolOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/f0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    return-object v0
.end method

.method public getDelayedCloseTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->delayedCloseTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDelayedCloseTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDelayedCloseTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getDrainTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->drainTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDrainTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDrainTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getForwardClientCertDetails()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;

    :cond_0
    return-object v0
.end method

.method public getForwardClientCertDetailsValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    return v0
.end method

.method public getGenerateRequestId()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->generateRequestId_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGenerateRequestIdOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getGenerateRequestId()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHttp2ProtocolOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHttp3ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http3ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHttp3ProtocolOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/e0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp3ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHttpFilters(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;

    return-object p1
.end method

.method public getHttpFiltersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHttpFiltersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    return-object v0
.end method

.method public getHttpFiltersOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/c;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/c;

    return-object p1
.end method

.method public getHttpFiltersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    return-object v0
.end method

.method public getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHttpProtocolOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/c0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public getInternalAddressConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->internalAddressConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInternalAddressConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getInternalAddressConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLocalReplyConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->localReplyConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalReplyConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getLocalReplyConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRequestHeadersKb()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->maxRequestHeadersKb_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxRequestHeadersKbOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getMaxRequestHeadersKb()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMergeSlashes()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->mergeSlashes_:Z

    return v0
.end method

.method public getNormalizePath()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->normalizePath_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNormalizePathOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getNormalizePath()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalIpDetectionExtensions(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    return-object p1
.end method

.method public getOriginalIpDetectionExtensionsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOriginalIpDetectionExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalIpDetectionExtensionsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;

    return-object p1
.end method

.method public getOriginalIpDetectionExtensionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPathNormalizationOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathNormalizationOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPathNormalizationOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$e;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getPathNormalizationOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPathWithEscapedSlashesAction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;

    :cond_0
    return-object v0
.end method

.method public getPathWithEscapedSlashesActionValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    return v0
.end method

.method public getPreserveExternalRequestId()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->preserveExternalRequestId_:Z

    return v0
.end method

.method public getProxy100Continue()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->proxy100Continue_:Z

    return v0
.end method

.method public getRds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    move-result-object v0

    return-object v0
.end method

.method public getRdsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    move-result-object v0

    return-object v0
.end method

.method public getRepresentIpv4RemoteAddressAsIpv4MappedIpv6()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->representIpv4RemoteAddressAsIpv4MappedIpv6_:Z

    return v0
.end method

.method public getRequestHeadersTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestHeadersTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestHeadersTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestHeadersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestIdExtension_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestIdExtensionOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestIdExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getRouteConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/p;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getRouteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeHeaderTransformation()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->schemeHeaderTransformation_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSchemeHeaderTransformationOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/z0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSchemeHeaderTransformation()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    move-result-object v0

    return-object v0
.end method

.method public getScopedRoutes()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    move-result-object v0

    return-object v0
.end method

.method public getScopedRoutesOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/j;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;->AUTO:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    .line 9
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    .line 12
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    const/4 v1, 0x0

    .line 13
    :goto_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    const/4 v3, 0x5

    .line 14
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    .line 15
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->addUserAgent_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAddUserAgent()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa

    .line 25
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->drainTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDrainTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    const/4 v1, 0x0

    .line 28
    :goto_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    const/16 v3, 0xd

    .line 29
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    .line 30
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 31
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->useRemoteAddress_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_d

    const/16 v1, 0xe

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getUseRemoteAddress()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_d
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->generateRequestId_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getGenerateRequestId()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_e
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;->SANITIZE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_f

    const/16 v1, 0x10

    .line 36
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    .line 37
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->setCurrentClientCertDetails_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    if-eqz v1, :cond_10

    const/16 v1, 0x11

    .line 39
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSetCurrentClientCertDetails()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_10
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->proxy100Continue_:Z

    if-eqz v1, :cond_11

    const/16 v3, 0x12

    .line 41
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_11
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->xffNumTrustedHops_:I

    if-eqz v1, :cond_12

    const/16 v3, 0x13

    .line 43
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_12
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->representIpv4RemoteAddressAsIpv4MappedIpv6_:Z

    if-eqz v1, :cond_13

    const/16 v3, 0x14

    .line 45
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_13
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->skipXffAppend_:Z

    if-eqz v1, :cond_14

    const/16 v3, 0x15

    .line 47
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0x16

    .line 49
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    const/4 v1, 0x0

    .line 50
    :goto_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_16

    const/16 v3, 0x17

    .line 51
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    .line 52
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 53
    :cond_16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamIdleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_17

    const/16 v1, 0x18

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->internalAddressConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    if-eqz v1, :cond_18

    const/16 v1, 0x19

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getInternalAddressConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->delayedCloseTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_19

    const/16 v1, 0x1a

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDelayedCloseTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_1a

    const/16 v1, 0x1c

    .line 60
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_1a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->maxRequestHeadersKb_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_1b

    const/16 v1, 0x1d

    .line 62
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getMaxRequestHeadersKb()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_1b
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->normalizePath_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_1c

    const/16 v1, 0x1e

    .line 64
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getNormalizePath()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_1c
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_1d

    .line 66
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    .line 67
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_1d
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->preserveExternalRequestId_:Z

    if-eqz v1, :cond_1e

    const/16 v3, 0x20

    .line 69
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_1e
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->mergeSlashes_:Z

    if-eqz v1, :cond_1f

    const/16 v3, 0x21

    .line 71
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_1f
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;->OVERWRITE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_20

    const/16 v1, 0x22

    .line 73
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    .line 74
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    if-eqz v1, :cond_21

    const/16 v1, 0x23

    .line 76
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_21
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestIdExtension_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    if-eqz v1, :cond_22

    const/16 v1, 0x24

    .line 78
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestIdExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_22
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->alwaysSetRequestIdInResponse_:Z

    if-eqz v1, :cond_23

    const/16 v3, 0x25

    .line 80
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_23
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->localReplyConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    if-eqz v1, :cond_24

    const/16 v1, 0x26

    .line 82
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getLocalReplyConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_24
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripMatchingHostPort_:Z

    if-eqz v1, :cond_25

    const/16 v3, 0x27

    .line 84
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_25
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamErrorOnInvalidHttpMessage_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_26

    const/16 v1, 0x28

    .line 86
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamErrorOnInvalidHttpMessage()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_26
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestHeadersTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_27

    const/16 v1, 0x29

    .line 88
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestHeadersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_27
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_28

    .line 90
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortMode_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 92
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_28
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathNormalizationOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    if-eqz v1, :cond_29

    const/16 v1, 0x2b

    .line 94
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getPathNormalizationOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_29
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http3ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    if-eqz v1, :cond_2a

    const/16 v1, 0x2c

    .line 96
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp3ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_2a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;->IMPLEMENTATION_SPECIFIC_DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_2b

    const/16 v1, 0x2d

    .line 98
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    .line 99
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_2b
    :goto_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2c

    const/16 v1, 0x2e

    .line 101
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    .line 102
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 103
    :cond_2c
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripTrailingHostDot_:Z

    if-eqz v1, :cond_2d

    const/16 v2, 0x2f

    .line 104
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_2d
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->schemeHeaderTransformation_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    if-eqz v1, :cond_2e

    const/16 v1, 0x30

    .line 106
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSchemeHeaderTransformation()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_2e
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getServerHeaderTransformation()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;

    :cond_0
    return-object v0
.end method

.method public getServerHeaderTransformationValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getServerNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSetCurrentClientCertDetails()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->setCurrentClientCertDetails_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSetCurrentClientCertDetailsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSetCurrentClientCertDetails()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    move-result-object v0

    return-object v0
.end method

.method public getSkipXffAppend()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->skipXffAppend_:Z

    return v0
.end method

.method public getStatPrefix()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStreamErrorOnInvalidHttpMessage()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamErrorOnInvalidHttpMessage_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStreamErrorOnInvalidHttpMessageOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamErrorOnInvalidHttpMessage()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getStreamIdleTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamIdleTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStreamIdleTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getStripAnyHostPort()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortMode_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStripMatchingHostPort()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripMatchingHostPort_:Z

    return v0
.end method

.method public getStripPortModeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$StripPortModeCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$StripPortModeCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$StripPortModeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStripTrailingHostDot()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripTrailingHostDot_:Z

    return v0
.end method

.method public getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTracingOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$g;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUpgradeConfigs(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$UpgradeConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$UpgradeConfig;

    return-object p1
.end method

.method public getUpgradeConfigsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUpgradeConfigsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$UpgradeConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getUpgradeConfigsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$h;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$h;

    return-object p1
.end method

.method public getUpgradeConfigsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getUseRemoteAddress()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->useRemoteAddress_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUseRemoteAddressOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getUseRemoteAddress()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getVia()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    return-object v0
.end method

.method public getViaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getXffNumTrustedHops()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->xffNumTrustedHops_:I

    return v0
.end method

.method public hasAddUserAgent()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->addUserAgent_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCommonHttpProtocolOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDelayedCloseTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->delayedCloseTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDrainTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->drainTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGenerateRequestId()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->generateRequestId_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHttp2ProtocolOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHttp3ProtocolOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http3ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHttpProtocolOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInternalAddressConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->internalAddressConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocalReplyConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->localReplyConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxRequestHeadersKb()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->maxRequestHeadersKb_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNormalizePath()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->normalizePath_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPathNormalizationOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathNormalizationOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRds()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequestHeadersTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestHeadersTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequestIdExtension()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestIdExtension_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequestTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRouteConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSchemeHeaderTransformation()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->schemeHeaderTransformation_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScopedRoutes()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSetCurrentClientCertDetails()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->setCurrentClientCertDetails_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStreamErrorOnInvalidHttpMessage()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamErrorOnInvalidHttpMessage_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStreamIdleTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamIdleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStripAnyHostPort()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTracing()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUseRemoteAddress()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->useRemoteAddress_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpFiltersCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpFiltersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasAddUserAgent()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAddUserAgent()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasTracing()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasCommonHttpProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x23

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttpProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttp2ProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasHttp3ProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2c

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp3ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x22

    mul-int/lit8 v0, v0, 0x35

    .line 20
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    add-int/2addr v0, v1

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasSchemeHeaderTransformation()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x30

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSchemeHeaderTransformation()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasMaxRequestHeadersKb()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getMaxRequestHeadersKb()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasStreamIdleTimeout()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestTimeout()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestHeadersTimeout()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x35

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestHeadersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasDrainTimeout()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDrainTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasDelayedCloseTimeout()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDelayedCloseTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAccessLogCount()I

    move-result v1

    if-lez v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAccessLogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasUseRemoteAddress()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getUseRemoteAddress()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 39
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getXffNumTrustedHops()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getOriginalIpDetectionExtensionsCount()I

    move-result v1

    if-lez v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2e

    mul-int/lit8 v0, v0, 0x35

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getOriginalIpDetectionExtensionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasInternalAddressConfig()Z

    move-result v1

    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getInternalAddressConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSkipXffAppend()Z

    move-result v1

    .line 45
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getVia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasGenerateRequestId()Z

    move-result v1

    if-eqz v1, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getGenerateRequestId()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x35

    .line 49
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getPreserveExternalRequestId()Z

    move-result v1

    .line 50
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x35

    .line 51
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAlwaysSetRequestIdInResponse()Z

    move-result v1

    .line 52
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 53
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    add-int/2addr v0, v1

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasSetCurrentClientCertDetails()Z

    move-result v1

    if-eqz v1, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 55
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSetCurrentClientCertDetails()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getProxy100Continue()Z

    move-result v1

    .line 57
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRepresentIpv4RemoteAddressAsIpv4MappedIpv6()Z

    move-result v1

    .line 59
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getUpgradeConfigsCount()I

    move-result v1

    if-lez v1, :cond_15

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 61
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getUpgradeConfigsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasNormalizePath()Z

    move-result v1

    if-eqz v1, :cond_16

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x35

    .line 63
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getNormalizePath()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x21

    mul-int/lit8 v0, v0, 0x35

    .line 64
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getMergeSlashes()Z

    move-result v1

    .line 65
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2d

    mul-int/lit8 v0, v0, 0x35

    .line 66
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    add-int/2addr v0, v1

    .line 67
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRequestIdExtension()Z

    move-result v1

    if-eqz v1, :cond_17

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x24

    mul-int/lit8 v0, v0, 0x35

    .line 68
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestIdExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasLocalReplyConfig()Z

    move-result v1

    if-eqz v1, :cond_18

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x26

    mul-int/lit8 v0, v0, 0x35

    .line 70
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getLocalReplyConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x27

    mul-int/lit8 v0, v0, 0x35

    .line 71
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripMatchingHostPort()Z

    move-result v1

    .line 72
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasStreamErrorOnInvalidHttpMessage()Z

    move-result v1

    if-eqz v1, :cond_19

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x28

    mul-int/lit8 v0, v0, 0x35

    .line 74
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamErrorOnInvalidHttpMessage()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasPathNormalizationOptions()Z

    move-result v1

    if-eqz v1, :cond_1a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2b

    mul-int/lit8 v0, v0, 0x35

    .line 76
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getPathNormalizationOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2f

    mul-int/lit8 v0, v0, 0x35

    .line 77
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripTrailingHostDot()Z

    move-result v1

    .line 78
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1d

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_1b

    goto :goto_1

    :cond_1b
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 80
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getScopedRoutes()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1c
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 81
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1d
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 82
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 83
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_1e

    goto :goto_2

    :cond_1e
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 84
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStripAnyHostPort()Z

    move-result v1

    .line 85
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    mul-int/lit8 v0, v0, 0x1d

    .line 86
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;->t0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;->AUTO:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$CodecType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->codecType_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->statPrefix_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 10
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpFilters_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->addUserAgent_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getAddUserAgent()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$Tracing;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http1ProtocolOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http2ProtocolOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xa

    .line 20
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverName_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->drainTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_a

    const/16 v1, 0xc

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDrainTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_a
    const/4 v1, 0x0

    .line 23
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0xd

    .line 24
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->accessLog_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    :cond_b
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->useRemoteAddress_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_c

    const/16 v1, 0xe

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getUseRemoteAddress()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->generateRequestId_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_d

    const/16 v1, 0xf

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getGenerateRequestId()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_d
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;->SANITIZE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ForwardClientCertDetails;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_e

    const/16 v1, 0x10

    .line 30
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->forwardClientCertDetails_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 31
    :cond_e
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->setCurrentClientCertDetails_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    if-eqz v1, :cond_f

    const/16 v1, 0x11

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSetCurrentClientCertDetails()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$SetCurrentClientCertDetails;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 33
    :cond_f
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->proxy100Continue_:Z

    if-eqz v1, :cond_10

    const/16 v2, 0x12

    .line 34
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 35
    :cond_10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->xffNumTrustedHops_:I

    if-eqz v1, :cond_11

    const/16 v2, 0x13

    .line 36
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 37
    :cond_11
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->representIpv4RemoteAddressAsIpv4MappedIpv6_:Z

    if-eqz v1, :cond_12

    const/16 v2, 0x14

    .line 38
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 39
    :cond_12
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->skipXffAppend_:Z

    if-eqz v1, :cond_13

    const/16 v2, 0x15

    .line 40
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 41
    :cond_13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0x16

    .line 42
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->via_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_14
    const/4 v1, 0x0

    .line 43
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    const/16 v2, 0x17

    .line 44
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 45
    :cond_15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamIdleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_16

    const/16 v1, 0x18

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 47
    :cond_16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->internalAddressConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    if-eqz v1, :cond_17

    const/16 v1, 0x19

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getInternalAddressConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$InternalAddressConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 49
    :cond_17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->delayedCloseTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_18

    const/16 v1, 0x1a

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getDelayedCloseTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 51
    :cond_18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_19

    const/16 v1, 0x1c

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 53
    :cond_19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->maxRequestHeadersKb_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_1a

    const/16 v1, 0x1d

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getMaxRequestHeadersKb()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 55
    :cond_1a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->normalizePath_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_1b

    const/16 v1, 0x1e

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getNormalizePath()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 57
    :cond_1b
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifierCase_:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1c

    .line 58
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->routeSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/ScopedRoutes;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 59
    :cond_1c
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->preserveExternalRequestId_:Z

    if-eqz v1, :cond_1d

    const/16 v2, 0x20

    .line 60
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 61
    :cond_1d
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->mergeSlashes_:Z

    if-eqz v1, :cond_1e

    const/16 v2, 0x21

    .line 62
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 63
    :cond_1e
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;->OVERWRITE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$ServerHeaderTransformation;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1f

    const/16 v1, 0x22

    .line 64
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->serverHeaderTransformation_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 65
    :cond_1f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    if-eqz v1, :cond_20

    const/16 v1, 0x23

    .line 66
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 67
    :cond_20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestIdExtension_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    if-eqz v1, :cond_21

    const/16 v1, 0x24

    .line 68
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestIdExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/RequestIDExtension;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 69
    :cond_21
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->alwaysSetRequestIdInResponse_:Z

    if-eqz v1, :cond_22

    const/16 v2, 0x25

    .line 70
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 71
    :cond_22
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->localReplyConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    if-eqz v1, :cond_23

    const/16 v1, 0x26

    .line 72
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getLocalReplyConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/LocalReplyConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 73
    :cond_23
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripMatchingHostPort_:Z

    if-eqz v1, :cond_24

    const/16 v2, 0x27

    .line 74
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 75
    :cond_24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->streamErrorOnInvalidHttpMessage_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_25

    const/16 v1, 0x28

    .line 76
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getStreamErrorOnInvalidHttpMessage()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 77
    :cond_25
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->requestHeadersTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_26

    const/16 v1, 0x29

    .line 78
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRequestHeadersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 79
    :cond_26
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortModeCase_:I

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_27

    .line 80
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripPortMode_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 82
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 83
    :cond_27
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathNormalizationOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    if-eqz v1, :cond_28

    const/16 v1, 0x2b

    .line 84
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getPathNormalizationOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathNormalizationOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 85
    :cond_28
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->http3ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    if-eqz v1, :cond_29

    const/16 v1, 0x2c

    .line 86
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttp3ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Http3ProtocolOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 87
    :cond_29
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;->IMPLEMENTATION_SPECIFIC_DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$PathWithEscapedSlashesAction;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2a

    const/16 v1, 0x2d

    .line 88
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->pathWithEscapedSlashesAction_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 89
    :cond_2a
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    const/16 v1, 0x2e

    .line 90
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->originalIpDetectionExtensions_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 91
    :cond_2b
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->stripTrailingHostDot_:Z

    if-eqz v0, :cond_2c

    const/16 v1, 0x2f

    .line 92
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 93
    :cond_2c
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->schemeHeaderTransformation_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    if-eqz v0, :cond_2d

    const/16 v0, 0x30

    .line 94
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getSchemeHeaderTransformation()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SchemeHeaderTransformation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 95
    :cond_2d
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

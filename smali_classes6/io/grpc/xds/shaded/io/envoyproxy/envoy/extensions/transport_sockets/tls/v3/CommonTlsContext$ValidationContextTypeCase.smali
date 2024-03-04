.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidationContextTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

.field public static final enum COMBINED_VALIDATION_CONTEXT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

.field public static final enum VALIDATIONCONTEXTTYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

.field public static final enum VALIDATION_CONTEXT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

.field public static final enum VALIDATION_CONTEXT_CERTIFICATE_PROVIDER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum VALIDATION_CONTEXT_SDS_SECRET_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    const-string v1, "VALIDATION_CONTEXT"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->VALIDATION_CONTEXT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    const-string v4, "VALIDATION_CONTEXT_SDS_SECRET_CONFIG"

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->VALIDATION_CONTEXT_SDS_SECRET_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    const-string v6, "COMBINED_VALIDATION_CONTEXT"

    const/4 v7, 0x2

    const/16 v8, 0x8

    invoke-direct {v4, v6, v7, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->COMBINED_VALIDATION_CONTEXT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    const-string v8, "VALIDATION_CONTEXT_CERTIFICATE_PROVIDER"

    const/16 v9, 0xa

    invoke-direct {v6, v8, v3, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->VALIDATION_CONTEXT_CERTIFICATE_PROVIDER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    const-string v9, "VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE"

    const/4 v10, 0x4

    const/16 v11, 0xc

    invoke-direct {v8, v9, v10, v11}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    .line 6
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    const-string v11, "VALIDATIONCONTEXTTYPE_NOT_SET"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->VALIDATIONCONTEXTTYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    aput-object v0, v11, v2

    aput-object v1, v11, v5

    aput-object v4, v11, v7

    aput-object v6, v11, v3

    aput-object v8, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xc

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->COMBINED_VALIDATION_CONTEXT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->VALIDATION_CONTEXT_SDS_SECRET_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->VALIDATION_CONTEXT_CERTIFICATE_PROVIDER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->VALIDATION_CONTEXT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->VALIDATIONCONTEXTTYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->value:I

    return v0
.end method

.class public final Lcom/google/logging/type/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "\n&google/logging/type/http_request.proto\u0012\u0013google.logging.type\u001a\u001egoogle/protobuf/duration.proto\"\u00ef\u0002\n\u000bHttpRequest\u0012\u0016\n\u000erequest_method\u0018\u0001 \u0001(\t\u0012\u0013\n\u000brequest_url\u0018\u0002 \u0001(\t\u0012\u0014\n\u000crequest_size\u0018\u0003 \u0001(\u0003\u0012\u000e\n\u0006status\u0018\u0004 \u0001(\u0005\u0012\u0015\n\rresponse_size\u0018\u0005 \u0001(\u0003\u0012\u0012\n\nuser_agent\u0018\u0006 \u0001(\t\u0012\u0011\n\tremote_ip\u0018\u0007 \u0001(\t\u0012\u0011\n\tserver_ip\u0018\r \u0001(\t\u0012\u000f\n\u0007referer\u0018\u0008 \u0001(\t\u0012*\n\u0007latency\u0018\u000e \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u0014\n\u000ccache_lookup\u0018\u000b \u0001(\u0008\u0012\u0011\n\tcache_hit\u0018\t \u0001(\u0008\u0012*\n\"cache_validated_with_origin_server\u0018\n \u0001(\u0008\u0012\u0018\n\u0010cache_fill_bytes\u0018\u000c \u0001(\u0003\u0012\u0010\n\u0008protocol\u0018\u000f \u0001(\tB\u00be\u0001\n\u0017com.google.logging.typeB\u0010HttpRequestProtoP\u0001Z8google.golang.org/genproto/googleapis/logging/type;ltype\u00aa\u0002\u0019Google.Cloud.Logging.Type\u00ca\u0002\u0019Google\\Cloud\\Logging\\Type\u00ea\u0002\u001cGoogle::Cloud::Logging::Typeb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/logging/type/a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4
    invoke-static {}, Lcom/google/logging/type/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/logging/type/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 5
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "RequestMethod"

    const-string v3, "RequestUrl"

    const-string v4, "RequestSize"

    const-string v5, "Status"

    const-string v6, "ResponseSize"

    const-string v7, "UserAgent"

    const-string v8, "RemoteIp"

    const-string v9, "ServerIp"

    const-string v10, "Referer"

    const-string v11, "Latency"

    const-string v12, "CacheLookup"

    const-string v13, "CacheHit"

    const-string v14, "CacheValidatedWithOriginServer"

    const-string v15, "CacheFillBytes"

    const-string v16, "Protocol"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/logging/type/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 6
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/logging/type/a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.class public final Lcom/google/logging/type/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\n&google/logging/type/log_severity.proto\u0012\u0013google.logging.type*\u0082\u0001\n\u000bLogSeverity\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\t\n\u0005DEBUG\u0010d\u0012\t\n\u0004INFO\u0010\u00c8\u0001\u0012\u000b\n\u0006NOTICE\u0010\u00ac\u0002\u0012\u000c\n\u0007WARNING\u0010\u0090\u0003\u0012\n\n\u0005ERROR\u0010\u00f4\u0003\u0012\r\n\u0008CRITICAL\u0010\u00d8\u0004\u0012\n\n\u0005ALERT\u0010\u00bc\u0005\u0012\u000e\n\tEMERGENCY\u0010\u00a0\u0006B\u00c5\u0001\n\u0017com.google.logging.typeB\u0010LogSeverityProtoP\u0001Z8google.golang.org/genproto/googleapis/logging/type;ltype\u00a2\u0002\u0004GLOG\u00aa\u0002\u0019Google.Cloud.Logging.Type\u00ca\u0002\u0019Google\\Cloud\\Logging\\Type\u00ea\u0002\u001cGoogle::Cloud::Logging::Typeb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/logging/type/b;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/logging/type/b;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

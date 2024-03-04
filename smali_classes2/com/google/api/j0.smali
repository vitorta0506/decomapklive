.class public final Lcom/google/api/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\n\u0016google/api/label.proto\u0012\ngoogle.api\"\u009c\u0001\n\u000fLabelDescriptor\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u00129\n\nvalue_type\u0018\u0002 \u0001(\u000e2%.google.api.LabelDescriptor.ValueType\u0012\u0013\n\u000bdescription\u0018\u0003 \u0001(\t\",\n\tValueType\u0012\n\n\u0006STRING\u0010\u0000\u0012\u0008\n\u0004BOOL\u0010\u0001\u0012\t\n\u0005INT64\u0010\u0002B_\n\u000ecom.google.apiB\nLabelProtoP\u0001Z5google.golang.org/genproto/googleapis/api/label;label\u00f8\u0001\u0001\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/api/j0;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/api/j0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/j0;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v3, "ValueType"

    const-string v4, "Description"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/j0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/j0;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

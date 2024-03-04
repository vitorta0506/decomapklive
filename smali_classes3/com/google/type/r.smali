.class public final Lcom/google/type/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\n\u001bgoogle/type/timeofday.proto\u0012\u000bgoogle.type\"K\n\tTimeOfDay\u0012\r\n\u0005hours\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007minutes\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007seconds\u0018\u0003 \u0001(\u0005\u0012\r\n\u0005nanos\u0018\u0004 \u0001(\u0005Bl\n\u000fcom.google.typeB\u000eTimeOfDayProtoP\u0001Z>google.golang.org/genproto/googleapis/type/timeofday;timeofday\u00f8\u0001\u0001\u00a2\u0002\u0003GTPb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/type/r;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/type/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/type/r;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Hours"

    const-string v3, "Minutes"

    const-string v4, "Seconds"

    const-string v5, "Nanos"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/type/r;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/type/r;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

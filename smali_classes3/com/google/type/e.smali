.class public final Lcom/google/type/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\n\u001bgoogle/type/dayofweek.proto\u0012\u000bgoogle.type*\u0084\u0001\n\tDayOfWeek\u0012\u001b\n\u0017DAY_OF_WEEK_UNSPECIFIED\u0010\u0000\u0012\n\n\u0006MONDAY\u0010\u0001\u0012\u000b\n\u0007TUESDAY\u0010\u0002\u0012\r\n\tWEDNESDAY\u0010\u0003\u0012\u000c\n\u0008THURSDAY\u0010\u0004\u0012\n\n\u0006FRIDAY\u0010\u0005\u0012\u000c\n\u0008SATURDAY\u0010\u0006\u0012\n\n\u0006SUNDAY\u0010\u0007Bi\n\u000fcom.google.typeB\u000eDayOfWeekProtoP\u0001Z>google.golang.org/genproto/googleapis/type/dayofweek;dayofweek\u00a2\u0002\u0003GTPb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/type/e;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/type/e;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.class public final Lcom/google/type/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\n!google/type/calendar_period.proto\u0012\u000bgoogle.type*\u007f\n\u000eCalendarPeriod\u0012\u001f\n\u001bCALENDAR_PERIOD_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003DAY\u0010\u0001\u0012\u0008\n\u0004WEEK\u0010\u0002\u0012\r\n\tFORTNIGHT\u0010\u0003\u0012\t\n\u0005MONTH\u0010\u0004\u0012\u000b\n\u0007QUARTER\u0010\u0005\u0012\u0008\n\u0004HALF\u0010\u0006\u0012\u0008\n\u0004YEAR\u0010\u0007Bx\n\u000fcom.google.typeB\u0013CalendarPeriodProtoP\u0001ZHgoogle.golang.org/genproto/googleapis/type/calendarperiod;calendarperiod\u00a2\u0002\u0003GTPb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/type/a;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/type/a;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

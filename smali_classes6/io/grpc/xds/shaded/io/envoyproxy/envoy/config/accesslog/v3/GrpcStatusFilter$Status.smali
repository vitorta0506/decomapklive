.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;",
        ">;",
        "Lcom/google/protobuf/h2;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final enum ABORTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final ABORTED_VALUE:I = 0xa

.field public static final enum ALREADY_EXISTS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final ALREADY_EXISTS_VALUE:I = 0x6

.field public static final enum CANCELED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final CANCELED_VALUE:I = 0x1

.field public static final enum DATA_LOSS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final DATA_LOSS_VALUE:I = 0xf

.field public static final enum DEADLINE_EXCEEDED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final DEADLINE_EXCEEDED_VALUE:I = 0x4

.field public static final enum FAILED_PRECONDITION:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final FAILED_PRECONDITION_VALUE:I = 0x9

.field public static final enum INTERNAL:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final INTERNAL_VALUE:I = 0xd

.field public static final enum INVALID_ARGUMENT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final INVALID_ARGUMENT_VALUE:I = 0x3

.field public static final enum NOT_FOUND:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final NOT_FOUND_VALUE:I = 0x5

.field public static final enum OK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final OK_VALUE:I = 0x0

.field public static final enum OUT_OF_RANGE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final OUT_OF_RANGE_VALUE:I = 0xb

.field public static final enum PERMISSION_DENIED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final PERMISSION_DENIED_VALUE:I = 0x7

.field public static final enum RESOURCE_EXHAUSTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final RESOURCE_EXHAUSTED_VALUE:I = 0x8

.field public static final enum UNAUTHENTICATED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final UNAUTHENTICATED_VALUE:I = 0x10

.field public static final enum UNAVAILABLE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final UNAVAILABLE_VALUE:I = 0xe

.field public static final enum UNIMPLEMENTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final UNIMPLEMENTED_VALUE:I = 0xc

.field public static final enum UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field public static final UNKNOWN_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field private static final VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

.field private static final internalValueMap:Lcom/google/protobuf/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$d<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->OK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v3, "CANCELED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->CANCELED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 3
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 4
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v7, "INVALID_ARGUMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->INVALID_ARGUMENT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 5
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v9, "DEADLINE_EXCEEDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->DEADLINE_EXCEEDED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 6
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v11, "NOT_FOUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->NOT_FOUND:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 7
    new-instance v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v13, "ALREADY_EXISTS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->ALREADY_EXISTS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 8
    new-instance v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v15, "PERMISSION_DENIED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->PERMISSION_DENIED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 9
    new-instance v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v14, "RESOURCE_EXHAUSTED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->RESOURCE_EXHAUSTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 10
    new-instance v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v12, "FAILED_PRECONDITION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->FAILED_PRECONDITION:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 11
    new-instance v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v10, "ABORTED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->ABORTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 12
    new-instance v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v8, "OUT_OF_RANGE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->OUT_OF_RANGE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 13
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v6, "UNIMPLEMENTED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNIMPLEMENTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 14
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v4, "INTERNAL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->INTERNAL:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 15
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v2, "UNAVAILABLE"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNAVAILABLE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 16
    new-instance v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v6, "DATA_LOSS"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->DATA_LOSS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 17
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v4, "UNAUTHENTICATED"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNAUTHENTICATED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 18
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const-string v2, "UNRECOGNIZED"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    move-object/from16 v20, v8

    const/4 v8, -0x1

    invoke-direct {v4, v2, v6, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const/16 v2, 0x12

    new-array v2, v2, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    const/4 v8, 0x0

    aput-object v0, v2, v8

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v20, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    aput-object v4, v2, v6

    .line 19
    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    .line 20
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->internalValueMap:Lcom/google/protobuf/u0$d;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNAUTHENTICATED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->DATA_LOSS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNAVAILABLE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->INTERNAL:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNIMPLEMENTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->OUT_OF_RANGE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->ABORTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->FAILED_PRECONDITION:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->RESOURCE_EXHAUSTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->PERMISSION_DENIED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->ALREADY_EXISTS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->NOT_FOUND:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->DEADLINE_EXCEEDED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 14
    :pswitch_d
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->INVALID_ARGUMENT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 15
    :pswitch_e
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 16
    :pswitch_f
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->CANCELED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 17
    :pswitch_10
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->OK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$d;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/u0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/u0$d<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->internalValueMap:Lcom/google/protobuf/u0$d;

    return-object v0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->h()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$e;
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/GrpcStatusFilter$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$e;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterSpecifierCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum AND_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum DURATION_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum EXTENSION_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum FILTERSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum GRPC_STATUS_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum HEADER_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum NOT_HEALTH_CHECK_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum OR_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum RESPONSE_FLAG_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum RUNTIME_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum STATUS_CODE_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

.field public static final enum TRACEABLE_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v1, "STATUS_CODE_FILTER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->STATUS_CODE_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v4, "DURATION_FILTER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->DURATION_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v6, "NOT_HEALTH_CHECK_FILTER"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->NOT_HEALTH_CHECK_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v8, "TRACEABLE_FILTER"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->TRACEABLE_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v10, "RUNTIME_FILTER"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->RUNTIME_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 6
    new-instance v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v12, "AND_FILTER"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->AND_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 7
    new-instance v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v14, "OR_FILTER"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->OR_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 8
    new-instance v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v13, "HEADER_FILTER"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->HEADER_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 9
    new-instance v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v15, "RESPONSE_FLAG_FILTER"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->RESPONSE_FLAG_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 10
    new-instance v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v11, "GRPC_STATUS_FILTER"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->GRPC_STATUS_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 11
    new-instance v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v9, "EXTENSION_FILTER"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->EXTENSION_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    .line 12
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const-string v7, "FILTERSPECIFIER_NOT_SET"

    invoke-direct {v9, v7, v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->FILTERSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    const/16 v7, 0xc

    new-array v7, v7, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v14, v7, v0

    const/16 v0, 0x8

    aput-object v13, v7, v0

    const/16 v0, 0x9

    aput-object v15, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    aput-object v9, v7, v5

    .line 13
    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->EXTENSION_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->GRPC_STATUS_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->RESPONSE_FLAG_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->HEADER_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->OR_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->AND_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->RUNTIME_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->TRACEABLE_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->NOT_HEALTH_CHECK_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->DURATION_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->STATUS_CODE_FILTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->FILTERSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLogFilter$FilterSpecifierCase;->value:I

    return v0
.end method

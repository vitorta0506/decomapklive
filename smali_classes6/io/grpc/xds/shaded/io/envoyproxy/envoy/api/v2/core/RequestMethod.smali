.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;",
        ">;",
        "Lcom/google/protobuf/h2;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final enum CONNECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final CONNECT_VALUE:I = 0x6

.field public static final enum DELETE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final DELETE_VALUE:I = 0x5

.field public static final enum GET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final GET_VALUE:I = 0x1

.field public static final enum HEAD:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final HEAD_VALUE:I = 0x2

.field public static final enum METHOD_UNSPECIFIED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final METHOD_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum OPTIONS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final OPTIONS_VALUE:I = 0x7

.field public static final enum PATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final PATCH_VALUE:I = 0x9

.field public static final enum POST:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final POST_VALUE:I = 0x3

.field public static final enum PUT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final PUT_VALUE:I = 0x4

.field public static final enum TRACE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field public static final TRACE_VALUE:I = 0x8

.field public static final enum UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field private static final VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

.field private static final internalValueMap:Lcom/google/protobuf/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$d<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v1, "METHOD_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->METHOD_UNSPECIFIED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->GET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 3
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v5, "HEAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->HEAD:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 4
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v7, "POST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->POST:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 5
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v9, "PUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->PUT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 6
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v11, "DELETE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->DELETE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 7
    new-instance v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v13, "CONNECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->CONNECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 8
    new-instance v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v15, "OPTIONS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->OPTIONS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 9
    new-instance v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v14, "TRACE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->TRACE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 10
    new-instance v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v12, "PATCH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->PATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 11
    new-instance v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const-string v10, "UNRECOGNIZED"

    const/16 v8, 0xa

    const/4 v6, -0x1

    invoke-direct {v12, v10, v8, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    const/16 v6, 0xb

    new-array v6, v6, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    aput-object v12, v6, v8

    .line 12
    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    .line 13
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->internalValueMap:Lcom/google/protobuf/u0$d;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->PATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->TRACE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->OPTIONS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->CONNECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->DELETE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->PUT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->POST:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->HEAD:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->GET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->METHOD_UNSPECIFIED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->internalValueMap:Lcom/google/protobuf/u0$d;

    return-object v0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->h()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->value:I

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
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RequestMethod;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

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

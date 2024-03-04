.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LbPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;",
        ">;",
        "Lcom/google/protobuf/h2;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

.field public static final enum CLUSTER_PROVIDED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

.field public static final CLUSTER_PROVIDED_VALUE:I = 0x6

.field public static final enum LEAST_REQUEST:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

.field public static final LEAST_REQUEST_VALUE:I = 0x1

.field public static final enum LOAD_BALANCING_POLICY_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

.field public static final LOAD_BALANCING_POLICY_CONFIG_VALUE:I = 0x7

.field public static final enum MAGLEV:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

.field public static final MAGLEV_VALUE:I = 0x5

.field public static final enum ORIGINAL_DST_LB:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIGINAL_DST_LB_VALUE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RANDOM:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

.field public static final RANDOM_VALUE:I = 0x3

.field public static final enum RING_HASH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

.field public static final RING_HASH_VALUE:I = 0x2

.field public static final enum ROUND_ROBIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

.field public static final ROUND_ROBIN_VALUE:I

.field public static final enum UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

.field private static final VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

.field private static final internalValueMap:Lcom/google/protobuf/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$d<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;",
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
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    const-string v1, "ROUND_ROBIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->ROUND_ROBIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    const-string v3, "LEAST_REQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->LEAST_REQUEST:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    .line 3
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    const-string v5, "RING_HASH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->RING_HASH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    .line 4
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    const-string v7, "RANDOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->RANDOM:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    .line 5
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    const-string v9, "ORIGINAL_DST_LB"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->ORIGINAL_DST_LB:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    .line 6
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    const-string v11, "MAGLEV"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->MAGLEV:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    .line 7
    new-instance v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    const-string v13, "CLUSTER_PROVIDED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->CLUSTER_PROVIDED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    .line 8
    new-instance v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    const-string v15, "LOAD_BALANCING_POLICY_CONFIG"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->LOAD_BALANCING_POLICY_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    .line 9
    new-instance v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    const-string v14, "UNRECOGNIZED"

    const/16 v12, 0x8

    const/4 v10, -0x1

    invoke-direct {v15, v14, v12, v10}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    const/16 v10, 0x9

    new-array v10, v10, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v15, v10, v12

    .line 10
    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    .line 11
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->internalValueMap:Lcom/google/protobuf/u0$d;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->LOAD_BALANCING_POLICY_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->CLUSTER_PROVIDED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->MAGLEV:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->ORIGINAL_DST_LB:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->RANDOM:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->RING_HASH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->LEAST_REQUEST:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->ROUND_ROBIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->k()Ljava/util/List;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->internalValueMap:Lcom/google/protobuf/u0$d;

    return-object v0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->h()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->value:I

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
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

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

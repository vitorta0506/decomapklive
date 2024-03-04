.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;",
        ">;",
        "Lcom/google/protobuf/h2;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

.field public static final enum ACKED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

.field public static final ACKED_VALUE:I = 0x3

.field public static final enum DOES_NOT_EXIST:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

.field public static final DOES_NOT_EXIST_VALUE:I = 0x2

.field public static final enum NACKED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

.field public static final NACKED_VALUE:I = 0x4

.field public static final enum REQUESTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

.field public static final REQUESTED_VALUE:I = 0x1

.field public static final enum UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

.field public static final UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

.field private static final VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

.field private static final internalValueMap:Lcom/google/protobuf/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$d<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    const-string v3, "REQUESTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->REQUESTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    .line 3
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    const-string v5, "DOES_NOT_EXIST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->DOES_NOT_EXIST:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    .line 4
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    const-string v7, "ACKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->ACKED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    .line 5
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    const-string v9, "NACKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->NACKED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    .line 6
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    .line 8
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->internalValueMap:Lcom/google/protobuf/u0$d;

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->NACKED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->ACKED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->DOES_NOT_EXIST:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->REQUESTED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->k()Ljava/util/List;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->internalValueMap:Lcom/google/protobuf/u0$d;

    return-object v0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->h()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->value:I

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
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClientResourceStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

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

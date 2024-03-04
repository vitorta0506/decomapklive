.class public final enum Lio/opencensus/proto/stats/v1/Measure$Type;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/stats/v1/Measure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/proto/stats/v1/Measure$Type;",
        ">;",
        "Lcom/google/protobuf/h2;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/opencensus/proto/stats/v1/Measure$Type;

.field public static final enum DOUBLE:Lio/opencensus/proto/stats/v1/Measure$Type;

.field public static final DOUBLE_VALUE:I = 0x2

.field public static final enum INT64:Lio/opencensus/proto/stats/v1/Measure$Type;

.field public static final INT64_VALUE:I = 0x1

.field public static final enum TYPE_UNSPECIFIED:Lio/opencensus/proto/stats/v1/Measure$Type;

.field public static final TYPE_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lio/opencensus/proto/stats/v1/Measure$Type;

.field private static final VALUES:[Lio/opencensus/proto/stats/v1/Measure$Type;

.field private static final internalValueMap:Lcom/google/protobuf/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$d<",
            "Lio/opencensus/proto/stats/v1/Measure$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lio/opencensus/proto/stats/v1/Measure$Type;

    const-string v1, "TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/opencensus/proto/stats/v1/Measure$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/opencensus/proto/stats/v1/Measure$Type;->TYPE_UNSPECIFIED:Lio/opencensus/proto/stats/v1/Measure$Type;

    .line 2
    new-instance v1, Lio/opencensus/proto/stats/v1/Measure$Type;

    const-string v3, "INT64"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/opencensus/proto/stats/v1/Measure$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/opencensus/proto/stats/v1/Measure$Type;->INT64:Lio/opencensus/proto/stats/v1/Measure$Type;

    .line 3
    new-instance v3, Lio/opencensus/proto/stats/v1/Measure$Type;

    const-string v5, "DOUBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/opencensus/proto/stats/v1/Measure$Type;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/opencensus/proto/stats/v1/Measure$Type;->DOUBLE:Lio/opencensus/proto/stats/v1/Measure$Type;

    .line 4
    new-instance v5, Lio/opencensus/proto/stats/v1/Measure$Type;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lio/opencensus/proto/stats/v1/Measure$Type;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/opencensus/proto/stats/v1/Measure$Type;->UNRECOGNIZED:Lio/opencensus/proto/stats/v1/Measure$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/opencensus/proto/stats/v1/Measure$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/opencensus/proto/stats/v1/Measure$Type;->$VALUES:[Lio/opencensus/proto/stats/v1/Measure$Type;

    .line 6
    new-instance v0, Lio/opencensus/proto/stats/v1/Measure$Type$a;

    invoke-direct {v0}, Lio/opencensus/proto/stats/v1/Measure$Type$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/stats/v1/Measure$Type;->internalValueMap:Lcom/google/protobuf/u0$d;

    .line 7
    invoke-static {}, Lio/opencensus/proto/stats/v1/Measure$Type;->values()[Lio/opencensus/proto/stats/v1/Measure$Type;

    move-result-object v0

    sput-object v0, Lio/opencensus/proto/stats/v1/Measure$Type;->VALUES:[Lio/opencensus/proto/stats/v1/Measure$Type;

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
    iput p3, p0, Lio/opencensus/proto/stats/v1/Measure$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/opencensus/proto/stats/v1/Measure$Type;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/opencensus/proto/stats/v1/Measure$Type;->DOUBLE:Lio/opencensus/proto/stats/v1/Measure$Type;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/opencensus/proto/stats/v1/Measure$Type;->INT64:Lio/opencensus/proto/stats/v1/Measure$Type;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/opencensus/proto/stats/v1/Measure$Type;->TYPE_UNSPECIFIED:Lio/opencensus/proto/stats/v1/Measure$Type;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    invoke-static {}, Lio/opencensus/proto/stats/v1/Measure;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

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
            "Lio/opencensus/proto/stats/v1/Measure$Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/stats/v1/Measure$Type;->internalValueMap:Lcom/google/protobuf/u0$d;

    return-object v0
.end method

.method public static valueOf(I)Lio/opencensus/proto/stats/v1/Measure$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/opencensus/proto/stats/v1/Measure$Type;->forNumber(I)Lio/opencensus/proto/stats/v1/Measure$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lio/opencensus/proto/stats/v1/Measure$Type;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->h()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lio/opencensus/proto/stats/v1/Measure$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lio/opencensus/proto/stats/v1/Measure$Type;->UNRECOGNIZED:Lio/opencensus/proto/stats/v1/Measure$Type;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lio/opencensus/proto/stats/v1/Measure$Type;->VALUES:[Lio/opencensus/proto/stats/v1/Measure$Type;

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

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/proto/stats/v1/Measure$Type;
    .locals 1

    .line 1
    const-class v0, Lio/opencensus/proto/stats/v1/Measure$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/Measure$Type;

    return-object p0
.end method

.method public static values()[Lio/opencensus/proto/stats/v1/Measure$Type;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/Measure$Type;->$VALUES:[Lio/opencensus/proto/stats/v1/Measure$Type;

    invoke-virtual {v0}, [Lio/opencensus/proto/stats/v1/Measure$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/proto/stats/v1/Measure$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lio/opencensus/proto/stats/v1/Measure$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/Measure$Type;->UNRECOGNIZED:Lio/opencensus/proto/stats/v1/Measure$Type;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lio/opencensus/proto/stats/v1/Measure$Type;->value:I

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

    invoke-static {}, Lio/opencensus/proto/stats/v1/Measure$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$e;

    return-object v0
.end method

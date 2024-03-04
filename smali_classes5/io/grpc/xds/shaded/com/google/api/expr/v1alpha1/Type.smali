.class public final Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$c;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$e;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$g;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$f;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$WellKnownType;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;
    }
.end annotation


# static fields
.field public static final ABSTRACT_TYPE_FIELD_NUMBER:I = 0xe

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

.field public static final DYN_FIELD_NUMBER:I = 0x1

.field public static final ERROR_FIELD_NUMBER:I = 0xc

.field public static final FUNCTION_FIELD_NUMBER:I = 0x8

.field public static final LIST_TYPE_FIELD_NUMBER:I = 0x6

.field public static final MAP_TYPE_FIELD_NUMBER:I = 0x7

.field public static final MESSAGE_TYPE_FIELD_NUMBER:I = 0x9

.field public static final NULL_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMITIVE_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0xb

.field public static final TYPE_PARAM_FIELD_NUMBER:I = 0xa

.field public static final WELL_KNOWN_FIELD_NUMBER:I = 0x5

.field public static final WRAPPER_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private typeKindCase_:I

.field private typeKind_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    invoke-direct {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    goto/16 :goto_2

    .line 14
    :sswitch_0
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    .line 15
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object v4

    .line 16
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 17
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    .line 18
    invoke-virtual {v4}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    .line 19
    :cond_2
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    goto :goto_0

    .line 20
    :sswitch_1
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 21
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/Empty;

    invoke-virtual {v2}, Lcom/google/protobuf/Empty;->toBuilder()Lcom/google/protobuf/Empty$b;

    move-result-object v4

    .line 22
    :cond_3
    invoke-static {}, Lcom/google/protobuf/Empty;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 23
    check-cast v2, Lcom/google/protobuf/Empty;

    invoke-virtual {v4, v2}, Lcom/google/protobuf/Empty$b;->e0(Lcom/google/protobuf/Empty;)Lcom/google/protobuf/Empty$b;

    .line 24
    invoke-virtual {v4}, Lcom/google/protobuf/Empty$b;->Y()Lcom/google/protobuf/Empty;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    .line 25
    :cond_4
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    goto :goto_0

    .line 26
    :sswitch_2
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    .line 27
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object v4

    .line 28
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 29
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;->j0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    .line 30
    invoke-virtual {v4}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    .line 31
    :cond_6
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    goto/16 :goto_0

    .line 32
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    .line 33
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    .line 34
    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 35
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    .line 36
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    .line 37
    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 38
    :sswitch_5
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 39
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType$b;

    move-result-object v4

    .line 40
    :cond_7
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    if-eqz v4, :cond_8

    .line 41
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType$b;->i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType$b;

    .line 42
    invoke-virtual {v4}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    .line 43
    :cond_8
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    goto/16 :goto_0

    .line 44
    :sswitch_6
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    .line 45
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType$b;

    move-result-object v4

    .line 46
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    if-eqz v4, :cond_a

    .line 47
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType$b;->g0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType$b;

    .line 48
    invoke-virtual {v4}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    .line 49
    :cond_a
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    goto/16 :goto_0

    .line 50
    :sswitch_7
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_b

    .line 51
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType$b;

    move-result-object v4

    .line 52
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 53
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType$b;->h0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType$b;

    .line 54
    invoke-virtual {v4}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    .line 55
    :cond_c
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    goto/16 :goto_0

    .line 56
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    const/4 v3, 0x5

    .line 57
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 59
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    const/4 v3, 0x4

    .line 60
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 62
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    const/4 v3, 0x3

    .line 63
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 65
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    const/4 v3, 0x2

    .line 66
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 68
    :sswitch_c
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    if-ne v2, v3, :cond_d

    .line 69
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/Empty;

    invoke-virtual {v2}, Lcom/google/protobuf/Empty;->toBuilder()Lcom/google/protobuf/Empty$b;

    move-result-object v4

    .line 70
    :cond_d
    invoke-static {}, Lcom/google/protobuf/Empty;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    if-eqz v4, :cond_e

    .line 71
    check-cast v2, Lcom/google/protobuf/Empty;

    invoke-virtual {v4, v2}, Lcom/google/protobuf/Empty$b;->e0(Lcom/google/protobuf/Empty;)Lcom/google/protobuf/Empty$b;

    .line 72
    invoke-virtual {v4}, Lcom/google/protobuf/Empty$b;->Y()Lcom/google/protobuf/Empty;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    .line 73
    :cond_e
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_d
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 74
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 75
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 76
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 78
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 79
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 80
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x10 -> :sswitch_b
        0x18 -> :sswitch_a
        0x20 -> :sswitch_9
        0x28 -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$4000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4200(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4202(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    return p1
.end method

.method static synthetic access$4400(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$4500()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;->j0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getTypeKindCase()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getTypeKindCase()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getAbstractType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getAbstractType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getError()Lcom/google/protobuf/Empty;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getError()Lcom/google/protobuf/Empty;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Empty;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 12
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getTypeParam()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getTypeParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 14
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getMessageType()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getMessageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 16
    :pswitch_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getFunction()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getFunction()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 18
    :pswitch_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getMapType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getMapType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 20
    :pswitch_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getListType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getListType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 22
    :pswitch_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getWellKnownValue()I

    move-result v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getWellKnownValue()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 24
    :pswitch_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getWrapperValue()I

    move-result v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getWrapperValue()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 26
    :pswitch_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getPrimitiveValue()I

    move-result v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getPrimitiveValue()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 28
    :pswitch_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getNullValue()I

    move-result v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getNullValue()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 30
    :pswitch_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getDyn()Lcom/google/protobuf/Empty;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getDyn()Lcom/google/protobuf/Empty;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Empty;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 32
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAbstractType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    return-object v0
.end method

.method public getAbstractTypeOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object v0
.end method

.method public getDyn()Lcom/google/protobuf/Empty;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v0

    return-object v0
.end method

.method public getDynOrBuilder()Lcom/google/protobuf/y;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/protobuf/Empty;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v0

    return-object v0
.end method

.method public getErrorOrBuilder()Lcom/google/protobuf/y;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v0

    return-object v0
.end method

.method public getFunction()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    move-result-object v0

    return-object v0
.end method

.method public getListType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    move-result-object v0

    return-object v0
.end method

.method public getListTypeOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    move-result-object v0

    return-object v0
.end method

.method public getMapType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    move-result-object v0

    return-object v0
.end method

.method public getMapTypeOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$g;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getMessageTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNull()Lcom/google/protobuf/NullValue;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/NullValue;->valueOf(I)Lcom/google/protobuf/NullValue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/protobuf/NullValue;->UNRECOGNIZED:Lcom/google/protobuf/NullValue;

    :cond_0
    return-object v0

    .line 6
    :cond_1
    sget-object v0, Lcom/google/protobuf/NullValue;->NULL_VALUE:Lcom/google/protobuf/NullValue;

    return-object v0
.end method

.method public getNullValue()I
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPrimitive()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;->valueOf(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;->UNRECOGNIZED:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;

    :cond_0
    return-object v0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;->PRIMITIVE_TYPE_UNSPECIFIED:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;

    return-object v0
.end method

.method public getPrimitiveValue()I
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/Empty;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 21
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    .line 22
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    .line 25
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 27
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_9
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 29
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    .line 31
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    .line 32
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_b
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 34
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/Empty;

    .line 35
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_c
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_d

    .line 37
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    .line 38
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypeKindCase()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->forNumber(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    move-result-object v0

    return-object v0
.end method

.method public getTypeOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/g;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParam()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getTypeParamBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getWellKnown()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$WellKnownType;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$WellKnownType;->valueOf(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$WellKnownType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$WellKnownType;->UNRECOGNIZED:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$WellKnownType;

    :cond_0
    return-object v0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$WellKnownType;->WELL_KNOWN_TYPE_UNSPECIFIED:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$WellKnownType;

    return-object v0
.end method

.method public getWellKnownValue()I
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWrapper()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;->valueOf(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;->UNRECOGNIZED:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;

    :cond_0
    return-object v0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;->PRIMITIVE_TYPE_UNSPECIFIED:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$PrimitiveType;

    return-object v0
.end method

.method public getWrapperValue()I
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAbstractType()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDyn()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasError()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFunction()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasListType()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMapType()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMessageType()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNull()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrimitive()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTypeParam()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWellKnown()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWrapper()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getAbstractType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getError()Lcom/google/protobuf/Empty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Empty;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getTypeParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getMessageType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getFunction()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_7
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getMapType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getListType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_9
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getWellKnownValue()I

    move-result v1

    goto :goto_0

    :pswitch_a
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getWrapperValue()I

    move-result v1

    goto :goto_0

    :pswitch_b
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getPrimitiveValue()I

    move-result v1

    goto :goto_0

    :pswitch_c
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getNullValue()I

    move-result v1

    goto :goto_0

    :pswitch_d
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->getDyn()Lcom/google/protobuf/Empty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Empty;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 17
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    const-class v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->newBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    invoke-direct {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;-><init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;-><init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;->j0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$ListType;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$MapType;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$FunctionType;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19
    :cond_8
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 20
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21
    :cond_9
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 22
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_b
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKindCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    .line 26
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;->typeKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

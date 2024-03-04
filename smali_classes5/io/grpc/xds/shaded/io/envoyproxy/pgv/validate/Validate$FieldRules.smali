.class public final Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldRules"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;
    }
.end annotation


# static fields
.field public static final ANY_FIELD_NUMBER:I = 0x14

.field public static final BOOL_FIELD_NUMBER:I = 0xd

.field public static final BYTES_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

.field public static final DOUBLE_FIELD_NUMBER:I = 0x2

.field public static final DURATION_FIELD_NUMBER:I = 0x15

.field public static final ENUM_FIELD_NUMBER:I = 0x10

.field public static final FIXED32_FIELD_NUMBER:I = 0x9

.field public static final FIXED64_FIELD_NUMBER:I = 0xa

.field public static final FLOAT_FIELD_NUMBER:I = 0x1

.field public static final INT32_FIELD_NUMBER:I = 0x3

.field public static final INT64_FIELD_NUMBER:I = 0x4

.field public static final MAP_FIELD_NUMBER:I = 0x13

.field public static final MESSAGE_FIELD_NUMBER:I = 0x11

.field public static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPEATED_FIELD_NUMBER:I = 0x12

.field public static final SFIXED32_FIELD_NUMBER:I = 0xb

.field public static final SFIXED64_FIELD_NUMBER:I = 0xc

.field public static final SINT32_FIELD_NUMBER:I = 0x7

.field public static final SINT64_FIELD_NUMBER:I = 0x8

.field public static final STRING_FIELD_NUMBER:I = 0xe

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x16

.field public static final UINT32_FIELD_NUMBER:I = 0x5

.field public static final UINT64_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private message_:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

.field private typeCase_:I

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2d

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    .line 15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules$b;

    move-result-object v4

    .line 16
    :cond_1
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;->PARSER:Lcom/google/protobuf/e2;

    .line 17
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 18
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules$b;->u0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules$b;

    .line 19
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 20
    :cond_2
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto :goto_0

    .line 21
    :sswitch_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_3

    .line 22
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules$b;

    move-result-object v4

    .line 23
    :cond_3
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;->PARSER:Lcom/google/protobuf/e2;

    .line 24
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 25
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules$b;->x0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules$b;

    .line 26
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 27
    :cond_4
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto :goto_0

    .line 28
    :sswitch_2
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_5

    .line 29
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object v4

    .line 30
    :cond_5
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->PARSER:Lcom/google/protobuf/e2;

    .line 31
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 32
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    .line 33
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 34
    :cond_6
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 35
    :sswitch_3
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_7

    .line 36
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules$b;

    move-result-object v4

    .line 37
    :cond_7
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;->PARSER:Lcom/google/protobuf/e2;

    .line 38
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_8

    .line 39
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules$b;

    .line 40
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 41
    :cond_8
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 42
    :sswitch_4
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_9

    .line 43
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules$b;

    move-result-object v4

    .line 44
    :cond_9
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;->PARSER:Lcom/google/protobuf/e2;

    .line 45
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_a

    .line 46
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules$b;

    .line 47
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 48
    :cond_a
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 49
    :sswitch_5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->bitField0_:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 50
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->message_:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules$b;

    move-result-object v4

    .line 51
    :cond_b
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->message_:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    if-eqz v4, :cond_c

    .line 52
    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules$b;

    .line 53
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->message_:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    .line 54
    :cond_c
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->bitField0_:I

    goto/16 :goto_0

    .line 55
    :sswitch_6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d

    .line 56
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    move-result-object v4

    .line 57
    :cond_d
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->PARSER:Lcom/google/protobuf/e2;

    .line 58
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_e

    .line 59
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;

    .line 60
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 61
    :cond_e
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 62
    :sswitch_7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_f

    .line 63
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v4

    .line 64
    :cond_f
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    .line 65
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_10

    .line 66
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 67
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 68
    :cond_10
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 69
    :sswitch_8
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_11

    .line 70
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    move-result-object v4

    .line 71
    :cond_11
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    .line 72
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_12

    .line 73
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    .line 74
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 75
    :cond_12
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 76
    :sswitch_9
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_13

    .line 77
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules$b;

    move-result-object v4

    .line 78
    :cond_13
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;->PARSER:Lcom/google/protobuf/e2;

    .line 79
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_14

    .line 80
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules$b;

    .line 81
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 82
    :cond_14
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 83
    :sswitch_a
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_15

    .line 84
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules$b;

    move-result-object v4

    .line 85
    :cond_15
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 86
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_16

    .line 87
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules$b;

    .line 88
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 89
    :cond_16
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 90
    :sswitch_b
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_17

    .line 91
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules$b;

    move-result-object v4

    .line 92
    :cond_17
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 93
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_18

    .line 94
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules$b;

    .line 95
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 96
    :cond_18
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 97
    :sswitch_c
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_19

    .line 98
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules$b;

    move-result-object v4

    .line 99
    :cond_19
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 100
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_1a

    .line 101
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules$b;

    .line 102
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 103
    :cond_1a
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 104
    :sswitch_d
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1b

    .line 105
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules$b;

    move-result-object v4

    .line 106
    :cond_1b
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 107
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_1c

    .line 108
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules$b;

    .line 109
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 110
    :cond_1c
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 111
    :sswitch_e
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1d

    .line 112
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules$b;

    move-result-object v4

    .line 113
    :cond_1d
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 114
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_1e

    .line 115
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules$b;

    .line 116
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 117
    :cond_1e
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 118
    :sswitch_f
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1f

    .line 119
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules$b;

    move-result-object v4

    .line 120
    :cond_1f
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 121
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_20

    .line 122
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules$b;

    .line 123
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 124
    :cond_20
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 125
    :sswitch_10
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_21

    .line 126
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules$b;

    move-result-object v4

    .line 127
    :cond_21
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 128
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_22

    .line 129
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules$b;

    .line 130
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 131
    :cond_22
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 132
    :sswitch_11
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_23

    .line 133
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    move-result-object v4

    .line 134
    :cond_23
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 135
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_24

    .line 136
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;

    .line 137
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 138
    :cond_24
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 139
    :sswitch_12
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_25

    .line 140
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules$b;

    move-result-object v4

    .line 141
    :cond_25
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 142
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_26

    .line 143
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules$b;

    .line 144
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 145
    :cond_26
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 146
    :sswitch_13
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_27

    .line 147
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules$b;

    move-result-object v4

    .line 148
    :cond_27
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;->PARSER:Lcom/google/protobuf/e2;

    .line 149
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_28

    .line 150
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules$b;

    .line 151
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 152
    :cond_28
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 153
    :sswitch_14
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    .line 154
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object v4

    .line 155
    :cond_29
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->PARSER:Lcom/google/protobuf/e2;

    .line 156
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_2a

    .line 157
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    .line 158
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 159
    :cond_2a
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    goto/16 :goto_0

    .line 160
    :sswitch_15
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    if-ne v2, v3, :cond_2b

    .line 161
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules$b;

    move-result-object v4

    .line 162
    :cond_2b
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;->PARSER:Lcom/google/protobuf/e2;

    .line 163
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    if-eqz v4, :cond_2c

    .line 164
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules$b;

    .line 165
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    .line 166
    :cond_2c
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_16
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

    .line 167
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 168
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 169
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 171
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 172
    :cond_2d
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 173
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_16
        0xa -> :sswitch_15
        0x12 -> :sswitch_14
        0x1a -> :sswitch_13
        0x22 -> :sswitch_12
        0x2a -> :sswitch_11
        0x32 -> :sswitch_10
        0x3a -> :sswitch_f
        0x42 -> :sswitch_e
        0x4a -> :sswitch_d
        0x52 -> :sswitch_c
        0x5a -> :sswitch_b
        0x62 -> :sswitch_a
        0x6a -> :sswitch_9
        0x72 -> :sswitch_8
        0x7a -> :sswitch_7
        0x82 -> :sswitch_6
        0x8a -> :sswitch_5
        0x92 -> :sswitch_4
        0x9a -> :sswitch_3
        0xa2 -> :sswitch_2
        0xaa -> :sswitch_1
        0xb2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->message_:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->bitField0_:I

    return p1
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    return p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->a()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;->s0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->hasMessage()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->hasMessage()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->hasMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getMessage()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getMessage()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 9
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 10
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getTimestamp()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getTimestamp()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getDuration()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getDuration()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 14
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getAny()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getAny()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 16
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getMap()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getMap()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 18
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getRepeated()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getRepeated()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 20
    :pswitch_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getEnum()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getEnum()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 22
    :pswitch_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getBytes()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getBytes()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 24
    :pswitch_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getString()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getString()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 26
    :pswitch_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getBool()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getBool()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 28
    :pswitch_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSfixed64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSfixed64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 30
    :pswitch_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSfixed32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSfixed32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 32
    :pswitch_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getFixed64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getFixed64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 34
    :pswitch_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getFixed32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getFixed32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 36
    :pswitch_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSint64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSint64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 38
    :pswitch_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSint32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSint32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 40
    :pswitch_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getUint64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getUint64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 42
    :pswitch_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getUint32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getUint32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 44
    :pswitch_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getInt64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getInt64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 46
    :pswitch_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getInt32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getInt32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 48
    :pswitch_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getDouble()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getDouble()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 50
    :pswitch_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getFloat()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getFloat()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 52
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getAny()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v0

    return-object v0
.end method

.method public getAnyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$b;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v0

    return-object v0
.end method

.method public getBool()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    move-result-object v0

    return-object v0
.end method

.method public getBoolOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    move-result-object v0

    return-object v0
.end method

.method public getBytes()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    return-object v0
.end method

.method public getBytesOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    return-object v0
.end method

.method public getDouble()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    move-result-object v0

    return-object v0
.end method

.method public getDurationOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    move-result-object v0

    return-object v0
.end method

.method public getEnum()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    move-result-object v0

    return-object v0
.end method

.method public getEnumOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$g;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    move-result-object v0

    return-object v0
.end method

.method public getFixed32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getFixed32OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$i;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getFixed64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    move-result-object v0

    return-object v0
.end method

.method public getFixed64OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$j;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    move-result-object v0

    return-object v0
.end method

.method public getFloat()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    move-result-object v0

    return-object v0
.end method

.method public getFloatOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$k;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    move-result-object v0

    return-object v0
.end method

.method public getInt32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getInt32OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$l;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getInt64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    move-result-object v0

    return-object v0
.end method

.method public getInt64OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$m;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    move-result-object v0

    return-object v0
.end method

.method public getMapOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$n;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->message_:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMessageOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$o;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->message_:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRepeated()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$p;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    .line 7
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    .line 10
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    .line 13
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_5

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    .line 16
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_6

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    .line 19
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_7

    .line 21
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    .line 22
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_8

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    .line 25
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_9

    .line 27
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    .line 28
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_9
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_a

    .line 30
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    .line 31
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_b

    .line 33
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    .line 34
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_b
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xc

    if-ne v1, v3, :cond_c

    .line 36
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    .line 37
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_c
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_d

    .line 39
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    .line 40
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_d
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xe

    if-ne v1, v3, :cond_e

    .line 42
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    .line 43
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_e
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0xf

    if-ne v1, v3, :cond_f

    .line 45
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    .line 46
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_f
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_10

    .line 48
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    .line 49
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    .line 51
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getMessage()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_11
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_12

    .line 53
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    .line 54
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_13

    .line 56
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    .line 57
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_13
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_14

    .line 59
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    .line 60
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_14
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_15

    .line 62
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    .line 63
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_15
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_16

    .line 65
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    .line 66
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSfixed32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getSfixed32OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$q;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getSfixed64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    move-result-object v0

    return-object v0
.end method

.method public getSfixed64OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$r;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    move-result-object v0

    return-object v0
.end method

.method public getSint32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getSint32OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$s;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getSint64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    move-result-object v0

    return-object v0
.end method

.method public getSint64OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$t;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    move-result-object v0

    return-object v0
.end method

.method public getString()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    move-result-object v0

    return-object v0
.end method

.method public getStringOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$u;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$v;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    move-result-object v0

    return-object v0
.end method

.method public getTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getUint32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getUint32OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$w;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    move-result-object v0

    return-object v0
.end method

.method public getUint64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    move-result-object v0

    return-object v0
.end method

.method public getUint64OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$x;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasAny()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBool()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBytes()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDouble()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDuration()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnum()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFixed32()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFixed64()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFloat()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasInt32()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInt64()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMap()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMessage()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRepeated()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSfixed32()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSfixed64()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSint32()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSint64()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasString()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUint32()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUint64()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x6

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->hasMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getMessage()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getTimestamp()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getDuration()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getAny()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getMap()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getRepeated()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getEnum()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_7
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getBytes()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getString()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_9
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getBool()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_a
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSfixed64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_b
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSfixed32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_c
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getFixed64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_d
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getFixed32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_e
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSint64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_f
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getSint32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_10
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getUint64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_11
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getUint32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_12
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getInt64()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_13
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getInt32()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_14
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getDouble()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_15
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getFloat()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 27
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;->s0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FloatRules;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int32Rules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Int64Rules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt32Rules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$UInt64Rules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt32Rules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SInt64Rules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_8

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed32Rules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_9

    .line 20
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$Fixed64Rules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_a

    .line 22
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed32Rules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_b

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$SFixed64Rules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_b
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_c

    .line 26
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BoolRules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_c
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_d

    .line 28
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_d
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_e

    .line 30
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 31
    :cond_e
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_f

    .line 32
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$EnumRules;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 33
    :cond_f
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->getMessage()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MessageRules;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 35
    :cond_10
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_11

    .line 36
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$RepeatedRules;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 37
    :cond_11
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_12

    .line 38
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$MapRules;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 39
    :cond_12
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_13

    .line 40
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 41
    :cond_13
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_14

    .line 42
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DurationRules;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 43
    :cond_14
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->typeCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_15

    .line 44
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;->type_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$TimestampRules;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 45
    :cond_15
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

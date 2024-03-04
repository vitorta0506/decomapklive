.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum ANY:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum BOOL:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum BYTES:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum DOUBLE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum DURATION:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum ENUM:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum FIXED32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum FIXED64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum FLOAT:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum INT32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum INT64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum MAP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum REPEATED:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum SFIXED32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum SFIXED64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum SINT32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum SINT64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum STRING:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum TIMESTAMP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum TYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum UINT32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

.field public static final enum UINT64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->FLOAT:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v4, "DOUBLE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->DOUBLE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v6, "INT32"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->INT32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v8, "INT64"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->INT64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v10, "UINT32"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->UINT32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 6
    new-instance v10, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v12, "UINT64"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->UINT64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 7
    new-instance v12, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v14, "SINT32"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->SINT32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 8
    new-instance v14, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v13, "SINT64"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->SINT64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 9
    new-instance v13, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v15, "FIXED32"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->FIXED32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 10
    new-instance v15, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v11, "FIXED64"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->FIXED64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 11
    new-instance v11, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v9, "SFIXED32"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->SFIXED32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 12
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v7, "SFIXED64"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->SFIXED64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 13
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v5, "BOOL"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->BOOL:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 14
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v3, "STRING"

    move-object/from16 v17, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->STRING:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 15
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v2, "BYTES"

    move-object/from16 v18, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->BYTES:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 16
    new-instance v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v7, "ENUM"

    move-object/from16 v19, v3

    const/16 v3, 0x10

    invoke-direct {v2, v7, v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->ENUM:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 17
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v5, "REPEATED"

    move-object/from16 v20, v2

    const/16 v2, 0x12

    invoke-direct {v7, v5, v3, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->REPEATED:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 18
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v3, "MAP"

    const/16 v2, 0x11

    move-object/from16 v21, v7

    const/16 v7, 0x13

    invoke-direct {v5, v3, v2, v7}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->MAP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 19
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v2, "ANY"

    const/16 v7, 0x14

    move-object/from16 v22, v5

    const/16 v5, 0x12

    invoke-direct {v3, v2, v5, v7}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->ANY:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 20
    new-instance v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v5, "DURATION"

    const/16 v7, 0x15

    move-object/from16 v23, v3

    const/16 v3, 0x13

    invoke-direct {v2, v5, v3, v7}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->DURATION:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 21
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v5, "TIMESTAMP"

    const/16 v7, 0x16

    move-object/from16 v24, v2

    const/16 v2, 0x14

    invoke-direct {v3, v5, v2, v7}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->TIMESTAMP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    .line 22
    new-instance v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const-string v5, "TYPE_NOT_SET"

    move-object/from16 v16, v3

    const/4 v3, 0x0

    const/16 v7, 0x15

    invoke-direct {v2, v5, v7, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->TYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    const/16 v5, 0x16

    new-array v5, v5, [Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v14, v5, v0

    const/16 v0, 0x8

    aput-object v13, v5, v0

    const/16 v0, 0x9

    aput-object v15, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v17, v5, v0

    const/16 v0, 0xd

    aput-object v18, v5, v0

    const/16 v0, 0xe

    aput-object v19, v5, v0

    const/16 v0, 0xf

    aput-object v20, v5, v0

    const/16 v0, 0x10

    aput-object v21, v5, v0

    const/16 v0, 0x11

    aput-object v22, v5, v0

    const/16 v0, 0x12

    aput-object v23, v5, v0

    const/16 v0, 0x13

    aput-object v24, v5, v0

    const/16 v0, 0x14

    aput-object v16, v5, v0

    const/16 v0, 0x15

    aput-object v2, v5, v0

    .line 23
    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->TIMESTAMP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 2
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->DURATION:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 3
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->ANY:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 4
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->MAP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 5
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->REPEATED:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 6
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->ENUM:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 7
    :pswitch_7
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->BYTES:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 8
    :pswitch_8
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->STRING:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 9
    :pswitch_9
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->BOOL:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 10
    :pswitch_a
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->SFIXED64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 11
    :pswitch_b
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->SFIXED32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 12
    :pswitch_c
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->FIXED64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 13
    :pswitch_d
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->FIXED32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 14
    :pswitch_e
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->SINT64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 15
    :pswitch_f
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->SINT32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 16
    :pswitch_10
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->UINT64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 17
    :pswitch_11
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->UINT32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 18
    :pswitch_12
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->INT64:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 19
    :pswitch_13
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->INT32:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 20
    :pswitch_14
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->DOUBLE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 21
    :pswitch_15
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->FLOAT:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    .line 22
    :pswitch_16
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->TYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
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

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$FieldRules$TypeCase;->value:I

    return v0
.end method

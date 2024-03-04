.class public final enum Lcom/google/type/Month;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/type/Month;",
        ">;",
        "Lcom/google/protobuf/h2;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/type/Month;

.field public static final enum APRIL:Lcom/google/type/Month;

.field public static final APRIL_VALUE:I = 0x4

.field public static final enum AUGUST:Lcom/google/type/Month;

.field public static final AUGUST_VALUE:I = 0x8

.field public static final enum DECEMBER:Lcom/google/type/Month;

.field public static final DECEMBER_VALUE:I = 0xc

.field public static final enum FEBRUARY:Lcom/google/type/Month;

.field public static final FEBRUARY_VALUE:I = 0x2

.field public static final enum JANUARY:Lcom/google/type/Month;

.field public static final JANUARY_VALUE:I = 0x1

.field public static final enum JULY:Lcom/google/type/Month;

.field public static final JULY_VALUE:I = 0x7

.field public static final enum JUNE:Lcom/google/type/Month;

.field public static final JUNE_VALUE:I = 0x6

.field public static final enum MARCH:Lcom/google/type/Month;

.field public static final MARCH_VALUE:I = 0x3

.field public static final enum MAY:Lcom/google/type/Month;

.field public static final MAY_VALUE:I = 0x5

.field public static final enum MONTH_UNSPECIFIED:Lcom/google/type/Month;

.field public static final MONTH_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum NOVEMBER:Lcom/google/type/Month;

.field public static final NOVEMBER_VALUE:I = 0xb

.field public static final enum OCTOBER:Lcom/google/type/Month;

.field public static final OCTOBER_VALUE:I = 0xa

.field public static final enum SEPTEMBER:Lcom/google/type/Month;

.field public static final SEPTEMBER_VALUE:I = 0x9

.field public static final enum UNRECOGNIZED:Lcom/google/type/Month;

.field private static final VALUES:[Lcom/google/type/Month;

.field private static final internalValueMap:Lcom/google/protobuf/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$d<",
            "Lcom/google/type/Month;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/google/type/Month;

    const-string v1, "MONTH_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/Month;->MONTH_UNSPECIFIED:Lcom/google/type/Month;

    .line 2
    new-instance v1, Lcom/google/type/Month;

    const-string v3, "JANUARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/type/Month;->JANUARY:Lcom/google/type/Month;

    .line 3
    new-instance v3, Lcom/google/type/Month;

    const-string v5, "FEBRUARY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/type/Month;->FEBRUARY:Lcom/google/type/Month;

    .line 4
    new-instance v5, Lcom/google/type/Month;

    const-string v7, "MARCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/type/Month;->MARCH:Lcom/google/type/Month;

    .line 5
    new-instance v7, Lcom/google/type/Month;

    const-string v9, "APRIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/type/Month;->APRIL:Lcom/google/type/Month;

    .line 6
    new-instance v9, Lcom/google/type/Month;

    const-string v11, "MAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/type/Month;->MAY:Lcom/google/type/Month;

    .line 7
    new-instance v11, Lcom/google/type/Month;

    const-string v13, "JUNE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/type/Month;->JUNE:Lcom/google/type/Month;

    .line 8
    new-instance v13, Lcom/google/type/Month;

    const-string v15, "JULY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/type/Month;->JULY:Lcom/google/type/Month;

    .line 9
    new-instance v15, Lcom/google/type/Month;

    const-string v14, "AUGUST"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/type/Month;->AUGUST:Lcom/google/type/Month;

    .line 10
    new-instance v14, Lcom/google/type/Month;

    const-string v12, "SEPTEMBER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/type/Month;->SEPTEMBER:Lcom/google/type/Month;

    .line 11
    new-instance v12, Lcom/google/type/Month;

    const-string v10, "OCTOBER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/type/Month;->OCTOBER:Lcom/google/type/Month;

    .line 12
    new-instance v10, Lcom/google/type/Month;

    const-string v8, "NOVEMBER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/type/Month;->NOVEMBER:Lcom/google/type/Month;

    .line 13
    new-instance v8, Lcom/google/type/Month;

    const-string v6, "DECEMBER"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/type/Month;->DECEMBER:Lcom/google/type/Month;

    .line 14
    new-instance v6, Lcom/google/type/Month;

    const-string v4, "UNRECOGNIZED"

    const/16 v2, 0xd

    move-object/from16 v16, v8

    const/4 v8, -0x1

    invoke-direct {v6, v4, v2, v8}, Lcom/google/type/Month;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/type/Month;->UNRECOGNIZED:Lcom/google/type/Month;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/google/type/Month;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v6, v4, v2

    .line 15
    sput-object v4, Lcom/google/type/Month;->$VALUES:[Lcom/google/type/Month;

    .line 16
    new-instance v0, Lcom/google/type/Month$a;

    invoke-direct {v0}, Lcom/google/type/Month$a;-><init>()V

    sput-object v0, Lcom/google/type/Month;->internalValueMap:Lcom/google/protobuf/u0$d;

    .line 17
    invoke-static {}, Lcom/google/type/Month;->values()[Lcom/google/type/Month;

    move-result-object v0

    sput-object v0, Lcom/google/type/Month;->VALUES:[Lcom/google/type/Month;

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
    iput p3, p0, Lcom/google/type/Month;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/type/Month;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/type/Month;->DECEMBER:Lcom/google/type/Month;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/google/type/Month;->NOVEMBER:Lcom/google/type/Month;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/google/type/Month;->OCTOBER:Lcom/google/type/Month;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/type/Month;->SEPTEMBER:Lcom/google/type/Month;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/type/Month;->AUGUST:Lcom/google/type/Month;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/google/type/Month;->JULY:Lcom/google/type/Month;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/type/Month;->JUNE:Lcom/google/type/Month;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/google/type/Month;->MAY:Lcom/google/type/Month;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/type/Month;->APRIL:Lcom/google/type/Month;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/google/type/Month;->MARCH:Lcom/google/type/Month;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/google/type/Month;->FEBRUARY:Lcom/google/type/Month;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/google/type/Month;->JANUARY:Lcom/google/type/Month;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, Lcom/google/type/Month;->MONTH_UNSPECIFIED:Lcom/google/type/Month;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    invoke-static {}, Lcom/google/type/n;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/google/type/Month;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/type/Month;->internalValueMap:Lcom/google/protobuf/u0$d;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/type/Month;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/type/Month;->forNumber(I)Lcom/google/type/Month;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lcom/google/type/Month;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->h()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lcom/google/type/Month;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/google/type/Month;->UNRECOGNIZED:Lcom/google/type/Month;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/type/Month;->VALUES:[Lcom/google/type/Month;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/type/Month;
    .locals 1

    .line 1
    const-class v0, Lcom/google/type/Month;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/type/Month;

    return-object p0
.end method

.method public static values()[Lcom/google/type/Month;
    .locals 1

    sget-object v0, Lcom/google/type/Month;->$VALUES:[Lcom/google/type/Month;

    invoke-virtual {v0}, [Lcom/google/type/Month;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/type/Month;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lcom/google/type/Month;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/type/Month;->UNRECOGNIZED:Lcom/google/type/Month;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/type/Month;->value:I

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
    sget-object v0, Lcom/google/type/Month;->UNRECOGNIZED:Lcom/google/type/Month;

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/type/Month;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

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

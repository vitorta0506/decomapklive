.class public final enum Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeKindCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum ABSTRACT_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum DYN:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum ERROR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum FUNCTION:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum LIST_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum MAP_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum MESSAGE_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum NULL:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum PRIMITIVE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum TYPEKIND_NOT_SET:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum TYPE_PARAM:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum WELL_KNOWN:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

.field public static final enum WRAPPER:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v1, "DYN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->DYN:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v4, "NULL"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->NULL:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v6, "PRIMITIVE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->PRIMITIVE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v8, "WRAPPER"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->WRAPPER:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v10, "WELL_KNOWN"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->WELL_KNOWN:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 6
    new-instance v10, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v12, "LIST_TYPE"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->LIST_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 7
    new-instance v12, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v14, "MAP_TYPE"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->MAP_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 8
    new-instance v14, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v13, "FUNCTION"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->FUNCTION:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 9
    new-instance v13, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v15, "MESSAGE_TYPE"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->MESSAGE_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 10
    new-instance v15, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v11, "TYPE_PARAM"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->TYPE_PARAM:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 11
    new-instance v11, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v9, "TYPE"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 12
    new-instance v9, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v7, "ERROR"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->ERROR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 13
    new-instance v7, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v5, "ABSTRACT_TYPE"

    const/16 v2, 0xe

    invoke-direct {v7, v5, v3, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->ABSTRACT_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    .line 14
    new-instance v5, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const-string v3, "TYPEKIND_NOT_SET"

    const/16 v2, 0xd

    move-object/from16 v16, v7

    const/4 v7, 0x0

    invoke-direct {v5, v3, v2, v7}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->TYPEKIND_NOT_SET:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    const/16 v3, 0xe

    new-array v3, v3, [Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    aput-object v5, v3, v2

    .line 15
    sput-object v3, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->$VALUES:[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->ABSTRACT_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 2
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->ERROR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 3
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 4
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->TYPE_PARAM:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 5
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->MESSAGE_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 6
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->FUNCTION:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 7
    :pswitch_7
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->MAP_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 8
    :pswitch_8
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->LIST_TYPE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 9
    :pswitch_9
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->WELL_KNOWN:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 10
    :pswitch_a
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->WRAPPER:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 11
    :pswitch_b
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->PRIMITIVE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 12
    :pswitch_c
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->NULL:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 13
    :pswitch_d
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->DYN:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    .line 14
    :pswitch_e
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->TYPEKIND_NOT_SET:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->forNumber(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->$VALUES:[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$TypeKindCase;->value:I

    return v0
.end method

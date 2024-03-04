.class public final enum Lcom/google/api/LaunchStage;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/LaunchStage;",
        ">;",
        "Lcom/google/protobuf/h2;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/LaunchStage;

.field public static final enum ALPHA:Lcom/google/api/LaunchStage;

.field public static final ALPHA_VALUE:I = 0x2

.field public static final enum BETA:Lcom/google/api/LaunchStage;

.field public static final BETA_VALUE:I = 0x3

.field public static final enum DEPRECATED:Lcom/google/api/LaunchStage;

.field public static final DEPRECATED_VALUE:I = 0x5

.field public static final enum EARLY_ACCESS:Lcom/google/api/LaunchStage;

.field public static final EARLY_ACCESS_VALUE:I = 0x1

.field public static final enum GA:Lcom/google/api/LaunchStage;

.field public static final GA_VALUE:I = 0x4

.field public static final enum LAUNCH_STAGE_UNSPECIFIED:Lcom/google/api/LaunchStage;

.field public static final LAUNCH_STAGE_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum PRELAUNCH:Lcom/google/api/LaunchStage;

.field public static final PRELAUNCH_VALUE:I = 0x7

.field public static final enum UNIMPLEMENTED:Lcom/google/api/LaunchStage;

.field public static final UNIMPLEMENTED_VALUE:I = 0x6

.field public static final enum UNRECOGNIZED:Lcom/google/api/LaunchStage;

.field private static final VALUES:[Lcom/google/api/LaunchStage;

.field private static final internalValueMap:Lcom/google/protobuf/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$d<",
            "Lcom/google/api/LaunchStage;",
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
    new-instance v0, Lcom/google/api/LaunchStage;

    const-string v1, "LAUNCH_STAGE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/LaunchStage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/LaunchStage;->LAUNCH_STAGE_UNSPECIFIED:Lcom/google/api/LaunchStage;

    .line 2
    new-instance v1, Lcom/google/api/LaunchStage;

    const-string v3, "UNIMPLEMENTED"

    const/4 v4, 0x1

    const/4 v5, 0x6

    invoke-direct {v1, v3, v4, v5}, Lcom/google/api/LaunchStage;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/LaunchStage;->UNIMPLEMENTED:Lcom/google/api/LaunchStage;

    .line 3
    new-instance v3, Lcom/google/api/LaunchStage;

    const-string v6, "PRELAUNCH"

    const/4 v7, 0x2

    const/4 v8, 0x7

    invoke-direct {v3, v6, v7, v8}, Lcom/google/api/LaunchStage;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/api/LaunchStage;->PRELAUNCH:Lcom/google/api/LaunchStage;

    .line 4
    new-instance v6, Lcom/google/api/LaunchStage;

    const-string v9, "EARLY_ACCESS"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v4}, Lcom/google/api/LaunchStage;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/api/LaunchStage;->EARLY_ACCESS:Lcom/google/api/LaunchStage;

    .line 5
    new-instance v9, Lcom/google/api/LaunchStage;

    const-string v11, "ALPHA"

    const/4 v12, 0x4

    invoke-direct {v9, v11, v12, v7}, Lcom/google/api/LaunchStage;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/api/LaunchStage;->ALPHA:Lcom/google/api/LaunchStage;

    .line 6
    new-instance v11, Lcom/google/api/LaunchStage;

    const-string v13, "BETA"

    const/4 v14, 0x5

    invoke-direct {v11, v13, v14, v10}, Lcom/google/api/LaunchStage;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/api/LaunchStage;->BETA:Lcom/google/api/LaunchStage;

    .line 7
    new-instance v13, Lcom/google/api/LaunchStage;

    const-string v15, "GA"

    invoke-direct {v13, v15, v5, v12}, Lcom/google/api/LaunchStage;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/api/LaunchStage;->GA:Lcom/google/api/LaunchStage;

    .line 8
    new-instance v15, Lcom/google/api/LaunchStage;

    const-string v5, "DEPRECATED"

    invoke-direct {v15, v5, v8, v14}, Lcom/google/api/LaunchStage;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/api/LaunchStage;->DEPRECATED:Lcom/google/api/LaunchStage;

    .line 9
    new-instance v5, Lcom/google/api/LaunchStage;

    const-string v8, "UNRECOGNIZED"

    const/16 v14, 0x8

    const/4 v12, -0x1

    invoke-direct {v5, v8, v14, v12}, Lcom/google/api/LaunchStage;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/api/LaunchStage;->UNRECOGNIZED:Lcom/google/api/LaunchStage;

    const/16 v8, 0x9

    new-array v8, v8, [Lcom/google/api/LaunchStage;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v7

    aput-object v6, v8, v10

    const/4 v0, 0x4

    aput-object v9, v8, v0

    const/4 v0, 0x5

    aput-object v11, v8, v0

    const/4 v0, 0x6

    aput-object v13, v8, v0

    const/4 v0, 0x7

    aput-object v15, v8, v0

    aput-object v5, v8, v14

    .line 10
    sput-object v8, Lcom/google/api/LaunchStage;->$VALUES:[Lcom/google/api/LaunchStage;

    .line 11
    new-instance v0, Lcom/google/api/LaunchStage$a;

    invoke-direct {v0}, Lcom/google/api/LaunchStage$a;-><init>()V

    sput-object v0, Lcom/google/api/LaunchStage;->internalValueMap:Lcom/google/protobuf/u0$d;

    .line 12
    invoke-static {}, Lcom/google/api/LaunchStage;->values()[Lcom/google/api/LaunchStage;

    move-result-object v0

    sput-object v0, Lcom/google/api/LaunchStage;->VALUES:[Lcom/google/api/LaunchStage;

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
    iput p3, p0, Lcom/google/api/LaunchStage;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/api/LaunchStage;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/api/LaunchStage;->PRELAUNCH:Lcom/google/api/LaunchStage;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/google/api/LaunchStage;->UNIMPLEMENTED:Lcom/google/api/LaunchStage;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/google/api/LaunchStage;->DEPRECATED:Lcom/google/api/LaunchStage;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/api/LaunchStage;->GA:Lcom/google/api/LaunchStage;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/api/LaunchStage;->BETA:Lcom/google/api/LaunchStage;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/google/api/LaunchStage;->ALPHA:Lcom/google/api/LaunchStage;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/api/LaunchStage;->EARLY_ACCESS:Lcom/google/api/LaunchStage;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/google/api/LaunchStage;->LAUNCH_STAGE_UNSPECIFIED:Lcom/google/api/LaunchStage;

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

    invoke-static {}, Lcom/google/api/k0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/google/api/LaunchStage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/LaunchStage;->internalValueMap:Lcom/google/protobuf/u0$d;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/api/LaunchStage;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/api/LaunchStage;->forNumber(I)Lcom/google/api/LaunchStage;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lcom/google/api/LaunchStage;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->h()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lcom/google/api/LaunchStage;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/google/api/LaunchStage;->UNRECOGNIZED:Lcom/google/api/LaunchStage;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/api/LaunchStage;->VALUES:[Lcom/google/api/LaunchStage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/LaunchStage;
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/LaunchStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/LaunchStage;

    return-object p0
.end method

.method public static values()[Lcom/google/api/LaunchStage;
    .locals 1

    sget-object v0, Lcom/google/api/LaunchStage;->$VALUES:[Lcom/google/api/LaunchStage;

    invoke-virtual {v0}, [Lcom/google/api/LaunchStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/LaunchStage;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lcom/google/api/LaunchStage;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/api/LaunchStage;->UNRECOGNIZED:Lcom/google/api/LaunchStage;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/api/LaunchStage;->value:I

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
    sget-object v0, Lcom/google/api/LaunchStage;->UNRECOGNIZED:Lcom/google/api/LaunchStage;

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/api/LaunchStage;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

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

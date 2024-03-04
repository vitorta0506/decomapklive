.class public final enum Lorg/light/lightAssetKit/enums/BlendModeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/BlendModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Add:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Darken:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Default:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Diff:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Divide:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Hardlight:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Lighten:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Multiply:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Normal:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Overlay:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Screen:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Softlight:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum Substract:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum V7_0:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum V7_1017:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public static final enum V7_1021:Lorg/light/lightAssetKit/enums/BlendModeType;


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v1, "Default"

    const/4 v2, 0x0

    const-string v3, "default"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/light/lightAssetKit/enums/BlendModeType;->Default:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v3, "Normal"

    const/4 v4, 0x1

    const-string v5, "normal"

    invoke-direct {v1, v3, v4, v4, v5}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/light/lightAssetKit/enums/BlendModeType;->Normal:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v5, "Multiply"

    const/4 v6, 0x2

    const-string v7, "multiply"

    invoke-direct {v3, v5, v6, v6, v7}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/light/lightAssetKit/enums/BlendModeType;->Multiply:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 4
    new-instance v5, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v7, "Screen"

    const/4 v8, 0x3

    const-string v9, "screen"

    invoke-direct {v5, v7, v8, v8, v9}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/light/lightAssetKit/enums/BlendModeType;->Screen:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 5
    new-instance v7, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v9, "Overlay"

    const/4 v10, 0x4

    const-string v11, "overlay"

    invoke-direct {v7, v9, v10, v10, v11}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/light/lightAssetKit/enums/BlendModeType;->Overlay:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 6
    new-instance v9, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v11, "Hardlight"

    const/4 v12, 0x5

    const-string v13, "hardlight"

    invoke-direct {v9, v11, v12, v12, v13}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/light/lightAssetKit/enums/BlendModeType;->Hardlight:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 7
    new-instance v11, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v13, "Softlight"

    const/4 v14, 0x6

    const-string v15, "softlight"

    invoke-direct {v11, v13, v14, v14, v15}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/light/lightAssetKit/enums/BlendModeType;->Softlight:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 8
    new-instance v13, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v15, "Divide"

    const/4 v14, 0x7

    const-string v12, "divide"

    invoke-direct {v13, v15, v14, v14, v12}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/light/lightAssetKit/enums/BlendModeType;->Divide:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 9
    new-instance v12, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v15, "Add"

    const/16 v14, 0x8

    const-string v10, "add"

    invoke-direct {v12, v15, v14, v14, v10}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/light/lightAssetKit/enums/BlendModeType;->Add:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 10
    new-instance v10, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v15, "Substract"

    const/16 v14, 0x9

    const-string v8, "substract"

    invoke-direct {v10, v15, v14, v14, v8}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/light/lightAssetKit/enums/BlendModeType;->Substract:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 11
    new-instance v8, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v15, "Diff"

    const/16 v14, 0xa

    const-string v6, "diff"

    invoke-direct {v8, v15, v14, v14, v6}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/light/lightAssetKit/enums/BlendModeType;->Diff:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 12
    new-instance v6, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v15, "Darken"

    const/16 v14, 0xb

    const-string v4, "darken"

    invoke-direct {v6, v15, v14, v14, v4}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/light/lightAssetKit/enums/BlendModeType;->Darken:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 13
    new-instance v4, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v15, "Lighten"

    const/16 v14, 0xc

    const-string v2, "lighten"

    invoke-direct {v4, v15, v14, v14, v2}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/light/lightAssetKit/enums/BlendModeType;->Lighten:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 14
    new-instance v2, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v15, "V7_0"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "v7_0"

    invoke-direct {v2, v15, v14, v14, v4}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/light/lightAssetKit/enums/BlendModeType;->V7_0:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 15
    new-instance v4, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v15, "V7_1021"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "v7_1021"

    invoke-direct {v4, v15, v14, v14, v2}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/light/lightAssetKit/enums/BlendModeType;->V7_1021:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 16
    new-instance v2, Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v15, "V7_1017"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "v7_1017"

    invoke-direct {v2, v15, v14, v14, v4}, Lorg/light/lightAssetKit/enums/BlendModeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/light/lightAssetKit/enums/BlendModeType;->V7_1017:Lorg/light/lightAssetKit/enums/BlendModeType;

    const/16 v4, 0x10

    new-array v4, v4, [Lorg/light/lightAssetKit/enums/BlendModeType;

    const/4 v15, 0x0

    aput-object v0, v4, v15

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

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    aput-object v2, v4, v14

    .line 17
    sput-object v4, Lorg/light/lightAssetKit/enums/BlendModeType;->$VALUES:[Lorg/light/lightAssetKit/enums/BlendModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lorg/light/lightAssetKit/enums/BlendModeType;->value:I

    .line 3
    iput-object p4, p0, Lorg/light/lightAssetKit/enums/BlendModeType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/BlendModeType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/BlendModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/BlendModeType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/BlendModeType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/BlendModeType;->$VALUES:[Lorg/light/lightAssetKit/enums/BlendModeType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/BlendModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/BlendModeType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/enums/BlendModeType;->name:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lorg/light/lightAssetKit/enums/fDrawFlags;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/fDrawFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Anchors:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum ClusterTree:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Clusters:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Contacts:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum FaceTree:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Faces:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Joints:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Links:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum NodeTree:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Nodes:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum NodesWithIndex:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Normals:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Notes:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Std:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum StdTetra:Lorg/light/lightAssetKit/enums/fDrawFlags;

.field public static final enum Tetras:Lorg/light/lightAssetKit/enums/fDrawFlags;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v1, "Nodes"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/lightAssetKit/enums/fDrawFlags;->Nodes:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v4, "Links"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/lightAssetKit/enums/fDrawFlags;->Links:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 3
    new-instance v4, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v6, "Faces"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/light/lightAssetKit/enums/fDrawFlags;->Faces:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 4
    new-instance v6, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v8, "Tetras"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/light/lightAssetKit/enums/fDrawFlags;->Tetras:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 5
    new-instance v8, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v11, "Normals"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/light/lightAssetKit/enums/fDrawFlags;->Normals:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 6
    new-instance v11, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v13, "Contacts"

    const/4 v14, 0x5

    const/16 v15, 0x20

    invoke-direct {v11, v13, v14, v15}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/light/lightAssetKit/enums/fDrawFlags;->Contacts:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 7
    new-instance v13, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v15, "Anchors"

    const/4 v14, 0x6

    const/16 v7, 0x40

    invoke-direct {v13, v15, v14, v7}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/light/lightAssetKit/enums/fDrawFlags;->Anchors:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 8
    new-instance v7, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v15, "Notes"

    const/4 v14, 0x7

    const/16 v9, 0x80

    invoke-direct {v7, v15, v14, v9}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/light/lightAssetKit/enums/fDrawFlags;->Notes:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 9
    new-instance v9, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v15, "Clusters"

    const/16 v14, 0x100

    invoke-direct {v9, v15, v10, v14}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/light/lightAssetKit/enums/fDrawFlags;->Clusters:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 10
    new-instance v14, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v15, "NodeTree"

    const/16 v10, 0x9

    const/16 v5, 0x200

    invoke-direct {v14, v15, v10, v5}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/light/lightAssetKit/enums/fDrawFlags;->NodeTree:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 11
    new-instance v5, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v15, "FaceTree"

    const/16 v10, 0xa

    const/16 v3, 0x400

    invoke-direct {v5, v15, v10, v3}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/light/lightAssetKit/enums/fDrawFlags;->FaceTree:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 12
    new-instance v3, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v15, "ClusterTree"

    const/16 v10, 0xb

    const/16 v2, 0x800

    invoke-direct {v3, v15, v10, v2}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/light/lightAssetKit/enums/fDrawFlags;->ClusterTree:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 13
    new-instance v2, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v15, "Joints"

    const/16 v10, 0xc

    const/16 v12, 0x1000

    invoke-direct {v2, v15, v10, v12}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/light/lightAssetKit/enums/fDrawFlags;->Joints:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 14
    new-instance v12, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v15, "NodesWithIndex"

    const/16 v10, 0xd

    move-object/from16 v16, v2

    const/16 v2, 0x2000

    invoke-direct {v12, v15, v10, v2}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/light/lightAssetKit/enums/fDrawFlags;->NodesWithIndex:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 15
    new-instance v2, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v15, "Std"

    const/16 v10, 0xe

    move-object/from16 v17, v12

    const/16 v12, 0x30ce

    invoke-direct {v2, v15, v10, v12}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/light/lightAssetKit/enums/fDrawFlags;->Std:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 16
    new-instance v12, Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v15, "StdTetra"

    const/16 v10, 0xf

    move-object/from16 v18, v2

    const/16 v2, 0x30d2

    invoke-direct {v12, v15, v10, v2}, Lorg/light/lightAssetKit/enums/fDrawFlags;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/light/lightAssetKit/enums/fDrawFlags;->StdTetra:Lorg/light/lightAssetKit/enums/fDrawFlags;

    const/16 v2, 0x10

    new-array v2, v2, [Lorg/light/lightAssetKit/enums/fDrawFlags;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v7, v2, v0

    const/16 v0, 0x8

    aput-object v9, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v5, v2, v0

    const/16 v0, 0xb

    aput-object v3, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    aput-object v12, v2, v10

    .line 17
    sput-object v2, Lorg/light/lightAssetKit/enums/fDrawFlags;->$VALUES:[Lorg/light/lightAssetKit/enums/fDrawFlags;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/fDrawFlags;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/fDrawFlags;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/fDrawFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/fDrawFlags;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/fDrawFlags;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/fDrawFlags;->$VALUES:[Lorg/light/lightAssetKit/enums/fDrawFlags;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/fDrawFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/fDrawFlags;

    return-object v0
.end method

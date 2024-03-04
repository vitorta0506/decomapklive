.class public Lorg/light/bean/LightFaceFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/LightFaceFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public age:I

.field public emotion:Ljava/lang/String;

.field public expression_status_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public faceBoundsRect:[F

.field public faceFeature256Points:[F

.field public faceFeature256Visibility:[F

.field public faceFeature3DPoints:[F

.field public faceFeaturePoints:[F

.field public faceFeatureVisibility:[F

.field public facePoint83:[F

.field public facePoint83Visibility:[F

.field public facePoint90:[F

.field public facePoint90Visibility:[F

.field public facePoints:[F

.field public facePointsVisible:[F

.field public gender:Ljava/lang/String;

.field public hasOutline:Z

.field public imageSize:[F

.field public leBounds:[F

.field public mTTFaceOriginDataModel:Lorg/light/bean/TTFaceOriginDataModel;

.field public mouthBounds:[F

.field public pitch:F

.field public reBounds:[F

.field public roll:F

.field public traceId:I

.field public transform3D:[F

.field public yaw:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/LightFaceFeature$1;

    invoke-direct {v0}, Lorg/light/bean/LightFaceFeature$1;-><init>()V

    sput-object v0, Lorg/light/bean/LightFaceFeature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->imageSize:[F

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lorg/light/bean/LightFaceFeature;->faceBoundsRect:[F

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lorg/light/bean/LightFaceFeature;->leBounds:[F

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Lorg/light/bean/LightFaceFeature;->reBounds:[F

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->mouthBounds:[F

    const/16 v0, 0xbc

    new-array v0, v0, [F

    .line 7
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoints:[F

    const/16 v0, 0x5e

    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePointsVisible:[F

    const/16 v0, 0xa6

    new-array v1, v0, [F

    .line 9
    iput-object v1, p0, Lorg/light/bean/LightFaceFeature;->facePoint83:[F

    const/16 v1, 0x53

    new-array v2, v1, [F

    .line 10
    iput-object v2, p0, Lorg/light/bean/LightFaceFeature;->facePoint83Visibility:[F

    const/16 v2, 0xb4

    new-array v2, v2, [F

    .line 11
    iput-object v2, p0, Lorg/light/bean/LightFaceFeature;->facePoint90:[F

    const/16 v2, 0x5a

    new-array v2, v2, [F

    .line 12
    iput-object v2, p0, Lorg/light/bean/LightFaceFeature;->facePoint90Visibility:[F

    new-array v0, v0, [F

    .line 13
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeaturePoints:[F

    new-array v0, v1, [F

    .line 14
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeatureVisibility:[F

    const/16 v0, 0x200

    new-array v0, v0, [F

    .line 15
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    const/16 v0, 0x100

    new-array v0, v0, [F

    .line 16
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature256Visibility:[F

    const/16 v0, 0xbb8

    new-array v0, v0, [F

    .line 17
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature3DPoints:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 18
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->transform3D:[F

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->expression_status_:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 112
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->imageSize:[F

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 113
    iput-object v1, p0, Lorg/light/bean/LightFaceFeature;->faceBoundsRect:[F

    new-array v1, v0, [F

    .line 114
    iput-object v1, p0, Lorg/light/bean/LightFaceFeature;->leBounds:[F

    new-array v1, v0, [F

    .line 115
    iput-object v1, p0, Lorg/light/bean/LightFaceFeature;->reBounds:[F

    new-array v0, v0, [F

    .line 116
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->mouthBounds:[F

    const/16 v0, 0xbc

    new-array v0, v0, [F

    .line 117
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoints:[F

    const/16 v0, 0x5e

    new-array v0, v0, [F

    .line 118
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePointsVisible:[F

    const/16 v0, 0xa6

    new-array v1, v0, [F

    .line 119
    iput-object v1, p0, Lorg/light/bean/LightFaceFeature;->facePoint83:[F

    const/16 v1, 0x53

    new-array v2, v1, [F

    .line 120
    iput-object v2, p0, Lorg/light/bean/LightFaceFeature;->facePoint83Visibility:[F

    const/16 v2, 0xb4

    new-array v2, v2, [F

    .line 121
    iput-object v2, p0, Lorg/light/bean/LightFaceFeature;->facePoint90:[F

    const/16 v2, 0x5a

    new-array v2, v2, [F

    .line 122
    iput-object v2, p0, Lorg/light/bean/LightFaceFeature;->facePoint90Visibility:[F

    new-array v0, v0, [F

    .line 123
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeaturePoints:[F

    new-array v0, v1, [F

    .line 124
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeatureVisibility:[F

    const/16 v0, 0x200

    new-array v0, v0, [F

    .line 125
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    const/16 v0, 0x100

    new-array v0, v0, [F

    .line 126
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature256Visibility:[F

    const/16 v0, 0xbb8

    new-array v0, v0, [F

    .line 127
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature3DPoints:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 128
    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->transform3D:[F

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->expression_status_:Ljava/util/HashMap;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->imageSize:[F

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceBoundsRect:[F

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->leBounds:[F

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->reBounds:[F

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->mouthBounds:[F

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/bean/LightFaceFeature;->pitch:F

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/bean/LightFaceFeature;->yaw:F

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/bean/LightFaceFeature;->roll:F

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/light/bean/LightFaceFeature;->hasOutline:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->gender:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/bean/LightFaceFeature;->age:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->emotion:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/bean/LightFaceFeature;->traceId:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoints:[F

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePointsVisible:[F

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoint83:[F

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoint83Visibility:[F

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoint90:[F

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoint90Visibility:[F

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeaturePoints:[F

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeatureVisibility:[F

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature256Visibility:[F

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature3DPoints:[F

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->transform3D:[F

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->expression_status_:Ljava/util/HashMap;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/light/bean/TTFaceOriginDataModel;

    iput-object p1, p0, Lorg/light/bean/LightFaceFeature;->mTTFaceOriginDataModel:Lorg/light/bean/TTFaceOriginDataModel;

    return-void
.end method

.method public constructor <init>([F[F[F[F[FFFFZLjava/lang/String;[F[F[F[F[F[F[F[F[F[FLjava/util/HashMap;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F[F[F[FFFFZ",
            "Ljava/lang/String;",
            "[F[F[F[F[F[F[F[F[F[F",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    const-string v22, ""

    .line 110
    invoke-direct/range {v0 .. v22}, Lorg/light/bean/LightFaceFeature;-><init>([F[F[F[F[FFFFZLjava/lang/String;[F[F[F[F[F[F[F[F[F[FLjava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([F[F[F[F[FFFFZLjava/lang/String;[F[F[F[F[F[F[F[F[F[FLjava/util/HashMap;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F[F[F[FFFFZ",
            "Ljava/lang/String;",
            "[F[F[F[F[F[F[F[F[F[F",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p13

    move-object/from16 v2, p14

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 21
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->imageSize:[F

    const/4 v3, 0x4

    new-array v4, v3, [F

    .line 22
    iput-object v4, v0, Lorg/light/bean/LightFaceFeature;->faceBoundsRect:[F

    new-array v4, v3, [F

    .line 23
    iput-object v4, v0, Lorg/light/bean/LightFaceFeature;->leBounds:[F

    new-array v4, v3, [F

    .line 24
    iput-object v4, v0, Lorg/light/bean/LightFaceFeature;->reBounds:[F

    new-array v3, v3, [F

    .line 25
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->mouthBounds:[F

    const/16 v3, 0xbc

    new-array v3, v3, [F

    .line 26
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->facePoints:[F

    const/16 v3, 0x5e

    new-array v3, v3, [F

    .line 27
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->facePointsVisible:[F

    const/16 v3, 0xa6

    new-array v4, v3, [F

    .line 28
    iput-object v4, v0, Lorg/light/bean/LightFaceFeature;->facePoint83:[F

    const/16 v4, 0x53

    new-array v5, v4, [F

    .line 29
    iput-object v5, v0, Lorg/light/bean/LightFaceFeature;->facePoint83Visibility:[F

    const/16 v5, 0xb4

    new-array v5, v5, [F

    .line 30
    iput-object v5, v0, Lorg/light/bean/LightFaceFeature;->facePoint90:[F

    const/16 v5, 0x5a

    new-array v5, v5, [F

    .line 31
    iput-object v5, v0, Lorg/light/bean/LightFaceFeature;->facePoint90Visibility:[F

    new-array v3, v3, [F

    .line 32
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceFeaturePoints:[F

    new-array v3, v4, [F

    .line 33
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceFeatureVisibility:[F

    const/16 v3, 0x200

    new-array v3, v3, [F

    .line 34
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    const/16 v3, 0x100

    new-array v3, v3, [F

    .line 35
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceFeature256Visibility:[F

    const/16 v3, 0xbb8

    new-array v3, v3, [F

    .line 36
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceFeature3DPoints:[F

    const/16 v3, 0x10

    new-array v3, v3, [F

    .line 37
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->transform3D:[F

    .line 38
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v3, p1

    .line 39
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->imageSize:[F

    move-object v3, p2

    .line 40
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceBoundsRect:[F

    move-object v3, p3

    .line 41
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->leBounds:[F

    move-object v3, p4

    .line 42
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->reBounds:[F

    move-object v3, p5

    .line 43
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->mouthBounds:[F

    move v3, p6

    .line 44
    iput v3, v0, Lorg/light/bean/LightFaceFeature;->pitch:F

    move v4, p7

    .line 45
    iput v4, v0, Lorg/light/bean/LightFaceFeature;->yaw:F

    move/from16 v5, p8

    .line 46
    iput v5, v0, Lorg/light/bean/LightFaceFeature;->roll:F

    move/from16 v6, p9

    .line 47
    iput-boolean v6, v0, Lorg/light/bean/LightFaceFeature;->hasOutline:Z

    move-object/from16 v6, p10

    .line 48
    iput-object v6, v0, Lorg/light/bean/LightFaceFeature;->emotion:Ljava/lang/String;

    move-object/from16 v6, p11

    .line 49
    iput-object v6, v0, Lorg/light/bean/LightFaceFeature;->facePoints:[F

    move-object/from16 v7, p12

    .line 50
    iput-object v7, v0, Lorg/light/bean/LightFaceFeature;->facePointsVisible:[F

    .line 51
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->facePoint83:[F

    .line 52
    iput-object v2, v0, Lorg/light/bean/LightFaceFeature;->facePoint83Visibility:[F

    .line 53
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->faceFeaturePoints:[F

    .line 54
    iput-object v2, v0, Lorg/light/bean/LightFaceFeature;->faceFeatureVisibility:[F

    move-object/from16 v1, p15

    .line 55
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->facePoint90:[F

    move-object/from16 v1, p16

    .line 56
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->facePoint90Visibility:[F

    move-object/from16 v1, p17

    .line 57
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    move-object/from16 v1, p18

    .line 58
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->faceFeature256Visibility:[F

    move-object/from16 v1, p19

    .line 59
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->faceFeature3DPoints:[F

    move-object/from16 v1, p20

    .line 60
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->transform3D:[F

    move-object/from16 v1, p21

    .line 61
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->expression_status_:Ljava/util/HashMap;

    move-object/from16 v1, p22

    .line 62
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->gender:Ljava/lang/String;

    .line 63
    new-instance v1, Lorg/light/bean/TTFaceOriginDataModel;

    move-object/from16 p13, v1

    move-object/from16 p14, p11

    move-object/from16 p15, p12

    move/from16 p16, p6

    move/from16 p17, p7

    move/from16 p18, p8

    invoke-direct/range {p13 .. p18}, Lorg/light/bean/TTFaceOriginDataModel;-><init>([F[FFFF)V

    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->mTTFaceOriginDataModel:Lorg/light/bean/TTFaceOriginDataModel;

    return-void
.end method

.method public constructor <init>([F[F[F[F[FFFFZLjava/lang/String;[F[F[F[F[F[F[F[F[F[FLjava/util/HashMap;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F[F[F[FFFFZ",
            "Ljava/lang/String;",
            "[F[F[F[F[F[F[F[F[F[F",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p13

    move-object/from16 v2, p14

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 65
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->imageSize:[F

    const/4 v3, 0x4

    new-array v4, v3, [F

    .line 66
    iput-object v4, v0, Lorg/light/bean/LightFaceFeature;->faceBoundsRect:[F

    new-array v4, v3, [F

    .line 67
    iput-object v4, v0, Lorg/light/bean/LightFaceFeature;->leBounds:[F

    new-array v4, v3, [F

    .line 68
    iput-object v4, v0, Lorg/light/bean/LightFaceFeature;->reBounds:[F

    new-array v3, v3, [F

    .line 69
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->mouthBounds:[F

    const/16 v3, 0xbc

    new-array v3, v3, [F

    .line 70
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->facePoints:[F

    const/16 v3, 0x5e

    new-array v3, v3, [F

    .line 71
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->facePointsVisible:[F

    const/16 v3, 0xa6

    new-array v4, v3, [F

    .line 72
    iput-object v4, v0, Lorg/light/bean/LightFaceFeature;->facePoint83:[F

    const/16 v4, 0x53

    new-array v5, v4, [F

    .line 73
    iput-object v5, v0, Lorg/light/bean/LightFaceFeature;->facePoint83Visibility:[F

    const/16 v5, 0xb4

    new-array v5, v5, [F

    .line 74
    iput-object v5, v0, Lorg/light/bean/LightFaceFeature;->facePoint90:[F

    const/16 v5, 0x5a

    new-array v5, v5, [F

    .line 75
    iput-object v5, v0, Lorg/light/bean/LightFaceFeature;->facePoint90Visibility:[F

    new-array v3, v3, [F

    .line 76
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceFeaturePoints:[F

    new-array v3, v4, [F

    .line 77
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceFeatureVisibility:[F

    const/16 v3, 0x200

    new-array v3, v3, [F

    .line 78
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    const/16 v3, 0x100

    new-array v3, v3, [F

    .line 79
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceFeature256Visibility:[F

    const/16 v3, 0xbb8

    new-array v3, v3, [F

    .line 80
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceFeature3DPoints:[F

    const/16 v3, 0x10

    new-array v3, v3, [F

    .line 81
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->transform3D:[F

    .line 82
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v3, p1

    .line 83
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->imageSize:[F

    move-object v3, p2

    .line 84
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->faceBoundsRect:[F

    move-object v3, p3

    .line 85
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->leBounds:[F

    move-object v3, p4

    .line 86
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->reBounds:[F

    move-object v3, p5

    .line 87
    iput-object v3, v0, Lorg/light/bean/LightFaceFeature;->mouthBounds:[F

    move v3, p6

    .line 88
    iput v3, v0, Lorg/light/bean/LightFaceFeature;->pitch:F

    move v4, p7

    .line 89
    iput v4, v0, Lorg/light/bean/LightFaceFeature;->yaw:F

    move/from16 v5, p8

    .line 90
    iput v5, v0, Lorg/light/bean/LightFaceFeature;->roll:F

    move/from16 v6, p9

    .line 91
    iput-boolean v6, v0, Lorg/light/bean/LightFaceFeature;->hasOutline:Z

    move-object/from16 v6, p10

    .line 92
    iput-object v6, v0, Lorg/light/bean/LightFaceFeature;->emotion:Ljava/lang/String;

    move-object/from16 v6, p11

    .line 93
    iput-object v6, v0, Lorg/light/bean/LightFaceFeature;->facePoints:[F

    move-object/from16 v7, p12

    .line 94
    iput-object v7, v0, Lorg/light/bean/LightFaceFeature;->facePointsVisible:[F

    .line 95
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->facePoint83:[F

    .line 96
    iput-object v2, v0, Lorg/light/bean/LightFaceFeature;->facePoint83Visibility:[F

    .line 97
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->faceFeaturePoints:[F

    .line 98
    iput-object v2, v0, Lorg/light/bean/LightFaceFeature;->faceFeatureVisibility:[F

    move-object/from16 v1, p15

    .line 99
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->facePoint90:[F

    move-object/from16 v1, p16

    .line 100
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->facePoint90Visibility:[F

    move-object/from16 v1, p17

    .line 101
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    move-object/from16 v1, p18

    .line 102
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->faceFeature256Visibility:[F

    move-object/from16 v1, p19

    .line 103
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->faceFeature3DPoints:[F

    move-object/from16 v1, p20

    .line 104
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->transform3D:[F

    move-object/from16 v1, p21

    .line 105
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->expression_status_:Ljava/util/HashMap;

    move-object/from16 v1, p22

    .line 106
    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->gender:Ljava/lang/String;

    move/from16 v1, p23

    .line 107
    iput v1, v0, Lorg/light/bean/LightFaceFeature;->age:I

    move/from16 v1, p24

    .line 108
    iput v1, v0, Lorg/light/bean/LightFaceFeature;->traceId:I

    .line 109
    new-instance v1, Lorg/light/bean/TTFaceOriginDataModel;

    move-object/from16 p13, v1

    move-object/from16 p14, p11

    move-object/from16 p15, p12

    move/from16 p16, p6

    move/from16 p17, p7

    move/from16 p18, p8

    invoke-direct/range {p13 .. p18}, Lorg/light/bean/TTFaceOriginDataModel;-><init>([F[FFFF)V

    iput-object v1, v0, Lorg/light/bean/LightFaceFeature;->mTTFaceOriginDataModel:Lorg/light/bean/TTFaceOriginDataModel;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->imageSize:[F

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceBoundsRect:[F

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->leBounds:[F

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->reBounds:[F

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->mouthBounds:[F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/bean/LightFaceFeature;->pitch:F

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/bean/LightFaceFeature;->yaw:F

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/bean/LightFaceFeature;->roll:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/light/bean/LightFaceFeature;->hasOutline:Z

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->gender:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/bean/LightFaceFeature;->age:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->emotion:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/bean/LightFaceFeature;->traceId:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoints:[F

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePointsVisible:[F

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoint83:[F

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoint83Visibility:[F

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoint90:[F

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->facePoint90Visibility:[F

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeaturePoints:[F

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeatureVisibility:[F

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature256Visibility:[F

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->faceFeature3DPoints:[F

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->transform3D:[F

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lorg/light/bean/LightFaceFeature;->expression_status_:Ljava/util/HashMap;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/light/bean/TTFaceOriginDataModel;

    iput-object p1, p0, Lorg/light/bean/LightFaceFeature;->mTTFaceOriginDataModel:Lorg/light/bean/TTFaceOriginDataModel;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->imageSize:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->faceBoundsRect:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 3
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->leBounds:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 4
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->reBounds:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 5
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->mouthBounds:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 6
    iget p2, p0, Lorg/light/bean/LightFaceFeature;->pitch:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7
    iget p2, p0, Lorg/light/bean/LightFaceFeature;->yaw:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 8
    iget p2, p0, Lorg/light/bean/LightFaceFeature;->roll:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    iget-boolean p2, p0, Lorg/light/bean/LightFaceFeature;->hasOutline:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->gender:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lorg/light/bean/LightFaceFeature;->age:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->emotion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget p2, p0, Lorg/light/bean/LightFaceFeature;->traceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->facePoints:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 15
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->facePointsVisible:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 16
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->facePoint83:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 17
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->facePoint83Visibility:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 18
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->facePoint90:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 19
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->facePoint90Visibility:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 20
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->faceFeaturePoints:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 21
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->faceFeatureVisibility:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 22
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 23
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->faceFeature256Visibility:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 24
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->faceFeature3DPoints:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 25
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->transform3D:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 26
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->expression_status_:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 27
    iget-object p2, p0, Lorg/light/bean/LightFaceFeature;->mTTFaceOriginDataModel:Lorg/light/bean/TTFaceOriginDataModel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method

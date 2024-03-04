.class public Lcom/gyailib/library/FaceDetectorFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public boundsH:I

.field public boundsW:I

.field public boundsX:I

.field public boundsY:I

.field public fFeatures:[F

.field public fFeatures256:[F

.field public fFeaturesYoutuOriginX:[F

.field public fFeaturesYoutuOriginY:[F

.field facekit3DResult:Lcom/gyailib/library/Face3DResult;

.field featurePerspective:Lcom/gyailib/library/FaceDetectorFeaturePerspective;

.field public hasOutline:Z

.field public imageHeight:F

.field public imageWidth:F

.field public leBoundsH:I

.field public leBoundsW:I

.field public leBoundsX:I

.field public leBoundsY:I

.field public mouthBoundsH:I

.field public mouthBoundsW:I

.field public mouthBoundsX:I

.field public mouthBoundsY:I

.field public pitch:F

.field public points256Visibility:[F

.field public pointsVisibility:[F

.field public reBoundsH:I

.field public reBoundsW:I

.field public reBoundsX:I

.field public reBoundsY:I

.field public roll:F

.field public traceId:I

.field public yaw:F

.field public youtuVisibility:[F


# direct methods
.method public constructor <init>(IFFIIIIIIIIIIIIIIIIZFFF[F[F[F[F[F[F[FLcom/gyailib/library/FaceDetectorFeaturePerspective;Lcom/gyailib/library/Face3DResult;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->traceId:I

    move v1, p2

    .line 3
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->imageWidth:F

    move v1, p3

    .line 4
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->imageHeight:F

    move v1, p4

    .line 5
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->boundsX:I

    move v1, p5

    .line 6
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->boundsY:I

    move v1, p6

    .line 7
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->boundsW:I

    move v1, p7

    .line 8
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->boundsH:I

    move v1, p8

    .line 9
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->leBoundsX:I

    move v1, p9

    .line 10
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->leBoundsY:I

    move v1, p10

    .line 11
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->leBoundsW:I

    move v1, p11

    .line 12
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->leBoundsH:I

    move v1, p12

    .line 13
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->reBoundsX:I

    move v1, p13

    .line 14
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->reBoundsY:I

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->reBoundsW:I

    move/from16 v1, p15

    .line 16
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->reBoundsH:I

    move/from16 v1, p16

    .line 17
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->mouthBoundsX:I

    move/from16 v1, p17

    .line 18
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->mouthBoundsY:I

    move/from16 v1, p18

    .line 19
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->mouthBoundsW:I

    move/from16 v1, p19

    .line 20
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->mouthBoundsH:I

    move/from16 v1, p20

    .line 21
    iput-boolean v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->hasOutline:Z

    move/from16 v1, p21

    .line 22
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->pitch:F

    move/from16 v1, p22

    .line 23
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->yaw:F

    move/from16 v1, p23

    .line 24
    iput v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->roll:F

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->fFeaturesYoutuOriginX:[F

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->fFeaturesYoutuOriginY:[F

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->youtuVisibility:[F

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->pointsVisibility:[F

    move-object/from16 v1, p29

    .line 29
    iput-object v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->points256Visibility:[F

    move-object/from16 v1, p28

    .line 30
    iput-object v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->fFeatures:[F

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->fFeatures256:[F

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->featurePerspective:Lcom/gyailib/library/FaceDetectorFeaturePerspective;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lcom/gyailib/library/FaceDetectorFeature;->facekit3DResult:Lcom/gyailib/library/Face3DResult;

    return-void
.end method

.class public Lcom/gyailib/library/FaceDetectorFeaturePerspective;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public facePoints3dX:[F

.field public facePoints3dY:[F

.field public facePoints3dZ:[F

.field public pitch:F

.field public roll:F

.field public transform:[F

.field public yaw:F


# direct methods
.method public constructor <init>([F[F[FFFF[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gyailib/library/FaceDetectorFeaturePerspective;->facePoints3dX:[F

    .line 3
    iput-object p2, p0, Lcom/gyailib/library/FaceDetectorFeaturePerspective;->facePoints3dY:[F

    .line 4
    iput-object p3, p0, Lcom/gyailib/library/FaceDetectorFeaturePerspective;->facePoints3dZ:[F

    .line 5
    iput p4, p0, Lcom/gyailib/library/FaceDetectorFeaturePerspective;->pitch:F

    .line 6
    iput p5, p0, Lcom/gyailib/library/FaceDetectorFeaturePerspective;->yaw:F

    .line 7
    iput p6, p0, Lcom/gyailib/library/FaceDetectorFeaturePerspective;->roll:F

    .line 8
    iget-object p1, p0, Lcom/gyailib/library/FaceDetectorFeaturePerspective;->transform:[F

    iput-object p1, p0, Lcom/gyailib/library/FaceDetectorFeaturePerspective;->transform:[F

    return-void
.end method

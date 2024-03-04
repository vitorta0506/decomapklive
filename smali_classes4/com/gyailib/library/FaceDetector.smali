.class public Lcom/gyailib/library/FaceDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public faces:[Lcom/gyailib/library/FaceDetectorFeature;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initStruct(I)V
    .locals 0

    new-array p1, p1, [Lcom/gyailib/library/FaceDetectorFeature;

    iput-object p1, p0, Lcom/gyailib/library/FaceDetector;->faces:[Lcom/gyailib/library/FaceDetectorFeature;

    return-void
.end method

.method public setFaceDetectFeature(ILcom/gyailib/library/FaceDetectorFeature;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gyailib/library/FaceDetector;->faces:[Lcom/gyailib/library/FaceDetectorFeature;

    aput-object p2, v0, p1

    return-void
.end method

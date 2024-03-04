.class public Lcom/gyailib/library/GYAIValidFace;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public faceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private nativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native cleanupModelData()I
.end method

.method public native falignImageWithPoints(Landroid/graphics/Bitmap;[FI)Landroid/graphics/Bitmap;
.end method

.method public native fittingAvatarExpresssionWeights(Landroid/graphics/Bitmap;[FFLjava/util/HashMap;I)I
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/gyailib/library/GYAIValidFace;->nativePtr:J

    return-wide v0
.end method

.method public native initInstance(Lcom/gyailib/library/SDKDeviceConfig;)I
.end method

.method public setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gyailib/library/GYAIValidFace;->nativePtr:J

    return-void
.end method

.method public setValidFaceMap(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/gyailib/library/GYAIValidFace;->faceMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public native setupWithModel(Lcom/gyailib/library/SDKModelConfig;)I
.end method

.method public native validatePhotoQuality(Landroid/graphics/Bitmap;[FLcom/gyailib/library/ValidFacePhotoQuality;I)I
.end method

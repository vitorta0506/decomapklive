.class public Lcom/gyailib/library/GYAISegment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native cleanupModelData()I
.end method

.method public native forwardSeg(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end method

.method public native forwardSegWithFaceFeature(Landroid/graphics/Bitmap;[FI)Landroid/graphics/Bitmap;
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/gyailib/library/GYAISegment;->nativePtr:J

    return-wide v0
.end method

.method public native initInstance(Lcom/gyailib/library/SDKDeviceConfig;)I
.end method

.method public setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gyailib/library/GYAISegment;->nativePtr:J

    return-void
.end method

.method public native setupSmootherWithConfig(Lcom/gyailib/library/SegmentSmoothConfig;)I
.end method

.method public native setupWithModel(Lcom/gyailib/library/SDKModelConfig;)I
.end method

.class public Lcom/gyailib/library/GYAssessPicQuality;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
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

.method public native clearCachedData()I
.end method

.method public native forward(Landroid/graphics/Bitmap;Lcom/gyailib/library/GYDetectCommonResultStruct;DI)I
.end method

.method public native getHDROption()I
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/gyailib/library/GYAssessPicQuality;->nativePtr:J

    return-wide v0
.end method

.method public native getPicEnhanceOption(Lcom/gyailib/library/GYAssessPicQualityOption;)I
.end method

.method public native initInstance(Lcom/gyailib/library/SDKDeviceConfig;)I
.end method

.method public setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gyailib/library/GYAssessPicQuality;->nativePtr:J

    return-void
.end method

.method public native setupWithModel(Lcom/gyailib/library/SDKModelConfig;)I
.end method

.method public native setupWithPicQualityInfo(Lcom/gyailib/library/GYAssessPicQualityInfo;)I
.end method

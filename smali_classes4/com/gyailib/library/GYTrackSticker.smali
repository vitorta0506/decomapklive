.class public Lcom/gyailib/library/GYTrackSticker;
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
.method public native clearCachedData()I
.end method

.method public native destroyInstance()I
.end method

.method public native detect(Landroid/graphics/Bitmap;Lcom/gyailib/library/GYTrackStickerInfo;)I
.end method

.method public native getAnchorFrameStatus()I
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/gyailib/library/GYTrackSticker;->nativePtr:J

    return-wide v0
.end method

.method public native getSmoothedResult(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gyailib/library/GYTrackStickerInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public native initInstance(Lcom/gyailib/library/SDKDeviceConfig;)I
.end method

.method public native resetToAnchorFrame()I
.end method

.method public setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gyailib/library/GYTrackSticker;->nativePtr:J

    return-void
.end method

.method public native setupWithModel(Lcom/gyailib/library/SDKModelConfig;)I
.end method

.method public native track(Landroid/graphics/Bitmap;Lcom/gyailib/library/GYTrackStickerInfo;I)I
.end method

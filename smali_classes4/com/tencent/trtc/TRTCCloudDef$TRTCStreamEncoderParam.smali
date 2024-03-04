.class public Lcom/tencent/trtc/TRTCCloudDef$TRTCStreamEncoderParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/TRTCCloudDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRTCStreamEncoderParam"
.end annotation


# instance fields
.field public audioEncodedChannelNum:I

.field public audioEncodedCodecType:I

.field public audioEncodedKbps:I

.field public audioEncodedSampleRate:I

.field public videoEncodedFPS:I

.field public videoEncodedGOP:I

.field public videoEncodedHeight:I

.field public videoEncodedKbps:I

.field public videoEncodedWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCStreamEncoderParam;->videoEncodedWidth:I

    .line 3
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCStreamEncoderParam;->videoEncodedHeight:I

    .line 4
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCStreamEncoderParam;->videoEncodedFPS:I

    .line 5
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCStreamEncoderParam;->videoEncodedGOP:I

    .line 6
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCStreamEncoderParam;->videoEncodedKbps:I

    .line 7
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCStreamEncoderParam;->audioEncodedSampleRate:I

    .line 8
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCStreamEncoderParam;->audioEncodedChannelNum:I

    .line 9
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCStreamEncoderParam;->audioEncodedKbps:I

    .line 10
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCStreamEncoderParam;->audioEncodedCodecType:I

    return-void
.end method

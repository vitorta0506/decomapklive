.class public Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrameCallbackFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/TRTCCloudDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRTCAudioFrameCallbackFormat"
.end annotation


# instance fields
.field public channel:I

.field public mode:I

.field public sampleRate:I

.field public samplesPerCall:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrameCallbackFormat;->sampleRate:I

    .line 3
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrameCallbackFormat;->channel:I

    .line 4
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrameCallbackFormat;->samplesPerCall:I

    .line 5
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrameCallbackFormat;->mode:I

    return-void
.end method

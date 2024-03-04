.class public final Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V2TXLiveAudioFrameObserverFormat"
.end annotation


# instance fields
.field public channel:I

.field public mode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

.field public sampleRate:I

.field public samplesPerCall:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;->sampleRate:I

    .line 3
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;->channel:I

    .line 4
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;->samplesPerCall:I

    .line 5
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;->V2TXLiveAudioFrameOperationModeReadOnly:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;->mode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    return-void
.end method

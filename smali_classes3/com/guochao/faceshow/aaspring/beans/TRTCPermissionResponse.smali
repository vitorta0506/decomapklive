.class public Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appointResult:I

.field private audioDiamond:I

.field private userCurrentDiamond:I

.field private videoDiamond:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->audioDiamond:I

    const/16 v0, 0x50

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->videoDiamond:I

    return-void
.end method


# virtual methods
.method public getAppointResult()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->appointResult:I

    return v0
.end method

.method public getAudioDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->audioDiamond:I

    return v0
.end method

.method public getUserCurrentDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->userCurrentDiamond:I

    return v0
.end method

.method public getVideoDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->videoDiamond:I

    return v0
.end method

.method public setAppointResult(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->appointResult:I

    return-void
.end method

.method public setAudioDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->audioDiamond:I

    return-void
.end method

.method public setUserCurrentDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->userCurrentDiamond:I

    return-void
.end method

.method public setVideoDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->videoDiamond:I

    return-void
.end method

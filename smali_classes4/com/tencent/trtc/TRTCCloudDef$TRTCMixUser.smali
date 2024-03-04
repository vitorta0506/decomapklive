.class public Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/TRTCCloudDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRTCMixUser"
.end annotation


# instance fields
.field public height:I

.field public image:Ljava/lang/String;

.field public inputType:I

.field public pureAudio:Z

.field public renderMode:I

.field public roomId:Ljava/lang/String;

.field public soundLevel:I

.field public streamType:I

.field public userId:Ljava/lang/String;

.field public width:I

.field public x:I

.field public y:I

.field public zOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->userId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->x:I

    .line 4
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->y:I

    .line 5
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->width:I

    .line 6
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->height:I

    .line 7
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->zOrder:I

    .line 8
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->streamType:I

    .line 9
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->inputType:I

    .line 10
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->renderMode:I

    const/16 v0, 0x64

    .line 11
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->soundLevel:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->image:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->userId:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->roomId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->roomId:Ljava/lang/String;

    .line 28
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->x:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->x:I

    .line 29
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->y:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->y:I

    .line 30
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->width:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->width:I

    .line 31
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->height:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->height:I

    .line 32
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->zOrder:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->zOrder:I

    .line 33
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->streamType:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->streamType:I

    .line 34
    iget-boolean v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->pureAudio:Z

    iput-boolean v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->pureAudio:Z

    .line 35
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->inputType:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->inputType:I

    .line 36
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->renderMode:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->renderMode:I

    .line 37
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->soundLevel:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->soundLevel:I

    .line 38
    iget-object p1, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->image:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->image:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->userId:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->x:I

    .line 16
    iput p3, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->y:I

    .line 17
    iput p4, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->width:I

    .line 18
    iput p5, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->height:I

    .line 19
    iput p6, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->zOrder:I

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->streamType:I

    .line 21
    iput p1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->inputType:I

    .line 22
    iput p1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->renderMode:I

    const/16 p1, 0x64

    .line 23
    iput p1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->soundLevel:I

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->image:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->zOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pureAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->pureAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->inputType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", renderMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->renderMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soundLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->soundLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCMixUser;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

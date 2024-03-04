.class public Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/TRTCCloudDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRTCParams"
.end annotation


# instance fields
.field public businessInfo:Ljava/lang/String;

.field public privateMapKey:Ljava/lang/String;

.field public role:I

.field public roomId:I

.field public sdkAppId:I

.field public strRoomId:Ljava/lang/String;

.field public streamId:Ljava/lang/String;

.field public userDefineRecordId:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userSig:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->sdkAppId:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userId:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userSig:Ljava/lang/String;

    .line 5
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->roomId:I

    .line 6
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->strRoomId:Ljava/lang/String;

    const/16 v0, 0x14

    .line 7
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->role:I

    .line 8
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->streamId:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userDefineRecordId:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->privateMapKey:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->businessInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 13
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->role:I

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->streamId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userDefineRecordId:Ljava/lang/String;

    .line 16
    iput p1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->sdkAppId:I

    .line 17
    iput-object p2, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userSig:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->roomId:I

    .line 20
    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->strRoomId:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->privateMapKey:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->businessInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->roomId:I

    const/16 v0, 0x14

    .line 25
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->role:I

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->streamId:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userDefineRecordId:Ljava/lang/String;

    .line 28
    iput p1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->sdkAppId:I

    .line 29
    iput-object p2, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userSig:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->strRoomId:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->privateMapKey:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->businessInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->sdkAppId:I

    const-string v1, ""

    .line 36
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userId:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userSig:Ljava/lang/String;

    .line 38
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->roomId:I

    .line 39
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->strRoomId:Ljava/lang/String;

    const/16 v0, 0x14

    .line 40
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->role:I

    .line 41
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->streamId:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userDefineRecordId:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->privateMapKey:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->businessInfo:Ljava/lang/String;

    .line 45
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->sdkAppId:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->sdkAppId:I

    .line 46
    iget-object v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userId:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userSig:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userSig:Ljava/lang/String;

    .line 48
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->roomId:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->roomId:I

    .line 49
    iget-object v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->strRoomId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->strRoomId:Ljava/lang/String;

    .line 50
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->role:I

    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->role:I

    .line 51
    iget-object v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->streamId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->streamId:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userDefineRecordId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userDefineRecordId:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->privateMapKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->privateMapKey:Ljava/lang/String;

    .line 54
    iget-object p1, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->businessInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->businessInfo:Ljava/lang/String;

    return-void
.end method

.class public Lcom/tencent/trtc/TRTCCloudDef$TRTCSwitchRoomConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/TRTCCloudDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRTCSwitchRoomConfig"
.end annotation


# instance fields
.field public privateMapKey:Ljava/lang/String;

.field public roomId:I

.field public strRoomId:Ljava/lang/String;

.field public userSig:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSwitchRoomConfig;->roomId:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSwitchRoomConfig;->strRoomId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSwitchRoomConfig;->userSig:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSwitchRoomConfig;->privateMapKey:Ljava/lang/String;

    return-void
.end method

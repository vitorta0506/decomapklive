.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private age:Ljava/lang/String;

.field private mLiveInfoMatchBean:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

.field private sex:Ljava/lang/String;

.field private streamId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveInfoMatchBean()Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->mLiveInfoMatchBean:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->age:Ljava/lang/String;

    return-void
.end method

.method public setLiveInfoMatchBean(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->mLiveInfoMatchBean:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->sex:Ljava/lang/String;

    return-void
.end method

.method public setStreamId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->streamId:Ljava/lang/String;

    return-void
.end method

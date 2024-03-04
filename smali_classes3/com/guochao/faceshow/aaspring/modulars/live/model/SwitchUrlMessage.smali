.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/SwitchUrlMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private flvUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlvUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/SwitchUrlMessage;->flvUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setFlvUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/SwitchUrlMessage;->flvUrl:Ljava/lang/String;

    return-void
.end method

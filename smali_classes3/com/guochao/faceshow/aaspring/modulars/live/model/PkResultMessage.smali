.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private fcoin:Ljava/lang/String;

.field private otherFcoin:Ljava/lang/String;

.field private punishment:Z

.field private result:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pkResult"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getFcoin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->fcoin:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherFcoin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->otherFcoin:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->result:I

    return v0
.end method

.method public isPunishment()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->punishment:Z

    return v0
.end method

.method public setFcoin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->fcoin:Ljava/lang/String;

    return-void
.end method

.method public setOtherFcoin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->otherFcoin:Ljava/lang/String;

    return-void
.end method

.method public setPunishment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->punishment:Z

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->result:I

    return-void
.end method

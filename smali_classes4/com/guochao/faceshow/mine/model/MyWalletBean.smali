.class public Lcom/guochao/faceshow/mine/model/MyWalletBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private F:I

.field private autoTvSwitch:I

.field private availableBalance:J

.field private diamond:Ljava/lang/Integer;

.field private freezeNum:J

.field private live_income:I

.field private matching_income:I

.field private preCostDiamond:I

.field private tokenNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userTokenNum"
    .end annotation
.end field

.field private video_income:I

.field private withDrawBalance:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->diamond:Ljava/lang/Integer;

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->preCostDiamond:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->preCostDiamond:I

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->diamond:Ljava/lang/Integer;

    .line 7
    iput p2, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->matching_income:I

    .line 8
    iput p3, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->F:I

    .line 9
    iput p4, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->video_income:I

    .line 10
    iput p5, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->live_income:I

    return-void
.end method


# virtual methods
.method public getAutoTvSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->autoTvSwitch:I

    return v0
.end method

.method public getAvailableBalance()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->availableBalance:J

    return-wide v0
.end method

.method public getDiamond()Ljava/lang/Integer;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->diamond:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->diamond:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->diamond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->preCostDiamond:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getF()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->F:I

    return v0
.end method

.method public getFreezeNum()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->freezeNum:J

    return-wide v0
.end method

.method public getLive_income()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->live_income:I

    return v0
.end method

.method public getMatching_income()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->matching_income:I

    return v0
.end method

.method public getPreCostDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->preCostDiamond:I

    return v0
.end method

.method public getRealDiamond()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->diamond:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->diamond:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->diamond:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTokenNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->tokenNum:I

    return v0
.end method

.method public getVideo_income()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->video_income:I

    return v0
.end method

.method public getWithDrawBalance()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->withDrawBalance:J

    return-wide v0
.end method

.method public setAutoTvSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->autoTvSwitch:I

    return-void
.end method

.method public setAvailableBalance(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->availableBalance:J

    return-void
.end method

.method public setDiamond(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->diamond:Ljava/lang/Integer;

    return-void
.end method

.method public setF(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->F:I

    return-void
.end method

.method public setFreezeNum(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->freezeNum:J

    return-void
.end method

.method public setLive_income(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->live_income:I

    return-void
.end method

.method public setMatching_income(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->matching_income:I

    return-void
.end method

.method public setPreCostDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->preCostDiamond:I

    return-void
.end method

.method public setTokenNum(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->tokenNum:I

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp9/a$e;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1}, Lp9/a$e;->onCrystalsChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVideo_income(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->video_income:I

    return-void
.end method

.method public setWithDrawBalance(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->withDrawBalance:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyWalletBean{diamond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->diamond:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matching_income="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->matching_income:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_income="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->video_income:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", live_income="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/MyWalletBean;->live_income:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

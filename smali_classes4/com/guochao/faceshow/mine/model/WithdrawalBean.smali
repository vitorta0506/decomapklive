.class public Lcom/guochao/faceshow/mine/model/WithdrawalBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private F:I

.field public currency:I

.field public price:F

.field private price_America:D

.field private price_China:I

.field private withdraw_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IDII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->withdraw_id:I

    .line 4
    iput-wide p2, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->price_America:D

    .line 5
    iput p4, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->price_China:I

    .line 6
    iput p5, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->F:I

    return-void
.end method


# virtual methods
.method public getF()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->F:I

    return v0
.end method

.method public getPrice_America()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->price_America:D

    return-wide v0
.end method

.method public getPrice_China()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->price_China:I

    return v0
.end method

.method public getWithdraw_id()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->withdraw_id:I

    return v0
.end method

.method public setF(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->F:I

    return-void
.end method

.method public setPrice_America(D)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->price_America:D

    return-void
.end method

.method public setPrice_China(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->price_China:I

    return-void
.end method

.method public setWithdraw_id(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->withdraw_id:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WithdrawalBean{withdraw_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->withdraw_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", price_America="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->price_America:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", price_China="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->price_China:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/guochao/faceshow/mine/model/GiftBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private counts:I

.field private gift_id:I

.field private gname:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;

.field private price:I

.field private typeId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCounts()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->counts:I

    return v0
.end method

.method public getGift_id()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->gift_id:I

    return v0
.end method

.method public getGname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->gname:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->price:I

    return v0
.end method

.method public getTypeId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->typeId:I

    return v0
.end method

.method public setCounts(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->counts:I

    return-void
.end method

.method public setGift_id(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->gift_id:I

    return-void
.end method

.method public setGname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->gname:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->price:I

    return-void
.end method

.method public setTypeId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->typeId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GiftBean{img=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", price="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->price:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gift_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->gift_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->gname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nick_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->nick_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", counts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/GiftBean;->counts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

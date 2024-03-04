.class public Lcom/guochao/faceshow/mine/model/RecordDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private account:I

.field private accountUserName:Ljava/lang/String;

.field private applyState:I

.field private createTime:Ljava/lang/String;

.field private gname:Ljava/lang/String;

.field private isType:I

.field private payState:I

.field private price:I

.field private types:I

.field private userId:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->types:I

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->accountUserName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->createTime:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->price:I

    .line 7
    iput-object p5, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->gname:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->userId:I

    .line 9
    iput p7, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->isType:I

    .line 10
    iput p8, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->account:I

    .line 11
    iput-object p9, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->userName:Ljava/lang/String;

    .line 12
    iput p10, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->applyState:I

    .line 13
    iput p11, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->payState:I

    return-void
.end method


# virtual methods
.method public getAccount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->account:I

    return v0
.end method

.method public getAccountUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->accountUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplyState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->applyState:I

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->gname:Ljava/lang/String;

    return-object v0
.end method

.method public getIsType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->isType:I

    return v0
.end method

.method public getPayState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->payState:I

    return v0
.end method

.method public getPrice()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->price:I

    return v0
.end method

.method public getTypes()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->types:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->account:I

    return-void
.end method

.method public setAccountUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->accountUserName:Ljava/lang/String;

    return-void
.end method

.method public setApplyState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->applyState:I

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setGname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->gname:Ljava/lang/String;

    return-void
.end method

.method public setIsType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->isType:I

    return-void
.end method

.method public setPayState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->payState:I

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->price:I

    return-void
.end method

.method public setTypes(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->types:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->userId:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordDetails{types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->types:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accountUserName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->accountUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", price="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->price:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->gname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->isType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", account="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->account:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", applyState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->applyState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/RecordDetails;->payState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

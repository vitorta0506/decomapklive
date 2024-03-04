.class public Lcom/guochao/faceshow/mine/model/CustomLabelBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private createTime:Ljava/lang/String;

.field private del:I

.field private hobbyId:I

.field private tags:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->createTime:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->hobbyId:I

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->del:I

    .line 6
    iput p4, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->type:I

    .line 7
    iput-object p5, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->tags:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->del:I

    return v0
.end method

.method public getHobbyId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->hobbyId:I

    return v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->type:I

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->del:I

    return-void
.end method

.method public setHobbyId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->hobbyId:I

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->tags:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomLabelBean{createTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hobbyId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->hobbyId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", del="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->del:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tags=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/CustomLabelBean;->tags:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

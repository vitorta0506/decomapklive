.class public Lcom/guochao/faceshow/mine/model/TransactionType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private childId:I

.field private id:I

.field public isSelected:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->isSelected:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->isSelected:Z

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->id:I

    .line 6
    iput-object p2, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChildId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->childId:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setChildId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->childId:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionType{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/TransactionType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

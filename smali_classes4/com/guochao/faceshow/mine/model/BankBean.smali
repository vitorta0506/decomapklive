.class public Lcom/guochao/faceshow/mine/model/BankBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bank_id:I

.field private bank_name:Ljava/lang/String;

.field private logo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/mine/model/BankBean;->bank_id:I

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/mine/model/BankBean;->bank_name:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/mine/model/BankBean;->logo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBank_id()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/BankBean;->bank_id:I

    return v0
.end method

.method public getBank_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/BankBean;->bank_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/BankBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public setBank_id(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/BankBean;->bank_id:I

    return-void
.end method

.method public setBank_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/BankBean;->bank_name:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/BankBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BankBean{bank_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/BankBean;->bank_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bank_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/BankBean;->bank_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/BankBean;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

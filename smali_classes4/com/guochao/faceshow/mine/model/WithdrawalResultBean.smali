.class public Lcom/guochao/faceshow/mine/model/WithdrawalResultBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private F:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalResultBean;->F:I

    return-void
.end method


# virtual methods
.method public getF()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/WithdrawalResultBean;->F:I

    return v0
.end method

.method public setF(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalResultBean;->F:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WithdrawalResultBean{F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/WithdrawalResultBean;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

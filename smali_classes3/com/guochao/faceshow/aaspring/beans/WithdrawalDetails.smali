.class public Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private account:Ljava/lang/String;

.field private amount_type:I

.field private auditProces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/Progress;",
            ">;"
        }
    .end annotation
.end field

.field private bankAddress:Ljava/lang/String;

.field private bankName:Ljava/lang/String;

.field private deduction:Ljava/lang/String;

.field private failReason:Ljava/lang/String;

.field private money:Ljava/lang/String;

.field private payTypeName:Ljava/lang/String;

.field private pay_type:I

.field private payee:Ljava/lang/String;

.field private realName:Ljava/lang/String;

.field private speed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount_type()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->amount_type:I

    return v0
.end method

.method public getAuditProces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/Progress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->auditProces:Ljava/util/List;

    return-object v0
.end method

.method public getBankAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->bankAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeduction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->deduction:Ljava/lang/String;

    return-object v0
.end method

.method public getFailReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->failReason:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getPayTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->payTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_type()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->pay_type:I

    return v0
.end method

.method public getPayee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->payee:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->speed:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->account:Ljava/lang/String;

    return-void
.end method

.method public setAmount_type(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->amount_type:I

    return-void
.end method

.method public setAuditProces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/Progress;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->auditProces:Ljava/util/List;

    return-void
.end method

.method public setBankAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->bankAddress:Ljava/lang/String;

    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->bankName:Ljava/lang/String;

    return-void
.end method

.method public setDeduction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->deduction:Ljava/lang/String;

    return-void
.end method

.method public setFailReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->failReason:Ljava/lang/String;

    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->money:Ljava/lang/String;

    return-void
.end method

.method public setPayTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->payTypeName:Ljava/lang/String;

    return-void
.end method

.method public setPay_type(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->pay_type:I

    return-void
.end method

.method public setPayee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->payee:Ljava/lang/String;

    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->realName:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->speed:I

    return-void
.end method

.class public Lcom/guochao/faceshow/mine/model/TransactionRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Income:I

.field public currPage:I

.field private payPrice:I

.field private time:Ljava/lang/String;

.field public totalPage:I

.field private userDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecordDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecordDetails;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->userDetail:Ljava/util/List;

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->payPrice:I

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->Income:I

    .line 6
    iput-object p4, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIncome()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->Income:I

    return v0
.end method

.method public getPayPrice()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->payPrice:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecordDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->userDetail:Ljava/util/List;

    return-object v0
.end method

.method public setIncome(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->Income:I

    return-void
.end method

.method public setPayPrice(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->payPrice:I

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->time:Ljava/lang/String;

    return-void
.end method

.method public setUserDetail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecordDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->userDetail:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionRecord{userDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->userDetail:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->payPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Income="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->Income:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/TransactionRecord;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

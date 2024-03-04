.class public Lcom/guochao/faceshow/mine/model/ContributionBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private countryFlag:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;

.field private sum:I

.field private totalPrice:I

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->img:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->totalPrice:I

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->user_id:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->nick_name:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->sum:I

    return-void
.end method


# virtual methods
.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->countryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->sum:I

    return v0
.end method

.method public getTotalPrice()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->totalPrice:I

    return v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->countryFlag:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public setSum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->sum:I

    return-void
.end method

.method public setTotalPrice(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->totalPrice:I

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->user_id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContributionBean{img=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", totalPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->totalPrice:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", user_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nick_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->nick_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/ContributionBean;->sum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

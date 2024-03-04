.class public Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private canUseMoney:Ljava/lang/String;

.field private inviteEarnMoneyRuleSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;",
            ">;"
        }
    .end annotation
.end field

.field private inviteMoney:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanUseMoney()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->canUseMoney:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteEarnMoneyRuleSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->inviteEarnMoneyRuleSets:Ljava/util/List;

    return-object v0
.end method

.method public getInviteMoney()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->inviteMoney:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setCanUseMoney(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->canUseMoney:Ljava/lang/String;

    return-void
.end method

.method public setInviteEarnMoneyRuleSets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->inviteEarnMoneyRuleSets:Ljava/util/List;

    return-void
.end method

.method public setInviteMoney(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->inviteMoney:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->userId:Ljava/lang/String;

    return-void
.end method

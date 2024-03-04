.class public Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/bean/PeopleILikedBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleILikedUserBean"
.end annotation


# instance fields
.field private age:I

.field private constellation:Ljava/lang/String;

.field private matched:I

.field private sex:I

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private userNick:Ljava/lang/String;

.field private vip:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->age:I

    return v0
.end method

.method public getConstellation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->constellation:Ljava/lang/String;

    return-object v0
.end method

.method public getMatched()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->matched:I

    return v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->sex:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->vip:I

    return v0
.end method

.method public obtain()Lcom/guochao/faceshow/bean/NewMatchedBean$NewMatchedUserBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/bean/NewMatchedBean$NewMatchedUserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/NewMatchedBean$NewMatchedUserBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/NewMatchedBean$NewMatchedUserBean;->setUserId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->userImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/NewMatchedBean$NewMatchedUserBean;->setUserImg(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->userNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/NewMatchedBean$NewMatchedUserBean;->setUserNick(Ljava/lang/String;)V

    return-object v0
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->age:I

    return-void
.end method

.method public setConstellation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->constellation:Ljava/lang/String;

    return-void
.end method

.method public setMatched(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->matched:I

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->sex:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->userImg:Ljava/lang/String;

    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->userNick:Ljava/lang/String;

    return-void
.end method

.method public setVip(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;->vip:I

    return-void
.end method

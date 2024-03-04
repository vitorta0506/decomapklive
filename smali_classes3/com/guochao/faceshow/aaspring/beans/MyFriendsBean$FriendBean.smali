.class public Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;
.super Lcom/guochao/faceshow/aaspring/beans/IM_User;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendBean"
.end annotation


# instance fields
.field private liveData:Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsLive()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;->liveData:Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->access$000(Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;)I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getLevelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getLevel()I

    move-result v0

    return v0
.end method

.method public getLiveData()Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;->liveData:Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    return-object v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipInfo()Lb8/g;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    return-object v0
.end method

.method public setLiveData(Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;->liveData:Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    return-void
.end method

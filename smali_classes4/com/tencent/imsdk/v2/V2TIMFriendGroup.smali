.class public Lcom/tencent/imsdk/v2/V2TIMFriendGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private friendGroup:Lcom/tencent/imsdk/relationship/FriendGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/imsdk/relationship/FriendGroup;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/FriendGroup;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendGroup;->friendGroup:Lcom/tencent/imsdk/relationship/FriendGroup;

    return-void
.end method


# virtual methods
.method public getFriendCount()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendGroup;->friendGroup:Lcom/tencent/imsdk/relationship/FriendGroup;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendGroup;->getUserCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFriendIDList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendGroup;->friendGroup:Lcom/tencent/imsdk/relationship/FriendGroup;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendGroup;->getUserIDList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendGroup;->friendGroup:Lcom/tencent/imsdk/relationship/FriendGroup;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setFriendGroup(Lcom/tencent/imsdk/relationship/FriendGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendGroup;->friendGroup:Lcom/tencent/imsdk/relationship/FriendGroup;

    return-void
.end method

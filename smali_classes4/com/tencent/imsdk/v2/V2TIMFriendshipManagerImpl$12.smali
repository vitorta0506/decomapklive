.class Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$12;
.super Lcom/tencent/imsdk/common/IMCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->addFriend(Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/imsdk/common/IMCallback<",
        "Lcom/tencent/imsdk/relationship/FriendOperationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$12;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-direct {p0, p2}, Lcom/tencent/imsdk/common/IMCallback;-><init>(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    return-void
.end method

.method public success(Lcom/tencent/imsdk/relationship/FriendOperationResult;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/imsdk/common/IMCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/imsdk/relationship/FriendOperationResult;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$12;->success(Lcom/tencent/imsdk/relationship/FriendOperationResult;)V

    return-void
.end method

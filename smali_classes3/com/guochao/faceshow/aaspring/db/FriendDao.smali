.class public interface abstract Lcom/guochao/faceshow/aaspring/db/FriendDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\'J\u001f\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\'\u00a2\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\'J\u001a\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0010H\'J)\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\'\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\'J\u0012\u0010\u0016\u001a\u00020\t2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\'J\u001a\u0010\u0018\u001a\u00020\t2\u0010\u0010\u0019\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004H\'J!\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000cH\'\u00a2\u0006\u0002\u0010\u001dJ!\u0010\u001e\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000cH\'\u00a2\u0006\u0002\u0010\u001fJ\u0012\u0010 \u001a\u00020\t2\u0008\u0010!\u001a\u0004\u0018\u00010\u0005H\'R&\u0010\u0002\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004\u0018\u00010\u00038gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\"\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/db/FriendDao;",
        "",
        "userList",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        "getUserList",
        "()Landroidx/lifecycle/LiveData;",
        "deleteAllFriend",
        "",
        "findUserByGroupId",
        "groupId",
        "",
        "(Ljava/lang/Integer;)Ljava/util/List;",
        "findUserById",
        "userId",
        "",
        "findUserByNameOrId",
        "key",
        "findUserByNameOrIdForGroup",
        "(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;",
        "getAllUser",
        "insertFriend",
        "user",
        "insertFriends",
        "list",
        "updateGroupIdByFriendId",
        "friendId",
        "newGroupId",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "updateGroupIdByGroupId",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "updateUser",
        "note",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract deleteAllFriend()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM friend"
    .end annotation
.end method

.method public abstract findUserByGroupId(Ljava/lang/Integer;)Ljava/util/List;
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friend WHERE groupId = :groupId ORDER BY onlineStatue DESC,nickName ASC,sendGiftNum DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract findUserById(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/db/FriendInfo;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friend WHERE friendId = :userId LIMIT 1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract findUserByNameOrId(Ljava/lang/String;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friend WHERE nickName LIKE \'%\' || :key || \'%\' OR friendId LIKE \'%\' || :key || \'%\' GROUP BY groupId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract findUserByNameOrIdForGroup(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friend WHERE groupId =:groupId AND (nickName LIKE \'%\' || :key || \'%\' OR friendId LIKE \'%\' || :key || \'%\')"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getAllUser()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friend ORDER BY onlineStatue DESC,nickName COLLATE LOCALIZED ASC,sendGiftNum DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getUserList()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friend ORDER BY onlineStatue DESC,nickName COLLATE LOCALIZED ASC,sendGiftNum DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract insertFriend(Lcom/guochao/faceshow/aaspring/db/FriendInfo;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/db/FriendInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract insertFriends(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateGroupIdByFriendId(Ljava/lang/String;Ljava/lang/Integer;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE friend SET groupId = :newGroupId WHERE friendId =:friendId"
    .end annotation
.end method

.method public abstract updateGroupIdByGroupId(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE friend SET groupId = :newGroupId WHERE groupId =:groupId"
    .end annotation
.end method

.method public abstract updateUser(Lcom/guochao/faceshow/aaspring/db/FriendInfo;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/db/FriendInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

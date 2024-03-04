.class Lcom/guochao/faceshow/aaspring/db/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/db/a;->getUserList()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/RoomSQLiteQuery;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/db/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/db/a;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a$g;->b:Lcom/guochao/faceshow/aaspring/db/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/db/a$g;->a:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a$g;->b:Lcom/guochao/faceshow/aaspring/db/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/db/a;->a(Lcom/guochao/faceshow/aaspring/db/a;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/a$g;->a:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "friendId"

    .line 2
    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "groupId"

    .line 3
    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "nickName"

    .line 4
    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "headImg"

    .line 5
    invoke-static {v0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "signature"

    .line 6
    invoke-static {v0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "onlineStatue"

    .line 7
    invoke-static {v0, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "onlineTime"

    .line 8
    invoke-static {v0, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sendGiftNum"

    .line 9
    invoke-static {v0, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "countryFlag"

    .line 10
    invoke-static {v0, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 11
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 13
    new-instance v12, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    invoke-direct {v12}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;-><init>()V

    .line 14
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v3

    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 16
    :goto_1
    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setFriendId(Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 18
    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setGroupId(I)V

    .line 19
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v3

    goto :goto_2

    .line 20
    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 21
    :goto_2
    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setNickName(Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v13, v3

    goto :goto_3

    .line 23
    :cond_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 24
    :goto_3
    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setHeadImg(Ljava/lang/String;)V

    .line 25
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v13, v3

    goto :goto_4

    .line 26
    :cond_3
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 27
    :goto_4
    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSignature(Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v3

    goto :goto_5

    .line 29
    :cond_4
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 30
    :goto_5
    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineStatue(Ljava/lang/Integer;)V

    .line 31
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v3

    goto :goto_6

    .line 32
    :cond_5
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 33
    :goto_6
    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineTime(Ljava/lang/Long;)V

    .line 34
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object v13, v3

    goto :goto_7

    .line 35
    :cond_6
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 36
    :goto_7
    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSendGiftNum(Ljava/lang/Integer;)V

    .line 37
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object v13, v3

    goto :goto_8

    .line 38
    :cond_7
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 39
    :goto_8
    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setCountryFlag(Ljava/lang/String;)V

    .line 40
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 41
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v11

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 42
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/db/a$g;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a$g;->a:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method

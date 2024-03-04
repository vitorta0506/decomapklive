.class public final Lcom/guochao/faceshow/aaspring/db/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/db/FriendDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/room/SharedSQLiteStatement;

.field private final f:Landroidx/room/SharedSQLiteStatement;

.field private final g:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/a$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/a$a;-><init>(Lcom/guochao/faceshow/aaspring/db/a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->b:Landroidx/room/EntityInsertionAdapter;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/a$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/a$b;-><init>(Lcom/guochao/faceshow/aaspring/db/a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->c:Landroidx/room/EntityInsertionAdapter;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/a$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/a$c;-><init>(Lcom/guochao/faceshow/aaspring/db/a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->d:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/a$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/a$d;-><init>(Lcom/guochao/faceshow/aaspring/db/a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->e:Landroidx/room/SharedSQLiteStatement;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/a$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/a$e;-><init>(Lcom/guochao/faceshow/aaspring/db/a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->f:Landroidx/room/SharedSQLiteStatement;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/a$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/a$f;-><init>(Lcom/guochao/faceshow/aaspring/db/a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->g:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/db/a;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllFriend()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/a;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/db/a;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 10
    throw v1
.end method

.method public findUserByGroupId(Ljava/lang/Integer;)Ljava/util/List;
    .locals 17
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

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM friend WHERE groupId = ? ORDER BY onlineStatue DESC,nickName ASC,sendGiftNum DESC"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 4
    :goto_0
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 5
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "friendId"

    .line 6
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "groupId"

    .line 7
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "nickName"

    .line 8
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "headImg"

    .line 9
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "signature"

    .line 10
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "onlineStatue"

    .line 11
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "onlineTime"

    .line 12
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sendGiftNum"

    .line 13
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "countryFlag"

    .line 14
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 15
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 17
    new-instance v14, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    invoke-direct {v14}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;-><init>()V

    .line 18
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v15, v4

    goto :goto_2

    .line 19
    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 20
    :goto_2
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setFriendId(Ljava/lang/String;)V

    .line 21
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 22
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setGroupId(I)V

    .line 23
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v15, v4

    goto :goto_3

    .line 24
    :cond_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 25
    :goto_3
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setNickName(Ljava/lang/String;)V

    .line 26
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v4

    goto :goto_4

    .line 27
    :cond_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 28
    :goto_4
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setHeadImg(Ljava/lang/String;)V

    .line 29
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v4

    goto :goto_5

    .line 30
    :cond_4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 31
    :goto_5
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSignature(Ljava/lang/String;)V

    .line 32
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v15, v4

    goto :goto_6

    .line 33
    :cond_5
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 34
    :goto_6
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineStatue(Ljava/lang/Integer;)V

    .line 35
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v4

    goto :goto_7

    .line 36
    :cond_6
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 37
    :goto_7
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineTime(Ljava/lang/Long;)V

    .line 38
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v15, v4

    goto :goto_8

    .line 39
    :cond_7
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 40
    :goto_8
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSendGiftNum(Ljava/lang/Integer;)V

    .line 41
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v15, v4

    goto :goto_9

    .line 42
    :cond_8
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 43
    :goto_9
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setCountryFlag(Ljava/lang/String;)V

    .line 44
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 45
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 49
    throw v0
.end method

.method public findUserById(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/db/FriendInfo;
    .locals 13

    const-string v0, "SELECT * FROM friend WHERE friendId = ? LIMIT 1"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "friendId"

    .line 6
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "groupId"

    .line 7
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "nickName"

    .line 8
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "headImg"

    .line 9
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "signature"

    .line 10
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "onlineStatue"

    .line 11
    invoke-static {p1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "onlineTime"

    .line 12
    invoke-static {p1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sendGiftNum"

    .line 13
    invoke-static {p1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "countryFlag"

    .line 14
    invoke-static {p1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 15
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 16
    new-instance v11, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    invoke-direct {v11}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;-><init>()V

    .line 17
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    :goto_1
    invoke-virtual {v11, v1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setFriendId(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 21
    invoke-virtual {v11, v1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setGroupId(I)V

    .line 22
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    .line 23
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    :goto_2
    invoke-virtual {v11, v1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setNickName(Ljava/lang/String;)V

    .line 25
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_3

    .line 26
    :cond_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    :goto_3
    invoke-virtual {v11, v1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setHeadImg(Ljava/lang/String;)V

    .line 28
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_4

    .line 29
    :cond_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    :goto_4
    invoke-virtual {v11, v1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSignature(Ljava/lang/String;)V

    .line 31
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v2

    goto :goto_5

    .line 32
    :cond_5
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 33
    :goto_5
    invoke-virtual {v11, v1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineStatue(Ljava/lang/Integer;)V

    .line 34
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v2

    goto :goto_6

    .line 35
    :cond_6
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 36
    :goto_6
    invoke-virtual {v11, v1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineTime(Ljava/lang/Long;)V

    .line 37
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, v2

    goto :goto_7

    .line 38
    :cond_7
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 39
    :goto_7
    invoke-virtual {v11, v1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSendGiftNum(Ljava/lang/Integer;)V

    .line 40
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_8

    .line 41
    :cond_8
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    :goto_8
    invoke-virtual {v11, v2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setCountryFlag(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v11

    .line 43
    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 45
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 47
    throw v1
.end method

.method public findUserByNameOrId(Ljava/lang/String;)Ljava/util/List;
    .locals 17
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM friend WHERE nickName LIKE \'%\' || ? || \'%\' OR friendId LIKE \'%\' || ? || \'%\' GROUP BY groupId"

    const/4 v3, 0x2

    .line 1
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v4, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 6
    :goto_1
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 7
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "friendId"

    .line 8
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "groupId"

    .line 9
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "nickName"

    .line 10
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "headImg"

    .line 11
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "signature"

    .line 12
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "onlineStatue"

    .line 13
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "onlineTime"

    .line 14
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sendGiftNum"

    .line 15
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "countryFlag"

    .line 16
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 17
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 19
    new-instance v14, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    invoke-direct {v14}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;-><init>()V

    .line 20
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v15, v4

    goto :goto_3

    .line 21
    :cond_2
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 22
    :goto_3
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setFriendId(Ljava/lang/String;)V

    .line 23
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 24
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setGroupId(I)V

    .line 25
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v4

    goto :goto_4

    .line 26
    :cond_3
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 27
    :goto_4
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setNickName(Ljava/lang/String;)V

    .line 28
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v4

    goto :goto_5

    .line 29
    :cond_4
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 30
    :goto_5
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setHeadImg(Ljava/lang/String;)V

    .line 31
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v15, v4

    goto :goto_6

    .line 32
    :cond_5
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 33
    :goto_6
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSignature(Ljava/lang/String;)V

    .line 34
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v4

    goto :goto_7

    .line 35
    :cond_6
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 36
    :goto_7
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineStatue(Ljava/lang/Integer;)V

    .line 37
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v15, v4

    goto :goto_8

    .line 38
    :cond_7
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 39
    :goto_8
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineTime(Ljava/lang/Long;)V

    .line 40
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v15, v4

    goto :goto_9

    .line 41
    :cond_8
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 42
    :goto_9
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSendGiftNum(Ljava/lang/Integer;)V

    .line 43
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object v15, v4

    goto :goto_a

    .line 44
    :cond_9
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 45
    :goto_a
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setCountryFlag(Ljava/lang/String;)V

    .line 46
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 47
    :cond_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 49
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 50
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 51
    throw v0
.end method

.method public findUserByNameOrIdForGroup(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 17
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM friend WHERE groupId =? AND (nickName LIKE \'%\' || ? || \'%\' OR friendId LIKE \'%\' || ? || \'%\')"

    const/4 v3, 0x3

    .line 1
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_0
    const/4 v4, 0x2

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v2, v4, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 8
    :goto_2
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 9
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "friendId"

    .line 10
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "groupId"

    .line 11
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "nickName"

    .line 12
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "headImg"

    .line 13
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "signature"

    .line 14
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "onlineStatue"

    .line 15
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "onlineTime"

    .line 16
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sendGiftNum"

    .line 17
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "countryFlag"

    .line 18
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 19
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 21
    new-instance v14, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    invoke-direct {v14}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;-><init>()V

    .line 22
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v4

    goto :goto_4

    .line 23
    :cond_3
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 24
    :goto_4
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setFriendId(Ljava/lang/String;)V

    .line 25
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 26
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setGroupId(I)V

    .line 27
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v4

    goto :goto_5

    .line 28
    :cond_4
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 29
    :goto_5
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setNickName(Ljava/lang/String;)V

    .line 30
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v15, v4

    goto :goto_6

    .line 31
    :cond_5
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 32
    :goto_6
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setHeadImg(Ljava/lang/String;)V

    .line 33
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v4

    goto :goto_7

    .line 34
    :cond_6
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 35
    :goto_7
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSignature(Ljava/lang/String;)V

    .line 36
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v15, v4

    goto :goto_8

    .line 37
    :cond_7
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 38
    :goto_8
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineStatue(Ljava/lang/Integer;)V

    .line 39
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v15, v4

    goto :goto_9

    .line 40
    :cond_8
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 41
    :goto_9
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineTime(Ljava/lang/Long;)V

    .line 42
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object v15, v4

    goto :goto_a

    .line 43
    :cond_9
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 44
    :goto_a
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSendGiftNum(Ljava/lang/Integer;)V

    .line 45
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object v15, v4

    goto :goto_b

    .line 46
    :cond_a
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 47
    :goto_b
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setCountryFlag(Ljava/lang/String;)V

    .line 48
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 49
    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 50
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 51
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 52
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 53
    throw v0
.end method

.method public getAllUser()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM friend ORDER BY onlineStatue DESC,nickName COLLATE LOCALIZED ASC,sendGiftNum DESC"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "friendId"

    .line 4
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "groupId"

    .line 5
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "nickName"

    .line 6
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "headImg"

    .line 7
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "signature"

    .line 8
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "onlineStatue"

    .line 9
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "onlineTime"

    .line 10
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sendGiftNum"

    .line 11
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "countryFlag"

    .line 12
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 13
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 15
    new-instance v14, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    invoke-direct {v14}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;-><init>()V

    .line 16
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object v15, v4

    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 18
    :goto_1
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setFriendId(Ljava/lang/String;)V

    .line 19
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 20
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setGroupId(I)V

    .line 21
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v15, v4

    goto :goto_2

    .line 22
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 23
    :goto_2
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setNickName(Ljava/lang/String;)V

    .line 24
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v15, v4

    goto :goto_3

    .line 25
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 26
    :goto_3
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setHeadImg(Ljava/lang/String;)V

    .line 27
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v4

    goto :goto_4

    .line 28
    :cond_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 29
    :goto_4
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSignature(Ljava/lang/String;)V

    .line 30
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v4

    goto :goto_5

    .line 31
    :cond_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 32
    :goto_5
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineStatue(Ljava/lang/Integer;)V

    .line 33
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v15, v4

    goto :goto_6

    .line 34
    :cond_5
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 35
    :goto_6
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineTime(Ljava/lang/Long;)V

    .line 36
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v4

    goto :goto_7

    .line 37
    :cond_6
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 38
    :goto_7
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setSendGiftNum(Ljava/lang/Integer;)V

    .line 39
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v15, v4

    goto :goto_8

    .line 40
    :cond_7
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 41
    :goto_8
    invoke-virtual {v14, v15}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setCountryFlag(Ljava/lang/String;)V

    .line 42
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 43
    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 45
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 47
    throw v0
.end method

.method public getUserList()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM friend ORDER BY onlineStatue DESC,nickName COLLATE LOCALIZED ASC,sendGiftNum DESC"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "friend"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/aaspring/db/a$g;

    invoke-direct {v4, p0, v0}, Lcom/guochao/faceshow/aaspring/db/a$g;-><init>(Lcom/guochao/faceshow/aaspring/db/a;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public insertFriend(Lcom/guochao/faceshow/aaspring/db/FriendInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public insertFriends(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->c:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public updateGroupIdByFriendId(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/db/a;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 14
    throw p1
.end method

.method public updateGroupIdByGroupId(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, p2, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/db/a;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 14
    throw p1
.end method

.method public updateUser(Lcom/guochao/faceshow/aaspring/db/FriendInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->d:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

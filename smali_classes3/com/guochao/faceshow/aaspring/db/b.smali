.class public final Lcom/guochao/faceshow/aaspring/db/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/SharedSQLiteStatement;

.field private final e:Landroidx/room/SharedSQLiteStatement;

.field private final f:Landroidx/room/SharedSQLiteStatement;

.field private final g:Landroidx/room/SharedSQLiteStatement;

.field private final h:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/b$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/b$a;-><init>(Lcom/guochao/faceshow/aaspring/db/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->b:Landroidx/room/EntityInsertionAdapter;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/b$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/b$b;-><init>(Lcom/guochao/faceshow/aaspring/db/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/b$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/b$c;-><init>(Lcom/guochao/faceshow/aaspring/db/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->d:Landroidx/room/SharedSQLiteStatement;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/b$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/b$d;-><init>(Lcom/guochao/faceshow/aaspring/db/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->e:Landroidx/room/SharedSQLiteStatement;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/b$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/b$e;-><init>(Lcom/guochao/faceshow/aaspring/db/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->f:Landroidx/room/SharedSQLiteStatement;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/b$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/b$f;-><init>(Lcom/guochao/faceshow/aaspring/db/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->g:Landroidx/room/SharedSQLiteStatement;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/b$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/db/b$g;-><init>(Lcom/guochao/faceshow/aaspring/db/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->h:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static a()Ljava/util/List;
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
.method public deleteAllGroup()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/b;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/db/b;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 10
    throw v1
.end method

.method public deleteGroupById(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 5
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/b;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 11
    throw p1
.end method

.method public findGroupById(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;
    .locals 10

    const-string v0, "SELECT * FROM friendGroup WHERE id = ? LIMIT 1"

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
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v4, "id"

    .line 6
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    .line 7
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "sortNum"

    .line 8
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "memberNum"

    .line 9
    invoke-static {p1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isSelect"

    .line 10
    invoke-static {p1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 12
    new-instance v9, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-direct {v9}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;-><init>()V

    .line 13
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 14
    invoke-virtual {v9, v4}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setId(I)V

    .line 15
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    :goto_1
    invoke-virtual {v9, v4}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setName(Ljava/lang/String;)V

    .line 18
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    .line 19
    :cond_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 20
    :goto_2
    invoke-virtual {v9, v4}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setSortNum(Ljava/lang/Integer;)V

    .line 21
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v3

    goto :goto_3

    .line 22
    :cond_3
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 23
    :goto_3
    invoke-virtual {v9, v4}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setMemberNum(Ljava/lang/Integer;)V

    .line 24
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v3

    goto :goto_4

    .line 25
    :cond_4
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    if-nez v4, :cond_5

    goto :goto_6

    .line 26
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 27
    :goto_6
    invoke-virtual {v9, v3}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setSelect(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v9

    .line 28
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 29
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 30
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 31
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 32
    throw v1
.end method

.method public getGroupList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM friendGroup ORDER BY sortNum"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v4, "id"

    .line 4
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    .line 5
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "sortNum"

    .line 6
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "memberNum"

    .line 7
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isSelect"

    .line 8
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 11
    new-instance v10, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-direct {v10}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;-><init>()V

    .line 12
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 13
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setId(I)V

    .line 14
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v3

    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 16
    :goto_1
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setName(Ljava/lang/String;)V

    .line 17
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v3

    goto :goto_2

    .line 18
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 19
    :goto_2
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setSortNum(Ljava/lang/Integer;)V

    .line 20
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v3

    goto :goto_3

    .line 21
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 22
    :goto_3
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setMemberNum(Ljava/lang/Integer;)V

    .line 23
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v3

    goto :goto_4

    .line 24
    :cond_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_4
    if-nez v11, :cond_4

    move-object v11, v3

    goto :goto_6

    .line 25
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 26
    :goto_6
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setSelect(Ljava/lang/Boolean;)V

    .line 27
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 28
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 29
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v1

    .line 30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 31
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 32
    throw v1
.end method

.method public insertGroup(Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public insertGroups(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public updateGroup(Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public updateGroupName(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/db/b;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 14
    throw p1
.end method

.method public updateIsExpaned(Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->h:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_1
    const/4 p1, 0x2

    if-nez p2, :cond_2

    .line 6
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 8
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->h:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/db/b;->h:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 15
    throw p1
.end method

.method public updateSortNum(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/b;->g:Landroidx/room/SharedSQLiteStatement;

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/db/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/db/b;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 14
    throw p1
.end method

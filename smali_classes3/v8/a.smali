.class public final Lv8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lv8/a$a;

    invoke-direct {v0, p0, p1}, Lv8/a$a;-><init>(Lv8/a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lv8/a;->b:Landroidx/room/EntityInsertionAdapter;

    .line 4
    new-instance v0, Lv8/a$b;

    invoke-direct {v0, p0, p1}, Lv8/a$b;-><init>(Lv8/a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lv8/a;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

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
.method public insert(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lv8/a;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public remove(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lv8/a;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public savedModels(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * from google_pay_request_model_record WHERE userId = ? "

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
    iget-object p1, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Lv8/a;->a:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "orderId"

    .line 6
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "purchaseTime"

    .line 7
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "purchaseJson"

    .line 8
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "signature"

    .line 9
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "sceneType"

    .line 10
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "userId"

    .line 11
    invoke-static {p1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "extData"

    .line 12
    invoke-static {p1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 13
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 15
    new-instance v10, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

    invoke-direct {v10}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;-><init>()V

    .line 16
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v2

    goto :goto_2

    .line 17
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 18
    :goto_2
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;->setOrderId(Ljava/lang/String;)V

    .line 19
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 20
    invoke-virtual {v10, v11, v12}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;->setPurchaseTime(J)V

    .line 21
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v2

    goto :goto_3

    .line 22
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 23
    :goto_3
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;->setPurchaseJson(Ljava/lang/String;)V

    .line 24
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v2

    goto :goto_4

    .line 25
    :cond_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 26
    :goto_4
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;->setSignature(Ljava/lang/String;)V

    .line 27
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 28
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;->setSceneType(I)V

    .line 29
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v2

    goto :goto_5

    .line 30
    :cond_4
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 31
    :goto_5
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;->setUserId(Ljava/lang/String;)V

    .line 32
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v2

    goto :goto_6

    .line 33
    :cond_5
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 34
    :goto_6
    invoke-virtual {v10, v11}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;->setExtData(Ljava/lang/String;)V

    .line 35
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 36
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 37
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v1

    .line 38
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 39
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 40
    throw v1
.end method

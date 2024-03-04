.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;
.super Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;
.source "SourceFile"


# instance fields
.field private volatile a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;

.field private volatile b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;-><init>()V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic k(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic l(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 1
    invoke-super {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 2
    invoke-super {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-super {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const-string v3, "DELETE FROM `google_pay_request_model_record`"

    .line 4
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `GoogleSubscribeRequestModel`"

    .line 5
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    invoke-super {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 8
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 11
    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 12
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 15
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "google_pay_request_model_record"

    const-string v4, "GoogleSubscribeRequestModel"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl$a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;I)V

    const-string v2, "d62620fdf878395ece2e58755adf6a2e"

    const-string v3, "14308853e36521b037d32e6a60e44280"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 6
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/room/migration/Migration;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPayOrderDao()Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lv8/a;

    invoke-direct {v0, p0}, Lv8/a;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;

    invoke-static {}, Lv8/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;

    invoke-static {}, Lv8/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSubscribeDao()Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lv8/b;

    invoke-direct {v0, p0}, Lv8/b;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase_Impl;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

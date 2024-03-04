package com.guochao.faceshow.aaspring.modulars.googlepay.database;

import androidx.annotation.NonNull;
import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.guochao.faceshow.aaspring.modulars.googlepay.dao.GooglePayOrderRequestModelDao;
import com.guochao.faceshow.aaspring.modulars.googlepay.dao.GoogleSubscribeRequestModelDao;
import com.guochao.faceshow.utils.Contants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import v8.b;
/* loaded from: classes3.dex */
public final class GooglePayOrderRequestModelDatabase_Impl extends GooglePayOrderRequestModelDatabase {

    /* renamed from: a  reason: collision with root package name */
    private volatile GooglePayOrderRequestModelDao f18003a;

    /* renamed from: b  reason: collision with root package name */
    private volatile GoogleSubscribeRequestModelDao f18004b;

    /* loaded from: classes3.dex */
    class a extends RoomOpenHelper.Delegate {
        a(int i9) {
            super(i9);
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `google_pay_request_model_record` (`orderId` TEXT NOT NULL, `purchaseTime` INTEGER NOT NULL, `purchaseJson` TEXT NOT NULL, `signature` TEXT NOT NULL, `sceneType` INTEGER NOT NULL, `userId` TEXT NOT NULL, `extData` TEXT, PRIMARY KEY(`orderId`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `GoogleSubscribeRequestModel` (`sign` TEXT NOT NULL, `googleOrderId` TEXT NOT NULL, `tradeNo` TEXT NOT NULL, `subscribeSeries` TEXT NOT NULL, `purchaseToken` TEXT NOT NULL, `fromType` INTEGER NOT NULL, PRIMARY KEY(`googleOrderId`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'd62620fdf878395ece2e58755adf6a2e')");
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `google_pay_request_model_record`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `GoogleSubscribeRequestModel`");
            if (((RoomDatabase) GooglePayOrderRequestModelDatabase_Impl.this).mCallbacks != null) {
                int size = ((RoomDatabase) GooglePayOrderRequestModelDatabase_Impl.this).mCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((RoomDatabase.Callback) ((RoomDatabase) GooglePayOrderRequestModelDatabase_Impl.this).mCallbacks.get(i9)).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        protected void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            if (((RoomDatabase) GooglePayOrderRequestModelDatabase_Impl.this).mCallbacks != null) {
                int size = ((RoomDatabase) GooglePayOrderRequestModelDatabase_Impl.this).mCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((RoomDatabase.Callback) ((RoomDatabase) GooglePayOrderRequestModelDatabase_Impl.this).mCallbacks.get(i9)).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) GooglePayOrderRequestModelDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            GooglePayOrderRequestModelDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            if (((RoomDatabase) GooglePayOrderRequestModelDatabase_Impl.this).mCallbacks != null) {
                int size = ((RoomDatabase) GooglePayOrderRequestModelDatabase_Impl.this).mCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((RoomDatabase.Callback) ((RoomDatabase) GooglePayOrderRequestModelDatabase_Impl.this).mCallbacks.get(i9)).onOpen(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void onPostMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void onPreMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            DBUtil.dropFtsSyncTriggers(supportSQLiteDatabase);
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        protected RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase supportSQLiteDatabase) {
            HashMap hashMap = new HashMap(7);
            hashMap.put("orderId", new TableInfo.Column("orderId", "TEXT", true, 1, null, 1));
            hashMap.put("purchaseTime", new TableInfo.Column("purchaseTime", "INTEGER", true, 0, null, 1));
            hashMap.put("purchaseJson", new TableInfo.Column("purchaseJson", "TEXT", true, 0, null, 1));
            hashMap.put("signature", new TableInfo.Column("signature", "TEXT", true, 0, null, 1));
            hashMap.put("sceneType", new TableInfo.Column("sceneType", "INTEGER", true, 0, null, 1));
            hashMap.put(Contants.USER_ID, new TableInfo.Column(Contants.USER_ID, "TEXT", true, 0, null, 1));
            hashMap.put("extData", new TableInfo.Column("extData", "TEXT", false, 0, null, 1));
            TableInfo tableInfo = new TableInfo("google_pay_request_model_record", hashMap, new HashSet(0), new HashSet(0));
            TableInfo read = TableInfo.read(supportSQLiteDatabase, "google_pay_request_model_record");
            if (!tableInfo.equals(read)) {
                return new RoomOpenHelper.ValidationResult(false, "google_pay_request_model_record(com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
            }
            HashMap hashMap2 = new HashMap(6);
            hashMap2.put("sign", new TableInfo.Column("sign", "TEXT", true, 0, null, 1));
            hashMap2.put("googleOrderId", new TableInfo.Column("googleOrderId", "TEXT", true, 1, null, 1));
            hashMap2.put("tradeNo", new TableInfo.Column("tradeNo", "TEXT", true, 0, null, 1));
            hashMap2.put("subscribeSeries", new TableInfo.Column("subscribeSeries", "TEXT", true, 0, null, 1));
            hashMap2.put("purchaseToken", new TableInfo.Column("purchaseToken", "TEXT", true, 0, null, 1));
            hashMap2.put("fromType", new TableInfo.Column("fromType", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo2 = new TableInfo("GoogleSubscribeRequestModel", hashMap2, new HashSet(0), new HashSet(0));
            TableInfo read2 = TableInfo.read(supportSQLiteDatabase, "GoogleSubscribeRequestModel");
            if (!tableInfo2.equals(read2)) {
                return new RoomOpenHelper.ValidationResult(false, "GoogleSubscribeRequestModel(com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel).\n Expected:\n" + tableInfo2 + "\n Found:\n" + read2);
            }
            return new RoomOpenHelper.ValidationResult(true, null);
        }
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `google_pay_request_model_record`");
            writableDatabase.execSQL("DELETE FROM `GoogleSubscribeRequestModel`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "google_pay_request_model_record", "GoogleSubscribeRequestModel");
    }

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(2), "d62620fdf878395ece2e58755adf6a2e", "14308853e36521b037d32e6a60e44280")).build());
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> getAutoMigrations(@NonNull Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> map) {
        return Arrays.asList(new Migration[0]);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.database.GooglePayOrderRequestModelDatabase
    public GooglePayOrderRequestModelDao getPayOrderDao() {
        GooglePayOrderRequestModelDao googlePayOrderRequestModelDao;
        if (this.f18003a != null) {
            return this.f18003a;
        }
        synchronized (this) {
            if (this.f18003a == null) {
                this.f18003a = new v8.a(this);
            }
            googlePayOrderRequestModelDao = this.f18003a;
        }
        return googlePayOrderRequestModelDao;
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(GooglePayOrderRequestModelDao.class, v8.a.a());
        hashMap.put(GoogleSubscribeRequestModelDao.class, b.a());
        return hashMap;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.database.GooglePayOrderRequestModelDatabase
    public GoogleSubscribeRequestModelDao getSubscribeDao() {
        GoogleSubscribeRequestModelDao googleSubscribeRequestModelDao;
        if (this.f18004b != null) {
            return this.f18004b;
        }
        synchronized (this) {
            if (this.f18004b == null) {
                this.f18004b = new b(this);
            }
            googleSubscribeRequestModelDao = this.f18004b;
        }
        return googleSubscribeRequestModelDao;
    }
}

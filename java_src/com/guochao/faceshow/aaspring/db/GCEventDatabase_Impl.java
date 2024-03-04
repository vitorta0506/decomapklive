package com.guochao.faceshow.aaspring.db;

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
import com.guochao.faceshow.aaspring.db.dao.GCEventDao;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public final class GCEventDatabase_Impl extends GCEventDatabase {

    /* renamed from: a  reason: collision with root package name */
    private volatile GCEventDao f16365a;

    /* loaded from: classes3.dex */
    class a extends RoomOpenHelper.Delegate {
        a(int i9) {
            super(i9);
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `gc_event_model` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `event` TEXT NOT NULL, `recordTime` INTEGER NOT NULL, `targetUserId` INTEGER, `num` INTEGER NOT NULL)");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '02d14175b7b519f390fdda36dc9a6203')");
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `gc_event_model`");
            if (((RoomDatabase) GCEventDatabase_Impl.this).mCallbacks != null) {
                int size = ((RoomDatabase) GCEventDatabase_Impl.this).mCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((RoomDatabase.Callback) ((RoomDatabase) GCEventDatabase_Impl.this).mCallbacks.get(i9)).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        protected void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            if (((RoomDatabase) GCEventDatabase_Impl.this).mCallbacks != null) {
                int size = ((RoomDatabase) GCEventDatabase_Impl.this).mCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((RoomDatabase.Callback) ((RoomDatabase) GCEventDatabase_Impl.this).mCallbacks.get(i9)).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) GCEventDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            GCEventDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            if (((RoomDatabase) GCEventDatabase_Impl.this).mCallbacks != null) {
                int size = ((RoomDatabase) GCEventDatabase_Impl.this).mCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((RoomDatabase.Callback) ((RoomDatabase) GCEventDatabase_Impl.this).mCallbacks.get(i9)).onOpen(supportSQLiteDatabase);
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
            HashMap hashMap = new HashMap(5);
            hashMap.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
            hashMap.put("event", new TableInfo.Column("event", "TEXT", true, 0, null, 1));
            hashMap.put("recordTime", new TableInfo.Column("recordTime", "INTEGER", true, 0, null, 1));
            hashMap.put("targetUserId", new TableInfo.Column("targetUserId", "INTEGER", false, 0, null, 1));
            hashMap.put("num", new TableInfo.Column("num", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo = new TableInfo("gc_event_model", hashMap, new HashSet(0), new HashSet(0));
            TableInfo read = TableInfo.read(supportSQLiteDatabase, "gc_event_model");
            if (!tableInfo.equals(read)) {
                return new RoomOpenHelper.ValidationResult(false, "gc_event_model(com.guochao.faceshow.aaspring.beans.GCEventModel).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
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
            writableDatabase.execSQL("DELETE FROM `gc_event_model`");
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
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "gc_event_model");
    }

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(1), "02d14175b7b519f390fdda36dc9a6203", "385572fcea05b52c3d03d2ae231991c4")).build());
    }

    @Override // com.guochao.faceshow.aaspring.db.GCEventDatabase
    public GCEventDao eventDao() {
        GCEventDao gCEventDao;
        if (this.f16365a != null) {
            return this.f16365a;
        }
        synchronized (this) {
            if (this.f16365a == null) {
                this.f16365a = new w7.a(this);
            }
            gCEventDao = this.f16365a;
        }
        return gCEventDao;
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> getAutoMigrations(@NonNull Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> map) {
        return Arrays.asList(new Migration[0]);
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(GCEventDao.class, w7.a.a());
        return hashMap;
    }
}

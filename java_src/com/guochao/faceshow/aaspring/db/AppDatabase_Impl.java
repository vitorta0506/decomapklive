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
import com.guochao.faceshow.aaspring.db.dao.SystemConversationDao;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public final class AppDatabase_Impl extends AppDatabase {

    /* renamed from: a  reason: collision with root package name */
    private volatile FriendDao f16361a;

    /* renamed from: b  reason: collision with root package name */
    private volatile FriendGroupDao f16362b;

    /* renamed from: c  reason: collision with root package name */
    private volatile SystemConversationDao f16363c;

    /* loaded from: classes3.dex */
    class a extends RoomOpenHelper.Delegate {
        a(int i9) {
            super(i9);
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `friend` (`friendId` TEXT NOT NULL, `groupId` INTEGER NOT NULL, `nickName` TEXT, `headImg` TEXT, `signature` TEXT, `onlineStatue` INTEGER, `onlineTime` INTEGER, `sendGiftNum` INTEGER, `countryFlag` TEXT, PRIMARY KEY(`friendId`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `friendGroup` (`id` INTEGER NOT NULL, `name` TEXT, `sortNum` INTEGER, `memberNum` INTEGER, `isSelect` INTEGER, PRIMARY KEY(`id`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `system_conversation` (`conversationId` TEXT NOT NULL, `lastMsgTime` INTEGER, `content` TEXT, PRIMARY KEY(`conversationId`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '8a579bf18cd1594de5c79e4cddc24fa8')");
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `friend`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `friendGroup`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `system_conversation`");
            if (((RoomDatabase) AppDatabase_Impl.this).mCallbacks != null) {
                int size = ((RoomDatabase) AppDatabase_Impl.this).mCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((RoomDatabase.Callback) ((RoomDatabase) AppDatabase_Impl.this).mCallbacks.get(i9)).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        protected void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            if (((RoomDatabase) AppDatabase_Impl.this).mCallbacks != null) {
                int size = ((RoomDatabase) AppDatabase_Impl.this).mCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((RoomDatabase.Callback) ((RoomDatabase) AppDatabase_Impl.this).mCallbacks.get(i9)).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) AppDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            AppDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            if (((RoomDatabase) AppDatabase_Impl.this).mCallbacks != null) {
                int size = ((RoomDatabase) AppDatabase_Impl.this).mCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((RoomDatabase.Callback) ((RoomDatabase) AppDatabase_Impl.this).mCallbacks.get(i9)).onOpen(supportSQLiteDatabase);
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
            HashMap hashMap = new HashMap(9);
            hashMap.put("friendId", new TableInfo.Column("friendId", "TEXT", true, 1, null, 1));
            hashMap.put("groupId", new TableInfo.Column("groupId", "INTEGER", true, 0, null, 1));
            hashMap.put("nickName", new TableInfo.Column("nickName", "TEXT", false, 0, null, 1));
            hashMap.put("headImg", new TableInfo.Column("headImg", "TEXT", false, 0, null, 1));
            hashMap.put("signature", new TableInfo.Column("signature", "TEXT", false, 0, null, 1));
            hashMap.put("onlineStatue", new TableInfo.Column("onlineStatue", "INTEGER", false, 0, null, 1));
            hashMap.put("onlineTime", new TableInfo.Column("onlineTime", "INTEGER", false, 0, null, 1));
            hashMap.put("sendGiftNum", new TableInfo.Column("sendGiftNum", "INTEGER", false, 0, null, 1));
            hashMap.put("countryFlag", new TableInfo.Column("countryFlag", "TEXT", false, 0, null, 1));
            TableInfo tableInfo = new TableInfo("friend", hashMap, new HashSet(0), new HashSet(0));
            TableInfo read = TableInfo.read(supportSQLiteDatabase, "friend");
            if (!tableInfo.equals(read)) {
                return new RoomOpenHelper.ValidationResult(false, "friend(com.guochao.faceshow.aaspring.db.FriendInfo).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
            }
            HashMap hashMap2 = new HashMap(5);
            hashMap2.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
            hashMap2.put("name", new TableInfo.Column("name", "TEXT", false, 0, null, 1));
            hashMap2.put("sortNum", new TableInfo.Column("sortNum", "INTEGER", false, 0, null, 1));
            hashMap2.put("memberNum", new TableInfo.Column("memberNum", "INTEGER", false, 0, null, 1));
            hashMap2.put("isSelect", new TableInfo.Column("isSelect", "INTEGER", false, 0, null, 1));
            TableInfo tableInfo2 = new TableInfo("friendGroup", hashMap2, new HashSet(0), new HashSet(0));
            TableInfo read2 = TableInfo.read(supportSQLiteDatabase, "friendGroup");
            if (!tableInfo2.equals(read2)) {
                return new RoomOpenHelper.ValidationResult(false, "friendGroup(com.guochao.faceshow.aaspring.db.GroupInfo).\n Expected:\n" + tableInfo2 + "\n Found:\n" + read2);
            }
            HashMap hashMap3 = new HashMap(3);
            hashMap3.put("conversationId", new TableInfo.Column("conversationId", "TEXT", true, 1, null, 1));
            hashMap3.put("lastMsgTime", new TableInfo.Column("lastMsgTime", "INTEGER", false, 0, null, 1));
            hashMap3.put("content", new TableInfo.Column("content", "TEXT", false, 0, null, 1));
            TableInfo tableInfo3 = new TableInfo("system_conversation", hashMap3, new HashSet(0), new HashSet(0));
            TableInfo read3 = TableInfo.read(supportSQLiteDatabase, "system_conversation");
            if (!tableInfo3.equals(read3)) {
                return new RoomOpenHelper.ValidationResult(false, "system_conversation(com.guochao.faceshow.aaspring.modulars.main.model.SystemConversationModel).\n Expected:\n" + tableInfo3 + "\n Found:\n" + read3);
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
            writableDatabase.execSQL("DELETE FROM `friend`");
            writableDatabase.execSQL("DELETE FROM `friendGroup`");
            writableDatabase.execSQL("DELETE FROM `system_conversation`");
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
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "friend", "friendGroup", "system_conversation");
    }

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(1), "8a579bf18cd1594de5c79e4cddc24fa8", "bc2a58543489bc2bc1e6f5ebde5cbf7d")).build());
    }

    @Override // com.guochao.faceshow.aaspring.db.AppDatabase
    public FriendGroupDao friendGroupRoomDao() {
        FriendGroupDao friendGroupDao;
        if (this.f16362b != null) {
            return this.f16362b;
        }
        synchronized (this) {
            if (this.f16362b == null) {
                this.f16362b = new b(this);
            }
            friendGroupDao = this.f16362b;
        }
        return friendGroupDao;
    }

    @Override // com.guochao.faceshow.aaspring.db.AppDatabase
    public FriendDao friendRoomDao() {
        FriendDao friendDao;
        if (this.f16361a != null) {
            return this.f16361a;
        }
        synchronized (this) {
            if (this.f16361a == null) {
                this.f16361a = new com.guochao.faceshow.aaspring.db.a(this);
            }
            friendDao = this.f16361a;
        }
        return friendDao;
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
        hashMap.put(FriendDao.class, com.guochao.faceshow.aaspring.db.a.b());
        hashMap.put(FriendGroupDao.class, b.a());
        hashMap.put(SystemConversationDao.class, w7.b.a());
        return hashMap;
    }

    @Override // com.guochao.faceshow.aaspring.db.AppDatabase
    public SystemConversationDao systemConversationDao() {
        SystemConversationDao systemConversationDao;
        if (this.f16363c != null) {
            return this.f16363c;
        }
        synchronized (this) {
            if (this.f16363c == null) {
                this.f16363c = new w7.b(this);
            }
            systemConversationDao = this.f16363c;
        }
        return systemConversationDao;
    }
}

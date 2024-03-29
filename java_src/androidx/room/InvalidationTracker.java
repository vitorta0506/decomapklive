package androidx.room;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.LiveData;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
/* loaded from: classes.dex */
public class InvalidationTracker {
    private static final String CREATE_TRACKING_TABLE_SQL = "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)";
    private static final String INVALIDATED_COLUMN_NAME = "invalidated";
    @VisibleForTesting
    static final String RESET_UPDATED_TABLES_SQL = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ";
    @VisibleForTesting
    static final String SELECT_UPDATED_TABLES_SQL = "SELECT * FROM room_table_modification_log WHERE invalidated = 1;";
    private static final String TABLE_ID_COLUMN_NAME = "table_id";
    private static final String[] TRIGGERS = {"UPDATE", "DELETE", "INSERT"};
    private static final String UPDATE_TABLE_NAME = "room_table_modification_log";
    @Nullable
    AutoCloser mAutoCloser;
    volatile SupportSQLiteStatement mCleanupStatement;
    final RoomDatabase mDatabase;
    private volatile boolean mInitialized;
    private final InvalidationLiveDataContainer mInvalidationLiveDataContainer;
    private MultiInstanceInvalidationClient mMultiInstanceInvalidationClient;
    private final ObservedTableTracker mObservedTableTracker;
    @VisibleForTesting
    final SafeIterableMap<Observer, ObserverWrapper> mObserverMap;
    AtomicBoolean mPendingRefresh;
    @VisibleForTesting
    Runnable mRefreshRunnable;
    private final Object mSyncTriggersLock;
    @NonNull
    final HashMap<String, Integer> mTableIdLookup;
    final String[] mTableNames;
    @NonNull
    private Map<String, Set<String>> mViewTables;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ObservedTableTracker {
        static final int ADD = 1;
        static final int NO_OP = 0;
        static final int REMOVE = 2;
        boolean mNeedsSync;
        final long[] mTableObservers;
        final int[] mTriggerStateChanges;
        final boolean[] mTriggerStates;

        ObservedTableTracker(int i9) {
            long[] jArr = new long[i9];
            this.mTableObservers = jArr;
            boolean[] zArr = new boolean[i9];
            this.mTriggerStates = zArr;
            this.mTriggerStateChanges = new int[i9];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        @Nullable
        int[] getTablesToSync() {
            synchronized (this) {
                if (this.mNeedsSync) {
                    int length = this.mTableObservers.length;
                    for (int i9 = 0; i9 < length; i9++) {
                        int i10 = 1;
                        boolean z10 = this.mTableObservers[i9] > 0;
                        boolean[] zArr = this.mTriggerStates;
                        if (z10 != zArr[i9]) {
                            int[] iArr = this.mTriggerStateChanges;
                            if (!z10) {
                                i10 = 2;
                            }
                            iArr[i9] = i10;
                        } else {
                            this.mTriggerStateChanges[i9] = 0;
                        }
                        zArr[i9] = z10;
                    }
                    this.mNeedsSync = false;
                    return (int[]) this.mTriggerStateChanges.clone();
                }
                return null;
            }
        }

        boolean onAdded(int... iArr) {
            boolean z10;
            synchronized (this) {
                z10 = false;
                for (int i9 : iArr) {
                    long[] jArr = this.mTableObservers;
                    long j10 = jArr[i9];
                    jArr[i9] = 1 + j10;
                    if (j10 == 0) {
                        this.mNeedsSync = true;
                        z10 = true;
                    }
                }
            }
            return z10;
        }

        boolean onRemoved(int... iArr) {
            boolean z10;
            synchronized (this) {
                z10 = false;
                for (int i9 : iArr) {
                    long[] jArr = this.mTableObservers;
                    long j10 = jArr[i9];
                    jArr[i9] = j10 - 1;
                    if (j10 == 1) {
                        this.mNeedsSync = true;
                        z10 = true;
                    }
                }
            }
            return z10;
        }

        void resetTriggerState() {
            synchronized (this) {
                Arrays.fill(this.mTriggerStates, false);
                this.mNeedsSync = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ObserverWrapper {
        final Observer mObserver;
        private final Set<String> mSingleTableSet;
        final int[] mTableIds;
        private final String[] mTableNames;

        ObserverWrapper(Observer observer, int[] iArr, String[] strArr) {
            this.mObserver = observer;
            this.mTableIds = iArr;
            this.mTableNames = strArr;
            if (iArr.length == 1) {
                HashSet hashSet = new HashSet();
                hashSet.add(strArr[0]);
                this.mSingleTableSet = Collections.unmodifiableSet(hashSet);
                return;
            }
            this.mSingleTableSet = null;
        }

        void notifyByTableInvalidStatus(Set<Integer> set) {
            int length = this.mTableIds.length;
            Set<String> set2 = null;
            for (int i9 = 0; i9 < length; i9++) {
                if (set.contains(Integer.valueOf(this.mTableIds[i9]))) {
                    if (length == 1) {
                        set2 = this.mSingleTableSet;
                    } else {
                        if (set2 == null) {
                            set2 = new HashSet<>(length);
                        }
                        set2.add(this.mTableNames[i9]);
                    }
                }
            }
            if (set2 != null) {
                this.mObserver.onInvalidated(set2);
            }
        }

        void notifyByTableNames(String[] strArr) {
            Set<String> set = null;
            if (this.mTableNames.length == 1) {
                int length = strArr.length;
                int i9 = 0;
                while (true) {
                    if (i9 >= length) {
                        break;
                    } else if (strArr[i9].equalsIgnoreCase(this.mTableNames[0])) {
                        set = this.mSingleTableSet;
                        break;
                    } else {
                        i9++;
                    }
                }
            } else {
                HashSet hashSet = new HashSet();
                for (String str : strArr) {
                    String[] strArr2 = this.mTableNames;
                    int length2 = strArr2.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 < length2) {
                            String str2 = strArr2[i10];
                            if (str2.equalsIgnoreCase(str)) {
                                hashSet.add(str2);
                                break;
                            }
                            i10++;
                        }
                    }
                }
                if (hashSet.size() > 0) {
                    set = hashSet;
                }
            }
            if (set != null) {
                this.mObserver.onInvalidated(set);
            }
        }
    }

    /* loaded from: classes.dex */
    static class WeakObserver extends Observer {
        final WeakReference<Observer> mDelegateRef;
        final InvalidationTracker mTracker;

        WeakObserver(InvalidationTracker invalidationTracker, Observer observer) {
            super(observer.mTables);
            this.mTracker = invalidationTracker;
            this.mDelegateRef = new WeakReference<>(observer);
        }

        @Override // androidx.room.InvalidationTracker.Observer
        public void onInvalidated(@NonNull Set<String> set) {
            Observer observer = this.mDelegateRef.get();
            if (observer == null) {
                this.mTracker.removeObserver(this);
            } else {
                observer.onInvalidated(set);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public InvalidationTracker(RoomDatabase roomDatabase, String... strArr) {
        this(roomDatabase, new HashMap(), Collections.emptyMap(), strArr);
    }

    private static void appendTriggerName(StringBuilder sb2, String str, String str2) {
        sb2.append("`");
        sb2.append("room_table_modification_trigger_");
        sb2.append(str);
        sb2.append("_");
        sb2.append(str2);
        sb2.append("`");
    }

    private static void beginTransactionInternal(SupportSQLiteDatabase supportSQLiteDatabase) {
        if (supportSQLiteDatabase.isWriteAheadLoggingEnabled()) {
            supportSQLiteDatabase.beginTransactionNonExclusive();
        } else {
            supportSQLiteDatabase.beginTransaction();
        }
    }

    private String[] resolveViews(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.mViewTables.containsKey(lowerCase)) {
                hashSet.addAll(this.mViewTables.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    private void startTrackingTable(SupportSQLiteDatabase supportSQLiteDatabase, int i9) {
        String[] strArr;
        supportSQLiteDatabase.execSQL("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i9 + ", 0)");
        String str = this.mTableNames[i9];
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : TRIGGERS) {
            sb2.setLength(0);
            sb2.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            appendTriggerName(sb2, str, str2);
            sb2.append(" AFTER ");
            sb2.append(str2);
            sb2.append(" ON `");
            sb2.append(str);
            sb2.append("` BEGIN UPDATE ");
            sb2.append(UPDATE_TABLE_NAME);
            sb2.append(" SET ");
            sb2.append(INVALIDATED_COLUMN_NAME);
            sb2.append(" = 1");
            sb2.append(" WHERE ");
            sb2.append(TABLE_ID_COLUMN_NAME);
            sb2.append(" = ");
            sb2.append(i9);
            sb2.append(" AND ");
            sb2.append(INVALIDATED_COLUMN_NAME);
            sb2.append(" = 0");
            sb2.append("; END");
            supportSQLiteDatabase.execSQL(sb2.toString());
        }
    }

    private void stopTrackingTable(SupportSQLiteDatabase supportSQLiteDatabase, int i9) {
        String[] strArr;
        String str = this.mTableNames[i9];
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : TRIGGERS) {
            sb2.setLength(0);
            sb2.append("DROP TRIGGER IF EXISTS ");
            appendTriggerName(sb2, str, str2);
            supportSQLiteDatabase.execSQL(sb2.toString());
        }
    }

    private String[] validateAndResolveTableNames(String[] strArr) {
        String[] resolveViews = resolveViews(strArr);
        for (String str : resolveViews) {
            if (!this.mTableIdLookup.containsKey(str.toLowerCase(Locale.US))) {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
        }
        return resolveViews;
    }

    @WorkerThread
    public void addObserver(@NonNull Observer observer) {
        ObserverWrapper putIfAbsent;
        String[] resolveViews = resolveViews(observer.mTables);
        int[] iArr = new int[resolveViews.length];
        int length = resolveViews.length;
        for (int i9 = 0; i9 < length; i9++) {
            Integer num = this.mTableIdLookup.get(resolveViews[i9].toLowerCase(Locale.US));
            if (num != null) {
                iArr[i9] = num.intValue();
            } else {
                throw new IllegalArgumentException("There is no table with name " + resolveViews[i9]);
            }
        }
        ObserverWrapper observerWrapper = new ObserverWrapper(observer, iArr, resolveViews);
        synchronized (this.mObserverMap) {
            putIfAbsent = this.mObserverMap.putIfAbsent(observer, observerWrapper);
        }
        if (putIfAbsent == null && this.mObservedTableTracker.onAdded(iArr)) {
            syncTriggers();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void addWeakObserver(Observer observer) {
        addObserver(new WeakObserver(this, observer));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public <T> LiveData<T> createLiveData(String[] strArr, Callable<T> callable) {
        return createLiveData(strArr, false, callable);
    }

    boolean ensureInitialization() {
        if (this.mDatabase.isOpen()) {
            if (!this.mInitialized) {
                this.mDatabase.getOpenHelper().getWritableDatabase();
            }
            if (this.mInitialized) {
                return true;
            }
            Log.e("ROOM", "database is not initialized even though it is open");
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void internalInit(SupportSQLiteDatabase supportSQLiteDatabase) {
        synchronized (this) {
            if (this.mInitialized) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            supportSQLiteDatabase.execSQL("PRAGMA temp_store = MEMORY;");
            supportSQLiteDatabase.execSQL("PRAGMA recursive_triggers='ON';");
            supportSQLiteDatabase.execSQL(CREATE_TRACKING_TABLE_SQL);
            syncTriggers(supportSQLiteDatabase);
            this.mCleanupStatement = supportSQLiteDatabase.compileStatement(RESET_UPDATED_TABLES_SQL);
            this.mInitialized = true;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting(otherwise = 3)
    public void notifyObserversByTableNames(String... strArr) {
        synchronized (this.mObserverMap) {
            Iterator<Map.Entry<Observer, ObserverWrapper>> it = this.mObserverMap.iterator();
            while (it.hasNext()) {
                Map.Entry<Observer, ObserverWrapper> next = it.next();
                if (!next.getKey().isRemote()) {
                    next.getValue().notifyByTableNames(strArr);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAutoCloseCallback() {
        synchronized (this) {
            this.mInitialized = false;
            this.mObservedTableTracker.resetTriggerState();
        }
    }

    public void refreshVersionsAsync() {
        if (this.mPendingRefresh.compareAndSet(false, true)) {
            AutoCloser autoCloser = this.mAutoCloser;
            if (autoCloser != null) {
                autoCloser.incrementCountAndEnsureDbIsOpen();
            }
            this.mDatabase.getQueryExecutor().execute(this.mRefreshRunnable);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @WorkerThread
    public void refreshVersionsSync() {
        AutoCloser autoCloser = this.mAutoCloser;
        if (autoCloser != null) {
            autoCloser.incrementCountAndEnsureDbIsOpen();
        }
        syncTriggers();
        this.mRefreshRunnable.run();
    }

    @WorkerThread
    public void removeObserver(@NonNull Observer observer) {
        ObserverWrapper remove;
        synchronized (this.mObserverMap) {
            remove = this.mObserverMap.remove(observer);
        }
        if (remove == null || !this.mObservedTableTracker.onRemoved(remove.mTableIds)) {
            return;
        }
        syncTriggers();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAutoCloser(AutoCloser autoCloser) {
        this.mAutoCloser = autoCloser;
        autoCloser.setAutoCloseCallback(new Runnable() { // from class: androidx.room.f0
            @Override // java.lang.Runnable
            public final void run() {
                InvalidationTracker.this.onAutoCloseCallback();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startMultiInstanceInvalidation(Context context, String str, Intent intent) {
        this.mMultiInstanceInvalidationClient = new MultiInstanceInvalidationClient(context, str, intent, this, this.mDatabase.getQueryExecutor());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopMultiInstanceInvalidation() {
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.mMultiInstanceInvalidationClient;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.stop();
            this.mMultiInstanceInvalidationClient = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void syncTriggers(SupportSQLiteDatabase supportSQLiteDatabase) {
        if (supportSQLiteDatabase.inTransaction()) {
            return;
        }
        try {
            Lock closeLock = this.mDatabase.getCloseLock();
            closeLock.lock();
            try {
                synchronized (this.mSyncTriggersLock) {
                    int[] tablesToSync = this.mObservedTableTracker.getTablesToSync();
                    if (tablesToSync == null) {
                        return;
                    }
                    int length = tablesToSync.length;
                    beginTransactionInternal(supportSQLiteDatabase);
                    for (int i9 = 0; i9 < length; i9++) {
                        int i10 = tablesToSync[i9];
                        if (i10 == 1) {
                            startTrackingTable(supportSQLiteDatabase, i9);
                        } else if (i10 == 2) {
                            stopTrackingTable(supportSQLiteDatabase, i9);
                        }
                    }
                    supportSQLiteDatabase.setTransactionSuccessful();
                    supportSQLiteDatabase.endTransaction();
                }
            } finally {
                closeLock.unlock();
            }
        } catch (SQLiteException | IllegalStateException e10) {
            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e10);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public InvalidationTracker(RoomDatabase roomDatabase, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.mAutoCloser = null;
        this.mPendingRefresh = new AtomicBoolean(false);
        this.mInitialized = false;
        this.mObserverMap = new SafeIterableMap<>();
        this.mSyncTriggersLock = new Object();
        this.mRefreshRunnable = new Runnable() { // from class: androidx.room.InvalidationTracker.1
            private Set<Integer> checkUpdatedTable() {
                HashSet hashSet = new HashSet();
                Cursor query = InvalidationTracker.this.mDatabase.query(new SimpleSQLiteQuery(InvalidationTracker.SELECT_UPDATED_TABLES_SQL));
                while (query.moveToNext()) {
                    try {
                        hashSet.add(Integer.valueOf(query.getInt(0)));
                    } catch (Throwable th2) {
                        query.close();
                        throw th2;
                    }
                }
                query.close();
                if (!hashSet.isEmpty()) {
                    InvalidationTracker.this.mCleanupStatement.executeUpdateDelete();
                }
                return hashSet;
            }

            /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
                if (r0 != null) goto L31;
             */
            /* JADX WARN: Code restructure failed: missing block: B:26:0x0073, code lost:
                r0.decrementCountAndScheduleClose();
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x008f, code lost:
                if (r0 == null) goto L32;
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x0092, code lost:
                if (r1 == null) goto L51;
             */
            /* JADX WARN: Code restructure failed: missing block: B:41:0x0098, code lost:
                if (r1.isEmpty() != false) goto L50;
             */
            /* JADX WARN: Code restructure failed: missing block: B:42:0x009a, code lost:
                r0 = r5.this$0.mObserverMap;
             */
            /* JADX WARN: Code restructure failed: missing block: B:43:0x009e, code lost:
                monitor-enter(r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:44:0x009f, code lost:
                r2 = r5.this$0.mObserverMap.iterator();
             */
            /* JADX WARN: Code restructure failed: missing block: B:46:0x00ab, code lost:
                if (r2.hasNext() == false) goto L42;
             */
            /* JADX WARN: Code restructure failed: missing block: B:47:0x00ad, code lost:
                r2.next().getValue().notifyByTableInvalidStatus(r1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:48:0x00bd, code lost:
                monitor-exit(r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:53:0x00c2, code lost:
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:68:?, code lost:
                return;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r5 = this;
                    androidx.room.InvalidationTracker r0 = androidx.room.InvalidationTracker.this
                    androidx.room.RoomDatabase r0 = r0.mDatabase
                    java.util.concurrent.locks.Lock r0 = r0.getCloseLock()
                    r0.lock()
                    r1 = 0
                    androidx.room.InvalidationTracker r2 = androidx.room.InvalidationTracker.this     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    boolean r2 = r2.ensureInitialization()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    if (r2 != 0) goto L21
                    r0.unlock()
                    androidx.room.InvalidationTracker r0 = androidx.room.InvalidationTracker.this
                    androidx.room.AutoCloser r0 = r0.mAutoCloser
                    if (r0 == 0) goto L20
                    r0.decrementCountAndScheduleClose()
                L20:
                    return
                L21:
                    androidx.room.InvalidationTracker r2 = androidx.room.InvalidationTracker.this     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    java.util.concurrent.atomic.AtomicBoolean r2 = r2.mPendingRefresh     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    r3 = 1
                    r4 = 0
                    boolean r2 = r2.compareAndSet(r3, r4)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    if (r2 != 0) goto L3a
                    r0.unlock()
                    androidx.room.InvalidationTracker r0 = androidx.room.InvalidationTracker.this
                    androidx.room.AutoCloser r0 = r0.mAutoCloser
                    if (r0 == 0) goto L39
                    r0.decrementCountAndScheduleClose()
                L39:
                    return
                L3a:
                    androidx.room.InvalidationTracker r2 = androidx.room.InvalidationTracker.this     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    androidx.room.RoomDatabase r2 = r2.mDatabase     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    boolean r2 = r2.inTransaction()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    if (r2 == 0) goto L51
                    r0.unlock()
                    androidx.room.InvalidationTracker r0 = androidx.room.InvalidationTracker.this
                    androidx.room.AutoCloser r0 = r0.mAutoCloser
                    if (r0 == 0) goto L50
                    r0.decrementCountAndScheduleClose()
                L50:
                    return
                L51:
                    androidx.room.InvalidationTracker r2 = androidx.room.InvalidationTracker.this     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    androidx.room.RoomDatabase r2 = r2.mDatabase     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    androidx.sqlite.db.SupportSQLiteOpenHelper r2 = r2.getOpenHelper()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    androidx.sqlite.db.SupportSQLiteDatabase r2 = r2.getWritableDatabase()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    r2.beginTransactionNonExclusive()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    java.util.Set r1 = r5.checkUpdatedTable()     // Catch: java.lang.Throwable -> L77
                    r2.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L77
                    r2.endTransaction()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    r0.unlock()
                    androidx.room.InvalidationTracker r0 = androidx.room.InvalidationTracker.this
                    androidx.room.AutoCloser r0 = r0.mAutoCloser
                    if (r0 == 0) goto L92
                L73:
                    r0.decrementCountAndScheduleClose()
                    goto L92
                L77:
                    r3 = move-exception
                    r2.endTransaction()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                    throw r3     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e java.lang.IllegalStateException -> L80
                L7c:
                    r1 = move-exception
                    goto Lc3
                L7e:
                    r2 = move-exception
                    goto L81
                L80:
                    r2 = move-exception
                L81:
                    java.lang.String r3 = "ROOM"
                    java.lang.String r4 = "Cannot run invalidation tracker. Is the db closed?"
                    android.util.Log.e(r3, r4, r2)     // Catch: java.lang.Throwable -> L7c
                    r0.unlock()
                    androidx.room.InvalidationTracker r0 = androidx.room.InvalidationTracker.this
                    androidx.room.AutoCloser r0 = r0.mAutoCloser
                    if (r0 == 0) goto L92
                    goto L73
                L92:
                    if (r1 == 0) goto Lc2
                    boolean r0 = r1.isEmpty()
                    if (r0 != 0) goto Lc2
                    androidx.room.InvalidationTracker r0 = androidx.room.InvalidationTracker.this
                    androidx.arch.core.internal.SafeIterableMap<androidx.room.InvalidationTracker$Observer, androidx.room.InvalidationTracker$ObserverWrapper> r0 = r0.mObserverMap
                    monitor-enter(r0)
                    androidx.room.InvalidationTracker r2 = androidx.room.InvalidationTracker.this     // Catch: java.lang.Throwable -> Lbf
                    androidx.arch.core.internal.SafeIterableMap<androidx.room.InvalidationTracker$Observer, androidx.room.InvalidationTracker$ObserverWrapper> r2 = r2.mObserverMap     // Catch: java.lang.Throwable -> Lbf
                    java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> Lbf
                La7:
                    boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> Lbf
                    if (r3 == 0) goto Lbd
                    java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> Lbf
                    java.util.Map$Entry r3 = (java.util.Map.Entry) r3     // Catch: java.lang.Throwable -> Lbf
                    java.lang.Object r3 = r3.getValue()     // Catch: java.lang.Throwable -> Lbf
                    androidx.room.InvalidationTracker$ObserverWrapper r3 = (androidx.room.InvalidationTracker.ObserverWrapper) r3     // Catch: java.lang.Throwable -> Lbf
                    r3.notifyByTableInvalidStatus(r1)     // Catch: java.lang.Throwable -> Lbf
                    goto La7
                Lbd:
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbf
                    goto Lc2
                Lbf:
                    r1 = move-exception
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbf
                    throw r1
                Lc2:
                    return
                Lc3:
                    r0.unlock()
                    androidx.room.InvalidationTracker r0 = androidx.room.InvalidationTracker.this
                    androidx.room.AutoCloser r0 = r0.mAutoCloser
                    if (r0 == 0) goto Lcf
                    r0.decrementCountAndScheduleClose()
                Lcf:
                    throw r1
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.room.InvalidationTracker.AnonymousClass1.run():void");
            }
        };
        this.mDatabase = roomDatabase;
        this.mObservedTableTracker = new ObservedTableTracker(strArr.length);
        this.mTableIdLookup = new HashMap<>();
        this.mViewTables = map2;
        this.mInvalidationLiveDataContainer = new InvalidationLiveDataContainer(roomDatabase);
        int length = strArr.length;
        this.mTableNames = new String[length];
        for (int i9 = 0; i9 < length; i9++) {
            String str = strArr[i9];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.mTableIdLookup.put(lowerCase, Integer.valueOf(i9));
            String str2 = map.get(strArr[i9]);
            if (str2 != null) {
                this.mTableNames[i9] = str2.toLowerCase(locale);
            } else {
                this.mTableNames[i9] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            Locale locale2 = Locale.US;
            String lowerCase2 = entry.getValue().toLowerCase(locale2);
            if (this.mTableIdLookup.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> hashMap = this.mTableIdLookup;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public <T> LiveData<T> createLiveData(String[] strArr, boolean z10, Callable<T> callable) {
        return this.mInvalidationLiveDataContainer.create(validateAndResolveTableNames(strArr), z10, callable);
    }

    /* loaded from: classes.dex */
    public static abstract class Observer {
        final String[] mTables;

        protected Observer(@NonNull String str, String... strArr) {
            String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length + 1);
            this.mTables = strArr2;
            strArr2[strArr.length] = str;
        }

        boolean isRemote() {
            return false;
        }

        public abstract void onInvalidated(@NonNull Set<String> set);

        public Observer(@NonNull String[] strArr) {
            this.mTables = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
    }

    void syncTriggers() {
        if (this.mDatabase.isOpen()) {
            syncTriggers(this.mDatabase.getOpenHelper().getWritableDatabase());
        }
    }
}

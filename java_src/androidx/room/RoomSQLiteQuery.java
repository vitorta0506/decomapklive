package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class RoomSQLiteQuery implements SupportSQLiteQuery, SupportSQLiteProgram {
    private static final int BLOB = 5;
    @VisibleForTesting
    static final int DESIRED_POOL_SIZE = 10;
    private static final int DOUBLE = 3;
    private static final int LONG = 2;
    private static final int NULL = 1;
    @VisibleForTesting
    static final int POOL_LIMIT = 15;
    private static final int STRING = 4;
    @VisibleForTesting
    static final TreeMap<Integer, RoomSQLiteQuery> sQueryPool = new TreeMap<>();
    @VisibleForTesting
    int mArgCount;
    private final int[] mBindingTypes;
    @VisibleForTesting
    final byte[][] mBlobBindings;
    @VisibleForTesting
    final int mCapacity;
    @VisibleForTesting
    final double[] mDoubleBindings;
    @VisibleForTesting
    final long[] mLongBindings;
    private volatile String mQuery;
    @VisibleForTesting
    final String[] mStringBindings;

    private RoomSQLiteQuery(int i9) {
        this.mCapacity = i9;
        int i10 = i9 + 1;
        this.mBindingTypes = new int[i10];
        this.mLongBindings = new long[i10];
        this.mDoubleBindings = new double[i10];
        this.mStringBindings = new String[i10];
        this.mBlobBindings = new byte[i10];
    }

    public static RoomSQLiteQuery acquire(String str, int i9) {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        synchronized (treeMap) {
            Map.Entry<Integer, RoomSQLiteQuery> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i9));
            if (ceilingEntry != null) {
                treeMap.remove(ceilingEntry.getKey());
                RoomSQLiteQuery value = ceilingEntry.getValue();
                value.init(str, i9);
                return value;
            }
            RoomSQLiteQuery roomSQLiteQuery = new RoomSQLiteQuery(i9);
            roomSQLiteQuery.init(str, i9);
            return roomSQLiteQuery;
        }
    }

    public static RoomSQLiteQuery copyFrom(SupportSQLiteQuery supportSQLiteQuery) {
        RoomSQLiteQuery acquire = acquire(supportSQLiteQuery.getSql(), supportSQLiteQuery.getArgCount());
        supportSQLiteQuery.bindTo(new SupportSQLiteProgram() { // from class: androidx.room.RoomSQLiteQuery.1
            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindBlob(int i9, byte[] bArr) {
                RoomSQLiteQuery.this.bindBlob(i9, bArr);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindDouble(int i9, double d10) {
                RoomSQLiteQuery.this.bindDouble(i9, d10);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindLong(int i9, long j10) {
                RoomSQLiteQuery.this.bindLong(i9, j10);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindNull(int i9) {
                RoomSQLiteQuery.this.bindNull(i9);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindString(int i9, String str) {
                RoomSQLiteQuery.this.bindString(i9, str);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void clearBindings() {
                RoomSQLiteQuery.this.clearBindings();
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }
        });
        return acquire;
    }

    private static void prunePoolLocked() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        if (treeMap.size() <= 15) {
            return;
        }
        int size = treeMap.size() - 10;
        Iterator<Integer> it = treeMap.descendingKeySet().iterator();
        while (true) {
            int i9 = size - 1;
            if (size <= 0) {
                return;
            }
            it.next();
            it.remove();
            size = i9;
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int i9, byte[] bArr) {
        this.mBindingTypes[i9] = 5;
        this.mBlobBindings[i9] = bArr;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i9, double d10) {
        this.mBindingTypes[i9] = 3;
        this.mDoubleBindings[i9] = d10;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i9, long j10) {
        this.mBindingTypes[i9] = 2;
        this.mLongBindings[i9] = j10;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i9) {
        this.mBindingTypes[i9] = 1;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i9, String str) {
        this.mBindingTypes[i9] = 4;
        this.mStringBindings[i9] = str;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        for (int i9 = 1; i9 <= this.mArgCount; i9++) {
            int i10 = this.mBindingTypes[i9];
            if (i10 == 1) {
                supportSQLiteProgram.bindNull(i9);
            } else if (i10 == 2) {
                supportSQLiteProgram.bindLong(i9, this.mLongBindings[i9]);
            } else if (i10 == 3) {
                supportSQLiteProgram.bindDouble(i9, this.mDoubleBindings[i9]);
            } else if (i10 == 4) {
                supportSQLiteProgram.bindString(i9, this.mStringBindings[i9]);
            } else if (i10 == 5) {
                supportSQLiteProgram.bindBlob(i9, this.mBlobBindings[i9]);
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        Arrays.fill(this.mBindingTypes, 1);
        Arrays.fill(this.mStringBindings, (Object) null);
        Arrays.fill(this.mBlobBindings, (Object) null);
        this.mQuery = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void copyArgumentsFrom(RoomSQLiteQuery roomSQLiteQuery) {
        int argCount = roomSQLiteQuery.getArgCount() + 1;
        System.arraycopy(roomSQLiteQuery.mBindingTypes, 0, this.mBindingTypes, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mLongBindings, 0, this.mLongBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mStringBindings, 0, this.mStringBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mBlobBindings, 0, this.mBlobBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mDoubleBindings, 0, this.mDoubleBindings, 0, argCount);
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public int getArgCount() {
        return this.mArgCount;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public String getSql() {
        return this.mQuery;
    }

    void init(String str, int i9) {
        this.mQuery = str;
        this.mArgCount = i9;
    }

    public void release() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.mCapacity), this);
            prunePoolLocked();
        }
    }
}

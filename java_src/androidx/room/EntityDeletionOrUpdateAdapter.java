package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class EntityDeletionOrUpdateAdapter<T> extends SharedSQLiteStatement {
    public EntityDeletionOrUpdateAdapter(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    protected abstract void bind(SupportSQLiteStatement supportSQLiteStatement, T t10);

    @Override // androidx.room.SharedSQLiteStatement
    protected abstract String createQuery();

    public final int handle(T t10) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, t10);
            return acquire.executeUpdateDelete();
        } finally {
            release(acquire);
        }
    }

    public final int handleMultiple(Iterable<? extends T> iterable) {
        SupportSQLiteStatement acquire = acquire();
        int i9 = 0;
        try {
            for (T t10 : iterable) {
                bind(acquire, t10);
                i9 += acquire.executeUpdateDelete();
            }
            return i9;
        } finally {
            release(acquire);
        }
    }

    public final int handleMultiple(T[] tArr) {
        SupportSQLiteStatement acquire = acquire();
        try {
            int i9 = 0;
            for (T t10 : tArr) {
                bind(acquire, t10);
                i9 += acquire.executeUpdateDelete();
            }
            return i9;
        } finally {
            release(acquire);
        }
    }
}

package androidx.sqlite.db;

import java.io.Closeable;
/* loaded from: classes.dex */
public interface SupportSQLiteProgram extends Closeable {
    void bindBlob(int i9, byte[] bArr);

    void bindDouble(int i9, double d10);

    void bindLong(int i9, long j10);

    void bindNull(int i9);

    void bindString(int i9, String str);

    void clearBindings();
}

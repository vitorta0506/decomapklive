package androidx.room.util;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteCompat;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.IOUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class DBUtil {
    private DBUtil() {
    }

    @Nullable
    public static CancellationSignal createCancellationSignal() {
        return SupportSQLiteCompat.Api16Impl.createCancellationSignal();
    }

    public static void dropFtsSyncTriggers(SupportSQLiteDatabase supportSQLiteDatabase) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor query = supportSQLiteDatabase.query("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (query.moveToNext()) {
            try {
                arrayList.add(query.getString(0));
            } catch (Throwable th2) {
                query.close();
                throw th2;
            }
        }
        query.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                supportSQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    public static void foreignKeyCheck(@NonNull SupportSQLiteDatabase supportSQLiteDatabase, @NonNull String str) {
        Cursor query = supportSQLiteDatabase.query("PRAGMA foreign_key_check(`" + str + "`)");
        try {
            if (query.getCount() <= 0) {
                return;
            }
            throw new IllegalStateException(processForeignKeyCheckFailure(query));
        } finally {
            query.close();
        }
    }

    private static String processForeignKeyCheckFailure(Cursor cursor) {
        int count = cursor.getCount();
        HashMap hashMap = new HashMap();
        String str = null;
        while (cursor.moveToNext()) {
            if (str == null) {
                str = cursor.getString(0);
            }
            String string = cursor.getString(3);
            if (!hashMap.containsKey(string)) {
                hashMap.put(string, cursor.getString(2));
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Foreign key violation(s) detected in '");
        sb2.append(str);
        sb2.append("'.\n");
        sb2.append("Number of different violations discovered: ");
        sb2.append(hashMap.keySet().size());
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        sb2.append("Number of rows in violation: ");
        sb2.append(count);
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        sb2.append("Violation(s) detected in the following constraint(s):\n");
        for (Map.Entry entry : hashMap.entrySet()) {
            sb2.append("\tParent Table = ");
            sb2.append((String) entry.getValue());
            sb2.append(", Foreign Key Constraint Index = ");
            sb2.append((String) entry.getKey());
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        return sb2.toString();
    }

    @NonNull
    @Deprecated
    public static Cursor query(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, boolean z10) {
        return query(roomDatabase, supportSQLiteQuery, z10, null);
    }

    public static int readVersion(@NonNull File file) throws IOException {
        FileChannel fileChannel = null;
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            FileChannel channel = new FileInputStream(file).getChannel();
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(allocate) == 4) {
                allocate.rewind();
                int i9 = allocate.getInt();
                channel.close();
                return i9;
            }
            throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
        } catch (Throwable th2) {
            if (0 != 0) {
                fileChannel.close();
            }
            throw th2;
        }
    }

    @NonNull
    public static Cursor query(@NonNull RoomDatabase roomDatabase, @NonNull SupportSQLiteQuery supportSQLiteQuery, boolean z10, @Nullable CancellationSignal cancellationSignal) {
        Cursor query = roomDatabase.query(supportSQLiteQuery, cancellationSignal);
        if (z10 && (query instanceof AbstractWindowedCursor)) {
            AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) query;
            int count = abstractWindowedCursor.getCount();
            return (Build.VERSION.SDK_INT < 23 || (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count) ? CursorUtil.copyAndClose(abstractWindowedCursor) : query;
        }
        return query;
    }
}

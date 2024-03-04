package ki;

import android.database.Cursor;
/* loaded from: classes7.dex */
public class b {
    public static void a(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }
}

package uf;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import tf.c;
/* loaded from: classes5.dex */
public class a extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private static int f58414a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static final Object f58415b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f58416c = {PushConstants.PACKAGE_NAME, "TEXT", "message_ts", " LONG DEFAULT 0 ", "bytes", " LONG DEFAULT 0 ", TPDownloadProxyEnum.USER_NETWORK_TYPE, " INT DEFAULT -1 ", "rcv", " INT DEFAULT -1 ", "imsi", "TEXT"};

    public a(Context context) {
        super(context, "traffic.db", (SQLiteDatabase.CursorFactory) null, f58414a);
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        StringBuilder sb2 = new StringBuilder("CREATE TABLE traffic(_id INTEGER  PRIMARY KEY ,");
        int i9 = 0;
        while (true) {
            String[] strArr = f58416c;
            if (i9 >= strArr.length - 1) {
                sb2.append(");");
                sQLiteDatabase.execSQL(sb2.toString());
                return;
            }
            if (i9 != 0) {
                sb2.append(",");
            }
            sb2.append(strArr[i9]);
            sb2.append(" ");
            sb2.append(strArr[i9 + 1]);
            i9 += 2;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        synchronized (f58415b) {
            try {
                a(sQLiteDatabase);
            } catch (SQLException e10) {
                c.o(e10);
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
    }
}

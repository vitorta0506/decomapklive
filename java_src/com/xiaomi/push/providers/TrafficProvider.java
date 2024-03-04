package com.xiaomi.push.providers;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import com.xiaomi.push.e2;
import uf.a;
/* loaded from: classes5.dex */
public class TrafficProvider extends ContentProvider {

    /* renamed from: b  reason: collision with root package name */
    public static final Uri f37035b = Uri.parse("content://com.xiaomi.push.providers.TrafficProvider/traffic");

    /* renamed from: c  reason: collision with root package name */
    private static final UriMatcher f37036c;

    /* renamed from: a  reason: collision with root package name */
    private SQLiteOpenHelper f37037a;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f37036c = uriMatcher;
        uriMatcher.addURI("com.xiaomi.push.providers.TrafficProvider", "traffic", 1);
        uriMatcher.addURI("com.xiaomi.push.providers.TrafficProvider", "update_imsi", 2);
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        if (f37036c.match(uri) == 1) {
            return "vnd.android.cursor.dir/vnd.xiaomi.push.traffic";
        }
        throw new IllegalArgumentException("Unknown URI " + uri);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f37037a = new a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor query;
        synchronized (a.f58415b) {
            if (f37036c.match(uri) != 1) {
                throw new IllegalArgumentException("Unknown URI " + uri);
            }
            query = this.f37037a.getReadableDatabase().query("traffic", strArr, str, strArr2, null, null, str2);
        }
        return query;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (f37036c.match(uri) == 2 && contentValues != null && contentValues.containsKey("imsi")) {
            e2.m(contentValues.getAsString("imsi"));
            return 0;
        }
        return 0;
    }
}

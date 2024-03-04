package cn.jiguang.y;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import cn.jiguang.o.d;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f2785a;

    /* renamed from: b  reason: collision with root package name */
    private String f2786b;

    public a(Context context) {
        this.f2786b = "";
        this.f2785a = context;
        this.f2786b = d.g("SyfFpc71r1BITMlIo0m1Vt2cR3sdiPGnMd0WMSsF4yU8+J95KN/jHVtZShu2ONYO");
    }

    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            Cursor query = this.f2785a.getContentResolver().query(Uri.parse(this.f2786b), null, null, new String[]{str}, null);
            if (query != null) {
                r1 = query.moveToNext() ? query.getString(query.getColumnIndex("value")) : null;
                query.close();
            } else {
                cn.jiguang.al.a.a("MeizuDB", "return cursor is null,return");
            }
        } catch (Exception e10) {
            cn.jiguang.al.a.d("MeizuDB", "getId error: " + e10.getMessage());
        }
        return r1;
    }
}

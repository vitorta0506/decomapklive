package cn.jiguang.ab;

import android.content.Context;
import android.net.Uri;
import cn.jiguang.o.d;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private Context f1821a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f1822b;

    public b(Context context) {
        this.f1821a = context;
        String g10 = d.g("k97muQEI3n3mlJTZdD9q3lC6tvCVkeY7wPOrf0wd0l4zQtrGyn5uq0enBKOySISr");
        cn.jiguang.al.a.a("NubiaOpenIDHelper", "url: " + g10);
        this.f1822b = Uri.parse(g10);
    }

    public String a() {
        try {
            Context context = this.f1821a;
            return a.a(context, context.getPackageName(), this.f1822b);
        } catch (Exception e10) {
            cn.jiguang.al.a.d("NubiaOpenIDHelper", "get Ids-aa error: " + e10.getMessage());
            return "";
        }
    }

    public String b() {
        try {
            return a.a(this.f1821a, this.f1822b);
        } catch (Exception e10) {
            cn.jiguang.al.a.d("NubiaOpenIDHelper", "get Ids-oa error: " + e10.getMessage());
            return "";
        }
    }

    public String c() {
        try {
            Context context = this.f1821a;
            return a.b(context, context.getPackageName(), this.f1822b);
        } catch (Exception e10) {
            cn.jiguang.al.a.d("NubiaOpenIDHelper", "get Ids-va error: " + e10.getMessage());
            return "";
        }
    }
}

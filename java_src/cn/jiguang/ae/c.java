package cn.jiguang.ae;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f1845a = "";

    /* renamed from: b  reason: collision with root package name */
    private Context f1846b;

    public c(Context context) {
        this.f1846b = context;
    }

    public String a() {
        String b10 = b.a(this.f1846b).b(this.f1845a);
        return TextUtils.isEmpty(b10) ? "" : b10;
    }

    public void a(String str) {
        this.f1845a = str;
    }

    public String b() {
        String c10 = b.a(this.f1846b).c();
        return c10 == null ? "" : c10;
    }

    public String c() {
        String a10 = b.a(this.f1846b).a(this.f1845a);
        return a10 == null ? "" : a10;
    }
}

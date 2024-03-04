package cn.jiguang.y;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f2798a = "";

    /* renamed from: b  reason: collision with root package name */
    private Context f2799b;

    public c(Context context) {
        this.f2799b = context;
    }

    public String a() {
        String b10 = b.a(this.f2799b).b(this.f2798a);
        return TextUtils.isEmpty(b10) ? "" : b10;
    }

    public String b() {
        String c10 = b.a(this.f2799b).c();
        return c10 == null ? "" : c10;
    }

    public String c() {
        String a10 = b.a(this.f2799b).a(this.f2798a);
        return a10 == null ? "" : a10;
    }
}

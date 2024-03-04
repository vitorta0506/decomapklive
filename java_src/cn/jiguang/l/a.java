package cn.jiguang.l;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.api.ReportCallBack;
/* loaded from: classes.dex */
public class a implements ReportCallBack {

    /* renamed from: a  reason: collision with root package name */
    private String f2638a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f2639b;

    /* renamed from: c  reason: collision with root package name */
    private final String f2640c;

    /* renamed from: d  reason: collision with root package name */
    private final String f2641d;

    public a(String str, Context context, String str2, String str3) {
        this.f2638a = str;
        this.f2639b = context;
        this.f2640c = str2;
        this.f2641d = str3;
    }

    @Override // cn.jiguang.api.ReportCallBack
    public void onFinish(int i9) {
        if (TextUtils.isEmpty(this.f2638a)) {
            this.f2638a = "";
        }
        Context context = this.f2639b;
        cn.jiguang.o.b.h(context, this.f2640c + this.f2638a);
        if (cn.jiguang.o.b.j(this.f2639b, this.f2640c) == 0) {
            cn.jiguang.o.b.r(this.f2639b, this.f2638a);
        }
        cn.jiguang.o.b.h(this.f2639b, this.f2641d);
    }
}

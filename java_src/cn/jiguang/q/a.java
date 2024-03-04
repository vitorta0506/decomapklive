package cn.jiguang.q;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.api.ReportCallBack;
/* loaded from: classes.dex */
public class a implements ReportCallBack {

    /* renamed from: a  reason: collision with root package name */
    private Context f2733a;

    /* renamed from: b  reason: collision with root package name */
    private String f2734b;

    /* renamed from: c  reason: collision with root package name */
    private String f2735c;

    public a(Context context, String str, String str2) {
        this.f2733a = context;
        this.f2734b = str;
        this.f2735c = str2;
    }

    @Override // cn.jiguang.api.ReportCallBack
    public void onFinish(int i9) {
        cn.jiguang.al.a.a("DeviceReport", "report finish code:" + i9);
        if (i9 != 0) {
            return;
        }
        cn.jiguang.o.b.h(this.f2733a, this.f2735c);
        if (TextUtils.isEmpty(this.f2734b)) {
            return;
        }
        cn.jiguang.o.b.v(this.f2733a, this.f2734b);
    }
}

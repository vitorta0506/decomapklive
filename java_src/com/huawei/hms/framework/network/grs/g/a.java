package com.huawei.hms.framework.network.grs.g;

import android.content.Context;
import android.net.Uri;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected d f27344a;

    /* renamed from: b  reason: collision with root package name */
    private final String f27345b;

    /* renamed from: c  reason: collision with root package name */
    private final c f27346c;

    /* renamed from: d  reason: collision with root package name */
    private final int f27347d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f27348e;

    /* renamed from: f  reason: collision with root package name */
    private final String f27349f;

    /* renamed from: g  reason: collision with root package name */
    private final GrsBaseInfo f27350g;

    /* renamed from: h  reason: collision with root package name */
    private final com.huawei.hms.framework.network.grs.e.c f27351h;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.huawei.hms.framework.network.grs.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public enum EnumC0274a {
        GRSPOST,
        GRSGET,
        GRSDEFAULT
    }

    public a(String str, int i9, c cVar, Context context, String str2, GrsBaseInfo grsBaseInfo, com.huawei.hms.framework.network.grs.e.c cVar2) {
        this.f27345b = str;
        this.f27346c = cVar;
        this.f27347d = i9;
        this.f27348e = context;
        this.f27349f = str2;
        this.f27350g = grsBaseInfo;
        this.f27351h = cVar2;
    }

    private String a(String str) {
        return Uri.parse(str).getPath();
    }

    private EnumC0274a h() {
        if (this.f27345b.isEmpty()) {
            return EnumC0274a.GRSDEFAULT;
        }
        String a10 = a(this.f27345b);
        return a10.contains("1.0") ? EnumC0274a.GRSGET : a10.contains("2.0") ? EnumC0274a.GRSPOST : EnumC0274a.GRSDEFAULT;
    }

    public Context a() {
        return this.f27348e;
    }

    public c b() {
        return this.f27346c;
    }

    public String c() {
        return this.f27345b;
    }

    public int d() {
        return this.f27347d;
    }

    public String e() {
        return this.f27349f;
    }

    public com.huawei.hms.framework.network.grs.e.c f() {
        return this.f27351h;
    }

    public Callable<d> g() {
        if (EnumC0274a.GRSDEFAULT.equals(h())) {
            return null;
        }
        return EnumC0274a.GRSGET.equals(h()) ? new f(this.f27345b, this.f27347d, this.f27346c, this.f27348e, this.f27349f, this.f27350g) : new g(this.f27345b, this.f27347d, this.f27346c, this.f27348e, this.f27349f, this.f27350g, this.f27351h);
    }
}

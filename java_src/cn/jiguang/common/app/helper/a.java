package cn.jiguang.common.app.helper;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f2532a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f2533b;

    /* renamed from: c  reason: collision with root package name */
    private AtomicLong f2534c = new AtomicLong(0);

    /* renamed from: d  reason: collision with root package name */
    private AtomicLong f2535d = new AtomicLong(0);

    /* renamed from: e  reason: collision with root package name */
    private HashMap<String, Object> f2536e = null;

    public static a a() {
        if (f2532a == null) {
            synchronized (a.class) {
                if (f2532a == null) {
                    f2532a = new a();
                }
            }
        }
        return f2532a;
    }

    private boolean b() {
        return System.currentTimeMillis() - this.f2534c.get() >= 108000000;
    }

    private void c() {
        this.f2534c.set(System.currentTimeMillis());
    }

    public synchronized List<String> a(Context context) {
        if (this.f2533b == null) {
            this.f2533b = new ArrayList();
        }
        if (this.f2533b.size() > 0 && !b()) {
            return this.f2533b;
        }
        ArrayList arrayList = new ArrayList();
        if (b.a(context, false, (Object) arrayList) instanceof List) {
            c();
            this.f2533b.clear();
            this.f2533b.addAll(arrayList);
        }
        return this.f2533b;
    }
}

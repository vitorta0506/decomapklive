package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.push.i3;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class f2 extends i3.b {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f36873a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f2(Context context) {
        this.f36873a = context;
    }

    @Override // com.xiaomi.push.i3.b
    public void b() {
        Object obj;
        ArrayList arrayList;
        List list;
        List list2;
        obj = e2.f36798d;
        synchronized (obj) {
            list = e2.f36799e;
            arrayList = new ArrayList(list);
            list2 = e2.f36799e;
            list2.clear();
        }
        e2.o(this.f36873a, arrayList);
    }
}

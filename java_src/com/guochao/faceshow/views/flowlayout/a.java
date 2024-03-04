package com.guochao.faceshow.views.flowlayout;

import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes4.dex */
public abstract class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private List<T> f27006a;

    /* renamed from: b  reason: collision with root package name */
    private InterfaceC0269a f27007b;

    /* renamed from: c  reason: collision with root package name */
    private HashSet<Integer> f27008c = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    public List<Integer> f27009d = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.views.flowlayout.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0269a {
        void a();
    }

    public a(List<T> list) {
        this.f27006a = list;
    }

    public int a() {
        List<T> list = this.f27006a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public T b(int i9) {
        return this.f27006a.get(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashSet<Integer> c() {
        return this.f27008c;
    }

    public abstract View d(FlowLayout flowLayout, int i9, T t10);

    public void e() {
        InterfaceC0269a interfaceC0269a = this.f27007b;
        if (interfaceC0269a != null) {
            interfaceC0269a.a();
        }
    }

    public boolean f(int i9, T t10) {
        return false;
    }

    public void g(Set<Integer> set) {
        this.f27008c.clear();
        if (set != null) {
            this.f27008c.addAll(set);
        }
        e();
    }

    public void h(int... iArr) {
        HashSet hashSet = new HashSet();
        for (int i9 : iArr) {
            hashSet.add(Integer.valueOf(i9));
        }
        g(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnDataChangedListener(InterfaceC0269a interfaceC0269a) {
        this.f27007b = interfaceC0269a;
    }
}

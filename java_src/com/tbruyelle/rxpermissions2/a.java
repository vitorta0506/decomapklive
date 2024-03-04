package com.tbruyelle.rxpermissions2;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import io.reactivex.k;
import io.reactivex.p;
import io.reactivex.q;
import java.util.ArrayList;
import java.util.List;
import vh.o;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    static final String f30078b = "a";

    /* renamed from: c  reason: collision with root package name */
    static final Object f30079c = new Object();
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    e<RxPermissionsFragment> f30080a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tbruyelle.rxpermissions2.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0301a implements e<RxPermissionsFragment> {

        /* renamed from: a  reason: collision with root package name */
        private RxPermissionsFragment f30081a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FragmentManager f30082b;

        C0301a(FragmentManager fragmentManager) {
            this.f30082b = fragmentManager;
        }

        @Override // com.tbruyelle.rxpermissions2.a.e
        /* renamed from: a */
        public synchronized RxPermissionsFragment get() {
            if (this.f30081a == null) {
                this.f30081a = a.this.h(this.f30082b);
            }
            return this.f30081a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes4.dex */
    public class b<T> implements q<T, te.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String[] f30084a;

        b(String[] strArr) {
            this.f30084a = strArr;
        }

        @Override // io.reactivex.q
        public p<te.a> a(k<T> kVar) {
            return a.this.n(kVar, this.f30084a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes4.dex */
    public class c<T> implements q<T, te.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String[] f30086a;

        /* renamed from: com.tbruyelle.rxpermissions2.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0302a implements o<List<te.a>, p<te.a>> {
            C0302a() {
            }

            @Override // vh.o
            /* renamed from: a */
            public p<te.a> apply(List<te.a> list) {
                if (list.isEmpty()) {
                    return k.empty();
                }
                return k.just(new te.a(list));
            }
        }

        c(String[] strArr) {
            this.f30086a = strArr;
        }

        @Override // io.reactivex.q
        public p<te.a> a(k<T> kVar) {
            return a.this.n(kVar, this.f30086a).buffer(this.f30086a.length).flatMap(new C0302a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements o<Object, k<te.a>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String[] f30089a;

        d(String[] strArr) {
            this.f30089a = strArr;
        }

        @Override // vh.o
        /* renamed from: a */
        public k<te.a> apply(Object obj) {
            return a.this.q(this.f30089a);
        }
    }

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface e<V> {
        V get();
    }

    public a(@NonNull FragmentActivity fragmentActivity) {
        this.f30080a = g(fragmentActivity.getSupportFragmentManager());
    }

    private RxPermissionsFragment f(@NonNull FragmentManager fragmentManager) {
        return (RxPermissionsFragment) fragmentManager.findFragmentByTag(f30078b);
    }

    @NonNull
    private e<RxPermissionsFragment> g(@NonNull FragmentManager fragmentManager) {
        return new C0301a(fragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RxPermissionsFragment h(@NonNull FragmentManager fragmentManager) {
        RxPermissionsFragment f10 = f(fragmentManager);
        if (f10 == null) {
            RxPermissionsFragment rxPermissionsFragment = new RxPermissionsFragment();
            fragmentManager.beginTransaction().add(rxPermissionsFragment, f30078b).commitNow();
            return rxPermissionsFragment;
        }
        return f10;
    }

    private k<?> l(k<?> kVar, k<?> kVar2) {
        if (kVar == null) {
            return k.just(f30079c);
        }
        return k.merge(kVar, kVar2);
    }

    private k<?> m(String... strArr) {
        for (String str : strArr) {
            if (!this.f30080a.get().P1(str)) {
                return k.empty();
            }
        }
        return k.just(f30079c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k<te.a> n(k<?> kVar, String... strArr) {
        if (strArr != null && strArr.length != 0) {
            return l(kVar, m(strArr)).flatMap(new d(strArr));
        }
        throw new IllegalArgumentException("RxPermissions.request/requestEach requires at least one input permission");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k<te.a> q(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        ArrayList arrayList2 = new ArrayList();
        for (String str : strArr) {
            this.f30080a.get().T1("Requesting permission " + str);
            if (i(str)) {
                arrayList.add(k.just(new te.a(str, true, false)));
            } else if (k(str)) {
                arrayList.add(k.just(new te.a(str, false, false)));
            } else {
                ei.a<te.a> Q1 = this.f30080a.get().Q1(str);
                if (Q1 == null) {
                    arrayList2.add(str);
                    Q1 = ei.a.e();
                    this.f30080a.get().W1(str, Q1);
                }
                arrayList.add(Q1);
            }
        }
        if (!arrayList2.isEmpty()) {
            r((String[]) arrayList2.toArray(new String[arrayList2.size()]));
        }
        return k.concat(k.fromIterable(arrayList));
    }

    public <T> q<T, te.a> d(String... strArr) {
        return new b(strArr);
    }

    public <T> q<T, te.a> e(String... strArr) {
        return new c(strArr);
    }

    public boolean i(String str) {
        return !j() || this.f30080a.get().R1(str);
    }

    boolean j() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public boolean k(String str) {
        return j() && this.f30080a.get().S1(str);
    }

    public k<te.a> o(String... strArr) {
        return k.just(f30079c).compose(d(strArr));
    }

    public k<te.a> p(String... strArr) {
        return k.just(f30079c).compose(e(strArr));
    }

    void r(String[] strArr) {
        this.f30080a.get().T1("requestPermissionsFromFragment " + TextUtils.join(", ", strArr));
        this.f30080a.get().V1(strArr);
    }

    public a(@NonNull Fragment fragment) {
        this.f30080a = g(fragment.getChildFragmentManager());
    }
}

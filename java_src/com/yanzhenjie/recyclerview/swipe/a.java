package com.yanzhenjie.recyclerview.swipe;

import android.view.View;
import android.view.ViewGroup;
import android.widget.OverScroller;
/* loaded from: classes5.dex */
abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private int f37837a;

    /* renamed from: b  reason: collision with root package name */
    private View f37838b;

    /* renamed from: c  reason: collision with root package name */
    protected C0373a f37839c = new C0373a();

    /* renamed from: com.yanzhenjie.recyclerview.swipe.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0373a {

        /* renamed from: a  reason: collision with root package name */
        public int f37840a;

        /* renamed from: b  reason: collision with root package name */
        public int f37841b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f37842c;
    }

    public a(int i9, View view) {
        this.f37837a = i9;
        this.f37838b = view;
    }

    public abstract void a(OverScroller overScroller, int i9, int i10);

    public abstract void b(OverScroller overScroller, int i9, int i10);

    public boolean c() {
        View view = this.f37838b;
        return (view instanceof ViewGroup) && ((ViewGroup) view).getChildCount() > 0;
    }

    public abstract C0373a d(int i9, int i10);

    public int e() {
        return this.f37837a;
    }

    public View f() {
        return this.f37838b;
    }

    public int g() {
        return this.f37838b.getWidth();
    }

    public abstract boolean h(int i9, float f10);

    public boolean i(int i9) {
        return i9 == 0 && (-f().getWidth()) * e() != 0;
    }
}

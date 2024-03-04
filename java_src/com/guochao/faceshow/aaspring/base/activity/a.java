package com.guochao.faceshow.aaspring.base.activity;

import android.content.Context;
import androidx.annotation.ColorInt;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f16071a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16072b;

    /* renamed from: c  reason: collision with root package name */
    private int f16073c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16074d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16075e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f16076f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f16077g;

    /* renamed from: com.guochao.faceshow.aaspring.base.activity.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0147a {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<Context> f16078a;

        /* renamed from: d  reason: collision with root package name */
        private int f16081d;

        /* renamed from: h  reason: collision with root package name */
        private boolean f16085h = true;

        /* renamed from: b  reason: collision with root package name */
        private boolean f16079b = false;

        /* renamed from: c  reason: collision with root package name */
        private boolean f16080c = false;

        /* renamed from: e  reason: collision with root package name */
        private boolean f16082e = true;

        /* renamed from: f  reason: collision with root package name */
        private boolean f16083f = true;

        /* renamed from: g  reason: collision with root package name */
        private boolean f16084g = false;

        public C0147a(Context context) {
            this.f16078a = new WeakReference<>(context);
            this.f16081d = ContextCompat.getColor(context, R.color.transparent);
        }

        public a a() {
            a aVar = new a();
            aVar.f16071a = this.f16079b;
            aVar.f16072b = this.f16080c;
            aVar.f16073c = this.f16081d;
            aVar.f16074d = this.f16082e;
            aVar.f16075e = this.f16083f;
            aVar.f16076f = this.f16084g;
            aVar.f16077g = this.f16085h;
            return aVar;
        }

        public C0147a b(boolean z10) {
            this.f16080c = z10;
            return this;
        }

        public C0147a c(boolean z10) {
            this.f16084g = z10;
            return this;
        }

        public C0147a d(boolean z10) {
            this.f16083f = z10;
            return this;
        }

        public C0147a e(boolean z10) {
            this.f16082e = z10;
            return this;
        }

        public C0147a f(@ColorInt int i9) {
            this.f16081d = i9;
            return this;
        }
    }

    a() {
    }

    public int h() {
        return this.f16073c;
    }

    public boolean i() {
        return this.f16072b;
    }

    public boolean j() {
        return this.f16076f;
    }

    public boolean k() {
        return this.f16075e;
    }

    public boolean l() {
        return this.f16077g;
    }

    public boolean m() {
        return this.f16074d;
    }
}

package com.guochao.faceshow.aaspring.modulars.personal;

import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import java.util.List;
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private List<b> f21458a;

    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        private int f21459a;

        /* renamed from: b  reason: collision with root package name */
        private String f21460b;

        /* renamed from: c  reason: collision with root package name */
        private int f21461c;

        public int a() {
            return this.f21459a;
        }

        public String b() {
            return this.f21460b;
        }

        public int c() {
            return this.f21461c;
        }
    }

    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private String f21462a;

        /* renamed from: b  reason: collision with root package name */
        private String f21463b;

        /* renamed from: c  reason: collision with root package name */
        private String f21464c;

        /* renamed from: d  reason: collision with root package name */
        private String f21465d;

        /* renamed from: e  reason: collision with root package name */
        private String f21466e;

        /* renamed from: f  reason: collision with root package name */
        private String f21467f;

        /* renamed from: g  reason: collision with root package name */
        private List<a> f21468g;

        public List<a> a() {
            return this.f21468g;
        }

        public String b() {
            return this.f21465d;
        }

        public String c() {
            return this.f21466e;
        }

        public String d() {
            return this.f21463b;
        }

        public String e() {
            if (TextUtils.isEmpty(this.f21467f)) {
                return BaseApplication.getInstance().getString(R.string.user_info_default_signature);
            }
            return this.f21467f;
        }

        public String f() {
            return this.f21462a;
        }

        public String g() {
            return this.f21464c;
        }
    }

    public List<b> a() {
        return this.f21458a;
    }
}

package cn.jpush.android.x;

import java.util.List;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private List<a> f3501a;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f3502a;

        /* renamed from: b  reason: collision with root package name */
        private String f3503b;

        /* renamed from: c  reason: collision with root package name */
        private String f3504c;

        /* renamed from: d  reason: collision with root package name */
        private String f3505d;

        /* renamed from: e  reason: collision with root package name */
        private int f3506e;

        /* renamed from: f  reason: collision with root package name */
        private int f3507f;

        /* renamed from: g  reason: collision with root package name */
        private String f3508g;

        public int a() {
            return this.f3502a;
        }

        public void a(int i9) {
            this.f3502a = i9;
        }

        public void a(String str) {
            this.f3503b = str;
        }

        public String b() {
            return this.f3504c;
        }

        public void b(int i9) {
            this.f3506e = i9;
        }

        public void b(String str) {
            this.f3504c = str;
        }

        public String c() {
            return this.f3505d;
        }

        public void c(int i9) {
            this.f3507f = i9;
        }

        public void c(String str) {
            this.f3505d = str;
        }

        public int d() {
            return this.f3506e;
        }

        public void d(String str) {
            this.f3508g = str;
        }

        public int e() {
            return this.f3507f;
        }

        public String f() {
            return this.f3508g;
        }

        public String toString() {
            return "InMatches{version=" + this.f3502a + ", manufacturer='" + this.f3503b + "', model='" + this.f3504c + "', rom='" + this.f3505d + "', android_min=" + this.f3506e + ", android_max=" + this.f3507f + ", file_path='" + this.f3508g + "'}";
        }
    }

    public List<a> a() {
        return this.f3501a;
    }

    public void a(List<a> list) {
        this.f3501a = list;
    }

    public String toString() {
        return "InAppMatchesConfig{inMatchesList=" + this.f3501a + '}';
    }
}

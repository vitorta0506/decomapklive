package com.meizu.cloud.pushsdk.handler.a.c;

import android.text.TextUtils;
import com.meizu.cloud.pushsdk.constants.PushConstants;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private String f28693a;

    /* renamed from: b  reason: collision with root package name */
    private String f28694b;

    /* renamed from: c  reason: collision with root package name */
    private String f28695c;

    /* renamed from: d  reason: collision with root package name */
    private String f28696d;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f28697a;

        /* renamed from: b  reason: collision with root package name */
        private String f28698b;

        /* renamed from: c  reason: collision with root package name */
        private String f28699c;

        /* renamed from: d  reason: collision with root package name */
        private String f28700d;

        public a a(String str) {
            this.f28697a = str;
            return this;
        }

        public d a() {
            return new d(this);
        }

        public a b(String str) {
            this.f28698b = str;
            return this;
        }

        public a c(String str) {
            this.f28699c = str;
            return this;
        }

        public a d(String str) {
            this.f28700d = str;
            return this;
        }
    }

    public d() {
    }

    public d(a aVar) {
        this.f28693a = !TextUtils.isEmpty(aVar.f28697a) ? aVar.f28697a : "";
        this.f28694b = !TextUtils.isEmpty(aVar.f28698b) ? aVar.f28698b : "";
        this.f28695c = !TextUtils.isEmpty(aVar.f28699c) ? aVar.f28699c : "";
        this.f28696d = TextUtils.isEmpty(aVar.f28700d) ? "" : aVar.f28700d;
    }

    public static a a() {
        return new a();
    }

    public String b() {
        com.meizu.cloud.pushsdk.d.a.c cVar = new com.meizu.cloud.pushsdk.d.a.c();
        cVar.a(PushConstants.TASK_ID, this.f28693a);
        cVar.a(PushConstants.SEQ_ID, this.f28694b);
        cVar.a(PushConstants.PUSH_TIMESTAMP, this.f28695c);
        cVar.a("device_id", this.f28696d);
        return cVar.toString();
    }

    public String c() {
        return this.f28693a;
    }

    public String d() {
        return this.f28694b;
    }

    public String e() {
        return this.f28695c;
    }

    public String f() {
        return this.f28696d;
    }
}

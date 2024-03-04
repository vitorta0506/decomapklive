package com.google.firebase.messaging;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.firebase.messaging.d;
import java.util.Map;
/* loaded from: classes2.dex */
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new k0();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;

    /* renamed from: a  reason: collision with root package name */
    Bundle f13982a;
    private Map<String, String> data;
    private c notification;

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f13983a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, String> f13984b;

        public b(@NonNull String str) {
            Bundle bundle = new Bundle();
            this.f13983a = bundle;
            this.f13984b = new ArrayMap();
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("google.to", str);
                return;
            }
            throw new IllegalArgumentException("Invalid to: " + str);
        }

        @NonNull
        public RemoteMessage a() {
            Bundle bundle = new Bundle();
            for (Map.Entry<String, String> entry : this.f13984b.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue());
            }
            bundle.putAll(this.f13983a);
            this.f13983a.remove("from");
            return new RemoteMessage(bundle);
        }
    }

    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f13985a;

        /* renamed from: b  reason: collision with root package name */
        private final String f13986b;

        /* renamed from: c  reason: collision with root package name */
        private final String[] f13987c;

        /* renamed from: d  reason: collision with root package name */
        private final String f13988d;

        /* renamed from: e  reason: collision with root package name */
        private final String f13989e;

        /* renamed from: f  reason: collision with root package name */
        private final String[] f13990f;

        /* renamed from: g  reason: collision with root package name */
        private final String f13991g;

        /* renamed from: h  reason: collision with root package name */
        private final String f13992h;

        /* renamed from: i  reason: collision with root package name */
        private final String f13993i;

        /* renamed from: j  reason: collision with root package name */
        private final String f13994j;

        /* renamed from: k  reason: collision with root package name */
        private final String f13995k;

        /* renamed from: l  reason: collision with root package name */
        private final String f13996l;

        /* renamed from: m  reason: collision with root package name */
        private final String f13997m;

        /* renamed from: n  reason: collision with root package name */
        private final Uri f13998n;

        /* renamed from: o  reason: collision with root package name */
        private final String f13999o;

        /* renamed from: p  reason: collision with root package name */
        private final Integer f14000p;

        /* renamed from: q  reason: collision with root package name */
        private final Integer f14001q;

        /* renamed from: r  reason: collision with root package name */
        private final Integer f14002r;

        /* renamed from: s  reason: collision with root package name */
        private final int[] f14003s;

        /* renamed from: t  reason: collision with root package name */
        private final Long f14004t;

        /* renamed from: u  reason: collision with root package name */
        private final boolean f14005u;

        /* renamed from: v  reason: collision with root package name */
        private final boolean f14006v;

        /* renamed from: w  reason: collision with root package name */
        private final boolean f14007w;

        /* renamed from: x  reason: collision with root package name */
        private final boolean f14008x;

        /* renamed from: y  reason: collision with root package name */
        private final boolean f14009y;

        /* renamed from: z  reason: collision with root package name */
        private final long[] f14010z;

        private static String[] d(f0 f0Var, String str) {
            Object[] g10 = f0Var.g(str);
            if (g10 == null) {
                return null;
            }
            String[] strArr = new String[g10.length];
            for (int i9 = 0; i9 < g10.length; i9++) {
                strArr[i9] = String.valueOf(g10[i9]);
            }
            return strArr;
        }

        @Nullable
        public String a() {
            return this.f13988d;
        }

        @Nullable
        public String b() {
            return this.f13991g;
        }

        @Nullable
        public Uri c() {
            String str = this.f13992h;
            if (str != null) {
                return Uri.parse(str);
            }
            return null;
        }

        @Nullable
        public String e() {
            return this.f13985a;
        }

        private c(f0 f0Var) {
            this.f13985a = f0Var.p("gcm.n.title");
            this.f13986b = f0Var.h("gcm.n.title");
            this.f13987c = d(f0Var, "gcm.n.title");
            this.f13988d = f0Var.p("gcm.n.body");
            this.f13989e = f0Var.h("gcm.n.body");
            this.f13990f = d(f0Var, "gcm.n.body");
            this.f13991g = f0Var.p("gcm.n.icon");
            this.f13993i = f0Var.o();
            this.f13994j = f0Var.p("gcm.n.tag");
            this.f13995k = f0Var.p("gcm.n.color");
            this.f13996l = f0Var.p("gcm.n.click_action");
            this.f13997m = f0Var.p("gcm.n.android_channel_id");
            this.f13998n = f0Var.f();
            this.f13992h = f0Var.p("gcm.n.image");
            this.f13999o = f0Var.p("gcm.n.ticker");
            this.f14000p = f0Var.b("gcm.n.notification_priority");
            this.f14001q = f0Var.b("gcm.n.visibility");
            this.f14002r = f0Var.b("gcm.n.notification_count");
            this.f14005u = f0Var.a("gcm.n.sticky");
            this.f14006v = f0Var.a("gcm.n.local_only");
            this.f14007w = f0Var.a("gcm.n.default_sound");
            this.f14008x = f0Var.a("gcm.n.default_vibrate_timings");
            this.f14009y = f0Var.a("gcm.n.default_light_settings");
            this.f14004t = f0Var.j("gcm.n.event_time");
            this.f14003s = f0Var.e();
            this.f14010z = f0Var.q();
        }
    }

    public RemoteMessage(Bundle bundle) {
        this.f13982a = bundle;
    }

    @NonNull
    public Map<String, String> I() {
        if (this.data == null) {
            this.data = d.a.a(this.f13982a);
        }
        return this.data;
    }

    @Nullable
    public c K() {
        if (this.notification == null && f0.t(this.f13982a)) {
            this.notification = new c(new f0(this.f13982a));
        }
        return this.notification;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        k0.c(this, parcel, i9);
    }
}

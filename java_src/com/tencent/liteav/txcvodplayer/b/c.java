package com.tencent.liteav.txcvodplayer.b;

import android.os.Handler;
import android.text.TextUtils;
import com.tencent.liteav.base.ThreadUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.TXPlayInfoParams;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    TXPlayInfoParams f31517a;

    /* renamed from: b  reason: collision with root package name */
    public com.tencent.liteav.txcvodplayer.b.b f31518b;

    /* renamed from: c  reason: collision with root package name */
    public f f31519c;

    /* renamed from: d  reason: collision with root package name */
    public String f31520d;

    /* renamed from: e  reason: collision with root package name */
    public String f31521e;

    /* renamed from: f  reason: collision with root package name */
    private final String f31522f = "https://playvideo.qcloud.com/getplayinfo/v4";

    /* renamed from: g  reason: collision with root package name */
    private Handler f31523g = ThreadUtils.getUiThreadHandler();

    /* renamed from: h  reason: collision with root package name */
    private String f31524h;

    /* renamed from: com.tencent.liteav.txcvodplayer.b.c$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    final class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f31525a;

        AnonymousClass1(a aVar) {
            this.f31525a = aVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x00fe  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0110  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x016a  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0192  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x01ac  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 492
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.txcvodplayer.b.c.AnonymousClass1.run():void");
        }
    }

    /* loaded from: classes4.dex */
    public interface a {
        void a(int i9, String str);

        void a(c cVar, TXPlayInfoParams tXPlayInfoParams);
    }

    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public ArrayList<String> f31536a;

        /* renamed from: b  reason: collision with root package name */
        public String f31537b;
    }

    /* renamed from: com.tencent.liteav.txcvodplayer.b.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0326c {

        /* renamed from: a  reason: collision with root package name */
        public String f31538a;

        /* renamed from: b  reason: collision with root package name */
        public float f31539b;

        public final String toString() {
            return "TCPlayKeyFrameDescInfo{content='" + this.f31538a + "', time=" + this.f31539b + '}';
        }
    }

    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public String f31540a;

        /* renamed from: b  reason: collision with root package name */
        public int f31541b;

        /* renamed from: c  reason: collision with root package name */
        public int f31542c;

        /* renamed from: d  reason: collision with root package name */
        public String f31543d;
    }

    public c(TXPlayInfoParams tXPlayInfoParams) {
        this.f31517a = tXPlayInfoParams;
    }

    public final void a(a aVar) {
        if (this.f31517a == null) {
            return;
        }
        com.tencent.liteav.txcplayer.common.a.a().execute(new AnonymousClass1(aVar));
    }

    public final String b() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.f31518b;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    public final int c() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.f31518b;
        if (bVar != null) {
            return bVar.f31504d;
        }
        f fVar = this.f31519c;
        if (fVar != null) {
            return fVar.b();
        }
        return -1;
    }

    public final String d() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.f31518b;
        return bVar != null ? bVar.f31507g : "";
    }

    final boolean a(String str, final a aVar) {
        if (TextUtils.isEmpty(str)) {
            LiteavLog.e("TXCPlayInfoProtocolV4", "parseJson err, content is empty!");
            a(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.b.c.2
                @Override // java.lang.Runnable
                public final void run() {
                    aVar.a(-1, "request return error!");
                }
            });
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            final int i9 = jSONObject.getInt("code");
            final String optString = jSONObject.optString("message");
            String optString2 = jSONObject.optString("warning");
            this.f31524h = jSONObject.optString("context");
            LiteavLog.i("TXCPlayInfoProtocolV4", "context : " + this.f31524h);
            LiteavLog.i("TXCPlayInfoProtocolV4", "message: ".concat(String.valueOf(optString)));
            LiteavLog.i("TXCPlayInfoProtocolV4", "warning: ".concat(String.valueOf(optString2)));
            if (i9 == 0) {
                int i10 = jSONObject.getInt("version");
                LiteavLog.i("TXCPlayInfoProtocolV4", "version: ".concat(String.valueOf(i10)));
                if (i10 == 2) {
                    this.f31520d = null;
                    this.f31521e = null;
                    this.f31519c = new f(jSONObject);
                    return true;
                } else if (i10 == 4) {
                    this.f31518b = new com.tencent.liteav.txcvodplayer.b.b(jSONObject);
                    return true;
                } else {
                    return true;
                }
            }
            a(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.b.c.3
                @Override // java.lang.Runnable
                public final void run() {
                    aVar.a(i9, optString);
                }
            });
            return false;
        } catch (JSONException e10) {
            e10.printStackTrace();
            LiteavLog.e("TXCPlayInfoProtocolV4", "parseJson err");
            return true;
        }
    }

    public final String a() {
        com.tencent.liteav.txcvodplayer.b.b bVar = this.f31518b;
        if (bVar != null) {
            String a10 = bVar.a("SimpleAES");
            return !TextUtils.isEmpty(a10) ? a10 : this.f31518b.a("plain");
        }
        f fVar = this.f31519c;
        if (fVar != null) {
            return fVar.a();
        }
        return null;
    }

    final void a(Runnable runnable) {
        if (ThreadUtils.runningOnUiThread()) {
            runnable.run();
        } else {
            this.f31523g.post(runnable);
        }
    }
}

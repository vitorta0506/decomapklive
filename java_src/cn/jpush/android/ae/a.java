package cn.jpush.android.ae;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.cache.Key;
import cn.jpush.android.cache.Sp;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.helper.g;
import cn.jpush.android.local.JPushConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f2864b;

    /* renamed from: a  reason: collision with root package name */
    private Map<Byte, C0044a> f2865a = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cn.jpush.android.ae.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0044a {

        /* renamed from: a  reason: collision with root package name */
        public byte f2866a;

        /* renamed from: b  reason: collision with root package name */
        public String f2867b;

        /* renamed from: c  reason: collision with root package name */
        public long f2868c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f2869d;

        /* renamed from: e  reason: collision with root package name */
        public int f2870e = 0;

        public C0044a(byte b10, String str, long j10, byte[] bArr) {
            this.f2866a = b10;
            this.f2867b = str;
            this.f2868c = j10;
            this.f2869d = bArr;
        }

        public String toString() {
            return "PluginPlatformRegIDBean{pluginPlatformType=" + ((int) this.f2866a) + ", regid='" + this.f2867b + "', rid=" + this.f2868c + ", retryCount=" + this.f2870e + '}';
        }
    }

    private a() {
    }

    private C0044a a(long j10) {
        for (Map.Entry<Byte, C0044a> entry : this.f2865a.entrySet()) {
            if (entry.getValue().f2868c == j10) {
                return entry.getValue();
            }
        }
        Logger.d("PluginPlatformRidUpdate", "can not find uploadBean by rid");
        return null;
    }

    public static a a() {
        if (f2864b == null) {
            synchronized (a.class) {
                if (f2864b == null) {
                    f2864b = new a();
                }
            }
        }
        return f2864b;
    }

    private synchronized void a(Context context, C0044a c0044a) {
        JCoreHelper.sendRequest(context, JPushConstants.SDK_TYPE, 27, 1, c0044a.f2868c, 10000L, c0044a.f2869d);
    }

    private void b(Context context, byte b10, String str) {
        long a10 = g.a();
        Logger.v("PluginPlatformRidUpdate", "sendUpdateRidInfo regid:" + str + ",rid:" + a10 + ",whichPlatform:" + ((int) b10));
        C0044a c0044a = new C0044a(b10, str, a10, cn.jpush.android.ac.c.a(str, b10));
        this.f2865a.put(Byte.valueOf(b10), c0044a);
        a(context, c0044a);
    }

    public synchronized void a(Context context, byte b10, String str) {
        if (b10 == 0) {
            Logger.w("PluginPlatformRidUpdate", "unknown plugin platform type");
        } else if (!JPushConstants.isTcpConnected()) {
            Logger.d("PluginPlatformRidUpdate", "tcp disconnected");
        } else if (this.f2865a.containsKey(Byte.valueOf(b10)) && TextUtils.equals(this.f2865a.get(Byte.valueOf(b10)).f2867b, str)) {
            Logger.d("PluginPlatformRidUpdate", "same regid request, drop it");
        } else {
            b(context, b10, str);
        }
    }

    public void a(Context context, long j10) {
        C0044a a10 = a(j10);
        Logger.ii("PluginPlatformRidUpdate", "onUpdateRidSuccess rid:" + j10 + " ,pluginPlatformRegIDBean:" + a10);
        if (a10 != null) {
            Sp.set(context, Key.ThirdPush_RegID(a10.f2866a).set(a10.f2867b));
            Sp.set(context, Key.ThirdPush_RegUpload(a10.f2866a).set(Boolean.TRUE));
            this.f2865a.remove(Byte.valueOf(a10.f2866a));
            c.a().a(context, (int) a10.f2866a, a10.f2867b);
        }
    }

    public void a(Context context, long j10, int i9) {
        C0044a a10 = a(j10);
        Logger.ii("PluginPlatformRidUpdate", "onUpdateRidFailed rid:" + j10 + ",errorCode:" + i9 + " ,pluginPlatformRegIDBean:" + a10);
        if (a10 != null) {
            int i10 = a10.f2870e;
            if (i10 < 3) {
                a10.f2870e = i10 + 1;
                a(context, a10);
                return;
            }
            Logger.d("PluginPlatformRidUpdate", "updateRegId failed");
            this.f2865a.remove(Byte.valueOf(a10.f2866a));
        }
    }

    public void b(Context context, long j10) {
        C0044a a10 = a(j10);
        Logger.ii("PluginPlatformRidUpdate", "onUpdateRidTimeout rid:" + j10 + " ,pluginPlatformRegIDBean:" + a10);
        if (a10 != null) {
            int i9 = a10.f2870e;
            if (i9 < 3) {
                a10.f2870e = i9 + 1;
                a(context, a10);
                return;
            }
            Logger.d("PluginPlatformRidUpdate", "updateRegId failed by timeout");
            this.f2865a.remove(Byte.valueOf(a10.f2866a));
        }
    }
}

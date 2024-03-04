package com.xiaomi.push;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import com.xiaomi.push.n0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class o0 implements n0.a {

    /* renamed from: b  reason: collision with root package name */
    protected Context f37010b;

    /* renamed from: a  reason: collision with root package name */
    private PendingIntent f37009a = null;

    /* renamed from: c  reason: collision with root package name */
    private volatile long f37011c = 0;

    public o0(Context context) {
        this.f37010b = null;
        this.f37010b = context;
    }

    private void b(AlarmManager alarmManager, long j10, PendingIntent pendingIntent) {
        try {
            AlarmManager.class.getMethod("setExact", Integer.TYPE, Long.TYPE, PendingIntent.class).invoke(alarmManager, 2, Long.valueOf(j10), pendingIntent);
        } catch (Exception e10) {
            tf.c.u("[Alarm] invoke setExact method meet error. " + e10);
        }
    }

    @Override // com.xiaomi.push.n0.a
    public void a() {
        if (this.f37009a != null) {
            try {
                ((AlarmManager) this.f37010b.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(this.f37009a);
            } catch (Exception unused) {
            } catch (Throwable th2) {
                this.f37009a = null;
                tf.c.t("[Alarm] unregister timer");
                this.f37011c = 0L;
                throw th2;
            }
            this.f37009a = null;
            tf.c.t("[Alarm] unregister timer");
            this.f37011c = 0L;
        }
        this.f37011c = 0L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
        if (r8.f37011c < r4) goto L17;
     */
    @Override // com.xiaomi.push.n0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r9) {
        /*
            r8 = this;
            android.content.Context r0 = r8.f37010b
            com.xiaomi.push.service.w1 r0 = com.xiaomi.push.service.w1.c(r0)
            long r0 = r0.b()
            r2 = 0
            if (r9 != 0) goto L15
            long r4 = r8.f37011c
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L15
            return
        L15:
            if (r9 == 0) goto L1a
            r8.a()
        L1a:
            long r4 = android.os.SystemClock.elapsedRealtime()
            if (r9 != 0) goto L39
            long r6 = r8.f37011c
            int r9 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r9 != 0) goto L27
            goto L39
        L27:
            long r2 = r8.f37011c
            int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r9 > 0) goto L3f
            long r2 = r8.f37011c
            long r2 = r2 + r0
            r8.f37011c = r2
            long r2 = r8.f37011c
            int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r9 >= 0) goto L3f
            goto L3c
        L39:
            long r2 = r4 % r0
            long r0 = r0 - r2
        L3c:
            long r4 = r4 + r0
            r8.f37011c = r4
        L3f:
            android.content.Intent r9 = new android.content.Intent
            java.lang.String r0 = com.xiaomi.push.service.e0.f37225n
            r9.<init>(r0)
            android.content.Context r0 = r8.f37010b
            java.lang.String r0 = r0.getPackageName()
            r9.setPackage(r0)
            long r0 = r8.f37011c
            r8.c(r9, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.o0.a(boolean):void");
    }

    @Override // com.xiaomi.push.n0.a
    /* renamed from: a */
    public boolean mo1520a() {
        return this.f37011c != 0;
    }

    public void c(Intent intent, long j10) {
        AlarmManager alarmManager = (AlarmManager) this.f37010b.getSystemService(NotificationCompat.CATEGORY_ALARM);
        int i9 = Build.VERSION.SDK_INT;
        this.f37009a = i9 >= 31 ? PendingIntent.getBroadcast(this.f37010b, 0, intent, TPMediaCodecProfileLevel.HEVCHighTierLevel62) : PendingIntent.getBroadcast(this.f37010b, 0, intent, 0);
        if (i9 >= 23) {
            q3.e(alarmManager, "setExactAndAllowWhileIdle", 2, Long.valueOf(j10), this.f37009a);
        } else {
            b(alarmManager, j10, this.f37009a);
        }
        tf.c.t("[Alarm] register timer " + j10);
    }
}

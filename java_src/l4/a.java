package l4;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f54190a;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r0.charAt(0) <= 'Z') goto L12;
     */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33554432(0x2000000, float:9.403955E-38)
            r2 = 0
            r3 = 31
            if (r0 < r3) goto La
            goto L29
        La:
            r3 = 30
            if (r0 < r3) goto L28
            java.lang.String r0 = android.os.Build.VERSION.CODENAME
            int r3 = r0.length()
            r4 = 1
            if (r3 != r4) goto L28
            char r3 = r0.charAt(r2)
            r4 = 83
            if (r3 < r4) goto L28
            char r0 = r0.charAt(r2)
            r3 = 90
            if (r0 > r3) goto L28
            goto L29
        L28:
            r1 = 0
        L29:
            l4.a.f54190a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: l4.a.<clinit>():void");
    }

    public static PendingIntent a(Context context, int i9, Intent intent, int i10) {
        return PendingIntent.getBroadcast(context, 0, intent, i10);
    }
}

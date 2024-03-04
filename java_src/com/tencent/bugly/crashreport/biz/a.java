package com.tencent.bugly.crashreport.biz;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f30148a;

    /* renamed from: b  reason: collision with root package name */
    private long f30149b;

    /* renamed from: c  reason: collision with root package name */
    private int f30150c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30151d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.bugly.crashreport.biz.a$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass2 implements Runnable {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                a.this.c();
            } catch (Throwable th2) {
                x.a(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.bugly.crashreport.biz.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class RunnableC0303a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private boolean f30155a;

        /* renamed from: b  reason: collision with root package name */
        private UserInfoBean f30156b;

        public RunnableC0303a(UserInfoBean userInfoBean, boolean z10) {
            this.f30156b = userInfoBean;
            this.f30155a = z10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.tencent.bugly.crashreport.common.info.a b10;
            try {
                UserInfoBean userInfoBean = this.f30156b;
                if (userInfoBean != null) {
                    if (userInfoBean != null && (b10 = com.tencent.bugly.crashreport.common.info.a.b()) != null) {
                        userInfoBean.f30138j = b10.e();
                    }
                    x.c("[UserInfo] Record user info.", new Object[0]);
                    a.a(a.this, this.f30156b, false);
                }
                if (this.f30155a) {
                    a aVar = a.this;
                    w a10 = w.a();
                    if (a10 != null) {
                        a10.a(new AnonymousClass2());
                    }
                }
            } catch (Throwable th2) {
                if (x.a(th2)) {
                    return;
                }
                th2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis < a.this.f30149b) {
                w.a().a(new b(), (a.this.f30149b - currentTimeMillis) + 5000);
                return;
            }
            a.this.a(3, false, 0L);
            a.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private long f30159a;

        public c(long j10) {
            this.f30159a = j10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = a.this;
            w a10 = w.a();
            if (a10 != null) {
                a10.a(new AnonymousClass2());
            }
            a aVar2 = a.this;
            long j10 = this.f30159a;
            w.a().a(new c(j10), j10);
        }
    }

    public a(Context context, boolean z10) {
        this.f30148a = context;
        this.f30151d = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ee A[Catch: all -> 0x016f, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:11:0x000f, B:15:0x0017, B:17:0x001d, B:21:0x0027, B:23:0x003c, B:26:0x0045, B:28:0x004c, B:29:0x004f, B:31:0x0055, B:33:0x0069, B:34:0x0079, B:38:0x0081, B:39:0x008b, B:40:0x0090, B:42:0x0096, B:44:0x00a4, B:46:0x00b1, B:47:0x00b4, B:49:0x00c2, B:55:0x00cc, B:58:0x00d3, B:61:0x00e8, B:63:0x00ee, B:65:0x00f3, B:68:0x00fa, B:72:0x0112, B:74:0x0118, B:77:0x0121, B:79:0x0127, B:82:0x0130, B:84:0x013a, B:87:0x0143, B:91:0x0161, B:94:0x0166, B:59:0x00e2), top: B:100:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0118 A[Catch: all -> 0x016f, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:11:0x000f, B:15:0x0017, B:17:0x001d, B:21:0x0027, B:23:0x003c, B:26:0x0045, B:28:0x004c, B:29:0x004f, B:31:0x0055, B:33:0x0069, B:34:0x0079, B:38:0x0081, B:39:0x008b, B:40:0x0090, B:42:0x0096, B:44:0x00a4, B:46:0x00b1, B:47:0x00b4, B:49:0x00c2, B:55:0x00cc, B:58:0x00d3, B:61:0x00e8, B:63:0x00ee, B:65:0x00f3, B:68:0x00fa, B:72:0x0112, B:74:0x0118, B:77:0x0121, B:79:0x0127, B:82:0x0130, B:84:0x013a, B:87:0x0143, B:91:0x0161, B:94:0x0166, B:59:0x00e2), top: B:100:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0121 A[Catch: all -> 0x016f, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:11:0x000f, B:15:0x0017, B:17:0x001d, B:21:0x0027, B:23:0x003c, B:26:0x0045, B:28:0x004c, B:29:0x004f, B:31:0x0055, B:33:0x0069, B:34:0x0079, B:38:0x0081, B:39:0x008b, B:40:0x0090, B:42:0x0096, B:44:0x00a4, B:46:0x00b1, B:47:0x00b4, B:49:0x00c2, B:55:0x00cc, B:58:0x00d3, B:61:0x00e8, B:63:0x00ee, B:65:0x00f3, B:68:0x00fa, B:72:0x0112, B:74:0x0118, B:77:0x0121, B:79:0x0127, B:82:0x0130, B:84:0x013a, B:87:0x0143, B:91:0x0161, B:94:0x0166, B:59:0x00e2), top: B:100:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void c() {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.biz.a.c():void");
    }

    static /* synthetic */ void a(a aVar, UserInfoBean userInfoBean, boolean z10) {
        List<UserInfoBean> a10;
        if (userInfoBean != null) {
            if (!z10 && userInfoBean.f30130b != 1 && (a10 = aVar.a(com.tencent.bugly.crashreport.common.info.a.a(aVar.f30148a).f30195d)) != null && a10.size() >= 20) {
                x.a("[UserInfo] There are too many user info in local: %d", Integer.valueOf(a10.size()));
                return;
            }
            long a11 = p.a().a("t_ui", a(userInfoBean), (o) null, true);
            if (a11 >= 0) {
                x.c("[Database] insert %s success with ID: %d", "t_ui", Long.valueOf(a11));
                userInfoBean.f30129a = a11;
            }
        }
    }

    public final void b() {
        w a10 = w.a();
        if (a10 != null) {
            a10.a(new AnonymousClass2());
        }
    }

    public final void a(int i9, boolean z10, long j10) {
        com.tencent.bugly.crashreport.common.strategy.a a10 = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (a10 != null && !a10.c().f30226f && i9 != 1 && i9 != 3) {
            x.e("UserInfo is disable", new Object[0]);
            return;
        }
        if (i9 == 1 || i9 == 3) {
            this.f30150c++;
        }
        com.tencent.bugly.crashreport.common.info.a a11 = com.tencent.bugly.crashreport.common.info.a.a(this.f30148a);
        UserInfoBean userInfoBean = new UserInfoBean();
        userInfoBean.f30130b = i9;
        userInfoBean.f30131c = a11.f30195d;
        userInfoBean.f30132d = a11.g();
        userInfoBean.f30133e = System.currentTimeMillis();
        userInfoBean.f30134f = -1L;
        userInfoBean.f30142n = a11.f30201j;
        userInfoBean.f30143o = i9 == 1 ? 1 : 0;
        userInfoBean.f30140l = a11.a();
        userInfoBean.f30141m = a11.f30207p;
        userInfoBean.f30135g = a11.f30208q;
        userInfoBean.f30136h = a11.f30209r;
        userInfoBean.f30137i = a11.f30210s;
        userInfoBean.f30139k = a11.f30211t;
        userInfoBean.f30146r = a11.u();
        userInfoBean.f30147s = a11.z();
        userInfoBean.f30144p = a11.A();
        userInfoBean.f30145q = a11.B();
        w.a().a(new RunnableC0303a(userInfoBean, z10), 0L);
    }

    public final void a() {
        this.f30149b = z.b() + 86400000;
        w.a().a(new b(), (this.f30149b - System.currentTimeMillis()) + 5000);
    }

    public final List<UserInfoBean> a(String str) {
        Cursor cursor;
        String str2;
        try {
            if (z.a(str)) {
                str2 = null;
            } else {
                str2 = "_pc = '" + str + "'";
            }
            cursor = p.a().a("t_ui", null, str2, null, null, true);
            if (cursor == null) {
                return null;
            }
            try {
                StringBuilder sb2 = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    UserInfoBean a10 = a(cursor);
                    if (a10 != null) {
                        arrayList.add(a10);
                    } else {
                        long j10 = cursor.getLong(cursor.getColumnIndex("_id"));
                        sb2.append(" or _id");
                        sb2.append(" = ");
                        sb2.append(j10);
                    }
                }
                String sb3 = sb2.toString();
                if (sb3.length() > 0) {
                    x.d("[Database] deleted %s error data %d", "t_ui", Integer.valueOf(p.a().a("t_ui", sb3.substring(4), (String[]) null, (o) null, true)));
                }
                cursor.close();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                try {
                    if (!x.a(th)) {
                        th.printStackTrace();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    private static void a(List<UserInfoBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < list.size() && i9 < 50; i9++) {
            sb2.append(" or _id");
            sb2.append(" = ");
            sb2.append(list.get(i9).f30129a);
        }
        String sb3 = sb2.toString();
        if (sb3.length() > 0) {
            sb3 = sb3.substring(4);
        }
        String str = sb3;
        sb2.setLength(0);
        try {
            x.c("[Database] deleted %s data %d", "t_ui", Integer.valueOf(p.a().a("t_ui", str, (String[]) null, (o) null, true)));
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return;
            }
            th2.printStackTrace();
        }
    }

    private static ContentValues a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j10 = userInfoBean.f30129a;
            if (j10 > 0) {
                contentValues.put("_id", Long.valueOf(j10));
            }
            contentValues.put("_tm", Long.valueOf(userInfoBean.f30133e));
            contentValues.put("_ut", Long.valueOf(userInfoBean.f30134f));
            contentValues.put("_tp", Integer.valueOf(userInfoBean.f30130b));
            contentValues.put("_pc", userInfoBean.f30131c);
            contentValues.put("_dt", z.a(userInfoBean));
            return contentValues;
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }

    private static UserInfoBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j10 = cursor.getLong(cursor.getColumnIndex("_id"));
            UserInfoBean userInfoBean = (UserInfoBean) z.a(blob, UserInfoBean.CREATOR);
            if (userInfoBean != null) {
                userInfoBean.f30129a = j10;
            }
            return userInfoBean;
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }
}

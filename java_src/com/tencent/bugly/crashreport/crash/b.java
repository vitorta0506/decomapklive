package com.tencent.bugly.crashreport.crash;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.ah;
import com.tencent.bugly.proguard.aj;
import com.tencent.bugly.proguard.ak;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.r;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static int f30327a;

    /* renamed from: b  reason: collision with root package name */
    private Context f30328b;

    /* renamed from: c  reason: collision with root package name */
    private u f30329c;

    /* renamed from: d  reason: collision with root package name */
    private p f30330d;

    /* renamed from: e  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.strategy.a f30331e;

    /* renamed from: f  reason: collision with root package name */
    private o f30332f;

    /* renamed from: g  reason: collision with root package name */
    private BuglyStrategy.a f30333g;

    public b(int i9, Context context, u uVar, p pVar, com.tencent.bugly.crashreport.common.strategy.a aVar, BuglyStrategy.a aVar2, o oVar) {
        f30327a = i9;
        this.f30328b = context;
        this.f30329c = uVar;
        this.f30330d = pVar;
        this.f30331e = aVar;
        this.f30333g = aVar2;
        this.f30332f = oVar;
    }

    private static List<a> a(List<a> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (a aVar : list) {
            if (aVar.f30288d && aVar.f30286b <= currentTimeMillis - 86400000) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private static ContentValues f(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j10 = crashDetailBean.f30259a;
            if (j10 > 0) {
                contentValues.put("_id", Long.valueOf(j10));
            }
            contentValues.put("_tm", Long.valueOf(crashDetailBean.f30276r));
            contentValues.put("_s1", crashDetailBean.f30279u);
            int i9 = 1;
            contentValues.put("_up", Integer.valueOf(crashDetailBean.f30262d ? 1 : 0));
            if (!crashDetailBean.f30268j) {
                i9 = 0;
            }
            contentValues.put("_me", Integer.valueOf(i9));
            contentValues.put("_uc", Integer.valueOf(crashDetailBean.f30270l));
            contentValues.put("_dt", z.a(crashDetailBean));
            return contentValues;
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }

    public final boolean b(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return true;
        }
        String str = c.f30349n;
        if (str != null && !str.isEmpty()) {
            x.c("Crash filter for crash stack is: %s", c.f30349n);
            if (crashDetailBean.f30275q.contains(c.f30349n)) {
                x.d("This crash contains the filter string set. It will not be record and upload.", new Object[0]);
                return true;
            }
        }
        String str2 = c.f30350o;
        if (str2 != null && !str2.isEmpty()) {
            x.c("Crash regular filter for crash stack is: %s", c.f30350o);
            if (Pattern.compile(c.f30350o).matcher(crashDetailBean.f30275q).find()) {
                x.d("This crash matches the regular filter string set. It will not be record and upload.", new Object[0]);
                return true;
            }
        }
        if (crashDetailBean.f30260b != 2) {
            r rVar = new r();
            rVar.f30629b = 1;
            rVar.f30630c = crashDetailBean.A;
            rVar.f30631d = crashDetailBean.B;
            rVar.f30632e = crashDetailBean.f30276r;
            this.f30330d.b(1);
            this.f30330d.a(rVar);
            x.b("[crash] a crash occur, handling...", new Object[0]);
        } else {
            x.b("[crash] a caught exception occur, handling...", new Object[0]);
        }
        List<a> b10 = b();
        ArrayList arrayList = null;
        if (b10 != null && b10.size() > 0) {
            arrayList = new ArrayList(10);
            ArrayList arrayList2 = new ArrayList(10);
            arrayList.addAll(a(b10));
            b10.removeAll(arrayList);
            if (b10.size() > 20) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("_id in ");
                sb2.append("(");
                sb2.append("SELECT _id");
                sb2.append(" FROM t_cr");
                sb2.append(" order by _id");
                sb2.append(" limit 5");
                sb2.append(")");
                String sb3 = sb2.toString();
                sb2.setLength(0);
                try {
                    x.c("deleted first record %s data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb3, (String[]) null, (o) null, true)));
                } catch (Throwable th2) {
                    if (!x.a(th2)) {
                        th2.printStackTrace();
                    }
                }
            }
            int i9 = crashDetailBean.f30260b;
            if (!com.tencent.bugly.b.f30123c && (!((i9 == 3) || (i9 == 0 || i9 == 1)) || c.f30339d)) {
                boolean z10 = false;
                for (a aVar : b10) {
                    if (crashDetailBean.f30279u.equals(aVar.f30287c)) {
                        if (aVar.f30289e) {
                            z10 = true;
                        }
                        arrayList2.add(aVar);
                    }
                }
                if (z10 || arrayList2.size() >= c.f30338c) {
                    x.a("same crash occur too much do merged!", new Object[0]);
                    CrashDetailBean a10 = a(arrayList2, crashDetailBean);
                    for (a aVar2 : arrayList2) {
                        if (aVar2.f30285a != a10.f30259a) {
                            arrayList.add(aVar2);
                        }
                    }
                    e(a10);
                    c(arrayList);
                    x.b("[crash] save crash success. For this device crash many times, it will not upload crashes immediately", new Object[0]);
                    return true;
                }
            }
        }
        e(crashDetailBean);
        if (arrayList != null && !arrayList.isEmpty()) {
            c(arrayList);
        }
        x.b("[crash] save crash success", new Object[0]);
        return false;
    }

    public final void c(CrashDetailBean crashDetailBean) {
        int i9 = crashDetailBean.f30260b;
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 == 3 && !c.a().r()) {
                    return;
                }
            } else if (!c.a().q()) {
                return;
            }
        } else if (!c.a().q()) {
            return;
        }
        if (this.f30332f != null) {
            x.c("Calling 'onCrashHandleEnd' of RQD crash listener.", new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a7 A[Catch: all -> 0x01dc, TryCatch #0 {all -> 0x01dc, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a7, B:48:0x00ad, B:49:0x00c0, B:51:0x00c6, B:53:0x00d8, B:55:0x00e6, B:56:0x00f9, B:58:0x0105, B:60:0x0111, B:62:0x0148, B:61:0x0136, B:63:0x0162, B:65:0x016d, B:69:0x0192, B:71:0x0196, B:73:0x0199, B:74:0x01b3, B:75:0x01c1, B:77:0x01c5, B:79:0x01d4, B:66:0x017b, B:68:0x017f, B:40:0x0089, B:42:0x008d, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c6 A[Catch: all -> 0x01dc, TryCatch #0 {all -> 0x01dc, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a7, B:48:0x00ad, B:49:0x00c0, B:51:0x00c6, B:53:0x00d8, B:55:0x00e6, B:56:0x00f9, B:58:0x0105, B:60:0x0111, B:62:0x0148, B:61:0x0136, B:63:0x0162, B:65:0x016d, B:69:0x0192, B:71:0x0196, B:73:0x0199, B:74:0x01b3, B:75:0x01c1, B:77:0x01c5, B:79:0x01d4, B:66:0x017b, B:68:0x017f, B:40:0x0089, B:42:0x008d, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016d A[Catch: all -> 0x01dc, TryCatch #0 {all -> 0x01dc, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a7, B:48:0x00ad, B:49:0x00c0, B:51:0x00c6, B:53:0x00d8, B:55:0x00e6, B:56:0x00f9, B:58:0x0105, B:60:0x0111, B:62:0x0148, B:61:0x0136, B:63:0x0162, B:65:0x016d, B:69:0x0192, B:71:0x0196, B:73:0x0199, B:74:0x01b3, B:75:0x01c1, B:77:0x01c5, B:79:0x01d4, B:66:0x017b, B:68:0x017f, B:40:0x0089, B:42:0x008d, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017b A[Catch: all -> 0x01dc, TryCatch #0 {all -> 0x01dc, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a7, B:48:0x00ad, B:49:0x00c0, B:51:0x00c6, B:53:0x00d8, B:55:0x00e6, B:56:0x00f9, B:58:0x0105, B:60:0x0111, B:62:0x0148, B:61:0x0136, B:63:0x0162, B:65:0x016d, B:69:0x0192, B:71:0x0196, B:73:0x0199, B:74:0x01b3, B:75:0x01c1, B:77:0x01c5, B:79:0x01d4, B:66:0x017b, B:68:0x017f, B:40:0x0089, B:42:0x008d, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0196 A[Catch: all -> 0x01dc, TryCatch #0 {all -> 0x01dc, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a7, B:48:0x00ad, B:49:0x00c0, B:51:0x00c6, B:53:0x00d8, B:55:0x00e6, B:56:0x00f9, B:58:0x0105, B:60:0x0111, B:62:0x0148, B:61:0x0136, B:63:0x0162, B:65:0x016d, B:69:0x0192, B:71:0x0196, B:73:0x0199, B:74:0x01b3, B:75:0x01c1, B:77:0x01c5, B:79:0x01d4, B:66:0x017b, B:68:0x017f, B:40:0x0089, B:42:0x008d, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01c5 A[Catch: all -> 0x01dc, TryCatch #0 {all -> 0x01dc, blocks: (B:10:0x000e, B:11:0x0011, B:35:0x0062, B:37:0x0067, B:39:0x007d, B:46:0x00a7, B:48:0x00ad, B:49:0x00c0, B:51:0x00c6, B:53:0x00d8, B:55:0x00e6, B:56:0x00f9, B:58:0x0105, B:60:0x0111, B:62:0x0148, B:61:0x0136, B:63:0x0162, B:65:0x016d, B:69:0x0192, B:71:0x0196, B:73:0x0199, B:74:0x01b3, B:75:0x01c1, B:77:0x01c5, B:79:0x01d4, B:66:0x017b, B:68:0x017f, B:40:0x0089, B:42:0x008d, B:14:0x0017, B:17:0x0023, B:20:0x002f, B:23:0x003b, B:27:0x0049, B:31:0x0056), top: B:86:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(com.tencent.bugly.crashreport.crash.CrashDetailBean r13) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.b.d(com.tencent.bugly.crashreport.crash.CrashDetailBean):void");
    }

    public final void e(CrashDetailBean crashDetailBean) {
        ContentValues f10;
        if (crashDetailBean == null || (f10 = f(crashDetailBean)) == null) {
            return;
        }
        long a10 = p.a().a("t_cr", f10, (o) null, true);
        if (a10 >= 0) {
            x.c("insert %s success!", "t_cr");
            crashDetailBean.f30259a = a10;
        }
    }

    private static void c(List<a> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("_id in ");
        sb2.append("(");
        for (a aVar : list) {
            sb2.append(aVar.f30285a);
            sb2.append(",");
        }
        StringBuilder sb3 = new StringBuilder(sb2.substring(0, sb2.lastIndexOf(",")));
        sb3.append(")");
        String sb4 = sb3.toString();
        sb3.setLength(0);
        try {
            x.c("deleted %s data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb4, (String[]) null, (o) null, true)));
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return;
            }
            th2.printStackTrace();
        }
    }

    private CrashDetailBean a(List<a> list, CrashDetailBean crashDetailBean) {
        List<CrashDetailBean> b10;
        String[] split;
        if (list == null || list.size() == 0) {
            return crashDetailBean;
        }
        CrashDetailBean crashDetailBean2 = null;
        ArrayList arrayList = new ArrayList(10);
        for (a aVar : list) {
            if (aVar.f30289e) {
                arrayList.add(aVar);
            }
        }
        if (arrayList.size() > 0 && (b10 = b(arrayList)) != null && b10.size() > 0) {
            Collections.sort(b10);
            for (int i9 = 0; i9 < b10.size(); i9++) {
                CrashDetailBean crashDetailBean3 = b10.get(i9);
                if (i9 == 0) {
                    crashDetailBean2 = crashDetailBean3;
                } else {
                    String str = crashDetailBean3.f30277s;
                    if (str != null && (split = str.split(IOUtils.LINE_SEPARATOR_UNIX)) != null) {
                        for (String str2 : split) {
                            if (!crashDetailBean2.f30277s.contains(str2)) {
                                crashDetailBean2.f30278t++;
                                crashDetailBean2.f30277s += str2 + IOUtils.LINE_SEPARATOR_UNIX;
                            }
                        }
                    }
                }
            }
        }
        if (crashDetailBean2 == null) {
            crashDetailBean.f30268j = true;
            crashDetailBean.f30278t = 0;
            crashDetailBean.f30277s = "";
            crashDetailBean2 = crashDetailBean;
        }
        for (a aVar2 : list) {
            if (!aVar2.f30289e && !aVar2.f30288d) {
                String str3 = crashDetailBean2.f30277s;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(aVar2.f30286b);
                if (!str3.contains(sb2.toString())) {
                    crashDetailBean2.f30278t++;
                    crashDetailBean2.f30277s += aVar2.f30286b + IOUtils.LINE_SEPARATOR_UNIX;
                }
            }
        }
        if (crashDetailBean2.f30276r != crashDetailBean.f30276r) {
            String str4 = crashDetailBean2.f30277s;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(crashDetailBean.f30276r);
            if (!str4.contains(sb3.toString())) {
                crashDetailBean2.f30278t++;
                crashDetailBean2.f30277s += crashDetailBean.f30276r + IOUtils.LINE_SEPARATOR_UNIX;
            }
        }
        return crashDetailBean2;
    }

    public final boolean a(CrashDetailBean crashDetailBean) {
        return b(crashDetailBean);
    }

    public final List<CrashDetailBean> a() {
        StrategyBean c10 = com.tencent.bugly.crashreport.common.strategy.a.a().c();
        if (c10 == null) {
            x.d("have not synced remote!", new Object[0]);
            return null;
        } else if (!c10.f30225e) {
            x.d("Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            x.b("[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            return null;
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            long b10 = z.b();
            List<a> b11 = b();
            x.c("Size of crash list loaded from DB: %s", Integer.valueOf(b11.size()));
            if (b11.size() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(a(b11));
            b11.removeAll(arrayList);
            Iterator<a> it = b11.iterator();
            while (it.hasNext()) {
                a next = it.next();
                long j10 = next.f30286b;
                if (j10 < b10 - c.f30342g) {
                    it.remove();
                    arrayList.add(next);
                } else if (next.f30288d) {
                    if (j10 >= currentTimeMillis - 86400000) {
                        it.remove();
                    } else if (!next.f30289e) {
                        it.remove();
                        arrayList.add(next);
                    }
                } else if (next.f30290f >= 3 && j10 < currentTimeMillis - 86400000) {
                    it.remove();
                    arrayList.add(next);
                }
            }
            if (arrayList.size() > 0) {
                c(arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            List<CrashDetailBean> b12 = b(b11);
            if (b12 != null && b12.size() > 0) {
                String str = com.tencent.bugly.crashreport.common.info.a.b().f30201j;
                Iterator<CrashDetailBean> it2 = b12.iterator();
                while (it2.hasNext()) {
                    CrashDetailBean next2 = it2.next();
                    if (!str.equals(next2.f30264f)) {
                        it2.remove();
                        arrayList2.add(next2);
                    }
                }
            }
            if (arrayList2.size() > 0) {
                d(arrayList2);
            }
            return b12;
        }
    }

    private List<CrashDetailBean> b(List<a> list) {
        Cursor cursor;
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("_id in ");
        sb2.append("(");
        for (a aVar : list) {
            sb2.append(aVar.f30285a);
            sb2.append(",");
        }
        if (sb2.toString().contains(",")) {
            sb2 = new StringBuilder(sb2.substring(0, sb2.lastIndexOf(",")));
        }
        sb2.append(")");
        String sb3 = sb2.toString();
        sb2.setLength(0);
        try {
            cursor = p.a().a("t_cr", null, sb3, null, null, true);
            if (cursor == null) {
                return null;
            }
            try {
                ArrayList arrayList = new ArrayList();
                sb2.append("_id in ");
                sb2.append("(");
                int i9 = 0;
                while (cursor.moveToNext()) {
                    CrashDetailBean a10 = a(cursor);
                    if (a10 != null) {
                        arrayList.add(a10);
                    } else {
                        sb2.append(cursor.getLong(cursor.getColumnIndex("_id")));
                        sb2.append(",");
                        i9++;
                    }
                }
                if (sb2.toString().contains(",")) {
                    sb2 = new StringBuilder(sb2.substring(0, sb2.lastIndexOf(",")));
                }
                sb2.append(")");
                String sb4 = sb2.toString();
                if (i9 > 0) {
                    x.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb4, (String[]) null, (o) null, true)));
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

    private static void d(List<CrashDetailBean> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                for (CrashDetailBean crashDetailBean : list) {
                    sb2.append(" or _id");
                    sb2.append(" = ");
                    sb2.append(crashDetailBean.f30259a);
                }
                String sb3 = sb2.toString();
                if (sb3.length() > 0) {
                    sb3 = sb3.substring(4);
                }
                sb2.setLength(0);
                x.c("deleted %s data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb3, (String[]) null, (o) null, true)));
            } catch (Throwable th2) {
                if (x.a(th2)) {
                    return;
                }
                th2.printStackTrace();
            }
        }
    }

    private static a b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            a aVar = new a();
            aVar.f30285a = cursor.getLong(cursor.getColumnIndex("_id"));
            aVar.f30286b = cursor.getLong(cursor.getColumnIndex("_tm"));
            aVar.f30287c = cursor.getString(cursor.getColumnIndex("_s1"));
            aVar.f30288d = cursor.getInt(cursor.getColumnIndex("_up")) == 1;
            aVar.f30289e = cursor.getInt(cursor.getColumnIndex("_me")) == 1;
            aVar.f30290f = cursor.getInt(cursor.getColumnIndex("_uc"));
            return aVar;
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }

    public final void a(CrashDetailBean crashDetailBean, long j10, boolean z10) {
        if (c.f30347l) {
            x.a("try to upload right now", new Object[0]);
            ArrayList arrayList = new ArrayList();
            arrayList.add(crashDetailBean);
            a(arrayList, 3000L, z10, crashDetailBean.f30260b == 7, z10);
            return;
        }
        x.a("do not upload spot crash right now, crash would be uploaded when app next start", new Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x009e A[Catch: all -> 0x00e2, TryCatch #0 {all -> 0x00e2, blocks: (B:23:0x0059, B:25:0x0065, B:29:0x006e, B:30:0x007e, B:32:0x0084, B:35:0x009e, B:37:0x00a6, B:39:0x00ac, B:41:0x00b4, B:43:0x00be, B:45:0x00c6, B:47:0x00cd, B:48:0x00d9, B:33:0x0094), top: B:57:0x0059 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a6 A[Catch: all -> 0x00e2, TryCatch #0 {all -> 0x00e2, blocks: (B:23:0x0059, B:25:0x0065, B:29:0x006e, B:30:0x007e, B:32:0x0084, B:35:0x009e, B:37:0x00a6, B:39:0x00ac, B:41:0x00b4, B:43:0x00be, B:45:0x00c6, B:47:0x00cd, B:48:0x00d9, B:33:0x0094), top: B:57:0x0059 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(final java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> r15, long r16, boolean r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.b.a(java.util.List, long, boolean, boolean, boolean):void");
    }

    private List<a> b() {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor a10 = p.a().a("t_cr", new String[]{"_id", "_tm", "_s1", "_up", "_me", "_uc"}, null, null, null, true);
            if (a10 == null) {
                if (a10 != null) {
                    a10.close();
                }
                return null;
            }
            try {
                if (a10.getCount() <= 0) {
                    a10.close();
                    return arrayList;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("_id in ");
                sb2.append("(");
                int i9 = 0;
                while (a10.moveToNext()) {
                    a b10 = b(a10);
                    if (b10 != null) {
                        arrayList.add(b10);
                    } else {
                        sb2.append(a10.getLong(a10.getColumnIndex("_id")));
                        sb2.append(",");
                        i9++;
                    }
                }
                if (sb2.toString().contains(",")) {
                    sb2 = new StringBuilder(sb2.substring(0, sb2.lastIndexOf(",")));
                }
                sb2.append(")");
                String sb3 = sb2.toString();
                sb2.setLength(0);
                if (i9 > 0) {
                    x.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb3, (String[]) null, (o) null, true)));
                }
                a10.close();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursor = a10;
                try {
                    if (!x.a(th)) {
                        th.printStackTrace();
                    }
                    return arrayList;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void a(boolean z10, List<CrashDetailBean> list) {
        if (list != null && list.size() > 0) {
            x.c("up finish update state %b", Boolean.valueOf(z10));
            for (CrashDetailBean crashDetailBean : list) {
                x.c("pre uid:%s uc:%d re:%b me:%b", crashDetailBean.f30261c, Integer.valueOf(crashDetailBean.f30270l), Boolean.valueOf(crashDetailBean.f30262d), Boolean.valueOf(crashDetailBean.f30268j));
                int i9 = crashDetailBean.f30270l + 1;
                crashDetailBean.f30270l = i9;
                crashDetailBean.f30262d = z10;
                x.c("set uid:%s uc:%d re:%b me:%b", crashDetailBean.f30261c, Integer.valueOf(i9), Boolean.valueOf(crashDetailBean.f30262d), Boolean.valueOf(crashDetailBean.f30268j));
            }
            for (CrashDetailBean crashDetailBean2 : list) {
                c.a().a(crashDetailBean2);
            }
            x.c("update state size %d", Integer.valueOf(list.size()));
        }
        if (z10) {
            return;
        }
        x.b("[crash] upload fail.", new Object[0]);
    }

    private static CrashDetailBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j10 = cursor.getLong(cursor.getColumnIndex("_id"));
            CrashDetailBean crashDetailBean = (CrashDetailBean) z.a(blob, CrashDetailBean.CREATOR);
            if (crashDetailBean != null) {
                crashDetailBean.f30259a = j10;
            }
            return crashDetailBean;
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }

    private static ak a(Context context, CrashDetailBean crashDetailBean, com.tencent.bugly.crashreport.common.info.a aVar) {
        aj a10;
        aj a11;
        aj ajVar;
        if (context != null && crashDetailBean != null && aVar != null) {
            ak akVar = new ak();
            int i9 = crashDetailBean.f30260b;
            switch (i9) {
                case 0:
                    akVar.f30465a = crashDetailBean.f30268j ? BasicPushStatus.SUCCESS_CODE : "100";
                    break;
                case 1:
                    akVar.f30465a = crashDetailBean.f30268j ? "201" : "101";
                    break;
                case 2:
                    akVar.f30465a = crashDetailBean.f30268j ? "202" : "102";
                    break;
                case 3:
                    akVar.f30465a = crashDetailBean.f30268j ? "203" : "103";
                    break;
                case 4:
                    akVar.f30465a = crashDetailBean.f30268j ? "204" : "104";
                    break;
                case 5:
                    akVar.f30465a = crashDetailBean.f30268j ? "207" : "107";
                    break;
                case 6:
                    akVar.f30465a = crashDetailBean.f30268j ? "206" : "106";
                    break;
                case 7:
                    akVar.f30465a = crashDetailBean.f30268j ? "208" : "108";
                    break;
                default:
                    x.e("crash type error! %d", Integer.valueOf(i9));
                    break;
            }
            akVar.f30466b = crashDetailBean.f30276r;
            akVar.f30467c = crashDetailBean.f30272n;
            akVar.f30468d = crashDetailBean.f30273o;
            akVar.f30469e = crashDetailBean.f30274p;
            akVar.f30471g = crashDetailBean.f30275q;
            akVar.f30472h = crashDetailBean.f30284z;
            akVar.f30473i = crashDetailBean.f30261c;
            akVar.f30474j = null;
            akVar.f30476l = crashDetailBean.f30271m;
            akVar.f30477m = crashDetailBean.f30263e;
            akVar.f30470f = crashDetailBean.B;
            akVar.f30478n = null;
            x.c("libInfo %s", akVar.f30479o);
            Map<String, PlugInBean> map = crashDetailBean.f30266h;
            if (map != null && map.size() > 0) {
                akVar.f30480p = new ArrayList<>();
                for (Map.Entry<String, PlugInBean> entry : crashDetailBean.f30266h.entrySet()) {
                    ah ahVar = new ah();
                    ahVar.f30448a = entry.getValue().f30177a;
                    ahVar.f30449b = entry.getValue().f30179c;
                    ahVar.f30450c = entry.getValue().f30178b;
                    akVar.f30480p.add(ahVar);
                }
            }
            if (crashDetailBean.f30268j) {
                akVar.f30475k = crashDetailBean.f30278t;
                String str = crashDetailBean.f30277s;
                if (str != null && str.length() > 0) {
                    if (akVar.f30481q == null) {
                        akVar.f30481q = new ArrayList<>();
                    }
                    try {
                        akVar.f30481q.add(new aj((byte) 1, "alltimes.txt", crashDetailBean.f30277s.getBytes("utf-8")));
                    } catch (UnsupportedEncodingException e10) {
                        e10.printStackTrace();
                        akVar.f30481q = null;
                    }
                }
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(akVar.f30475k);
                ArrayList<aj> arrayList = akVar.f30481q;
                objArr[1] = Integer.valueOf(arrayList != null ? arrayList.size() : 0);
                x.c("crashcount:%d sz:%d", objArr);
            }
            if (crashDetailBean.f30281w != null) {
                if (akVar.f30481q == null) {
                    akVar.f30481q = new ArrayList<>();
                }
                try {
                    akVar.f30481q.add(new aj((byte) 1, "log.txt", crashDetailBean.f30281w.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e11) {
                    e11.printStackTrace();
                    akVar.f30481q = null;
                }
            }
            if (crashDetailBean.f30282x != null) {
                if (akVar.f30481q == null) {
                    akVar.f30481q = new ArrayList<>();
                }
                try {
                    akVar.f30481q.add(new aj((byte) 1, "jniLog.txt", crashDetailBean.f30282x.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e12) {
                    e12.printStackTrace();
                    akVar.f30481q = null;
                }
            }
            if (!z.a(crashDetailBean.V)) {
                if (akVar.f30481q == null) {
                    akVar.f30481q = new ArrayList<>();
                }
                try {
                    ajVar = new aj((byte) 1, "crashInfos.txt", crashDetailBean.V.getBytes("utf-8"));
                } catch (UnsupportedEncodingException e13) {
                    e13.printStackTrace();
                    ajVar = null;
                }
                if (ajVar != null) {
                    x.c("attach crash infos", new Object[0]);
                    akVar.f30481q.add(ajVar);
                }
            }
            if (crashDetailBean.W != null) {
                if (akVar.f30481q == null) {
                    akVar.f30481q = new ArrayList<>();
                }
                aj a12 = a("backupRecord.zip", context, crashDetailBean.W);
                if (a12 != null) {
                    x.c("attach backup record", new Object[0]);
                    akVar.f30481q.add(a12);
                }
            }
            byte[] bArr = crashDetailBean.f30283y;
            if (bArr != null && bArr.length > 0) {
                aj ajVar2 = new aj((byte) 2, "buglylog.zip", bArr);
                x.c("attach user log", new Object[0]);
                if (akVar.f30481q == null) {
                    akVar.f30481q = new ArrayList<>();
                }
                akVar.f30481q.add(ajVar2);
            }
            if (crashDetailBean.f30260b == 3) {
                if (akVar.f30481q == null) {
                    akVar.f30481q = new ArrayList<>();
                }
                x.c("crashBean.anrMessages:%s", crashDetailBean.P);
                Map<String, String> map2 = crashDetailBean.P;
                if (map2 != null && map2.containsKey("BUGLY_CR_01")) {
                    try {
                        if (!TextUtils.isEmpty(crashDetailBean.P.get("BUGLY_CR_01"))) {
                            akVar.f30481q.add(new aj((byte) 1, "anrMessage.txt", crashDetailBean.P.get("BUGLY_CR_01").getBytes("utf-8")));
                            x.c("attach anr message", new Object[0]);
                        }
                    } catch (UnsupportedEncodingException e14) {
                        e14.printStackTrace();
                        akVar.f30481q = null;
                    }
                    crashDetailBean.P.remove("BUGLY_CR_01");
                }
                if (crashDetailBean.f30280v != null && NativeCrashHandler.getInstance().isEnableCatchAnrTrace() && (a11 = a("trace.zip", context, crashDetailBean.f30280v)) != null) {
                    x.c("attach traces", new Object[0]);
                    akVar.f30481q.add(a11);
                }
            }
            if (crashDetailBean.f30260b == 1) {
                if (akVar.f30481q == null) {
                    akVar.f30481q = new ArrayList<>();
                }
                String str2 = crashDetailBean.f30280v;
                if (str2 != null && (a10 = a("tomb.zip", context, str2)) != null) {
                    x.c("attach tombs", new Object[0]);
                    akVar.f30481q.add(a10);
                }
            }
            List<String> list = aVar.C;
            if (list != null && !list.isEmpty()) {
                if (akVar.f30481q == null) {
                    akVar.f30481q = new ArrayList<>();
                }
                StringBuilder sb2 = new StringBuilder();
                for (String str3 : aVar.C) {
                    sb2.append(str3);
                }
                try {
                    akVar.f30481q.add(new aj((byte) 1, "martianlog.txt", sb2.toString().getBytes("utf-8")));
                    x.c("attach pageTracingList", new Object[0]);
                } catch (UnsupportedEncodingException e15) {
                    e15.printStackTrace();
                }
            }
            byte[] bArr2 = crashDetailBean.U;
            if (bArr2 != null && bArr2.length > 0) {
                if (akVar.f30481q == null) {
                    akVar.f30481q = new ArrayList<>();
                }
                akVar.f30481q.add(new aj((byte) 1, "userExtraByteData", crashDetailBean.U));
                x.c("attach extraData", new Object[0]);
            }
            HashMap hashMap = new HashMap();
            akVar.f30482r = hashMap;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(crashDetailBean.C);
            hashMap.put("A9", sb3.toString());
            Map<String, String> map3 = akVar.f30482r;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(crashDetailBean.D);
            map3.put("A11", sb4.toString());
            Map<String, String> map4 = akVar.f30482r;
            StringBuilder sb5 = new StringBuilder();
            sb5.append(crashDetailBean.E);
            map4.put("A10", sb5.toString());
            akVar.f30482r.put("A23", crashDetailBean.f30264f);
            akVar.f30482r.put("A7", aVar.f30198g);
            akVar.f30482r.put("A6", aVar.o());
            akVar.f30482r.put("A5", aVar.n());
            akVar.f30482r.put("A22", aVar.h());
            Map<String, String> map5 = akVar.f30482r;
            StringBuilder sb6 = new StringBuilder();
            sb6.append(crashDetailBean.G);
            map5.put("A2", sb6.toString());
            Map<String, String> map6 = akVar.f30482r;
            StringBuilder sb7 = new StringBuilder();
            sb7.append(crashDetailBean.F);
            map6.put("A1", sb7.toString());
            akVar.f30482r.put("A24", aVar.f30199h);
            Map<String, String> map7 = akVar.f30482r;
            StringBuilder sb8 = new StringBuilder();
            sb8.append(crashDetailBean.H);
            map7.put("A17", sb8.toString());
            akVar.f30482r.put("A25", aVar.h());
            akVar.f30482r.put("A15", aVar.r());
            Map<String, String> map8 = akVar.f30482r;
            StringBuilder sb9 = new StringBuilder();
            sb9.append(aVar.s());
            map8.put("A13", sb9.toString());
            akVar.f30482r.put("A34", crashDetailBean.A);
            if (aVar.f30215x != null) {
                akVar.f30482r.put("productIdentify", aVar.f30215x);
            }
            try {
                akVar.f30482r.put("A26", URLEncoder.encode(crashDetailBean.I, "utf-8"));
            } catch (UnsupportedEncodingException e16) {
                e16.printStackTrace();
            }
            if (crashDetailBean.f30260b == 1) {
                akVar.f30482r.put("A27", crashDetailBean.K);
                akVar.f30482r.put("A28", crashDetailBean.J);
                Map<String, String> map9 = akVar.f30482r;
                StringBuilder sb10 = new StringBuilder();
                sb10.append(crashDetailBean.f30269k);
                map9.put("A29", sb10.toString());
            }
            akVar.f30482r.put("A30", crashDetailBean.L);
            Map<String, String> map10 = akVar.f30482r;
            StringBuilder sb11 = new StringBuilder();
            sb11.append(crashDetailBean.M);
            map10.put("A18", sb11.toString());
            Map<String, String> map11 = akVar.f30482r;
            StringBuilder sb12 = new StringBuilder();
            sb12.append(!crashDetailBean.N);
            map11.put("A36", sb12.toString());
            Map<String, String> map12 = akVar.f30482r;
            StringBuilder sb13 = new StringBuilder();
            sb13.append(aVar.f30208q);
            map12.put("F02", sb13.toString());
            Map<String, String> map13 = akVar.f30482r;
            StringBuilder sb14 = new StringBuilder();
            sb14.append(aVar.f30209r);
            map13.put("F03", sb14.toString());
            akVar.f30482r.put("F04", aVar.e());
            Map<String, String> map14 = akVar.f30482r;
            StringBuilder sb15 = new StringBuilder();
            sb15.append(aVar.f30210s);
            map14.put("F05", sb15.toString());
            akVar.f30482r.put("F06", aVar.f30207p);
            akVar.f30482r.put("F08", aVar.f30213v);
            akVar.f30482r.put("F09", aVar.f30214w);
            Map<String, String> map15 = akVar.f30482r;
            StringBuilder sb16 = new StringBuilder();
            sb16.append(aVar.f30211t);
            map15.put("F10", sb16.toString());
            if (crashDetailBean.Q >= 0) {
                Map<String, String> map16 = akVar.f30482r;
                StringBuilder sb17 = new StringBuilder();
                sb17.append(crashDetailBean.Q);
                map16.put("C01", sb17.toString());
            }
            if (crashDetailBean.R >= 0) {
                Map<String, String> map17 = akVar.f30482r;
                StringBuilder sb18 = new StringBuilder();
                sb18.append(crashDetailBean.R);
                map17.put("C02", sb18.toString());
            }
            Map<String, String> map18 = crashDetailBean.S;
            if (map18 != null && map18.size() > 0) {
                for (Map.Entry<String, String> entry2 : crashDetailBean.S.entrySet()) {
                    akVar.f30482r.put("C03_" + entry2.getKey(), entry2.getValue());
                }
            }
            Map<String, String> map19 = crashDetailBean.T;
            if (map19 != null && map19.size() > 0) {
                for (Map.Entry<String, String> entry3 : crashDetailBean.T.entrySet()) {
                    akVar.f30482r.put("C04_" + entry3.getKey(), entry3.getValue());
                }
            }
            akVar.f30483s = null;
            Map<String, String> map20 = crashDetailBean.O;
            if (map20 != null && map20.size() > 0) {
                Map<String, String> map21 = crashDetailBean.O;
                akVar.f30483s = map21;
                x.a("setted message size %d", Integer.valueOf(map21.size()));
            }
            Object[] objArr2 = new Object[12];
            objArr2[0] = crashDetailBean.f30272n;
            objArr2[1] = crashDetailBean.f30261c;
            objArr2[2] = aVar.e();
            objArr2[3] = Long.valueOf((crashDetailBean.f30276r - crashDetailBean.M) / 1000);
            objArr2[4] = Boolean.valueOf(crashDetailBean.f30269k);
            objArr2[5] = Boolean.valueOf(crashDetailBean.N);
            objArr2[6] = Boolean.valueOf(crashDetailBean.f30268j);
            objArr2[7] = Boolean.valueOf(crashDetailBean.f30260b == 1);
            objArr2[8] = Integer.valueOf(crashDetailBean.f30278t);
            objArr2[9] = crashDetailBean.f30277s;
            objArr2[10] = Boolean.valueOf(crashDetailBean.f30262d);
            objArr2[11] = Integer.valueOf(akVar.f30482r.size());
            x.c("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", objArr2);
            return akVar;
        }
        x.d("enExp args == null", new Object[0]);
        return null;
    }

    private static aj a(String str, Context context, String str2) {
        FileInputStream fileInputStream;
        if (str2 != null && context != null) {
            x.c("zip %s", str2);
            File file = new File(str2);
            File file2 = new File(context.getCacheDir(), str);
            if (!z.a(file, file2, 5000)) {
                x.d("zip fail!", new Object[0]);
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                fileInputStream = new FileInputStream(file2);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                        byteArrayOutputStream.flush();
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    x.c("read bytes :%d", Integer.valueOf(byteArray.length));
                    aj ajVar = new aj((byte) 2, file2.getName(), byteArray);
                    try {
                        fileInputStream.close();
                    } catch (IOException e10) {
                        if (!x.a(e10)) {
                            e10.printStackTrace();
                        }
                    }
                    if (file2.exists()) {
                        x.c("del tmp", new Object[0]);
                        file2.delete();
                    }
                    return ajVar;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        if (!x.a(th)) {
                            th.printStackTrace();
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e11) {
                                if (!x.a(e11)) {
                                    e11.printStackTrace();
                                }
                            }
                        }
                        if (file2.exists()) {
                            x.c("del tmp", new Object[0]);
                            file2.delete();
                        }
                        return null;
                    } catch (Throwable th3) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e12) {
                                if (!x.a(e12)) {
                                    e12.printStackTrace();
                                }
                            }
                        }
                        if (file2.exists()) {
                            x.c("del tmp", new Object[0]);
                            file2.delete();
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = null;
            }
        } else {
            x.d("rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}", new Object[0]);
            return null;
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5, CrashDetailBean crashDetailBean) {
        String str6;
        com.tencent.bugly.crashreport.common.info.a b10 = com.tencent.bugly.crashreport.common.info.a.b();
        if (b10 == null) {
            return;
        }
        x.e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
        x.e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
        x.e("# PKG NAME: %s", b10.f30194c);
        x.e("# APP VER: %s", b10.f30201j);
        x.e("# SDK VER: %s", b10.f30197f);
        x.e("# LAUNCH TIME: %s", z.a(new Date(com.tencent.bugly.crashreport.common.info.a.b().f30180a)));
        x.e("# CRASH TYPE: %s", str);
        x.e("# CRASH TIME: %s", str2);
        x.e("# CRASH PROCESS: %s", str3);
        x.e("# CRASH THREAD: %s", str4);
        if (crashDetailBean != null) {
            x.e("# REPORT ID: %s", crashDetailBean.f30261c);
            Object[] objArr = new Object[2];
            objArr[0] = b10.i();
            objArr[1] = b10.s().booleanValue() ? "ROOTED" : "UNROOT";
            x.e("# CRASH DEVICE: %s %s", objArr);
            x.e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.C), Long.valueOf(crashDetailBean.D), Long.valueOf(crashDetailBean.E));
            x.e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.F), Long.valueOf(crashDetailBean.G), Long.valueOf(crashDetailBean.H));
            if (!z.a(crashDetailBean.K)) {
                x.e("# EXCEPTION FIRED BY %s %s", crashDetailBean.K, crashDetailBean.J);
            } else if (crashDetailBean.f30260b == 3) {
                Object[] objArr2 = new Object[1];
                if (crashDetailBean.P == null) {
                    str6 = "null";
                } else {
                    str6 = crashDetailBean.P.get("BUGLY_CR_01");
                }
                objArr2[0] = str6;
                x.e("# EXCEPTION ANR MESSAGE:\n %s", objArr2);
            }
        }
        if (!z.a(str5)) {
            x.e("# CRASH STACK: ", new Object[0]);
            x.e(str5, new Object[0]);
        }
        x.e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
    }
}

package cn.jiguang.au;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.f.c;
import cn.jiguang.internal.ActionManager;
import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.io.File;
import java.io.FileFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f2105a;

    /* renamed from: b  reason: collision with root package name */
    private static String f2106b;

    /* renamed from: c  reason: collision with root package name */
    private static ConcurrentHashMap<File, Boolean> f2107c = new ConcurrentHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicBoolean f2108d = new AtomicBoolean(false);

    public static File a(Context context, String str) {
        return new File(e(context) + str + File.separator + UUID.randomUUID().toString());
    }

    public static File a(Context context, String str, JSONObject jSONObject, boolean z10) {
        File a10 = a(context, str);
        if (z10) {
            b(a10);
        }
        cn.jiguang.f.c.b(a10, jSONObject.toString());
        return a10;
    }

    public static FileFilter a() {
        return new FileFilter() { // from class: cn.jiguang.au.d.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return (file.getName().length() == 24 || file.getName().equals("0")) ? false : true;
            }
        };
    }

    public static void a(Context context) {
        c.a aVar = new c.a(false, true, "jpush_stat_history", 1);
        String e10 = cn.jiguang.d.a.e(context);
        File[] a10 = cn.jiguang.f.c.a(context.getFilesDir(), aVar, a());
        if (a10 != null) {
            for (File file : a10) {
                try {
                    cn.jiguang.f.c.e(new File(file, "nowrap"));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(file.getParent());
                    String str = File.separator;
                    sb2.append(str);
                    sb2.append(e10);
                    sb2.append(str);
                    sb2.append(file.getName());
                    File file2 = new File(sb2.toString());
                    if (!file2.getParentFile().exists()) {
                        file2.getParentFile().mkdirs();
                    }
                    file.renameTo(file2);
                } catch (Throwable th2) {
                    cn.jiguang.as.d.c("updateByAppKey", "e=" + th2);
                }
            }
        }
    }

    private static void a(Context context, File file) {
        if (((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.c())).longValue() == 0) {
            cn.jiguang.as.d.c("ReportHistory", "can't get uid, skip upload history");
            return;
        }
        File[] a10 = cn.jiguang.f.c.a(file, c.a.f2576a);
        if (a10 == null || a10.length == 0) {
            return;
        }
        LinkedList<File> linkedList = new LinkedList();
        for (File file2 : a10) {
            if (!Boolean.TRUE.equals(f2107c.get(file2))) {
                linkedList.add(file2);
            }
        }
        if (linkedList.isEmpty()) {
            return;
        }
        cn.jiguang.as.d.c("ReportHistory", "process space=" + e(file) + " history[" + linkedList.size() + "]");
        Collections.sort(linkedList, new Comparator<File>() { // from class: cn.jiguang.au.d.4
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(File file3, File file4) {
                int i9 = ((file3.lastModified() - file4.lastModified()) > 0L ? 1 : ((file3.lastModified() - file4.lastModified()) == 0L ? 0 : -1));
                if (i9 < 0) {
                    return 1;
                }
                return i9 == 0 ? 0 : -1;
            }
        });
        for (File file3 : linkedList) {
            try {
                JSONObject a11 = c.a(file3);
                if (a11 == null) {
                    cn.jiguang.f.c.a(file3);
                } else {
                    b(file3);
                    Set<String> a12 = f.a(a11);
                    cn.jiguang.as.d.c("ReportHistory", "report history types=" + a12);
                    if (f.a(context, a12, a11, file3, null) == -2) {
                        return;
                    }
                }
            } catch (Throwable th2) {
                cn.jiguang.as.d.g("ReportHistory", "upload e:" + th2);
            }
        }
    }

    public static void a(Context context, String... strArr) {
        FileFilter[] fileFilterArr;
        if (strArr == null || strArr.length == 0) {
            fileFilterArr = new FileFilter[1];
        } else {
            fileFilterArr = new FileFilter[strArr.length + 1];
            int i9 = 0;
            while (i9 < strArr.length) {
                int i10 = i9 + 1;
                fileFilterArr[i10] = c.a.a(strArr[i9]);
                i9 = i10;
            }
        }
        fileFilterArr[0] = new c.a(false, true, "jpush_stat_history", 1);
        File[] a10 = cn.jiguang.f.c.a(context.getFilesDir(), fileFilterArr);
        if (a10 != null) {
            for (File file : a10) {
                cn.jiguang.f.c.e(file);
            }
        }
    }

    public static void a(File file) {
        if (file != null) {
            f2107c.remove(file);
        }
    }

    private static Set<String> b() {
        HashSet hashSet = new HashSet();
        hashSet.add("uid");
        hashSet.add("app_key");
        hashSet.add(HiAnalyticsConstant.BI_KEY_SDK_VER);
        hashSet.add("channel");
        hashSet.add("app_version");
        JSONObject jSONObject = new JSONObject();
        ActionManager.getInstance().wrapSdkVersionInfo(jSONObject);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            hashSet.add(keys.next());
        }
        return hashSet;
    }

    public static void b(final Context context) {
        cn.jiguang.bg.b bVar;
        String str;
        if (f2108d.get()) {
            cn.jiguang.as.d.c("ReportHistory", "isRunning, no need report");
            return;
        }
        if (TextUtils.isEmpty(cn.jiguang.ar.d.b(context)) || !context.getPackageName().equals(cn.jiguang.f.a.a(context))) {
            bVar = new cn.jiguang.bg.b("ReportHistory#submitReportAll") { // from class: cn.jiguang.au.d.3
                @Override // cn.jiguang.bg.b
                public void a() {
                    d.f(context);
                }
            };
            str = "NORMAL_TASK";
        } else {
            bVar = new cn.jiguang.bg.b("ReportHistory#submitReportAll") { // from class: cn.jiguang.au.d.2
                @Override // cn.jiguang.bg.b
                public void a() {
                    d.f(context);
                }
            };
            str = "MAJOR_TASK";
        }
        cn.jiguang.bg.d.a(str, bVar);
    }

    private static void b(Context context, File file) {
        try {
            JSONObject a10 = f.a(context);
            if (cn.jiguang.f.d.c(a10)) {
                return;
            }
            File[] a11 = cn.jiguang.f.c.a(new File(file, "nowrap"), c.a.f2576a);
            if (a11 != null && a11.length != 0) {
                cn.jiguang.as.d.c("ReportHistory", "process space=" + e(file) + " nowrap[" + a11.length + "]");
                File file2 = new File(file, "tmp");
                c a12 = c.a(a11[0], a10);
                for (int i9 = 1; i9 < a11.length; i9++) {
                    c a13 = c.a(a11[i9], a10);
                    if (a13 != null) {
                        if (a12 != null && a12.a(a13, file2)) {
                        }
                        a12 = a13;
                    }
                }
                if (a12 != null) {
                    a12.a((c) null, file2);
                }
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("ReportHistory", "processNowrap e:" + th2);
        }
    }

    private static void b(File file) {
        if (file != null) {
            f2107c.put(file, Boolean.TRUE);
        }
    }

    private static void c(Context context, File file) {
        cn.jiguang.as.d.c("ReportHistory", "upload space=" + e(file));
        b(context, file);
        d(file);
        a(context, file);
        c(file);
    }

    private static void c(File file) {
        int i9 = 0;
        File[] a10 = cn.jiguang.f.c.a(file, c.a.f2576a);
        if (a10 == null || a10.length <= 1) {
            return;
        }
        List<File> asList = Arrays.asList(a10);
        Collections.sort(asList, new Comparator<File>() { // from class: cn.jiguang.au.d.5
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(File file2, File file3) {
                int i10 = ((file2.lastModified() - file3.lastModified()) > 0L ? 1 : ((file2.lastModified() - file3.lastModified()) == 0L ? 0 : -1));
                if (i10 < 0) {
                    return 1;
                }
                return i10 == 0 ? 0 : -1;
            }
        });
        for (File file2 : asList) {
            i9 = (int) (i9 + file2.length());
            if (i9 > 1048576) {
                cn.jiguang.f.c.a(file2);
            }
        }
        if (asList.size() < a10.length) {
            cn.jiguang.as.d.c("ReportHistory", "trim space history=" + e(file) + "," + a10.length + " to " + asList.size());
        }
    }

    private static synchronized String d(Context context) {
        String str;
        String replaceFirst;
        synchronized (d.class) {
            if (!TextUtils.isEmpty(f2106b)) {
                return f2106b;
            }
            if (f2105a == null) {
                String a10 = cn.jiguang.f.a.a(context);
                if (!TextUtils.isEmpty(a10)) {
                    if (a10.equals(context.getPackageName())) {
                        replaceFirst = "";
                    } else {
                        replaceFirst = a10.replaceFirst(context.getPackageName() + CertificateUtil.DELIMITER, "_");
                    }
                    f2105a = replaceFirst;
                }
            }
            if (f2105a != null) {
                str = "jpush_stat_history" + f2105a;
            } else {
                str = "jpush_stat_history";
            }
            File a11 = cn.jiguang.f.c.a(context, str);
            if (a11 != null) {
                String absolutePath = a11.getAbsolutePath();
                f2106b = absolutePath;
                return absolutePath;
            }
            return "jpush_stat_history" + f2105a;
        }
    }

    private static void d(File file) {
        try {
            File[] a10 = cn.jiguang.f.c.a(new File(file, "tmp"), c.a.f2576a);
            if (a10 != null && a10.length != 0) {
                LinkedList<File> linkedList = new LinkedList();
                for (File file2 : a10) {
                    if (!Boolean.TRUE.equals(f2107c.get(file2))) {
                        linkedList.add(file2);
                    }
                }
                if (linkedList.isEmpty()) {
                    return;
                }
                cn.jiguang.as.d.c("ReportHistory", "process space=" + e(file) + " tmp[" + linkedList.size() + "]");
                Set<String> b10 = b();
                HashMap hashMap = new HashMap();
                c a11 = c.a(cn.jiguang.f.c.a(cn.jiguang.f.c.a(file, c.a.f2576a)), b10);
                if (a11 != null) {
                    hashMap.put(String.valueOf(a11.f2100b), a11);
                }
                for (File file3 : linkedList) {
                    c a12 = c.a(file3, b10);
                    if (a12 != null) {
                        String valueOf = String.valueOf(a12.f2100b);
                        c cVar = (c) hashMap.get(valueOf);
                        if (cVar != null && cVar.a(a12, file)) {
                        }
                        hashMap.put(valueOf, a12);
                    }
                }
                for (c cVar2 : hashMap.values()) {
                    cVar2.a((c) null, file);
                }
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("ReportHistory", "processTmp e:" + th2);
        }
    }

    private static String e(Context context) {
        String e10 = cn.jiguang.d.a.e(context);
        if (TextUtils.isEmpty(e10)) {
            e10 = "0";
        }
        return d(context) + File.separator + e10;
    }

    private static String e(File file) {
        try {
            File parentFile = file.getParentFile();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(parentFile.getParentFile().getName());
            String str = File.separator;
            sb2.append(str);
            sb2.append(parentFile.getName());
            sb2.append(str);
            sb2.append(file.getName());
            return sb2.toString();
        } catch (Throwable unused) {
            return file.getAbsolutePath();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(Context context) {
        try {
            f2108d.set(true);
            File[] a10 = cn.jiguang.f.c.a(e(context), c.a.f2577b);
            if (a10 != null) {
                for (File file : a10) {
                    c(context, file);
                }
            } else {
                cn.jiguang.as.d.c("ReportHistory", "no history, no report");
            }
        } finally {
            try {
            } finally {
            }
        }
    }
}

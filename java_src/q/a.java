package q;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.alibaba.android.arouter.facade.template.ILogger;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f57087a = "code_cache" + File.separator + "secondary-dexes";

    /* renamed from: q.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class RunnableC0620a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f57088a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f57089b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Set f57090c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CountDownLatch f57091d;

        RunnableC0620a(String str, String str2, Set set, CountDownLatch countDownLatch) {
            this.f57088a = str;
            this.f57089b = str2;
            this.f57090c = set;
            this.f57091d = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            DexFile dexFile = null;
            try {
                if (this.f57088a.endsWith(".zip")) {
                    String str = this.f57088a;
                    dexFile = DexFile.loadDex(str, this.f57088a + ".tmp", 0);
                } else {
                    dexFile = new DexFile(this.f57088a);
                }
                Enumeration<String> entries = dexFile.entries();
                while (entries.hasMoreElements()) {
                    String nextElement = entries.nextElement();
                    if (nextElement.startsWith(this.f57089b)) {
                        this.f57090c.add(nextElement);
                    }
                }
            } catch (Throwable th2) {
                try {
                    Log.e("ARouter", "Scan map file in dex files made error.", th2);
                } finally {
                    if (dexFile != null) {
                        try {
                            dexFile.close();
                        } catch (Throwable unused) {
                        }
                    }
                    this.f57091d.countDown();
                }
            }
        }
    }

    public static Set<String> a(Context context, String str) throws PackageManager.NameNotFoundException, IOException, InterruptedException {
        HashSet hashSet = new HashSet();
        List<String> c10 = c(context);
        CountDownLatch countDownLatch = new CountDownLatch(c10.size());
        for (String str2 : c10) {
            p.b.a().execute(new RunnableC0620a(str2, str, hashSet, countDownLatch));
        }
        countDownLatch.await();
        Log.d(ILogger.defaultTag, "Filter " + hashSet.size() + " classes by packageName <" + str + ">");
        return hashSet;
    }

    private static SharedPreferences b(Context context) {
        return context.getSharedPreferences("multidex.version", 4);
    }

    public static List<String> c(Context context) throws PackageManager.NameNotFoundException, IOException {
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
        File file = new File(applicationInfo.sourceDir);
        ArrayList arrayList = new ArrayList();
        arrayList.add(applicationInfo.sourceDir);
        String str = file.getName() + ".classes";
        if (!d()) {
            int i9 = b(context).getInt("dex.number", 1);
            File file2 = new File(applicationInfo.dataDir, f57087a);
            for (int i10 = 2; i10 <= i9; i10++) {
                File file3 = new File(file2, str + i10 + ".zip");
                if (file3.isFile()) {
                    arrayList.add(file3.getAbsolutePath());
                } else {
                    throw new IOException("Missing extracted secondary dex file '" + file3.getPath() + "'");
                }
            }
        }
        if (o.a.b()) {
            arrayList.addAll(f(applicationInfo));
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
        if (r2 < 1) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
        if (java.lang.Integer.valueOf(java.lang.System.getProperty("ro.build.version.sdk")).intValue() >= 21) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean d() {
        /*
            r0 = 0
            r1 = 0
            boolean r2 = e()     // Catch: java.lang.Throwable -> L51
            r3 = 1
            if (r2 == 0) goto L1f
            java.lang.String r1 = "'YunOS'"
            java.lang.String r2 = "ro.build.version.sdk"
            java.lang.String r2 = java.lang.System.getProperty(r2)     // Catch: java.lang.Throwable -> L51
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L51
            int r2 = r2.intValue()     // Catch: java.lang.Throwable -> L51
            r4 = 21
            if (r2 < r4) goto L52
        L1d:
            r0 = 1
            goto L52
        L1f:
            java.lang.String r1 = "'Android'"
            java.lang.String r2 = "java.vm.version"
            java.lang.String r2 = java.lang.System.getProperty(r2)     // Catch: java.lang.Throwable -> L51
            if (r2 == 0) goto L52
            java.lang.String r4 = "(\\d+)\\.(\\d+)(\\.\\d+)?"
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4)     // Catch: java.lang.Throwable -> L51
            java.util.regex.Matcher r2 = r4.matcher(r2)     // Catch: java.lang.Throwable -> L51
            boolean r4 = r2.matches()     // Catch: java.lang.Throwable -> L51
            if (r4 == 0) goto L52
            java.lang.String r4 = r2.group(r3)     // Catch: java.lang.Throwable -> L51
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.Throwable -> L51
            r5 = 2
            java.lang.String r2 = r2.group(r5)     // Catch: java.lang.Throwable -> L51
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L51
            if (r4 > r5) goto L1d
            if (r4 != r5) goto L52
            if (r2 < r3) goto L52
            goto L1d
        L51:
        L52:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "VM with name "
            r2.append(r3)
            r2.append(r1)
            if (r0 == 0) goto L64
            java.lang.String r1 = " has multidex support"
            goto L66
        L64:
            java.lang.String r1 = " does not have multidex support"
        L66:
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            java.lang.String r2 = "ARouter::"
            android.util.Log.i(r2, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: q.a.d():boolean");
    }

    private static boolean e() {
        try {
            String property = System.getProperty("ro.yunos.version");
            String property2 = System.getProperty("java.vm.name");
            if (property2 == null || !property2.toLowerCase().contains("lemur")) {
                if (property == null) {
                    return false;
                }
                if (property.trim().length() <= 0) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static List<String> f(ApplicationInfo applicationInfo) {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        String[] strArr = applicationInfo.splitSourceDirs;
        if (strArr != null) {
            arrayList.addAll(Arrays.asList(strArr));
            Log.d(ILogger.defaultTag, "Found InstantRun support");
        } else {
            try {
                File file = new File((String) Class.forName("com.android.tools.fd.runtime.Paths").getMethod("getDexFileDirectory", String.class).invoke(null, applicationInfo.packageName));
                if (file.exists() && file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        if (file2 != null && file2.exists() && file2.isFile() && file2.getName().endsWith(".dex")) {
                            arrayList.add(file2.getAbsolutePath());
                        }
                    }
                    Log.d(ILogger.defaultTag, "Found InstantRun support");
                }
            } catch (Exception e10) {
                Log.e(ILogger.defaultTag, "InstantRun support error, " + e10.getMessage());
            }
        }
        return arrayList;
    }
}

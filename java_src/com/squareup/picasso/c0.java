package com.squareup.picasso;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Log;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    static final StringBuilder f29933a = new StringBuilder();

    /* loaded from: classes4.dex */
    static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            sendMessageDelayed(obtainMessage(), 1000L);
        }
    }

    /* loaded from: classes4.dex */
    private static class b {
        static int a(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    /* loaded from: classes4.dex */
    private static class c {
        static int a(Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    }

    /* loaded from: classes4.dex */
    private static class d {
        static Downloader a(Context context) {
            return new p(context);
        }
    }

    /* loaded from: classes4.dex */
    private static class e extends Thread {
        public e(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* loaded from: classes4.dex */
    static class f implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new e(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(File file) {
        long j10;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j10 = (statFs.getBlockCount() * statFs.getBlockSize()) / 50;
        } catch (IllegalArgumentException unused) {
            j10 = 5242880;
        }
        return Math.max(Math.min(j10, 52428800L), 5242880L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(Context context) {
        ActivityManager activityManager = (ActivityManager) p(context, PushConstants.INTENT_ACTIVITY_NAME);
        boolean z10 = (context.getApplicationInfo().flags & 1048576) != 0;
        int memoryClass = activityManager.getMemoryClass();
        if (z10) {
            memoryClass = b.a(activityManager);
        }
        return (memoryClass * 1048576) / 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() {
        if (!s()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T d(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File f(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Downloader g(Context context) {
        try {
            Class.forName("com.squareup.okhttp.OkHttpClient");
            return d.a(context);
        } catch (ClassNotFoundException unused) {
            return new b0(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String h(s sVar) {
        StringBuilder sb2 = f29933a;
        String i9 = i(sVar, sb2);
        sb2.setLength(0);
        return i9;
    }

    static String i(s sVar, StringBuilder sb2) {
        String str = sVar.f29999f;
        if (str != null) {
            sb2.ensureCapacity(str.length() + 50);
            sb2.append(sVar.f29999f);
        } else {
            Uri uri = sVar.f29997d;
            if (uri != null) {
                String uri2 = uri.toString();
                sb2.ensureCapacity(uri2.length() + 50);
                sb2.append(uri2);
            } else {
                sb2.ensureCapacity(50);
                sb2.append(sVar.f29998e);
            }
        }
        sb2.append('\n');
        if (sVar.f30006m != 0.0f) {
            sb2.append("rotation:");
            sb2.append(sVar.f30006m);
            if (sVar.f30009p) {
                sb2.append('@');
                sb2.append(sVar.f30007n);
                sb2.append('x');
                sb2.append(sVar.f30008o);
            }
            sb2.append('\n');
        }
        if (sVar.c()) {
            sb2.append("resize:");
            sb2.append(sVar.f30001h);
            sb2.append('x');
            sb2.append(sVar.f30002i);
            sb2.append('\n');
        }
        if (sVar.f30003j) {
            sb2.append("centerCrop");
            sb2.append('\n');
        } else if (sVar.f30004k) {
            sb2.append("centerInside");
            sb2.append('\n');
        }
        List<a0> list = sVar.f30000g;
        if (list != null) {
            int size = list.size();
            for (int i9 = 0; i9 < size; i9++) {
                sb2.append(sVar.f30000g.get(i9).key());
                sb2.append('\n');
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(Looper looper) {
        a aVar = new a(looper);
        aVar.sendMessageDelayed(aVar.obtainMessage(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(Bitmap bitmap) {
        int a10 = c.a(bitmap);
        if (a10 >= 0) {
            return a10;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String l(com.squareup.picasso.c cVar) {
        return m(cVar, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String m(com.squareup.picasso.c cVar, String str) {
        StringBuilder sb2 = new StringBuilder(str);
        com.squareup.picasso.a j10 = cVar.j();
        if (j10 != null) {
            sb2.append(j10.f29887b.d());
        }
        List<com.squareup.picasso.a> k10 = cVar.k();
        if (k10 != null) {
            int size = k10.size();
            for (int i9 = 0; i9 < size; i9++) {
                if (i9 > 0 || j10 != null) {
                    sb2.append(", ");
                }
                sb2.append(k10.get(i9).f29887b.d());
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(Resources resources, s sVar) throws FileNotFoundException {
        Uri uri;
        int i9 = sVar.f29998e;
        if (i9 != 0 || (uri = sVar.f29997d) == null) {
            return i9;
        }
        String authority = uri.getAuthority();
        if (authority != null) {
            List<String> pathSegments = sVar.f29997d.getPathSegments();
            if (pathSegments != null && !pathSegments.isEmpty()) {
                if (pathSegments.size() == 1) {
                    try {
                        return Integer.parseInt(pathSegments.get(0));
                    } catch (NumberFormatException unused) {
                        throw new FileNotFoundException("Last path segment is not a resource ID: " + sVar.f29997d);
                    }
                } else if (pathSegments.size() == 2) {
                    return resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                } else {
                    throw new FileNotFoundException("More than two path segments: " + sVar.f29997d);
                }
            }
            throw new FileNotFoundException("No path segments: " + sVar.f29997d);
        }
        throw new FileNotFoundException("No package provided: " + sVar.f29997d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Resources o(Context context, s sVar) throws FileNotFoundException {
        Uri uri;
        if (sVar.f29998e == 0 && (uri = sVar.f29997d) != null) {
            String authority = uri.getAuthority();
            if (authority != null) {
                try {
                    return context.getPackageManager().getResourcesForApplication(authority);
                } catch (PackageManager.NameNotFoundException unused) {
                    throw new FileNotFoundException("Unable to obtain resources for package: " + sVar.f29997d);
                }
            }
            throw new FileNotFoundException("No package provided: " + sVar.f29997d);
        }
        return context.getResources();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T p(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean q(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    static boolean s() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean t(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[12];
        return inputStream.read(bArr, 0, 12) == 12 && "RIFF".equals(new String(bArr, 0, 4, "US-ASCII")) && "WEBP".equals(new String(bArr, 8, 4, "US-ASCII"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void u(String str, String str2, String str3) {
        v(str, str2, str3, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void v(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean w(String str) {
        if (str == null) {
            return false;
        }
        String[] split = str.split(" ", 2);
        if ("CACHE".equals(split[0])) {
            return true;
        }
        if (split.length == 1) {
            return false;
        }
        try {
            if ("CONDITIONAL_CACHE".equals(split[0])) {
                return Integer.parseInt(split[1]) == 304;
            }
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] x(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }
}

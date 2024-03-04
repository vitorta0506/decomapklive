package cn.jpush.android.af;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import cn.jpush.android.helper.Logger;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f2909a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static ConcurrentHashMap<String, ThreadLocal<SimpleDateFormat>> f2910b = new ConcurrentHashMap<>();

    /* loaded from: classes.dex */
    private static class a extends ThreadLocal<SimpleDateFormat> {

        /* renamed from: a  reason: collision with root package name */
        private String f2911a;

        a(String str) {
            this.f2911a = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat(this.f2911a, Locale.ENGLISH);
        }
    }

    public static double a(double d10, double d11, double d12, double d13) {
        double d14 = d11 * 0.008726646259971648d;
        double d15 = d13 * 0.008726646259971648d;
        return Math.round((Math.asin(Math.sqrt(Math.pow(Math.sin(d14 - d15), 2.0d) + ((Math.cos(d14 * 2.0d) * Math.cos(d15 * 2.0d)) * Math.pow(Math.sin((d10 - d12) * 0.008726646259971648d), 2.0d)))) * 1.2756274E7d) * 10000.0d) / 10000;
    }

    public static int a(Context context, int i9) {
        return context == null ? i9 : (int) TypedValue.applyDimension(1, i9, context.getResources().getDisplayMetrics());
    }

    public static DisplayMetrics a(Context context) {
        WindowManager windowManager;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (context != null && (windowManager = (WindowManager) context.getSystemService("window")) != null) {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        Logger.d("Utils", "display metrics, height: " + displayMetrics.heightPixels + ", width: " + displayMetrics.widthPixels + ", scaledDensity: " + displayMetrics.scaledDensity);
        return displayMetrics;
    }

    public static ViewGroup.LayoutParams a(Context context, View view, boolean z10, int i9, int i10, int i11, int i12) {
        if (context == null || view == null) {
            return null;
        }
        try {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : new ViewGroup.MarginLayoutParams(layoutParams);
            if (z10) {
                i9 = a(context, i9);
                i11 = a(context, i11);
                i10 = a(context, i10);
                i12 = a(context, i12);
            }
            marginLayoutParams.setMargins(i9, i10, i11, i12);
            view.setLayoutParams(marginLayoutParams);
            return marginLayoutParams;
        } catch (Throwable th2) {
            Logger.w("Utils", "[setViewMargin] failed. err: " + th2.getMessage());
            return null;
        }
    }

    public static String a(Collection<String> collection, String str) {
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : collection) {
            sb2.append(str2);
            sb2.append(str);
        }
        if (sb2.length() > 0) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        return sb2.toString();
    }

    public static SimpleDateFormat a(String str) {
        ThreadLocal<SimpleDateFormat> threadLocal = f2910b.get(str);
        if (threadLocal == null) {
            synchronized (f2909a) {
                threadLocal = f2910b.get(str);
                if (threadLocal == null) {
                    threadLocal = new a(str);
                    f2910b.put(str, threadLocal);
                }
            }
        }
        return threadLocal.get();
    }

    public static ArrayList<String> a(JSONArray jSONArray) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (jSONArray != null && jSONArray.length() != 0) {
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                String optString = jSONArray.optString(i9);
                if (!TextUtils.isEmpty(optString)) {
                    arrayList.add(optString);
                }
            }
        }
        return arrayList;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public static byte[] a(InputStream inputStream) {
        if (inputStream != null) {
            byte[] bArr = new byte[inputStream.available()];
            inputStream.read(bArr);
            return bArr;
        }
        throw new IOException("InputStream is null");
    }

    public static byte[] b(InputStream inputStream) {
        if (inputStream == null) {
            throw new IOException("InputStream is null");
        }
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        byte[] byteArray = byteArrayOutputStream2.toByteArray();
                        a(byteArrayOutputStream2);
                        return byteArray;
                    }
                    byteArrayOutputStream2.write(bArr, 0, read);
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = byteArrayOutputStream2;
                a(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}

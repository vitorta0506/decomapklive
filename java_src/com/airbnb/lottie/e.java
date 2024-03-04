package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import l.w;
import okio.BufferedSource;
import okio.Okio;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, m<com.airbnb.lottie.d>> f3633a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f3634b = {80, 75, 3, 4};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements h<com.airbnb.lottie.d> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f3635a;

        a(String str) {
            this.f3635a = str;
        }

        @Override // com.airbnb.lottie.h
        /* renamed from: a */
        public void onResult(com.airbnb.lottie.d dVar) {
            e.f3633a.remove(this.f3635a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements h<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f3636a;

        b(String str) {
            this.f3636a = str;
        }

        @Override // com.airbnb.lottie.h
        /* renamed from: a */
        public void onResult(Throwable th2) {
            e.f3633a.remove(this.f3636a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Callable<l<com.airbnb.lottie.d>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f3637a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f3638b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f3639c;

        c(Context context, String str, String str2) {
            this.f3637a = context;
            this.f3638b = str;
            this.f3639c = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public l<com.airbnb.lottie.d> call() {
            l<com.airbnb.lottie.d> c10 = com.airbnb.lottie.c.d(this.f3637a).c(this.f3638b, this.f3639c);
            if (this.f3639c != null && c10.b() != null) {
                h.f.b().c(this.f3639c, c10.b());
            }
            return c10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements Callable<l<com.airbnb.lottie.d>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f3640a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f3641b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f3642c;

        d(Context context, String str, String str2) {
            this.f3640a = context;
            this.f3641b = str;
            this.f3642c = str2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public l<com.airbnb.lottie.d> call() {
            return e.g(this.f3640a, this.f3641b, this.f3642c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.airbnb.lottie.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class CallableC0054e implements Callable<l<com.airbnb.lottie.d>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WeakReference f3643a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f3644b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f3645c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f3646d;

        CallableC0054e(WeakReference weakReference, Context context, int i9, String str) {
            this.f3643a = weakReference;
            this.f3644b = context;
            this.f3645c = i9;
            this.f3646d = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public l<com.airbnb.lottie.d> call() {
            Context context = (Context) this.f3643a.get();
            if (context == null) {
                context = this.f3644b;
            }
            return e.p(context, this.f3645c, this.f3646d);
        }
    }

    /* loaded from: classes.dex */
    class f implements Callable<l<com.airbnb.lottie.d>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InputStream f3647a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f3648b;

        f(InputStream inputStream, String str) {
            this.f3647a = inputStream;
            this.f3648b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public l<com.airbnb.lottie.d> call() {
            return e.i(this.f3647a, this.f3648b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g implements Callable<l<com.airbnb.lottie.d>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.d f3649a;

        g(com.airbnb.lottie.d dVar) {
            this.f3649a = dVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public l<com.airbnb.lottie.d> call() {
            return new l<>(this.f3649a);
        }
    }

    private static m<com.airbnb.lottie.d> b(@Nullable String str, Callable<l<com.airbnb.lottie.d>> callable) {
        com.airbnb.lottie.d a10 = str == null ? null : h.f.b().a(str);
        if (a10 != null) {
            return new m<>(new g(a10));
        }
        if (str != null) {
            Map<String, m<com.airbnb.lottie.d>> map = f3633a;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        m<com.airbnb.lottie.d> mVar = new m<>(callable);
        if (str != null) {
            mVar.f(new a(str));
            mVar.e(new b(str));
            f3633a.put(str, mVar);
        }
        return mVar;
    }

    @Nullable
    private static com.airbnb.lottie.g c(com.airbnb.lottie.d dVar, String str) {
        for (com.airbnb.lottie.g gVar : dVar.j().values()) {
            if (gVar.b().equals(str)) {
                return gVar;
            }
        }
        return null;
    }

    public static m<com.airbnb.lottie.d> d(Context context, String str) {
        return e(context, str, "asset_" + str);
    }

    public static m<com.airbnb.lottie.d> e(Context context, String str, @Nullable String str2) {
        return b(str2, new d(context.getApplicationContext(), str, str2));
    }

    @WorkerThread
    public static l<com.airbnb.lottie.d> f(Context context, String str) {
        return g(context, str, "asset_" + str);
    }

    @WorkerThread
    public static l<com.airbnb.lottie.d> g(Context context, String str, @Nullable String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return i(context.getAssets().open(str), str2);
            }
            return s(new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e10) {
            return new l<>(e10);
        }
    }

    public static m<com.airbnb.lottie.d> h(InputStream inputStream, @Nullable String str) {
        return b(str, new f(inputStream, str));
    }

    @WorkerThread
    public static l<com.airbnb.lottie.d> i(InputStream inputStream, @Nullable String str) {
        return j(inputStream, str, true);
    }

    @WorkerThread
    private static l<com.airbnb.lottie.d> j(InputStream inputStream, @Nullable String str, boolean z10) {
        try {
            return k(JsonReader.v(Okio.buffer(Okio.source(inputStream))), str);
        } finally {
            if (z10) {
                m.h.c(inputStream);
            }
        }
    }

    @WorkerThread
    public static l<com.airbnb.lottie.d> k(JsonReader jsonReader, @Nullable String str) {
        return l(jsonReader, str, true);
    }

    private static l<com.airbnb.lottie.d> l(JsonReader jsonReader, @Nullable String str, boolean z10) {
        try {
            try {
                com.airbnb.lottie.d a10 = w.a(jsonReader);
                if (str != null) {
                    h.f.b().c(str, a10);
                }
                l<com.airbnb.lottie.d> lVar = new l<>(a10);
                if (z10) {
                    m.h.c(jsonReader);
                }
                return lVar;
            } catch (Exception e10) {
                l<com.airbnb.lottie.d> lVar2 = new l<>(e10);
                if (z10) {
                    m.h.c(jsonReader);
                }
                return lVar2;
            }
        } catch (Throwable th2) {
            if (z10) {
                m.h.c(jsonReader);
            }
            throw th2;
        }
    }

    public static m<com.airbnb.lottie.d> m(Context context, @RawRes int i9) {
        return n(context, i9, w(context, i9));
    }

    public static m<com.airbnb.lottie.d> n(Context context, @RawRes int i9, @Nullable String str) {
        return b(str, new CallableC0054e(new WeakReference(context), context.getApplicationContext(), i9, str));
    }

    @WorkerThread
    public static l<com.airbnb.lottie.d> o(Context context, @RawRes int i9) {
        return p(context, i9, w(context, i9));
    }

    @WorkerThread
    public static l<com.airbnb.lottie.d> p(Context context, @RawRes int i9, @Nullable String str) {
        try {
            BufferedSource buffer = Okio.buffer(Okio.source(context.getResources().openRawResource(i9)));
            if (v(buffer).booleanValue()) {
                return s(new ZipInputStream(buffer.inputStream()), str);
            }
            return i(buffer.inputStream(), str);
        } catch (Resources.NotFoundException e10) {
            return new l<>(e10);
        }
    }

    public static m<com.airbnb.lottie.d> q(Context context, String str) {
        return r(context, str, "url_" + str);
    }

    public static m<com.airbnb.lottie.d> r(Context context, String str, @Nullable String str2) {
        return b(str2, new c(context, str, str2));
    }

    @WorkerThread
    public static l<com.airbnb.lottie.d> s(ZipInputStream zipInputStream, @Nullable String str) {
        try {
            return t(zipInputStream, str);
        } finally {
            m.h.c(zipInputStream);
        }
    }

    @WorkerThread
    private static l<com.airbnb.lottie.d> t(ZipInputStream zipInputStream, @Nullable String str) {
        String[] split;
        HashMap hashMap = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            com.airbnb.lottie.d dVar = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    dVar = l(JsonReader.v(Okio.buffer(Okio.source(zipInputStream))), null, false).b();
                } else {
                    if (!name.contains(FileUtils.PIC_POSTFIX_PNG) && !name.contains(FileUtils.PIC_POSTFIX_WEBP) && !name.contains(FileUtils.PIC_POSTFIX_JPEG) && !name.contains(".jpeg")) {
                        zipInputStream.closeEntry();
                    }
                    hashMap.put(name.split(FileUtils.RES_PREFIX_STORAGE)[split.length - 1], BitmapFactory.decodeStream(zipInputStream));
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (dVar == null) {
                return new l<>(new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                com.airbnb.lottie.g c10 = c(dVar, (String) entry.getKey());
                if (c10 != null) {
                    c10.f(m.h.l((Bitmap) entry.getValue(), c10.e(), c10.c()));
                }
            }
            for (Map.Entry<String, com.airbnb.lottie.g> entry2 : dVar.j().entrySet()) {
                if (entry2.getValue().a() == null) {
                    return new l<>(new IllegalStateException("There is no image for " + entry2.getValue().b()));
                }
            }
            if (str != null) {
                h.f.b().c(str, dVar);
            }
            return new l<>(dVar);
        } catch (IOException e10) {
            return new l<>(e10);
        }
    }

    private static boolean u(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    private static Boolean v(BufferedSource bufferedSource) {
        try {
            BufferedSource peek = bufferedSource.peek();
            for (byte b10 : f3634b) {
                if (peek.readByte() != b10) {
                    return Boolean.FALSE;
                }
            }
            peek.close();
            return Boolean.TRUE;
        } catch (Exception e10) {
            m.d.b("Failed to check zip file header", e10);
            return Boolean.FALSE;
        }
    }

    private static String w(Context context, @RawRes int i9) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("rawRes");
        sb2.append(u(context) ? "_night_" : "_day_");
        sb2.append(i9);
        return sb2.toString();
    }
}

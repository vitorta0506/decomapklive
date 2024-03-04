package com.bumptech.glide;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.d;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.data.k;
import com.bumptech.glide.load.engine.k;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.b0;
import com.bumptech.glide.load.resource.bitmap.c0;
import com.bumptech.glide.load.resource.bitmap.m;
import com.bumptech.glide.load.resource.bitmap.p;
import com.bumptech.glide.load.resource.bitmap.t;
import com.bumptech.glide.load.resource.bitmap.v;
import com.bumptech.glide.load.resource.bitmap.x;
import com.bumptech.glide.load.resource.bitmap.z;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import j0.a;
import j0.b;
import j0.d;
import j0.e;
import j0.f;
import j0.k;
import j0.s;
import j0.u;
import j0.v;
import j0.w;
import j0.x;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import k0.a;
import k0.b;
import k0.c;
import k0.d;
import k0.e;
import l0.a;
import v0.j;
/* loaded from: classes.dex */
public class c implements ComponentCallbacks2 {
    @GuardedBy("Glide.class")

    /* renamed from: l  reason: collision with root package name */
    private static volatile c f4139l;

    /* renamed from: m  reason: collision with root package name */
    private static volatile boolean f4140m;

    /* renamed from: a  reason: collision with root package name */
    private final k f4141a;

    /* renamed from: b  reason: collision with root package name */
    private final g0.d f4142b;

    /* renamed from: c  reason: collision with root package name */
    private final h0.h f4143c;

    /* renamed from: d  reason: collision with root package name */
    private final e f4144d;

    /* renamed from: e  reason: collision with root package name */
    private final Registry f4145e;

    /* renamed from: f  reason: collision with root package name */
    private final g0.b f4146f;

    /* renamed from: g  reason: collision with root package name */
    private final com.bumptech.glide.manager.h f4147g;

    /* renamed from: h  reason: collision with root package name */
    private final p0.b f4148h;

    /* renamed from: j  reason: collision with root package name */
    private final a f4150j;
    @GuardedBy("managers")

    /* renamed from: i  reason: collision with root package name */
    private final List<h> f4149i = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private MemoryCategory f4151k = MemoryCategory.NORMAL;

    /* loaded from: classes.dex */
    public interface a {
        @NonNull
        com.bumptech.glide.request.h build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v2, types: [com.bumptech.glide.load.resource.bitmap.i] */
    public c(@NonNull Context context, @NonNull k kVar, @NonNull h0.h hVar, @NonNull g0.d dVar, @NonNull g0.b bVar, @NonNull com.bumptech.glide.manager.h hVar2, @NonNull p0.b bVar2, int i9, @NonNull a aVar, @NonNull Map<Class<?>, i<?, ?>> map, @NonNull List<com.bumptech.glide.request.g<Object>> list, f fVar) {
        Object obj;
        e0.f zVar;
        com.bumptech.glide.load.resource.bitmap.h hVar3;
        int i10;
        this.f4141a = kVar;
        this.f4142b = dVar;
        this.f4146f = bVar;
        this.f4143c = hVar;
        this.f4147g = hVar2;
        this.f4148h = bVar2;
        this.f4150j = aVar;
        Resources resources = context.getResources();
        Registry registry = new Registry();
        this.f4145e = registry;
        registry.o(new DefaultImageHeaderParser());
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 27) {
            registry.o(new p());
        }
        List<ImageHeaderParser> g10 = registry.g();
        com.bumptech.glide.load.resource.gif.a aVar2 = new com.bumptech.glide.load.resource.gif.a(context, g10, dVar, bVar);
        e0.f<ParcelFileDescriptor, Bitmap> h10 = c0.h(dVar);
        m mVar = new m(registry.g(), resources.getDisplayMetrics(), dVar, bVar);
        if (i11 >= 28 && fVar.a(d.c.class)) {
            zVar = new t();
            hVar3 = new com.bumptech.glide.load.resource.bitmap.i();
            obj = String.class;
        } else {
            com.bumptech.glide.load.resource.bitmap.h hVar4 = new com.bumptech.glide.load.resource.bitmap.h(mVar);
            obj = String.class;
            zVar = new z(mVar, bVar);
            hVar3 = hVar4;
        }
        if (i11 < 28 || !fVar.a(d.b.class)) {
            i10 = i11;
        } else {
            i10 = i11;
            registry.e("Animation", InputStream.class, Drawable.class, m0.a.f(g10, bVar));
            registry.e("Animation", ByteBuffer.class, Drawable.class, m0.a.a(g10, bVar));
        }
        m0.f fVar2 = new m0.f(context);
        s.c cVar = new s.c(resources);
        s.d dVar2 = new s.d(resources);
        s.b bVar3 = new s.b(resources);
        s.a aVar3 = new s.a(resources);
        com.bumptech.glide.load.resource.bitmap.c cVar2 = new com.bumptech.glide.load.resource.bitmap.c(bVar);
        o0.a aVar4 = new o0.a();
        o0.d dVar3 = new o0.d();
        ContentResolver contentResolver = context.getContentResolver();
        registry.a(ByteBuffer.class, new j0.c()).a(InputStream.class, new j0.t(bVar)).e("Bitmap", ByteBuffer.class, Bitmap.class, hVar3).e("Bitmap", InputStream.class, Bitmap.class, zVar);
        if (ParcelFileDescriptorRewinder.c()) {
            registry.e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new v(mVar));
        }
        registry.e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, h10).e("Bitmap", AssetFileDescriptor.class, Bitmap.class, c0.c(dVar)).d(Bitmap.class, Bitmap.class, v.a.b()).e("Bitmap", Bitmap.class, Bitmap.class, new b0()).b(Bitmap.class, cVar2).e("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, hVar3)).e("BitmapDrawable", InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, zVar)).e("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, h10)).b(BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.b(dVar, cVar2)).e("Animation", InputStream.class, GifDrawable.class, new com.bumptech.glide.load.resource.gif.i(g10, aVar2, bVar)).e("Animation", ByteBuffer.class, GifDrawable.class, aVar2).b(GifDrawable.class, new com.bumptech.glide.load.resource.gif.c()).d(c0.a.class, c0.a.class, v.a.b()).e("Bitmap", c0.a.class, Bitmap.class, new com.bumptech.glide.load.resource.gif.g(dVar)).c(Uri.class, Drawable.class, fVar2).c(Uri.class, Bitmap.class, new x(fVar2, dVar)).p(new a.C0556a()).d(File.class, ByteBuffer.class, new d.b()).d(File.class, InputStream.class, new f.e()).c(File.class, File.class, new n0.a()).d(File.class, ParcelFileDescriptor.class, new f.b()).d(File.class, File.class, v.a.b()).p(new k.a(bVar));
        if (ParcelFileDescriptorRewinder.c()) {
            registry.p(new ParcelFileDescriptorRewinder.a());
        }
        Class cls = Integer.TYPE;
        Object obj2 = obj;
        registry.d(cls, InputStream.class, cVar).d(cls, ParcelFileDescriptor.class, bVar3).d(Integer.class, InputStream.class, cVar).d(Integer.class, ParcelFileDescriptor.class, bVar3).d(Integer.class, Uri.class, dVar2).d(cls, AssetFileDescriptor.class, aVar3).d(Integer.class, AssetFileDescriptor.class, aVar3).d(cls, Uri.class, dVar2).d(obj2, InputStream.class, new e.c()).d(Uri.class, InputStream.class, new e.c()).d(obj2, InputStream.class, new u.c()).d(obj2, ParcelFileDescriptor.class, new u.b()).d(obj2, AssetFileDescriptor.class, new u.a()).d(Uri.class, InputStream.class, new a.c(context.getAssets())).d(Uri.class, AssetFileDescriptor.class, new a.b(context.getAssets())).d(Uri.class, InputStream.class, new b.a(context)).d(Uri.class, InputStream.class, new c.a(context));
        int i12 = i10;
        if (i12 >= 29) {
            registry.d(Uri.class, InputStream.class, new d.c(context));
            registry.d(Uri.class, ParcelFileDescriptor.class, new d.b(context));
        }
        registry.d(Uri.class, InputStream.class, new w.d(contentResolver)).d(Uri.class, ParcelFileDescriptor.class, new w.b(contentResolver)).d(Uri.class, AssetFileDescriptor.class, new w.a(contentResolver)).d(Uri.class, InputStream.class, new x.a()).d(URL.class, InputStream.class, new e.a()).d(Uri.class, File.class, new k.a(context)).d(j0.g.class, InputStream.class, new a.C0546a()).d(byte[].class, ByteBuffer.class, new b.a()).d(byte[].class, InputStream.class, new b.d()).d(Uri.class, Uri.class, v.a.b()).d(Drawable.class, Drawable.class, v.a.b()).c(Drawable.class, Drawable.class, new m0.g()).q(Bitmap.class, BitmapDrawable.class, new o0.b(resources)).q(Bitmap.class, byte[].class, aVar4).q(Drawable.class, byte[].class, new o0.c(dVar, aVar4, dVar3)).q(GifDrawable.class, byte[].class, dVar3);
        if (i12 >= 23) {
            e0.f<ByteBuffer, Bitmap> d10 = c0.d(dVar);
            registry.c(ByteBuffer.class, Bitmap.class, d10);
            registry.c(ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, d10));
        }
        this.f4144d = new e(context, bVar, registry, new s0.g(), aVar, map, list, kVar, fVar, i9);
    }

    @GuardedBy("Glide.class")
    private static void a(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        if (!f4140m) {
            f4140m = true;
            m(context, generatedAppGlideModule);
            f4140m = false;
            return;
        }
        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
    }

    @NonNull
    public static c c(@NonNull Context context) {
        if (f4139l == null) {
            GeneratedAppGlideModule d10 = d(context.getApplicationContext());
            synchronized (c.class) {
                if (f4139l == null) {
                    a(context, d10);
                }
            }
        }
        return f4139l;
    }

    @Nullable
    private static GeneratedAppGlideModule d(Context context) {
        try {
            return (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext());
        } catch (ClassNotFoundException unused) {
            if (Log.isLoggable("Glide", 5)) {
                Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            return null;
        } catch (IllegalAccessException e10) {
            q(e10);
            return null;
        } catch (InstantiationException e11) {
            q(e11);
            return null;
        } catch (NoSuchMethodException e12) {
            q(e12);
            return null;
        } catch (InvocationTargetException e13) {
            q(e13);
            return null;
        }
    }

    @NonNull
    private static com.bumptech.glide.manager.h l(@Nullable Context context) {
        j.e(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return c(context).k();
    }

    @GuardedBy("Glide.class")
    private static void m(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        n(context, new d(), generatedAppGlideModule);
    }

    @GuardedBy("Glide.class")
    private static void n(@NonNull Context context, @NonNull d dVar, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        Context applicationContext = context.getApplicationContext();
        List<q0.b> emptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.c()) {
            emptyList = new q0.d(applicationContext).a();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.d().isEmpty()) {
            Set<Class<?>> d10 = generatedAppGlideModule.d();
            Iterator<q0.b> it = emptyList.iterator();
            while (it.hasNext()) {
                q0.b next = it.next();
                if (d10.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator<q0.b> it2 = emptyList.iterator();
            while (it2.hasNext()) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + it2.next().getClass());
            }
        }
        dVar.c(generatedAppGlideModule != null ? generatedAppGlideModule.e() : null);
        for (q0.b bVar : emptyList) {
            bVar.a(applicationContext, dVar);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.b(applicationContext, dVar);
        }
        c a10 = dVar.a(applicationContext);
        for (q0.b bVar2 : emptyList) {
            try {
                bVar2.b(applicationContext, a10, a10.f4145e);
            } catch (AbstractMethodError e10) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + bVar2.getClass().getName(), e10);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.a(applicationContext, a10, a10.f4145e);
        }
        applicationContext.registerComponentCallbacks(a10);
        f4139l = a10;
    }

    private static void q(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    @NonNull
    public static h t(@NonNull Activity activity) {
        return l(activity).j(activity);
    }

    @NonNull
    public static h u(@NonNull Context context) {
        return l(context).l(context);
    }

    @NonNull
    public static h v(@NonNull View view) {
        return l(view.getContext()).m(view);
    }

    @NonNull
    public static h w(@NonNull Fragment fragment) {
        return l(fragment.getContext()).n(fragment);
    }

    @NonNull
    public static h x(@NonNull FragmentActivity fragmentActivity) {
        return l(fragmentActivity).o(fragmentActivity);
    }

    public void b() {
        v0.k.b();
        this.f4143c.b();
        this.f4142b.b();
        this.f4146f.b();
    }

    @NonNull
    public g0.b e() {
        return this.f4146f;
    }

    @NonNull
    public g0.d f() {
        return this.f4142b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0.b g() {
        return this.f4148h;
    }

    @NonNull
    public Context h() {
        return this.f4144d.getBaseContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public e i() {
        return this.f4144d;
    }

    @NonNull
    public Registry j() {
        return this.f4145e;
    }

    @NonNull
    public com.bumptech.glide.manager.h k() {
        return this.f4147g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(h hVar) {
        synchronized (this.f4149i) {
            if (!this.f4149i.contains(hVar)) {
                this.f4149i.add(hVar);
            } else {
                throw new IllegalStateException("Cannot register already registered manager");
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        b();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i9) {
        r(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p(@NonNull s0.k<?> kVar) {
        synchronized (this.f4149i) {
            for (h hVar : this.f4149i) {
                if (hVar.y(kVar)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void r(int i9) {
        v0.k.b();
        synchronized (this.f4149i) {
            for (h hVar : this.f4149i) {
                hVar.onTrimMemory(i9);
            }
        }
        this.f4143c.a(i9);
        this.f4142b.a(i9);
        this.f4146f.a(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(h hVar) {
        synchronized (this.f4149i) {
            if (this.f4149i.contains(hVar)) {
                this.f4149i.remove(hVar);
            } else {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
        }
    }
}

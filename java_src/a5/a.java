package a5;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.play.core.internal.a0;
import com.google.android.play.core.internal.v;
import com.google.android.play.core.internal.x;
import com.google.android.play.core.internal.y;
import com.google.android.play.core.internal.zzbt;
import com.google.android.play.core.splitinstall.zzo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicReference f600e = new AtomicReference(null);

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ int f601f = 0;

    /* renamed from: a  reason: collision with root package name */
    private final f f602a;

    /* renamed from: b  reason: collision with root package name */
    private final b5.d f603b;
    @GuardedBy("emulatedSplits")

    /* renamed from: c  reason: collision with root package name */
    private final Set f604c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private final b f605d;

    private a(Context context) {
        try {
            f fVar = new f(context);
            this.f602a = fVar;
            this.f605d = new b(fVar);
            this.f603b = new b5.d(context);
        } catch (PackageManager.NameNotFoundException e10) {
            throw new zzbt("Failed to initialize FileStorage", e10);
        }
    }

    public static boolean a(@NonNull Context context) {
        return h(context, false);
    }

    public static boolean d(Context context) {
        return h(context, true);
    }

    public static boolean e() {
        return f600e.get() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(Set set) throws IOException {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            f.l(this.f602a.g((String) it.next()));
        }
        this.f603b.b();
    }

    @RequiresApi(21)
    private final synchronized void g(Context context, boolean z10) throws IOException {
        List<String> asList;
        ZipFile zipFile;
        if (z10) {
            this.f602a.k();
        } else {
            e.a().execute(new q(this));
        }
        String packageName = context.getPackageName();
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(packageName, 0).splitNames;
            if (strArr == null) {
                asList = new ArrayList();
            } else {
                asList = Arrays.asList(strArr);
            }
            Set<t> j10 = this.f602a.j();
            Set a10 = this.f603b.a();
            HashSet hashSet = new HashSet();
            Iterator it = j10.iterator();
            while (it.hasNext()) {
                String b10 = ((t) it.next()).b();
                if (asList.contains(b10) || a10.contains(b5.k.a(b10))) {
                    hashSet.add(b10);
                    it.remove();
                }
            }
            if (z10) {
                f(hashSet);
            } else if (!hashSet.isEmpty()) {
                e.a().execute(new r(this, hashSet));
            }
            HashSet hashSet2 = new HashSet();
            for (t tVar : j10) {
                String b11 = tVar.b();
                if (!b5.k.c(b11)) {
                    hashSet2.add(b11);
                }
            }
            for (String str : asList) {
                if (!b5.k.c(str)) {
                    hashSet2.add(str);
                }
            }
            HashSet<t> hashSet3 = new HashSet(j10.size());
            for (t tVar2 : j10) {
                if (b5.k.b(tVar2.b()) || hashSet2.contains(b5.k.a(tVar2.b()))) {
                    hashSet3.add(tVar2);
                }
            }
            n nVar = new n(this.f602a);
            y a11 = a0.a();
            ClassLoader classLoader = context.getClassLoader();
            if (z10) {
                a11.b(classLoader, nVar.c());
            } else {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    Set b12 = nVar.b((t) it2.next());
                    if (b12 == null) {
                        it2.remove();
                    } else {
                        a11.b(classLoader, b12);
                    }
                }
            }
            HashSet hashSet4 = new HashSet();
            for (t tVar3 : hashSet3) {
                try {
                    zipFile = new ZipFile(tVar3.a());
                } catch (IOException e10) {
                    e = e10;
                    zipFile = null;
                }
                try {
                    ZipEntry entry = zipFile.getEntry("classes.dex");
                    zipFile.close();
                    if (entry != null && !a11.a(classLoader, this.f602a.a(tVar3.b()), tVar3.a(), z10)) {
                        Log.w("SplitCompat", "split was not installed ".concat(tVar3.a().toString()));
                    }
                    hashSet4.add(tVar3.a());
                } catch (IOException e11) {
                    e = e11;
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw e;
                }
            }
            this.f605d.a(context, hashSet4);
            HashSet hashSet5 = new HashSet();
            for (t tVar4 : hashSet3) {
                if (hashSet4.contains(tVar4.a())) {
                    String b13 = tVar4.b();
                    StringBuilder sb2 = new StringBuilder(b13.length() + 30);
                    sb2.append("Split '");
                    sb2.append(b13);
                    sb2.append("' installation emulated");
                    Log.d("SplitCompat", sb2.toString());
                    hashSet5.add(tVar4.b());
                } else {
                    String b14 = tVar4.b();
                    StringBuilder sb3 = new StringBuilder(b14.length() + 35);
                    sb3.append("Split '");
                    sb3.append(b14);
                    sb3.append("' installation not emulated.");
                    Log.d("SplitCompat", sb3.toString());
                }
            }
            synchronized (this.f604c) {
                this.f604c.addAll(hashSet5);
            }
        } catch (PackageManager.NameNotFoundException e12) {
            throw new IOException(String.format("Cannot load data for application '%s'", packageName), e12);
        }
    }

    private static boolean h(final Context context, boolean z10) {
        if (i()) {
            return false;
        }
        AtomicReference atomicReference = f600e;
        boolean compareAndSet = atomicReference.compareAndSet(null, new a(context));
        a aVar = (a) atomicReference.get();
        if (compareAndSet) {
            zzo.INSTANCE.zzb(new v(context, e.a(), new x(context, aVar.f602a, new com.google.android.play.core.internal.t()), aVar.f602a, new s(), null));
            b5.j.a(new p(aVar));
            e.a().execute(new Runnable() { // from class: a5.o
                @Override // java.lang.Runnable
                public final void run() {
                    Context context2 = context;
                    int i9 = a.f601f;
                    try {
                        b5.o.g(context2).c(true);
                    } catch (SecurityException unused) {
                        Log.e("SplitCompat", "Failed to set broadcast receiver to always on.");
                    }
                }
            });
        }
        try {
            aVar.g(context, z10);
            return true;
        } catch (Exception e10) {
            Log.e("SplitCompat", "Error installing additional splits", e10);
            return false;
        }
    }

    private static boolean i() {
        return false;
    }
}

package c2;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class i implements r {

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f1530n = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};

    /* renamed from: o  reason: collision with root package name */
    private static final a f1531o = new a(new a.InterfaceC0023a() { // from class: c2.h
        @Override // c2.i.a.InterfaceC0023a
        public final Constructor a() {
            Constructor f10;
            f10 = i.f();
            return f10;
        }
    });

    /* renamed from: p  reason: collision with root package name */
    private static final a f1532p = new a(new a.InterfaceC0023a() { // from class: c2.g
        @Override // c2.i.a.InterfaceC0023a
        public final Constructor a() {
            Constructor g10;
            g10 = i.g();
            return g10;
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private boolean f1533b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1534c;

    /* renamed from: d  reason: collision with root package name */
    private int f1535d;

    /* renamed from: e  reason: collision with root package name */
    private int f1536e;

    /* renamed from: f  reason: collision with root package name */
    private int f1537f;

    /* renamed from: g  reason: collision with root package name */
    private int f1538g;

    /* renamed from: h  reason: collision with root package name */
    private int f1539h;

    /* renamed from: i  reason: collision with root package name */
    private int f1540i;

    /* renamed from: j  reason: collision with root package name */
    private int f1541j;

    /* renamed from: l  reason: collision with root package name */
    private int f1543l;

    /* renamed from: k  reason: collision with root package name */
    private int f1542k = 1;

    /* renamed from: m  reason: collision with root package name */
    private int f1544m = 112800;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0023a f1545a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f1546b = new AtomicBoolean(false);
        @Nullable
        @GuardedBy("extensionLoaded")

        /* renamed from: c  reason: collision with root package name */
        private Constructor<? extends l> f1547c;

        /* renamed from: c2.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0023a {
            @Nullable
            Constructor<? extends l> a() throws InvocationTargetException, IllegalAccessException, NoSuchMethodException, ClassNotFoundException;
        }

        public a(InterfaceC0023a interfaceC0023a) {
            this.f1545a = interfaceC0023a;
        }

        @Nullable
        private Constructor<? extends l> b() {
            synchronized (this.f1546b) {
                if (this.f1546b.get()) {
                    return this.f1547c;
                }
                try {
                    return this.f1545a.a();
                } catch (ClassNotFoundException unused) {
                    this.f1546b.set(true);
                    return this.f1547c;
                } catch (Exception e10) {
                    throw new RuntimeException("Error instantiating extension", e10);
                }
            }
        }

        @Nullable
        public l a(Object... objArr) {
            Constructor<? extends l> b10 = b();
            if (b10 == null) {
                return null;
            }
            try {
                return b10.newInstance(objArr);
            } catch (Exception e10) {
                throw new IllegalStateException("Unexpected error creating extractor", e10);
            }
        }
    }

    private void e(int i9, List<l> list) {
        switch (i9) {
            case 0:
                list.add(new m2.b());
                return;
            case 1:
                list.add(new m2.e());
                return;
            case 2:
                list.add(new m2.h((this.f1534c ? 2 : 0) | this.f1535d | (this.f1533b ? 1 : 0)));
                return;
            case 3:
                list.add(new d2.b((this.f1534c ? 2 : 0) | this.f1536e | (this.f1533b ? 1 : 0)));
                return;
            case 4:
                l a10 = f1531o.a(Integer.valueOf(this.f1537f));
                if (a10 != null) {
                    list.add(a10);
                    return;
                } else {
                    list.add(new f2.d(this.f1537f));
                    return;
                }
            case 5:
                list.add(new com.google.android.exoplayer2.extractor.flv.b());
                return;
            case 6:
                list.add(new i2.e(this.f1538g));
                return;
            case 7:
                list.add(new j2.f((this.f1534c ? 2 : 0) | this.f1541j | (this.f1533b ? 1 : 0)));
                return;
            case 8:
                list.add(new k2.g(this.f1540i));
                list.add(new k2.k(this.f1539h));
                return;
            case 9:
                list.add(new l2.d());
                return;
            case 10:
                list.add(new m2.a0());
                return;
            case 11:
                list.add(new m2.h0(this.f1542k, this.f1543l, this.f1544m));
                return;
            case 12:
                list.add(new n2.b());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new h2.a());
                return;
            case 15:
                l a11 = f1532p.a(new Object[0]);
                if (a11 != null) {
                    list.add(a11);
                    return;
                }
                return;
            case 16:
                list.add(new e2.b());
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static Constructor<? extends l> f() throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
            return Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(l.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor<? extends l> g() throws ClassNotFoundException, NoSuchMethodException {
        return Class.forName("com.google.android.exoplayer2.decoder.midi.MidiExtractor").asSubclass(l.class).getConstructor(new Class[0]);
    }

    @Override // c2.r
    public synchronized l[] a(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        int[] iArr = f1530n;
        arrayList = new ArrayList(iArr.length);
        int b10 = com.google.android.exoplayer2.util.k.b(map);
        if (b10 != -1) {
            e(b10, arrayList);
        }
        int c10 = com.google.android.exoplayer2.util.k.c(uri);
        if (c10 != -1 && c10 != b10) {
            e(c10, arrayList);
        }
        for (int i9 : iArr) {
            if (i9 != b10 && i9 != c10) {
                e(i9, arrayList);
            }
        }
        return (l[]) arrayList.toArray(new l[arrayList.size()]);
    }

    @Override // c2.r
    public synchronized l[] b() {
        return a(Uri.EMPTY, new HashMap());
    }
}

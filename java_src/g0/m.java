package g0;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
@RequiresApi(19)
/* loaded from: classes.dex */
public class m implements k {

    /* renamed from: d  reason: collision with root package name */
    private static final Bitmap.Config[] f39878d;

    /* renamed from: e  reason: collision with root package name */
    private static final Bitmap.Config[] f39879e;

    /* renamed from: f  reason: collision with root package name */
    private static final Bitmap.Config[] f39880f;

    /* renamed from: g  reason: collision with root package name */
    private static final Bitmap.Config[] f39881g;

    /* renamed from: h  reason: collision with root package name */
    private static final Bitmap.Config[] f39882h;

    /* renamed from: a  reason: collision with root package name */
    private final c f39883a = new c();

    /* renamed from: b  reason: collision with root package name */
    private final g<b, Bitmap> f39884b = new g<>();

    /* renamed from: c  reason: collision with root package name */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f39885c = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f39886a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f39886a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39886a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39886a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39886a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class b implements l {

        /* renamed from: a  reason: collision with root package name */
        private final c f39887a;

        /* renamed from: b  reason: collision with root package name */
        int f39888b;

        /* renamed from: c  reason: collision with root package name */
        private Bitmap.Config f39889c;

        public b(c cVar) {
            this.f39887a = cVar;
        }

        @Override // g0.l
        public void a() {
            this.f39887a.c(this);
        }

        public void b(int i9, Bitmap.Config config) {
            this.f39888b = i9;
            this.f39889c = config;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.f39888b == bVar.f39888b && v0.k.d(this.f39889c, bVar.f39889c);
            }
            return false;
        }

        public int hashCode() {
            int i9 = this.f39888b * 31;
            Bitmap.Config config = this.f39889c;
            return i9 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return m.h(this.f39888b, this.f39889c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class c extends g0.c<b> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // g0.c
        /* renamed from: d */
        public b a() {
            return new b(this);
        }

        public b e(int i9, Bitmap.Config config) {
            b b10 = b();
            b10.b(i9, config);
            return b10;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f39878d = configArr;
        f39879e = configArr;
        f39880f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f39881g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f39882h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    private void f(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> j10 = j(bitmap.getConfig());
        Integer num2 = (Integer) j10.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                j10.remove(num);
                return;
            } else {
                j10.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + a(bitmap) + ", this: " + this);
    }

    private b g(int i9, Bitmap.Config config) {
        Bitmap.Config[] i10;
        b e10 = this.f39883a.e(i9, config);
        for (Bitmap.Config config2 : i(config)) {
            Integer ceilingKey = j(config2).ceilingKey(Integer.valueOf(i9));
            if (ceilingKey != null && ceilingKey.intValue() <= i9 * 8) {
                if (ceilingKey.intValue() == i9) {
                    if (config2 == null) {
                        if (config == null) {
                            return e10;
                        }
                    } else if (config2.equals(config)) {
                        return e10;
                    }
                }
                this.f39883a.c(e10);
                return this.f39883a.e(ceilingKey.intValue(), config2);
            }
        }
        return e10;
    }

    static String h(int i9, Bitmap.Config config) {
        return "[" + i9 + "](" + config + ")";
    }

    private static Bitmap.Config[] i(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            return f39879e;
        }
        int i9 = a.f39886a[config.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    return i9 != 4 ? new Bitmap.Config[]{config} : f39882h;
                }
                return f39881g;
            }
            return f39880f;
        }
        return f39878d;
    }

    private NavigableMap<Integer, Integer> j(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f39885c.get(config);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f39885c.put(config, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    @Override // g0.k
    public String a(Bitmap bitmap) {
        return h(v0.k.h(bitmap), bitmap.getConfig());
    }

    @Override // g0.k
    public String b(int i9, int i10, Bitmap.Config config) {
        return h(v0.k.g(i9, i10, config), config);
    }

    @Override // g0.k
    public void c(Bitmap bitmap) {
        b e10 = this.f39883a.e(v0.k.h(bitmap), bitmap.getConfig());
        this.f39884b.d(e10, bitmap);
        NavigableMap<Integer, Integer> j10 = j(bitmap.getConfig());
        Integer num = (Integer) j10.get(Integer.valueOf(e10.f39888b));
        j10.put(Integer.valueOf(e10.f39888b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // g0.k
    @Nullable
    public Bitmap d(int i9, int i10, Bitmap.Config config) {
        b g10 = g(v0.k.g(i9, i10, config), config);
        Bitmap a10 = this.f39884b.a(g10);
        if (a10 != null) {
            f(Integer.valueOf(g10.f39888b), a10);
            a10.reconfigure(i9, i10, config);
        }
        return a10;
    }

    @Override // g0.k
    public int e(Bitmap bitmap) {
        return v0.k.h(bitmap);
    }

    @Override // g0.k
    @Nullable
    public Bitmap removeLast() {
        Bitmap f10 = this.f39884b.f();
        if (f10 != null) {
            f(Integer.valueOf(v0.k.h(f10)), f10);
        }
        return f10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SizeConfigStrategy{groupedMap=");
        sb2.append(this.f39884b);
        sb2.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f39885c.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append('[');
            sb2.append(entry.getValue());
            sb2.append("], ");
        }
        if (!this.f39885c.isEmpty()) {
            sb2.replace(sb2.length() - 2, sb2.length(), "");
        }
        sb2.append(")}");
        return sb2.toString();
    }
}

package k2;

import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.util.b0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f53342a;

    /* renamed from: k2.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0548a extends a {

        /* renamed from: b  reason: collision with root package name */
        public final long f53343b;

        /* renamed from: c  reason: collision with root package name */
        public final List<b> f53344c;

        /* renamed from: d  reason: collision with root package name */
        public final List<C0548a> f53345d;

        public C0548a(int i9, long j10) {
            super(i9);
            this.f53343b = j10;
            this.f53344c = new ArrayList();
            this.f53345d = new ArrayList();
        }

        public void d(C0548a c0548a) {
            this.f53345d.add(c0548a);
        }

        public void e(b bVar) {
            this.f53344c.add(bVar);
        }

        @Nullable
        public C0548a f(int i9) {
            int size = this.f53345d.size();
            for (int i10 = 0; i10 < size; i10++) {
                C0548a c0548a = this.f53345d.get(i10);
                if (c0548a.f53342a == i9) {
                    return c0548a;
                }
            }
            return null;
        }

        @Nullable
        public b g(int i9) {
            int size = this.f53344c.size();
            for (int i10 = 0; i10 < size; i10++) {
                b bVar = this.f53344c.get(i10);
                if (bVar.f53342a == i9) {
                    return bVar;
                }
            }
            return null;
        }

        @Override // k2.a
        public String toString() {
            return a.a(this.f53342a) + " leaves: " + Arrays.toString(this.f53344c.toArray()) + " containers: " + Arrays.toString(this.f53345d.toArray());
        }
    }

    /* loaded from: classes.dex */
    static final class b extends a {

        /* renamed from: b  reason: collision with root package name */
        public final b0 f53346b;

        public b(int i9, b0 b0Var) {
            super(i9);
            this.f53346b = b0Var;
        }
    }

    public a(int i9) {
        this.f53342a = i9;
    }

    public static String a(int i9) {
        return "" + ((char) ((i9 >> 24) & 255)) + ((char) ((i9 >> 16) & 255)) + ((char) ((i9 >> 8) & 255)) + ((char) (i9 & 255));
    }

    public static int b(int i9) {
        return i9 & ViewCompat.MEASURED_SIZE_MASK;
    }

    public static int c(int i9) {
        return (i9 >> 24) & 255;
    }

    public String toString() {
        return a(this.f53342a);
    }
}

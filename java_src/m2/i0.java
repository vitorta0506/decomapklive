package m2;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import java.util.Collections;
import java.util.List;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public interface i0 {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f54550a;

        /* renamed from: b  reason: collision with root package name */
        public final int f54551b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f54552c;

        public a(String str, int i9, byte[] bArr) {
            this.f54550a = str;
            this.f54551b = i9;
            this.f54552c = bArr;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f54553a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f54554b;

        /* renamed from: c  reason: collision with root package name */
        public final List<a> f54555c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f54556d;

        public b(int i9, @Nullable String str, @Nullable List<a> list, byte[] bArr) {
            List<a> unmodifiableList;
            this.f54553a = i9;
            this.f54554b = str;
            if (list == null) {
                unmodifiableList = Collections.emptyList();
            } else {
                unmodifiableList = Collections.unmodifiableList(list);
            }
            this.f54555c = unmodifiableList;
            this.f54556d = bArr;
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        SparseArray<i0> a();

        @Nullable
        i0 b(int i9, b bVar);
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f54557a;

        /* renamed from: b  reason: collision with root package name */
        private final int f54558b;

        /* renamed from: c  reason: collision with root package name */
        private final int f54559c;

        /* renamed from: d  reason: collision with root package name */
        private int f54560d;

        /* renamed from: e  reason: collision with root package name */
        private String f54561e;

        public d(int i9, int i10) {
            this(Integer.MIN_VALUE, i9, i10);
        }

        private void d() {
            if (this.f54560d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public void a() {
            int i9 = this.f54560d;
            this.f54560d = i9 == Integer.MIN_VALUE ? this.f54558b : i9 + this.f54559c;
            this.f54561e = this.f54557a + this.f54560d;
        }

        public String b() {
            d();
            return this.f54561e;
        }

        public int c() {
            d();
            return this.f54560d;
        }

        public d(int i9, int i10, int i11) {
            String str;
            if (i9 != Integer.MIN_VALUE) {
                str = i9 + FileUtils.RES_PREFIX_STORAGE;
            } else {
                str = "";
            }
            this.f54557a = str;
            this.f54558b = i10;
            this.f54559c = i11;
            this.f54560d = Integer.MIN_VALUE;
            this.f54561e = "";
        }
    }

    void a(com.google.android.exoplayer2.util.i0 i0Var, c2.n nVar, d dVar);

    void b(com.google.android.exoplayer2.util.b0 b0Var, int i9) throws ParserException;

    void c();
}

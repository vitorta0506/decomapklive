package k3;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
/* loaded from: classes2.dex */
public final class y implements com.google.android.exoplayer2.h {

    /* renamed from: e  reason: collision with root package name */
    public static final y f53629e = new y(0, 0);

    /* renamed from: f  reason: collision with root package name */
    public static final h.a<y> f53630f = new h.a() { // from class: k3.x
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            y c10;
            c10 = y.c(bundle);
            return c10;
        }
    };
    @IntRange(from = 0)

    /* renamed from: a  reason: collision with root package name */
    public final int f53631a;
    @IntRange(from = 0)

    /* renamed from: b  reason: collision with root package name */
    public final int f53632b;
    @IntRange(from = 0, to = 359)

    /* renamed from: c  reason: collision with root package name */
    public final int f53633c;
    @FloatRange(from = 0.0d, fromInclusive = false)

    /* renamed from: d  reason: collision with root package name */
    public final float f53634d;

    public y(@IntRange(from = 0) int i9, @IntRange(from = 0) int i10) {
        this(i9, i10, 0, 1.0f);
    }

    private static String b(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ y c(Bundle bundle) {
        return new y(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0), bundle.getFloat(b(3), 1.0f));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof y) {
            y yVar = (y) obj;
            return this.f53631a == yVar.f53631a && this.f53632b == yVar.f53632b && this.f53633c == yVar.f53633c && this.f53634d == yVar.f53634d;
        }
        return false;
    }

    public int hashCode() {
        return ((((((217 + this.f53631a) * 31) + this.f53632b) * 31) + this.f53633c) * 31) + Float.floatToRawIntBits(this.f53634d);
    }

    public y(@IntRange(from = 0) int i9, @IntRange(from = 0) int i10, @IntRange(from = 0, to = 359) int i11, @FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        this.f53631a = i9;
        this.f53632b = i10;
        this.f53633c = i11;
        this.f53634d = f10;
    }
}

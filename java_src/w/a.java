package w;

import androidx.annotation.IntRange;
/* loaded from: classes.dex */
public abstract class a implements m {

    /* renamed from: a  reason: collision with root package name */
    int f59252a;

    /* renamed from: b  reason: collision with root package name */
    int f59253b;

    public void c(@IntRange(from = 0) int i9) {
        if (i9 >= 0) {
            this.f59252a = i9;
            return;
        }
        throw new IllegalArgumentException("additional height can't be negative");
    }

    public void d(int i9) {
        this.f59253b = i9;
    }
}

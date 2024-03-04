package h2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import java.util.List;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final long f40335a;

    /* renamed from: b  reason: collision with root package name */
    public final List<a> f40336b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f40337a;

        /* renamed from: b  reason: collision with root package name */
        public final String f40338b;

        /* renamed from: c  reason: collision with root package name */
        public final long f40339c;

        /* renamed from: d  reason: collision with root package name */
        public final long f40340d;

        public a(String str, String str2, long j10, long j11) {
            this.f40337a = str;
            this.f40338b = str2;
            this.f40339c = j10;
            this.f40340d = j11;
        }
    }

    public b(long j10, List<a> list) {
        this.f40335a = j10;
        this.f40336b = list;
    }

    @Nullable
    public MotionPhotoMetadata a(long j10) {
        long j11;
        if (this.f40336b.size() < 2) {
            return null;
        }
        long j12 = j10;
        long j13 = -1;
        long j14 = -1;
        long j15 = -1;
        long j16 = -1;
        boolean z10 = false;
        for (int size = this.f40336b.size() - 1; size >= 0; size--) {
            a aVar = this.f40336b.get(size);
            boolean equals = "video/mp4".equals(aVar.f40337a) | z10;
            if (size == 0) {
                j11 = j12 - aVar.f40340d;
                j12 = 0;
            } else {
                long j17 = j12;
                j12 -= aVar.f40339c;
                j11 = j17;
            }
            if (!equals || j12 == j11) {
                z10 = equals;
            } else {
                j16 = j11 - j12;
                j15 = j12;
                z10 = false;
            }
            if (size == 0) {
                j13 = j12;
                j14 = j11;
            }
        }
        if (j15 == -1 || j16 == -1 || j13 == -1 || j14 == -1) {
            return null;
        }
        return new MotionPhotoMetadata(j13, j14, this.f40335a, j15, j16);
    }
}

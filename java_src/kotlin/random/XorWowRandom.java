package kotlin.random;

import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0000\u0018\u0000 \u00122\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0012B\u0017\b\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007B7\b\u0000\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\b\u0010\u0011\u001a\u00020\u0005H\u0016R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lkotlin/random/XorWowRandom;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "seed1", "", "seed2", "(II)V", x.f19108w, "y", "z", "w", NotifyType.VIBRATE, "addend", "(IIIIII)V", "nextBits", "bitCount", "nextInt", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class XorWowRandom extends Random implements Serializable {
    @NotNull
    private static final Companion Companion = new Companion(null);
    @Deprecated
    private static final long serialVersionUID = 0;
    private int addend;

    /* renamed from: v  reason: collision with root package name */
    private int f54024v;

    /* renamed from: w  reason: collision with root package name */
    private int f54025w;

    /* renamed from: x  reason: collision with root package name */
    private int f54026x;

    /* renamed from: y  reason: collision with root package name */
    private int f54027y;

    /* renamed from: z  reason: collision with root package name */
    private int f54028z;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lkotlin/random/XorWowRandom$Companion;", "", "()V", "serialVersionUID", "", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes7.dex */
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public XorWowRandom(int i9, int i10, int i11, int i12, int i13, int i14) {
        this.f54026x = i9;
        this.f54027y = i10;
        this.f54028z = i11;
        this.f54025w = i12;
        this.f54024v = i13;
        this.addend = i14;
        int i15 = i9 | i10 | i11 | i12 | i13;
        if (!(i15 != 0)) {
            throw new IllegalArgumentException("Initial state must have at least one non-zero element.".toString());
        }
        for (int i16 = 0; i16 < 64; i16++) {
            nextInt();
        }
    }

    @Override // kotlin.random.Random
    public int nextBits(int i9) {
        return RandomKt.takeUpperBits(nextInt(), i9);
    }

    @Override // kotlin.random.Random
    public int nextInt() {
        int i9 = this.f54026x;
        int i10 = i9 ^ (i9 >>> 2);
        this.f54026x = this.f54027y;
        this.f54027y = this.f54028z;
        this.f54028z = this.f54025w;
        int i11 = this.f54024v;
        this.f54025w = i11;
        int i12 = ((i10 ^ (i10 << 1)) ^ i11) ^ (i11 << 4);
        this.f54024v = i12;
        int i13 = this.addend + 362437;
        this.addend = i13;
        return i12 + i13;
    }

    public XorWowRandom(int i9, int i10) {
        this(i9, i10, 0, 0, ~i9, (i9 << 10) ^ (i10 >>> 4));
    }
}

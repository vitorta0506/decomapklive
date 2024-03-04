package e3;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.appevents.integrity.IntegrityManager;
import com.google.common.collect.ImmutableSet;
import java.util.regex.Pattern;
import kotlinx.coroutines.DebugKt;
/* loaded from: classes.dex */
final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f38363d = Pattern.compile("\\s+");

    /* renamed from: e  reason: collision with root package name */
    private static final ImmutableSet<String> f38364e = ImmutableSet.of(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, IntegrityManager.INTEGRITY_TYPE_NONE);

    /* renamed from: f  reason: collision with root package name */
    private static final ImmutableSet<String> f38365f = ImmutableSet.of("dot", "sesame", "circle");

    /* renamed from: g  reason: collision with root package name */
    private static final ImmutableSet<String> f38366g = ImmutableSet.of("filled", "open");

    /* renamed from: h  reason: collision with root package name */
    private static final ImmutableSet<String> f38367h = ImmutableSet.of("after", "before", "outside");

    /* renamed from: a  reason: collision with root package name */
    public final int f38368a;

    /* renamed from: b  reason: collision with root package name */
    public final int f38369b;

    /* renamed from: c  reason: collision with root package name */
    public final int f38370c;

    private b(int i9, int i10, int i11) {
        this.f38368a = i9;
        this.f38369b = i10;
        this.f38370c = i11;
    }

    @Nullable
    public static b a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        String f10 = com.google.common.base.c.f(str.trim());
        if (f10.isEmpty()) {
            return null;
        }
        return b(ImmutableSet.copyOf(TextUtils.split(f10, f38363d)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0081, code lost:
        if (r9.equals(kotlinx.coroutines.DebugKt.DEBUG_PROPERTY_VALUE_AUTO) != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static e3.b b(com.google.common.collect.ImmutableSet<java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e3.b.b(com.google.common.collect.ImmutableSet):e3.b");
    }
}

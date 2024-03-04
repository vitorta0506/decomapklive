package i3;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: g  reason: collision with root package name */
    public static final b f40939g = new b(-1, ViewCompat.MEASURED_STATE_MASK, 0, 0, -1, null);

    /* renamed from: a  reason: collision with root package name */
    public final int f40940a;

    /* renamed from: b  reason: collision with root package name */
    public final int f40941b;

    /* renamed from: c  reason: collision with root package name */
    public final int f40942c;

    /* renamed from: d  reason: collision with root package name */
    public final int f40943d;

    /* renamed from: e  reason: collision with root package name */
    public final int f40944e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Typeface f40945f;

    public b(int i9, int i10, int i11, int i12, int i13, @Nullable Typeface typeface) {
        this.f40940a = i9;
        this.f40941b = i10;
        this.f40942c = i11;
        this.f40943d = i12;
        this.f40944e = i13;
        this.f40945f = typeface;
    }

    @RequiresApi(19)
    public static b a(CaptioningManager.CaptionStyle captionStyle) {
        if (l0.f6985a >= 21) {
            return c(captionStyle);
        }
        return b(captionStyle);
    }

    @RequiresApi(19)
    private static b b(CaptioningManager.CaptionStyle captionStyle) {
        return new b(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    @RequiresApi(21)
    private static b c(CaptioningManager.CaptionStyle captionStyle) {
        return new b(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f40939g.f40940a, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f40939g.f40941b, captionStyle.hasWindowColor() ? captionStyle.windowColor : f40939g.f40942c, captionStyle.hasEdgeType() ? captionStyle.edgeType : f40939g.f40943d, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f40939g.f40944e, captionStyle.getTypeface());
    }
}

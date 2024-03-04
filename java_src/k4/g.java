package k4;

import android.os.Build;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final int f53640a;

    static {
        f53640a = Build.VERSION.SDK_INT >= 31 ? TPMediaCodecProfileLevel.HEVCHighTierLevel62 : 0;
    }
}

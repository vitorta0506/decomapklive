package com.tencent.thumbplayer.g.f;

import android.media.MediaFormat;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.g.b.e;
import com.tencent.thumbplayer.g.b.f;
import com.tencent.thumbplayer.g.b.g;
import com.tencent.thumbplayer.g.h.c;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: com.tencent.thumbplayer.g.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public enum EnumC0351a {
        ADAPTATION_WORKAROUND_MODE_NEVER,
        ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION,
        ADAPTATION_WORKAROUND_MODE_ALWAYS
    }

    /* loaded from: classes4.dex */
    public enum b {
        KEEP_CODEC_RESULT_NO,
        KEEP_CODEC_RESULT_YES_WITH_FLUSH,
        KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION,
        KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION
    }

    @NonNull
    public static EnumC0351a a(@NonNull String str) {
        int i9 = Build.VERSION.SDK_INT;
        if (i9 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str) && (TPSystemInfo.getDeviceName().startsWith("SM-T585") || TPSystemInfo.getDeviceName().startsWith("SM-A510") || TPSystemInfo.getDeviceName().startsWith("SM-A520") || TPSystemInfo.getDeviceName().startsWith("SM-J700"))) {
            return EnumC0351a.ADAPTATION_WORKAROUND_MODE_ALWAYS;
        }
        if (i9 < 24 && ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str))) {
            String str2 = Build.DEVICE;
            if ("flounder".equals(str2) || "flounder_lte".equals(str2) || "grouper".equals(str2) || "tilapia".equals(str2)) {
                return EnumC0351a.ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION;
            }
        }
        return EnumC0351a.ADAPTATION_WORKAROUND_MODE_NEVER;
    }

    public static void a(@NonNull e eVar, @NonNull MediaFormat mediaFormat) {
        com.tencent.thumbplayer.g.f.b d10 = com.tencent.thumbplayer.g.a.a().d();
        int max = Math.max(d10.f34090b, eVar.f33995b);
        int max2 = Math.max(d10.f34091c, eVar.f33996c);
        if (d10.f34089a) {
            d10.f34090b = max;
            d10.f34091c = max2;
        }
        int max3 = Math.max(0, c.a(eVar.f34003j, max, max2, false));
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("ReuseHelper", "initFormatWrapper initWidth:" + max + " initHeight:" + max2 + " initMaxInputSize:" + max3 + " reusePolicy:" + d10);
        }
        eVar.f34000g = max;
        eVar.f34001h = max2;
        eVar.f34002i = max3;
        mediaFormat.setInteger("max-input-size", Math.max(max3, 0));
        if (eVar.a()) {
            mediaFormat.setInteger("max-width", max);
            mediaFormat.setInteger("max-height", max2);
        }
    }

    public static boolean a(@NonNull f fVar, @NonNull e eVar) {
        return a(fVar, eVar, false);
    }

    public static boolean a(@NonNull f fVar, @NonNull e eVar, boolean z10) {
        e eVar2 = fVar.f34011e;
        if (fVar instanceof g) {
            return TextUtils.equals(eVar2.f34003j, eVar.f34003j) && eVar2.f33997d == eVar.f33997d && (fVar.f34009c || (eVar2.f33995b == eVar.f33995b && eVar2.f33996c == eVar.f33996c));
        } else if (fVar instanceof com.tencent.thumbplayer.g.b.a) {
            if (TextUtils.equals("audio/mp4a-latm", eVar2.f34003j)) {
                TextUtils.equals(eVar2.f34003j, eVar.f34003j);
            }
            return false;
        } else {
            return true;
        }
    }
}

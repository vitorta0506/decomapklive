package com.google.android.exoplayer2.drm;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.Map;
/* loaded from: classes.dex */
public final class l0 {
    private static long a(Map<String, String> map, String str) {
        if (map != null) {
            try {
                String str2 = map.get(str);
                if (str2 != null) {
                    return Long.parseLong(str2);
                }
                return -9223372036854775807L;
            } catch (NumberFormatException unused) {
                return -9223372036854775807L;
            }
        }
        return -9223372036854775807L;
    }

    @Nullable
    public static Pair<Long, Long> b(DrmSession drmSession) {
        Map<String, String> g10 = drmSession.g();
        if (g10 == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(a(g10, "LicenseDurationRemaining")), Long.valueOf(a(g10, "PlaybackDurationRemaining")));
    }
}

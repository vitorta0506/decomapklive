package com.opensource.svgaplayer.entities;

import androidx.exifinterface.media.ExifInterface;
import com.huawei.hms.opendevice.c;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.opensource.svgaplayer.BuildConfig;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\"\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0003"}, d2 = {"VALID_METHODS", "", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGAPathEntityKt {
    @NotNull
    private static final Set<String> VALID_METHODS;

    static {
        Set<String> of2;
        of2 = SetsKt__SetsKt.setOf((Object[]) new String[]{"M", "L", "H", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "C", ExifInterface.LATITUDE_SOUTH, "Q", "R", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Z", "m", NotifyType.LIGHTS, "h", NotifyType.VIBRATE, c.f27627a, NotifyType.SOUND, "q", "r", "a", "z"});
        VALID_METHODS = of2;
    }
}

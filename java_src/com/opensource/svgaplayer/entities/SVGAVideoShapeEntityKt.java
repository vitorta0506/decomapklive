package com.opensource.svgaplayer.entities;

import android.graphics.Path;
import com.opensource.svgaplayer.BuildConfig;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"sharedPath", "Landroid/graphics/Path;", "getSharedPath", "()Landroid/graphics/Path;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGAVideoShapeEntityKt {
    @NotNull
    private static final Path sharedPath = new Path();

    @NotNull
    public static final Path getSharedPath() {
        return sharedPath;
    }
}

package com.opensource.svgaplayer.bitmap;

import android.graphics.BitmapFactory;
import com.opensource.svgaplayer.BuildConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\"\u001a\u0010\u0000\u001a\u00020\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"option", "Landroid/graphics/BitmapFactory$Options;", "getOption", "()Landroid/graphics/BitmapFactory$Options;", "setOption", "(Landroid/graphics/BitmapFactory$Options;)V", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGABitmapDecoderKt {
    @NotNull
    private static BitmapFactory.Options option = new BitmapFactory.Options();

    @NotNull
    public static final BitmapFactory.Options getOption() {
        return option;
    }

    public static final void setOption(@NotNull BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(options, "<set-?>");
        option = options;
    }
}

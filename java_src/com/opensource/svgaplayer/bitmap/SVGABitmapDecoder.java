package com.opensource.svgaplayer.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.exifinterface.media.ExifInterface;
import com.opensource.svgaplayer.BuildConfig;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J%\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\u001f\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\rH&¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "decodeBitmapFrom", "Landroid/graphics/Bitmap;", "data", "reqWidth", "", "reqHeight", "(Ljava/lang/Object;II)Landroid/graphics/Bitmap;", "onDecode", "ops", "Landroid/graphics/BitmapFactory$Options;", "(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class SVGABitmapDecoder<T> {
    @Nullable
    public final Bitmap decodeBitmapFrom(T t10, int i9, int i10) {
        BitmapFactory.Options option = SVGABitmapDecoderKt.getOption();
        option.inJustDecodeBounds = i9 > 0 && i10 > 0;
        option.inPreferredConfig = Bitmap.Config.RGB_565;
        Bitmap onDecode = onDecode(t10, option);
        if (option.inJustDecodeBounds) {
            option.inSampleSize = BitmapSampleSizeCalculator.INSTANCE.calculate(option, i9, i10);
            option.inJustDecodeBounds = false;
            return onDecode(t10, option);
        }
        return onDecode;
    }

    @Nullable
    public abstract Bitmap onDecode(T t10, @NotNull BitmapFactory.Options options);
}

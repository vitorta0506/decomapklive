package org.light;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Environment;
import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.FileUtils;
/* loaded from: classes7.dex */
public class FontBitmapManager {
    private static final String FONT_STYLE_ITALIC = "italic";
    private static final String FONT_STYLE_NORMAL = "normal";
    private static final String FONT_STYLE_OBLIQUE = "oblique";
    private static final String FONT_WEIGHT_BOLD = "bold";
    private static final String FONT_WEIGHT_NORMAL = "normal";
    static final String NAME = "FontBitmapManager";
    private static final String TAG = "FontBitmapManager";
    private final Map<String, Typeface> loadedTypefaceMap = new HashMap();

    private int typeFaceStyleFromW3CFont(int i9, int i10) {
        int i11 = (i9 == 1 || i9 == 2) ? 2 : 0;
        return i10 == 1 ? i11 == 2 ? 3 : 1 : i11;
    }

    private Typeface typefaceFromW3CFontParameters(int i9, int i10, String str) {
        if (this.loadedTypefaceMap.containsKey(str) && this.loadedTypefaceMap.get(str) != null) {
            return this.loadedTypefaceMap.get(str);
        }
        return Typeface.create(str, typeFaceStyleFromW3CFont(i9, i10));
    }

    public FontBitmap createBitmap(int i9, int i10, String str, String str2, float f10, boolean z10, float f11) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        Paint paint = new Paint(1);
        if (new File(str).exists()) {
            paint.setTypeface(Typeface.createFromFile(str));
        } else {
            paint.setTypeface(typefaceFromW3CFontParameters(i9, i10, "android_system_default"));
        }
        paint.setTextSize(f10);
        paint.setColor(SupportMenu.CATEGORY_MASK);
        if (z10) {
            paint.setStyle(Paint.Style.FILL);
        } else {
            paint.setStyle(Paint.Style.STROKE);
            if (f11 > 0.0f) {
                paint.setStrokeWidth(f11);
            }
        }
        float f12 = -paint.ascent();
        int measureText = (int) (paint.measureText(str2) + 0.5f);
        int descent = (int) (paint.descent() + f12 + 0.5f);
        if (measureText <= 0 || descent <= 0) {
            return null;
        }
        FontBitmap fontBitmap = new FontBitmap();
        Bitmap createBitmap = Bitmap.createBitmap(measureText, descent, Bitmap.Config.ARGB_8888);
        new Canvas(createBitmap).drawText(str2, 0.0f, f12, paint);
        fontBitmap.bitmap = createBitmap;
        fontBitmap.ascent = paint.ascent();
        fontBitmap.descent = paint.descent();
        return fontBitmap;
    }

    public int getTextLineHeight(String str, String str2, int i9, String str3, String str4) {
        int i10;
        if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
            return 0;
        }
        if (!"normal".equals(str)) {
            if (FONT_STYLE_ITALIC.equals(str)) {
                i10 = 1;
            } else if (FONT_STYLE_OBLIQUE.equals(str)) {
                i10 = 2;
            }
            int i11 = (!"normal".equals(str2) && FONT_WEIGHT_BOLD.equals(str2)) ? 1 : 0;
            Paint paint = new Paint(1);
            paint.setTypeface(typefaceFromW3CFontParameters(i10, i11, str3));
            paint.setTextSize(i9);
            Rect rect = new Rect();
            paint.getTextBounds(str4, 0, str4.length(), rect);
            return rect.height();
        }
        i10 = 0;
        if ("normal".equals(str2)) {
            Paint paint2 = new Paint(1);
            paint2.setTypeface(typefaceFromW3CFontParameters(i10, i11, str3));
            paint2.setTextSize(i9);
            Rect rect2 = new Rect();
            paint2.getTextBounds(str4, 0, str4.length(), rect2);
            return rect2.height();
        }
        Paint paint22 = new Paint(1);
        paint22.setTypeface(typefaceFromW3CFontParameters(i10, i11, str3));
        paint22.setTextSize(i9);
        Rect rect22 = new Rect();
        paint22.getTextBounds(str4, 0, str4.length(), rect22);
        return rect22.height();
    }

    public float measureText(int i9, int i10, String str, String str2, float f10, boolean z10, float f11) {
        if (TextUtils.isEmpty(str2)) {
            return 0.0f;
        }
        Paint paint = new Paint(1);
        if (new File(str).exists()) {
            paint.setTypeface(Typeface.createFromFile(str));
        } else {
            paint.setTypeface(typefaceFromW3CFontParameters(i9, i10, "android_system_default"));
        }
        paint.setTextSize(f10);
        if (z10) {
            paint.setStyle(Paint.Style.FILL);
        } else {
            paint.setStyle(Paint.Style.STROKE);
            if (f11 > 0.0f) {
                paint.setStrokeWidth(f11);
            }
        }
        return paint.measureText(str2);
    }

    public void saveImage(Bitmap bitmap) {
        File file = new File(Environment.getExternalStorageDirectory(), "FontBitmap");
        if (!file.exists()) {
            file.mkdir();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(file, System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG));
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
    }
}

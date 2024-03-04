package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ReplacementSpan;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class SpanColorUtils {

    /* loaded from: classes3.dex */
    public static class VerticalCenterSpan extends ImageSpan {
        public VerticalCenterSpan(Drawable drawable) {
            super(drawable);
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i9, int i10, float f10, int i11, int i12, int i13, Paint paint) {
            Drawable drawable = getDrawable();
            canvas.save();
            canvas.translate(f10, (((i13 - i11) - drawable.getBounds().bottom) / 2) + i11);
            try {
                drawable.draw(canvas);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            canvas.restore();
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i9, int i10, Paint.FontMetricsInt fontMetricsInt) {
            Rect bounds = getDrawable().getBounds();
            if (fontMetricsInt != null) {
                Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
                int i11 = fontMetricsInt2.bottom - fontMetricsInt2.top;
                int i12 = (bounds.bottom - bounds.top) / 2;
                int i13 = i11 / 4;
                int i14 = i12 - i13;
                int i15 = -(i12 + i13);
                fontMetricsInt.ascent = i15;
                fontMetricsInt.top = i15;
                fontMetricsInt.bottom = i14;
                fontMetricsInt.descent = i14;
            }
            return bounds.right;
        }
    }

    public static SpannableStringBuilder append(SpannableStringBuilder spannableStringBuilder, ImageSpan imageSpan) {
        String obj = imageSpan.toString();
        spannableStringBuilder.append((CharSequence) obj);
        spannableStringBuilder.setSpan(imageSpan, spannableStringBuilder.length() - obj.length(), spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static SpannableStringBuilder appendSpanner(TextView textView, Drawable drawable, SpannableStringBuilder spannableStringBuilder) {
        spannableStringBuilder.append("  ");
        int minimumWidth = drawable.getMinimumWidth();
        int minimumHeight = drawable.getMinimumHeight();
        textView.measure(0, 0);
        float measuredHeight = (textView.getMeasuredHeight() - textView.getCompoundPaddingTop()) - textView.getCompoundPaddingBottom();
        drawable.setBounds(0, 0, (int) ((minimumWidth * measuredHeight) / minimumHeight), (int) measuredHeight);
        spannableStringBuilder.setSpan(new VerticalCenterSpan(drawable), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 17);
        spannableStringBuilder.append(" ");
        return spannableStringBuilder;
    }

    public static void appendSpannerDrawable(TextView textView, Drawable drawable) {
        textView.append("  ");
        CharSequence text = textView.getText();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
        int minimumWidth = drawable.getMinimumWidth();
        int minimumHeight = drawable.getMinimumHeight();
        textView.measure(0, 0);
        float measuredHeight = (textView.getMeasuredHeight() - textView.getCompoundPaddingTop()) - textView.getCompoundPaddingBottom();
        drawable.setBounds(0, 0, (int) ((minimumWidth * measuredHeight) / minimumHeight), (int) measuredHeight);
        spannableStringBuilder.setSpan(new VerticalCenterSpan(drawable), text.length() - 1, text.length(), 17);
        textView.setText(spannableStringBuilder);
        textView.append(" ");
    }

    public static void appendSpannerRes(TextView textView, int i9) {
        textView.append("  ");
        CharSequence text = textView.getText();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
        Drawable drawable = textView.getContext().getResources().getDrawable(i9);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        spannableStringBuilder.setSpan(new VerticalCenterSpan(drawable), text.length() - 1, text.length(), 17);
        textView.setText(spannableStringBuilder);
        textView.append(" ");
    }

    private static boolean containsChar(String str, String str2) {
        if (str2.length() == 1 && str2.matches("[A-Za-z]")) {
            return str.toUpperCase().contains(str2.toUpperCase());
        }
        return false;
    }

    private static Map<Integer, Integer> getCharIndex(String str, String str2) {
        HashMap hashMap = new HashMap();
        if (str.contains(str2) || str.contains(str2.toLowerCase()) || str.contains(str2.toUpperCase())) {
            String upperCase = str2.toUpperCase();
            String lowerCase = str2.toLowerCase();
            int indexOf = str.indexOf(upperCase);
            while (indexOf >= 0) {
                Integer num = (Integer) hashMap.get(Integer.valueOf(indexOf));
                if (!hashMap.containsKey(Integer.valueOf(indexOf)) || (num != null && num.intValue() < str2.length())) {
                    hashMap.put(Integer.valueOf(indexOf), Integer.valueOf(str2.length()));
                }
                indexOf = str.indexOf(upperCase, indexOf + 1);
            }
            int indexOf2 = str.indexOf(lowerCase);
            while (indexOf2 >= 0) {
                Integer num2 = (Integer) hashMap.get(Integer.valueOf(indexOf2));
                if (!hashMap.containsKey(Integer.valueOf(indexOf2)) || (num2 != null && num2.intValue() < str2.length())) {
                    hashMap.put(Integer.valueOf(indexOf2), Integer.valueOf(str2.length()));
                }
                indexOf2 = str.indexOf(upperCase, indexOf2 + 1);
            }
            return hashMap;
        }
        return hashMap;
    }

    public static Integer getFirstCharIndex(String str, String str2) {
        if (!str.toUpperCase().contains(str2.toUpperCase())) {
            return -1;
        }
        return Integer.valueOf(str.toUpperCase().indexOf(str2.toUpperCase()));
    }

    public static void setColorSpan(int i9, SpannableStringBuilder spannableStringBuilder, String str) {
        int indexOf = spannableStringBuilder.toString().indexOf(str);
        if (indexOf >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), indexOf, str.length() + indexOf, 33);
        }
    }

    public static void setCutSpannerString(TextView textView, String str, int i9, int i10) {
        CharSequence text = textView.getText();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int intValue = str != null ? getFirstCharIndex(text.toString(), str).intValue() : -1;
        if (intValue >= 0) {
            if (intValue > 3 + i10 + 1) {
                CharSequence subSequence = text.subSequence(intValue - i10, text.length());
                spannableStringBuilder.append((CharSequence) "...").append(subSequence);
                intValue -= (text.length() - subSequence.length()) - 3;
            } else {
                spannableStringBuilder.append(text);
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), intValue, str.length() + intValue, 18);
        } else {
            spannableStringBuilder.append(text);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), 0, 0, 18);
        }
        textView.setText(spannableStringBuilder);
    }

    public static void setSpannerSize(TextView textView, String str, int i9) {
        int i10;
        int i11;
        CharSequence text = textView.getText();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
        if (text.toString().contains(str)) {
            i11 = text.toString().indexOf(str);
            i10 = str.length() + i11;
        } else {
            i10 = 0;
            i11 = 0;
        }
        if (i10 > 0) {
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i9), i11, i10, 18);
        } else {
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i9), 0, 0, 18);
        }
        textView.setText(spannableStringBuilder);
    }

    public static void setSpannerString(TextView textView, String str, int i9) {
        String trim = textView.getText().toString().trim();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(trim);
        int intValue = str != null ? getFirstCharIndex(trim, str).intValue() : -1;
        if (intValue >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), intValue, str.length() + intValue, 18);
        } else {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), 0, 0, 18);
        }
        textView.setText(spannableStringBuilder);
    }

    /* loaded from: classes3.dex */
    public static class VerticalTextSpan extends ReplacementSpan {
        private float textSize;
        private Typeface typeFace;

        public VerticalTextSpan(float f10) {
            this.textSize = f10;
        }

        private TextPaint getCustomTextPaint(Paint paint) {
            TextPaint textPaint = new TextPaint(paint);
            Typeface typeface = this.typeFace;
            if (typeface != null) {
                textPaint.setTypeface(typeface);
            }
            textPaint.setTextSize(this.textSize);
            return textPaint;
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(@NonNull Canvas canvas, CharSequence charSequence, int i9, int i10, float f10, int i11, int i12, int i13, @NonNull Paint paint) {
            CharSequence subSequence = charSequence.subSequence(i9, i10);
            TextPaint customTextPaint = getCustomTextPaint(paint);
            Paint.FontMetricsInt fontMetricsInt = customTextPaint.getFontMetricsInt();
            canvas.drawText(subSequence.toString(), f10, i12 - (((((fontMetricsInt.descent + i12) + i12) + fontMetricsInt.ascent) / 2) - ((i13 + i11) / 2)), customTextPaint);
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(@NonNull Paint paint, CharSequence charSequence, int i9, int i10, @Nullable Paint.FontMetricsInt fontMetricsInt) {
            return (int) getCustomTextPaint(paint).measureText(charSequence.subSequence(i9, i10).toString());
        }

        public VerticalTextSpan(Typeface typeface, float f10) {
            this.textSize = f10;
            this.typeFace = typeface;
        }
    }

    public static SpannableStringBuilder append(SpannableStringBuilder spannableStringBuilder, SpannableStringBuilder spannableStringBuilder2) {
        String spannableStringBuilder3 = spannableStringBuilder2.toString();
        spannableStringBuilder.append((CharSequence) spannableStringBuilder3);
        spannableStringBuilder.setSpan(spannableStringBuilder2, spannableStringBuilder.length() - spannableStringBuilder3.length(), spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static void setColorSpan(int i9, SpannableStringBuilder spannableStringBuilder, String str, float f10) {
        int indexOf = spannableStringBuilder.toString().indexOf(str);
        if (indexOf >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), indexOf, str.length() + indexOf, 33);
            spannableStringBuilder.setSpan(new RelativeSizeSpan(f10), indexOf, str.length() + indexOf, 33);
        }
    }

    public static SpannableStringBuilder appendSpanner(Context context, float f10, Drawable drawable, SpannableStringBuilder spannableStringBuilder) {
        spannableStringBuilder.append("  ");
        int minimumWidth = drawable.getMinimumWidth();
        int minimumHeight = drawable.getMinimumHeight();
        TextView textView = new TextView(context);
        textView.setTextSize(f10);
        textView.measure(0, 0);
        float measuredHeight = (textView.getMeasuredHeight() - textView.getCompoundPaddingTop()) - textView.getCompoundPaddingBottom();
        drawable.setBounds(0, 0, (int) ((minimumWidth * measuredHeight) / minimumHeight), (int) measuredHeight);
        spannableStringBuilder.setSpan(new VerticalCenterSpan(drawable), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 17);
        spannableStringBuilder.append(" ");
        return spannableStringBuilder;
    }

    public static void setSpannerString(TextView textView, int i9, int i10, String... strArr) {
        String trim = textView.getText().toString().trim();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(trim);
        HashMap hashMap = new HashMap();
        if (strArr != null) {
            for (String str : strArr) {
                hashMap.putAll(getCharIndex(trim, str));
            }
        }
        if (hashMap.size() > 0) {
            for (Integer num : hashMap.keySet()) {
                if (i10 != num.intValue()) {
                    Integer num2 = (Integer) hashMap.get(num);
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), num.intValue(), num.intValue() + (num2 == null ? 0 : num2.intValue()), 18);
                }
            }
        } else {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), 0, 0, 18);
        }
        textView.setText(spannableStringBuilder);
    }
}

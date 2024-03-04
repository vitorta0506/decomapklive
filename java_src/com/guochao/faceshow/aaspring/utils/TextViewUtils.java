package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.lib_base.R$dimen;
/* loaded from: classes3.dex */
public class TextViewUtils {
    public static int calTextWidth(TextView textView, String str) {
        if (str == null) {
            str = "";
        }
        return (int) textView.getPaint().measureText(str);
    }

    public static boolean containsAllEmoji(String str) {
        int length = str.length();
        for (int i9 = 0; i9 < length; i9++) {
            if (isEmojiCharacter(str.charAt(i9))) {
                return false;
            }
        }
        return true;
    }

    private static StaticLayout getStaticLayout(TextView textView, int i9) {
        return new StaticLayout(textView.getText(), 0, textView.getText().length(), textView.getPaint(), i9, Layout.Alignment.ALIGN_NORMAL, textView.getLineSpacingMultiplier(), textView.getLineSpacingExtra(), textView.getIncludeFontPadding(), textView.getEllipsize(), i9);
    }

    @RequiresApi(api = 23)
    private static StaticLayout getStaticLayout23(TextView textView, int i9) {
        StaticLayout.Builder maxLines = StaticLayout.Builder.obtain(textView.getText(), 0, textView.getText().length(), textView.getPaint(), i9).setAlignment(Layout.Alignment.ALIGN_NORMAL).setTextDirection(TextDirectionHeuristics.FIRSTSTRONG_LTR).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency()).setMaxLines(textView.getMaxLines() == -1 ? Integer.MAX_VALUE : textView.getMaxLines());
        if (Build.VERSION.SDK_INT >= 26) {
            maxLines.setJustificationMode(textView.getJustificationMode());
        }
        if (textView.getEllipsize() != null && textView.getKeyListener() == null) {
            maxLines.setEllipsize(textView.getEllipsize()).setEllipsizedWidth(i9);
        }
        return maxLines.build();
    }

    public static String getSubStr(String str, int i9) {
        if (TextUtils.isEmpty(str) || i9 <= 0 || length(str) <= i9) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        char[] charArray = str.toCharArray();
        int i10 = 0;
        int i11 = 0;
        while (i10 < charArray.length && i11 < i9) {
            char c10 = charArray[i10];
            if (isEmojiCharacter(Character.codePointAt(charArray, i10))) {
                i11++;
                sb2.append(c10);
                i10++;
                sb2.append(charArray[i10]);
            } else if (isLetter(c10)) {
                i11++;
                sb2.append(c10);
            } else {
                i11 += 2;
                sb2.append(c10);
            }
            i10++;
        }
        sb2.append("...");
        return sb2.toString();
    }

    public static int getTextViewLines(TextView textView, int i9) {
        StaticLayout staticLayout;
        int compoundPaddingLeft = (i9 - textView.getCompoundPaddingLeft()) - textView.getCompoundPaddingRight();
        if (Build.VERSION.SDK_INT >= 23) {
            staticLayout = getStaticLayout23(textView, compoundPaddingLeft);
        } else {
            staticLayout = getStaticLayout(textView, compoundPaddingLeft);
        }
        int lineCount = staticLayout.getLineCount();
        int maxLines = textView.getMaxLines();
        return maxLines > lineCount ? lineCount : maxLines;
    }

    public static boolean isEmojiCharacter(char c10) {
        return c10 == 0 || c10 == '\t' || c10 == '\n' || c10 == '\r' || (c10 >= ' ' && c10 <= 55295) || (c10 >= 57344 && c10 <= 65533);
    }

    public static boolean isEmojiCharacter(int i9) {
        return (128 <= i9 && i9 <= 687) || (768 <= i9 && i9 <= 1023) || ((1536 <= i9 && i9 <= 1791) || ((3072 <= i9 && i9 <= 3199) || ((7616 <= i9 && i9 <= 7679) || ((7680 <= i9 && i9 <= 7935) || ((8192 <= i9 && i9 <= 8351) || ((8400 <= i9 && i9 <= 8527) || ((8592 <= i9 && i9 <= 9215) || ((9312 <= i9 && i9 <= 9727) || ((9728 <= i9 && i9 <= 10223) || ((10496 <= i9 && i9 <= 10751) || ((11008 <= i9 && i9 <= 11263) || ((11360 <= i9 && i9 <= 11391) || ((11776 <= i9 && i9 <= 11903) || ((42128 <= i9 && i9 <= 42191) || ((57344 <= i9 && i9 <= 63743) || ((65024 <= i9 && i9 <= 65039) || ((65072 <= i9 && i9 <= 65103) || ((126976 <= i9 && i9 <= 127023) || ((127136 <= i9 && i9 <= 127231) || ((127232 <= i9 && i9 <= 128591) || ((128640 <= i9 && i9 <= 128767) || ((129296 <= i9 && i9 <= 129387) || (129408 <= i9 && i9 <= 129504)))))))))))))))))))))));
    }

    public static boolean isLetter(char c10) {
        return c10 / 128 == 0;
    }

    public static int length(String str) {
        if (str == null) {
            return 0;
        }
        int i9 = 0;
        for (char c10 : str.toCharArray()) {
            i9++;
            if (!isLetter(c10)) {
                i9++;
            }
        }
        return i9;
    }

    public static void setCustomBold(TextView... textViewArr) {
        setCustomBold(R$dimen.text_bold_level_4, textViewArr);
    }

    public static void setCustomBoldById(Activity activity, int... iArr) {
        setCustomBoldById(activity.getWindow().getDecorView(), iArr);
    }

    public static void setGradientTextColor(TextView textView, @ColorRes int i9, @ColorRes int i10, int i11) {
        if (i11 == 1) {
            textView.getPaint().setShader(new LinearGradient(0.0f, 0.0f, 0.0f, textView.getPaint().getTextSize() * 2.0f, ContextCompat.getColor(textView.getContext(), i9), ContextCompat.getColor(textView.getContext(), i10), Shader.TileMode.CLAMP));
            return;
        }
        textView.getPaint().setShader(new LinearGradient(0.0f, 0.0f, textView.getPaint().measureText(textView.getText().toString()), 0.0f, ContextCompat.getColor(textView.getContext(), i9), ContextCompat.getColor(textView.getContext(), i10), Shader.TileMode.CLAMP));
    }

    public static void setMaxEcplise(TextView textView, int i9, String str) {
        String subStr;
        if (TextUtils.isEmpty(str)) {
            textView.setText("");
        } else if (length(str) <= i9) {
            textView.setText(str);
        } else {
            if (str.length() < i9) {
                subStr = subStr(str, str.length());
            } else {
                subStr = subStr(str, i9);
            }
            textView.setText(subStr);
        }
    }

    public static String subStr(String str, int i9) {
        if (TextUtils.isEmpty(str) || i9 <= 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        char[] charArray = str.toCharArray();
        int i10 = 0;
        int i11 = 0;
        boolean z10 = false;
        while (i10 < charArray.length && i11 < i9) {
            char c10 = charArray[i10];
            if (isEmojiCharacter(Character.codePointAt(charArray, i10)) && i10 < charArray.length - 1) {
                i11++;
                stringBuffer.append(c10);
                i10++;
                stringBuffer.append(charArray[i10]);
                if (i10 == charArray.length - 1) {
                    z10 = true;
                }
            } else if (isLetter(c10)) {
                i11++;
                stringBuffer.append(c10);
            } else {
                i11 += 2;
                stringBuffer.append(c10);
            }
            i10++;
        }
        if (z10) {
            return stringBuffer.toString();
        }
        stringBuffer.append("...");
        return stringBuffer.toString();
    }

    public static int calTextWidth(int i9, String str) {
        if (str == null) {
            str = "";
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(i9);
        return (int) textPaint.measureText(str);
    }

    public static void setCustomBold(@DimenRes int i9, TextView... textViewArr) {
        for (TextView textView : textViewArr) {
            textView.getPaint().setStyle(Paint.Style.FILL_AND_STROKE);
            textView.getPaint().setStrokeWidth(GCApplication.app().getResources().getDimension(i9));
            textView.invalidate();
        }
    }

    public static void setCustomBoldById(View view, int... iArr) {
        int length = iArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            setCustomBold((TextView) view.findViewById(iArr[i9]));
        }
    }

    public static int calTextWidth(TextPaint textPaint, String str) {
        if (str == null) {
            str = "";
        }
        return (int) textPaint.measureText(str);
    }
}

package com.guochao.faceshow.aaspring.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ReportController;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class StringUtils {
    static final String CHARS = "0123456789，。,.@#$_&-+()/*\"':;!?~`|•√π÷×¶∆£¢€¥^°={}\\%✓[]（）/、“”：；！？~`|•√π÷×*¶£¢€¥^°=「」\\%‘’［］";
    public static final String HTTP = "http://";
    public static final String HTTPS = "https://";
    public static final char INVISIBLE_CHAR = 8203;
    static final HashMap<String, String> NUMBERS;

    static {
        HashMap<String, String> hashMap = new HashMap<>();
        NUMBERS = hashMap;
        hashMap.put("١", "1");
        hashMap.put("٢", "2");
        hashMap.put("٣", "3");
        hashMap.put("٤", "4");
        hashMap.put("٥", "5");
        hashMap.put("٦", MVPActivity.FROM_BAG_BADGE);
        hashMap.put("٧", "7");
        hashMap.put("٨", ReportController.REPORT_TYPE_ONE_V_ONE);
        hashMap.put("٩", "9");
        hashMap.put("٠", "0");
    }

    public static String addInvisibleCharBeforeWhiteSpace(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if (isSpecialChar(charAt)) {
                sb2.append(INVISIBLE_CHAR);
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }

    public static boolean containsEmoji(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int length = str.length();
        for (int i9 = 0; i9 < length; i9++) {
            if (!isEmojiCharacter(str.charAt(i9))) {
                return true;
            }
        }
        return false;
    }

    public static String convertCharset(String str) {
        return (!TextUtils.isEmpty(str) && new String(str.getBytes(StandardCharsets.ISO_8859_1)).equals(str)) ? new String(str.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8) : str;
    }

    public static String convertKeywordLoadOrSearch(String str) {
        if (str.toLowerCase().trim().startsWith("www.")) {
            str = "http://" + str;
        } else if (str.startsWith("ftp.")) {
            str = "ftp://" + str;
        }
        String lowerCase = str.toLowerCase();
        boolean z10 = true;
        boolean z11 = TextUtils.isDigitsOnly(lowerCase.replace(".", "")) && lowerCase.replace(".", "").length() >= 4 && lowerCase.contains(".");
        if (!lowerCase.startsWith("ftp://") && !lowerCase.startsWith("http://") && !lowerCase.startsWith("https://") && !z11) {
            z10 = false;
        }
        if (z11 && (!lowerCase.startsWith("http://") || !lowerCase.startsWith("https://"))) {
            str = "http://" + str;
        }
        if (z10) {
            return str;
        }
        return "http://" + str;
    }

    public static String convertNumberToNormalNumber(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        ArrayList arrayList = new ArrayList(NUMBERS.entrySet());
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            Map.Entry entry = (Map.Entry) arrayList.get(i9);
            str = str.replaceAll((String) entry.getKey(), (String) entry.getValue());
        }
        return str;
    }

    private static String format(long j10) {
        if (j10 < 10) {
            return "0" + j10;
        }
        return String.valueOf(j10);
    }

    public static String formatTime(long j10) {
        long j11 = j10 / 1000;
        if (j11 < 60) {
            return "00:" + format(j11);
        }
        return format(j11 / 60) + CertificateUtil.DELIMITER + format(j11 % 60);
    }

    public static Bitmap fromText(float f10, String str) {
        Paint paint = new Paint();
        paint.setTextSize(f10);
        paint.setTextAlign(Paint.Align.LEFT);
        paint.setColor(-1);
        paint.setShadowLayer(DensityUtil.dp2px(3.0f), 0.0f, 2.0f, Color.parseColor("#7d000000"));
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        Bitmap createBitmap = Bitmap.createBitmap((int) paint.measureText(str), fontMetricsInt.descent - fontMetricsInt.ascent, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawText(str, 0.0f, fontMetricsInt.leading - fontMetricsInt.ascent, paint);
        canvas.save();
        return createBitmap;
    }

    public static String getPriceString(String str) {
        String[] split = str.split("\\.");
        if (split.length == 1) {
            return str;
        }
        if ("0".equals(split[1])) {
            return split[0];
        }
        return "00".equals(split[1]) ? split[0] : str;
    }

    public static String getUrlFromType() {
        if (BaseConfig.isChinese()) {
            return String.format("?fromeType=%s&token=", "hello");
        }
        return String.format("?fromeType=%s&token=", "facecast");
    }

    public static boolean hasChinese(String str) {
        return (TextUtils.isEmpty(str) || str.getBytes().length == str.length()) ? false : true;
    }

    public static boolean hasUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return androidx.core.util.PatternsCompat.WEB_URL.matcher(str).find();
    }

    public static boolean hasWord(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String trim = str.trim();
        if (trim.isEmpty()) {
            return false;
        }
        for (char c10 : trim.toCharArray()) {
            if (!CHARS.contains(String.valueOf(c10))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isArabic(char c10) {
        return (c10 >= 1536 && c10 <= 1791) || (c10 >= 1872 && c10 <= 1919) || ((c10 >= 64336 && c10 <= 65023) || (c10 >= 65136 && c10 <= 65279));
    }

    public static boolean isArabic(String str) {
        if (str == null) {
            return false;
        }
        for (char c10 : str.toCharArray()) {
            if (!isArabic(c10)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isChinese(char c10) {
        return c10 >= 19968 && c10 <= 40869;
    }

    public static boolean isChinese(String str) {
        if (str == null) {
            return false;
        }
        for (char c10 : str.toCharArray()) {
            if (isChinese(c10)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isEmojiCharacter(char c10) {
        return c10 == 0 || c10 == '\t' || c10 == '\n' || c10 == '\r' || (c10 >= ' ' && c10 <= 55295) || ((c10 >= 57344 && c10 <= 65533) || (c10 >= 0 && c10 <= 65535));
    }

    public static boolean isPhoneNumberValid(String str) {
        if (BaseConfig.isChinese()) {
            return !TextUtils.isEmpty(str) && str.length() == 11 && str.matches(BaseConfig.TEL_REGEX);
        }
        return true;
    }

    private static boolean isSpecialChar(char c10) {
        return c10 == ' ' || c10 == '@' || c10 == '#';
    }

    public static int parseIntSafely(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String removeInvisibleCharBeforeWhiteSpace(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if (charAt != 8203) {
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }

    public static String replacePublicStr(String str, String str2) {
        String replaceAll = str.replaceAll(" ", "");
        String replaceAll2 = str2.replaceAll(" ", "");
        if (TextUtils.isEmpty(replaceAll)) {
            return "";
        }
        if (TextUtils.isEmpty(replaceAll2)) {
            return replaceAll;
        }
        replaceAll.length();
        replaceAll2.length();
        for (int i9 = 0; i9 < replaceAll.length(); i9++) {
            int i10 = 0;
            for (int length = replaceAll.length() - i9; length <= replaceAll.length(); length++) {
                String substring = replaceAll.substring(i10, length);
                if (replaceAll2.contains(substring)) {
                    return substring.equals(replaceAll) ? "" : replaceAll.replaceAll(substring, "");
                }
                i10++;
            }
        }
        return "";
    }

    public static String setEncryptionEmail(String str) {
        String[] split = str.split("@");
        if (TextUtils.isEmpty(split[0]) || split[0].length() <= 3) {
            return str;
        }
        String str2 = "";
        for (int i9 = 0; i9 < split[0].length() - 2; i9++) {
            str2 = str2 + ProxyConfig.MATCH_ALL_SCHEMES;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(split[0].substring(0, 1));
        sb2.append(str2);
        sb2.append(split[0].substring(split[0].length() - 1));
        sb2.append("@");
        sb2.append(TextUtils.isEmpty(split[1]) ? "" : split[1]);
        return sb2.toString();
    }

    public static String setEncryptionMobile(String str) {
        if (str.length() >= 6 && str.length() < 8) {
            return str.substring(0, 2) + "**" + str.substring(4, str.length());
        } else if (str.length() >= 8 && str.length() < 11) {
            return str.substring(0, 3) + "***" + str.substring(6, str.length());
        } else {
            return str.substring(0, 3) + "****" + str.substring(7, str.length());
        }
    }

    public static String tans(String str) {
        return new String(str.getBytes(Charset.forName(com.google.zxing.common.StringUtils.GB2312)), StandardCharsets.UTF_8);
    }

    public static String toUnicode(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < str.length(); i9++) {
            sb2.append(String.format("\\u%04x", Integer.valueOf(str.charAt(i9))));
        }
        return sb2.toString();
    }

    public static String unescape(String str) {
        char c10;
        char c11;
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        int i9 = -1;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int charAt = str.charAt(i10);
            if (charAt == 37) {
                int i12 = i10 + 1;
                char charAt2 = str.charAt(i12);
                int lowerCase = (Character.isDigit(charAt2) ? charAt2 - '0' : (Character.toLowerCase(c10) + '\n') - 97) & 15;
                i10 = i12 + 1;
                char charAt3 = str.charAt(i10);
                charAt = (lowerCase << 4) | ((Character.isDigit(charAt3) ? charAt3 - '0' : (Character.toLowerCase(c11) + '\n') - 97) & 15);
            } else if (charAt == 43) {
                charAt = 32;
            }
            if ((charAt & 192) == 128) {
                i11 = (i11 << 6) | (charAt & 63);
                i9--;
                if (i9 == 0) {
                    stringBuffer.append((char) i11);
                }
            } else if ((charAt & 128) == 0) {
                stringBuffer.append((char) charAt);
            } else if ((charAt & 224) == 192) {
                i11 = charAt & 31;
                i9 = 1;
            } else if ((charAt & 240) == 224) {
                i11 = charAt & 15;
                i9 = 2;
            } else if ((charAt & 248) == 240) {
                i11 = charAt & 7;
                i9 = 3;
            } else if ((charAt & 252) == 248) {
                i11 = charAt & 3;
                i9 = 4;
            } else {
                i11 = charAt & 1;
                i9 = 5;
            }
            i10++;
        }
        return stringBuffer.toString();
    }

    public static void unescapeJava(Writer writer, String str) throws IOException {
        if (writer == null) {
            throw new IllegalArgumentException("The Writer must not be null");
        }
        if (str == null) {
            return;
        }
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(4);
        boolean z10 = false;
        boolean z11 = false;
        for (int i9 = 0; i9 < length; i9++) {
            char charAt = str.charAt(i9);
            if (z11) {
                sb2.append(charAt);
                if (sb2.length() == 4) {
                    try {
                        writer.write((char) Integer.parseInt(sb2.toString(), 16));
                        sb2.setLength(0);
                        z10 = false;
                        z11 = false;
                    } catch (NumberFormatException e10) {
                        throw new RuntimeException("Unable to parse unicode value: " + ((Object) sb2), e10);
                    }
                } else {
                    continue;
                }
            } else if (z10) {
                if (charAt == '\"') {
                    writer.write(34);
                } else if (charAt == '\'') {
                    writer.write(39);
                } else if (charAt == '\\') {
                    writer.write(92);
                } else if (charAt == 'b') {
                    writer.write(8);
                } else if (charAt == 'f') {
                    writer.write(12);
                } else if (charAt == 'n') {
                    writer.write(10);
                } else if (charAt == 'r') {
                    writer.write(13);
                } else if (charAt == 't') {
                    writer.write(9);
                } else if (charAt != 'u') {
                    writer.write(charAt);
                } else {
                    z10 = false;
                    z11 = true;
                }
                z10 = false;
            } else if (charAt == '\\') {
                z10 = true;
            } else {
                writer.write(charAt);
            }
        }
        if (z10) {
            writer.write(92);
        }
    }

    private static CharSequence whiteSpan(String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#ffffff")), 0, str.length(), 33);
        return spannableString;
    }
}

package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import io.jsonwebtoken.JwtParser;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public final class AFa1vSDK {
    private static char AFInAppEventParameterName = 0;
    private static int AFInAppEventType = 0;
    private static char AFKeystoreWrapper = 8533;
    private static char AFLogger = 1236;
    private static int afDebugLog = 0;
    private static int afErrorLog = 1;
    private static char afRDLog = 24716;
    private static long valueOf = 5326925168837040381L;
    private static char values = 61554;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String AFInAppEventParameterName(Context context, long j10) {
        String AFInAppEventType2;
        String intern;
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        StringBuilder sb4 = new StringBuilder();
        try {
            if ((AFKeystoreWrapper(AFInAppEventType("뜉\uf5cd庬\ue5bf", "뵊\uf3f3閔녀\uf48d鑉㢕ڣ肨\udb11הּ봙境\udf04怜陶⒥ં嫙좞ꐸ嶆坞뻌鈒\uf640\ue0a8읏뷟倷뿯Ἐﲈ楚", (char) View.getDefaultSize(0, 0), ViewConfiguration.getEdgeSlop() >> 16, "飽솞\u0a37䧭").intern()) ? '1' : '2') != '2') {
                int i9 = afErrorLog + 115;
                afDebugLog = i9 % 128;
                if ((i9 % 2 != 0 ? 'B' : 'X') == 'X') {
                    AFInAppEventType2 = AFInAppEventType("ꡌ셄", 1 - (ViewConfiguration.getFadingEdgeLength() >> 16));
                } else {
                    intern = AFInAppEventType("ꡌ셄", 0 << (ViewConfiguration.getFadingEdgeLength() + 115)).intern();
                    sb3.append(intern);
                    sb2.append(AFKeystoreWrapper(context, sb3));
                    sb2.append(new SimpleDateFormat(AFInAppEventType("\u0e5d뗯\u0e5d뗯㐞\ue1e6瀣ㄞﱉ㉜\uf0ab詡䧸縙꒳\uf4d5\ue356븩", 17 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))).intern(), Locale.US).format(new Date(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime)));
                    int i10 = afDebugLog + 89;
                    afErrorLog = i10 % 128;
                    int i11 = i10 % 2;
                    sb2.append(j10);
                    AFInAppEventType(sb4);
                    return AFInAppEventType(AFKeystoreWrapper(AFKeystoreWrapper(AFInAppEventType(sb2.toString()), sb3.toString(), 17), sb4.toString(), 27), Long.valueOf(j10));
                }
            } else {
                AFInAppEventType2 = AFInAppEventType("뱵Ⱂ", -TextUtils.lastIndexOf("", '0', 0));
            }
            sb2.append(new SimpleDateFormat(AFInAppEventType("\u0e5d뗯\u0e5d뗯㐞\ue1e6瀣ㄞﱉ㉜\uf0ab詡䧸縙꒳\uf4d5\ue356븩", 17 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))).intern(), Locale.US).format(new Date(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime)));
            int i102 = afDebugLog + 89;
            afErrorLog = i102 % 128;
            int i112 = i102 % 2;
            sb2.append(j10);
            AFInAppEventType(sb4);
            return AFInAppEventType(AFKeystoreWrapper(AFKeystoreWrapper(AFInAppEventType(sb2.toString()), sb3.toString(), 17), sb4.toString(), 27), Long.valueOf(j10));
        } catch (PackageManager.NameNotFoundException unused) {
            return AFInAppEventType("ꎔ圂²窰", "\ud98a\uf2d0翅赌\uea0eﳱ摃퓧롁ﬕ渳Ⲗ绿嘜쩏\uf632獅斏榃\u05ed\udf10唂ᓒ謾ᖴᑎ鏩\ue138䗥\u061c\ud9c2\ud90a", (char) (45056 - View.combineMeasuredStates(0, 0)), KeyEvent.getDeadChar(0, 0), "飽솞\u0a37䧭").intern();
        }
        intern = AFInAppEventType2.intern();
        sb3.append(intern);
        sb2.append(AFKeystoreWrapper(context, sb3));
    }

    private static String AFInAppEventType(String str, Long l10) {
        long j10 = 0;
        int i9 = 0;
        if (str != null) {
            if (l10 != null) {
                int i10 = afDebugLog + 53;
                afErrorLog = i10 % 128;
                if ((i10 % 2 == 0 ? '1' : (char) 28) == '1' ? str.length() == 95 : str.length() == 32) {
                    StringBuilder sb2 = new StringBuilder(str);
                    String obj = l10.toString();
                    int i11 = 0;
                    int i12 = 0;
                    while (true) {
                        if (i11 >= obj.length()) {
                            break;
                        }
                        i12 += Character.getNumericValue(obj.charAt(i11));
                        i11++;
                    }
                    String hexString = Integer.toHexString(i12);
                    sb2.replace(7, hexString.length() + 7, hexString);
                    int i13 = afErrorLog + 81;
                    afDebugLog = i13 % 128;
                    while (true) {
                        int i14 = i13 % 2;
                        if (i9 >= sb2.length()) {
                            break;
                        }
                        j10 += Character.getNumericValue(sb2.charAt(i9));
                        i9++;
                        i13 = afDebugLog + 105;
                        afErrorLog = i13 % 128;
                    }
                    while (j10 > 100) {
                        int i15 = afDebugLog + 93;
                        afErrorLog = i15 % 128;
                        j10 = (i15 % 2 == 0 ? 'U' : 'A') != 'U' ? j10 % 100 : j10 | 100;
                    }
                    sb2.insert(23, (int) j10);
                    if (j10 < 10) {
                        sb2.insert(23, AFInAppEventType("뱵Ⱂ", 1 - (ViewConfiguration.getScrollBarSize() >> 8)).intern());
                    }
                    return sb2.toString();
                }
            }
        }
        return AFInAppEventType("ꎔ圂²窰", "\ud98a\uf2d0翅赌\uea0eﳱ摃퓧롁ﬕ渳Ⲗ绿嘜쩏\uf632獅斏榃\u05ed\udf10唂ᓒ謾ᖴᑎ鏩\ue138䗥\u061c\ud9c2\ud90a", (char) (45056 - Color.alpha(0)), (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 1, "飽솞\u0a37䧭").intern();
    }

    private static boolean AFKeystoreWrapper(String str) {
        int i9 = afDebugLog + 29;
        afErrorLog = i9 % 128;
        if (i9 % 2 == 0) {
        }
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private static String values(String str) {
        int parseInt;
        int i9;
        int i10 = afErrorLog + 51;
        afDebugLog = i10 % 128;
        if (!(i10 % 2 != 0)) {
            parseInt = Integer.parseInt(str, 2);
            i9 = 16;
        } else {
            parseInt = Integer.parseInt(str, 3);
            i9 = 96;
        }
        return Integer.toString(parseInt, i9);
    }

    private static String AFKeystoreWrapper(String str, String str2, int i9) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.setCharAt(i9, values(str2).charAt(0));
        String obj = sb2.toString();
        int i10 = afErrorLog + 87;
        afDebugLog = i10 % 128;
        int i11 = i10 % 2;
        return obj;
    }

    private static String values(Context context) {
        int i9 = afDebugLog + 97;
        afErrorLog = i9 % 128;
        if (!(i9 % 2 != 0)) {
            if (!System.getProperties().containsKey(AFInAppEventType("뽎镯䕒ﱔ뻼蔯⠣\ue9ab\ue167뎑\uf41d卮䉯ﴍ", 61 >> ExpandableListView.getPackedPositionType(0L)).intern())) {
                return null;
            }
        } else if (!System.getProperties().containsKey(AFInAppEventType("뽎镯䕒ﱔ뻼蔯⠣\ue9ab\ue167뎑\uf41d卮䉯ﴍ", ExpandableListView.getPackedPositionType(0L) + 14).intern())) {
            return null;
        }
        try {
            Matcher matcher = Pattern.compile(AFInAppEventType("氮\ua8de譊莛", "蟮ɱ\udfca兝웝좱ꘁﺌ䇙釙", (char) (ViewConfiguration.getTouchSlop() >> 8), TextUtils.getCapsMode("", 0, 0), "飽솞\u0a37䧭").intern()).matcher(context.getCacheDir().getPath().replace(AFInAppEventType("踔댆ⶥᇫ芸ꖺ", 7 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1))).intern(), ""));
            if (matcher.find()) {
                int i10 = afErrorLog + 83;
                afDebugLog = i10 % 128;
                return (i10 % 2 != 0 ? '-' : (char) 29) != '-' ? matcher.group(1) : matcher.group(0);
            }
            return null;
        } catch (Exception e10) {
            AFb1pSDK AFKeystoreWrapper2 = AFb1pSDK.AFKeystoreWrapper();
            String intern = AFInAppEventType("\ue406㧀Í峆袑［새혬㥦㥓\ueaab纝ᓭ뗽⭚箤顰楛", 17 - Gravity.getAbsoluteGravity(0, 0)).intern();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(AFInAppEventType("\ud96c\uedff涣儍", "ጎ㯥⸩殧舯\ue889튠⡚嚬뻁ᾙ\udc93慜匕\uf247\uec1b∺쬥씔蚣錘\ude16\udcec\ue9f7\uf3a1풹긺섟携㨤䯯⟁뇪苣촟ﴕ堻ၴ￩\uf07b⋻", (char) (3437 - (ViewConfiguration.getKeyRepeatTimeout() >> 16)), '\t' - AndroidCharacter.getMirror('0'), "飽솞\u0a37䧭").intern());
            sb2.append(e10);
            AFKeystoreWrapper2.valueOf(intern, sb2.toString());
            return null;
        }
    }

    private static String AFKeystoreWrapper(Context context, StringBuilder sb2) {
        int i9;
        StringBuilder sb3 = new StringBuilder();
        String packageName = context.getPackageName();
        String AFInAppEventParameterName2 = AFInAppEventParameterName(packageName);
        sb2.append(AFInAppEventType("ꡌ셄", 1 - TextUtils.indexOf("", "", 0)).intern());
        sb3.append(AFInAppEventParameterName2);
        if (values(context) == null) {
            int i10 = afDebugLog + 123;
            afErrorLog = i10 % 128;
            int i11 = i10 % 2;
            sb2.append(AFInAppEventType("뱵Ⱂ", -((byte) KeyEvent.getModifierMetaStateMask())).intern());
            sb3.append(packageName);
            i9 = afDebugLog + 105;
        } else {
            sb2.append(AFInAppEventType("ꡌ셄", (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))).intern());
            sb3.append(packageName);
            i9 = afDebugLog + 39;
        }
        afErrorLog = i9 % 128;
        int i12 = i9 % 2;
        String AFInAppEventType2 = AFInAppEventType(context);
        if (!(AFInAppEventType2 == null)) {
            sb2.append(AFInAppEventType("ꡌ셄", 1 - (Process.myTid() >> 22)).intern());
            sb3.append(AFInAppEventType2);
        } else {
            int i13 = afErrorLog + 77;
            afDebugLog = i13 % 128;
            int i14 = i13 % 2;
            sb2.append(AFInAppEventType("뱵Ⱂ", TextUtils.indexOf("", "") + 1).intern());
            sb3.append(packageName);
        }
        sb3.append(Boolean.TRUE.toString());
        return sb3.toString();
    }

    /* loaded from: classes.dex */
    public static class AFa1xSDK extends HashMap<String, Object> {
        private static int afDebugLog = 1;
        private static int afInfoLog;
        private final Map<String, Object> AFInAppEventParameterName;
        private final Context AFInAppEventType;
        private static char[] valueOf = {'{', 252, 259, 253, 248, 247, 254, 259, 256, 254, 257, 264, '5', 'h', 'e', 'O', '9', '9', '9', 136, 280, 278, 254, 258, 273, 276, 285, 279, 258, 268, 287, 286, 281, 275, 21, ',', 'H', 'j', 'O', 28, '4', '0', '1', 'L', 'K', '5', 'N', 'J', '2', '4', '2', 'J', 'c', 'c', 'c', 'a', 'a', Typography.greater, 130, 132, 134, 139, 135, 129, 'd', 'f', 134, 140, 135, 132, 140, 'l', 'b', '}', 134, 137, 135, 137, 'i', 'S', IOUtils.DIR_SEPARATOR_WINDOWS, 'e', 'o', 'g', 'f', 'p', 'w', 'l', '`', '_', 'b', 'e', 'a', '_', '2', 'k', 's', 't', 'j', 'i', 'k', 'j', 'n', 'i', 'l', '8', 'K'};
        private static char[] AFKeystoreWrapper = {'b', 'r', 'a', 'n', 'd', 'N', 'O', '_', 'B', 'R', 'A', 'D', 'k', 'e', 'f', 'i', 'l', ' ', 'g', 't', 'y', 'w', 'h', 'x', 'c', 'p', 'o', ':', '6', JwtParser.SEPARATOR_CHAR, '9', '0', 'v', 'u', '8', 's', Typography.amp, 'q', '1', '2', 'm', 'j', 'z', '{', '|', '}', '~', 127, 128};
        private static char values = 7;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class AFa1wSDK {
            private static char[] AFInAppEventType = {35941};
            private static int AFKeystoreWrapper = 1;
            private static long valueOf = 639504441972922643L;
            private static int values;

            AFa1wSDK() {
            }

            @NonNull
            private static byte[] AFInAppEventParameterName(@NonNull String str) throws Exception {
                int i9 = values + 43;
                AFKeystoreWrapper = i9 % 128;
                char c10 = i9 % 2 == 0 ? 'T' : '[';
                byte[] bytes = str.getBytes();
                if (c10 != '[') {
                    int i10 = 65 / 0;
                }
                int i11 = values + 103;
                AFKeystoreWrapper = i11 % 128;
                int i12 = i11 % 2;
                return bytes;
            }

            @NonNull
            static String AFInAppEventType(String str) throws Exception {
                int i9 = values + 53;
                AFKeystoreWrapper = i9 % 128;
                int i10 = i9 % 2;
                String AFInAppEventType2 = AFInAppEventType(AFKeystoreWrapper(AFInAppEventParameterName(str)));
                int i11 = values + 75;
                AFKeystoreWrapper = i11 % 128;
                int i12 = i11 % 2;
                return AFInAppEventType2;
            }

            private static byte[] AFKeystoreWrapper(@NonNull byte[] bArr) throws Exception {
                int i9 = 0;
                int i10 = AFKeystoreWrapper + 15;
                values = i10 % 128;
                while (true) {
                    int i11 = i10 % 2;
                    if ((i9 < bArr.length ? (char) 7 : 'K') == 'K') {
                        return bArr;
                    }
                    int i12 = values;
                    int i13 = i12 + 35;
                    AFKeystoreWrapper = i13 % 128;
                    int i14 = i13 % 2;
                    bArr[i9] = (byte) (bArr[i9] ^ ((i9 % 2) + 42));
                    i9++;
                    i10 = i12 + 115;
                    AFKeystoreWrapper = i10 % 128;
                }
            }

            private static String values(int i9, int i10, char c10) {
                String str;
                synchronized (AFe1cSDK.AFInAppEventParameterName) {
                    char[] cArr = new char[i9];
                    AFe1cSDK.AFInAppEventType = 0;
                    while (true) {
                        int i11 = AFe1cSDK.AFInAppEventType;
                        if (i11 < i9) {
                            cArr[i11] = (char) ((AFInAppEventType[i10 + i11] ^ (i11 * valueOf)) ^ c10);
                            AFe1cSDK.AFInAppEventType = i11 + 1;
                        } else {
                            str = new String(cArr);
                        }
                    }
                }
                return str;
            }

            @NonNull
            private static String AFInAppEventType(@NonNull byte[] bArr) throws Exception {
                String str;
                StringBuilder sb2 = new StringBuilder();
                int length = bArr.length;
                int i9 = 0;
                while (true) {
                    if (!(i9 < length)) {
                        return sb2.toString();
                    }
                    int i10 = AFKeystoreWrapper + 31;
                    values = i10 % 128;
                    if ((i10 % 2 != 0 ? (char) 7 : '!') != '!') {
                        str = Integer.toHexString(bArr[i9]);
                        if (str.length() != 0) {
                            sb2.append(str);
                            i9++;
                            int i11 = values + 59;
                            AFKeystoreWrapper = i11 % 128;
                            int i12 = i11 % 2;
                        }
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(values((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), Gravity.getAbsoluteGravity(0, 0), (char) ((ViewConfiguration.getTouchSlop() >> 8) + 35925)).intern());
                        sb3.append(str);
                        str = sb3.toString();
                        sb2.append(str);
                        i9++;
                        int i112 = values + 59;
                        AFKeystoreWrapper = i112 % 128;
                        int i122 = i112 % 2;
                    } else {
                        String hexString = Integer.toHexString(bArr[i9]);
                        if (hexString.length() == 1) {
                            str = hexString;
                            StringBuilder sb32 = new StringBuilder();
                            sb32.append(values((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), Gravity.getAbsoluteGravity(0, 0), (char) ((ViewConfiguration.getTouchSlop() >> 8) + 35925)).intern());
                            sb32.append(str);
                            str = sb32.toString();
                            sb2.append(str);
                            i9++;
                            int i1122 = values + 59;
                            AFKeystoreWrapper = i1122 % 128;
                            int i1222 = i1122 % 2;
                        } else {
                            str = hexString;
                            sb2.append(str);
                            i9++;
                            int i11222 = values + 59;
                            AFKeystoreWrapper = i11222 % 128;
                            int i12222 = i11222 % 2;
                        }
                    }
                }
            }
        }

        public AFa1xSDK(Map<String, Object> map, Context context) {
            this.AFInAppEventParameterName = map;
            this.AFInAppEventType = context;
            put(AFKeystoreWrapper(), AFInAppEventParameterName());
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x01b3, code lost:
            if ((r0.contains(AFInAppEventType("\u001b\u001ey", (byte) ((android.view.ViewConfiguration.getZoomControlsTimeout() > 0 ? 1 : (android.view.ViewConfiguration.getZoomControlsTimeout() == 0 ? 0 : -1)) + 66), (android.view.ViewConfiguration.getDoubleTapTimeout() >> 16) + 3).intern()) ? '\b' : 'M') != 'M') goto L21;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String AFInAppEventParameterName() {
            /*
                Method dump skipped, instructions count: 750
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1vSDK.AFa1xSDK.AFInAppEventParameterName():java.lang.String");
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
            r8 = r8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static java.lang.String AFInAppEventType(java.lang.String r8, byte r9, int r10) {
            /*
                Method dump skipped, instructions count: 233
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1vSDK.AFa1xSDK.AFInAppEventType(java.lang.String, byte, int):java.lang.String");
        }

        private static StringBuilder AFKeystoreWrapper(@NonNull String... strArr) throws Exception {
            ArrayList arrayList = new ArrayList();
            int i9 = 0;
            while (true) {
                if (!(i9 < 3)) {
                    break;
                }
                arrayList.add(Integer.valueOf(strArr[i9].length()));
                i9++;
            }
            Collections.sort(arrayList);
            int intValue = ((Integer) arrayList.get(0)).intValue();
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            while (true) {
                if (i10 < intValue) {
                    Integer num = null;
                    int i11 = 0;
                    while (i11 < 3) {
                        int i12 = afDebugLog + 9;
                        afInfoLog = i12 % 128;
                        if (i12 % 2 == 0) {
                            int charAt = strArr[i11].charAt(i10);
                            if (num != null) {
                                charAt ^= num.intValue();
                            }
                            num = Integer.valueOf(charAt);
                            i11++;
                            int i13 = afDebugLog + 23;
                            afInfoLog = i13 % 128;
                            int i14 = i13 % 2;
                        } else {
                            strArr[i11].charAt(i10);
                            throw null;
                        }
                    }
                    sb2.append(Integer.toHexString(num.intValue()));
                    i10++;
                } else {
                    int i15 = afInfoLog + 119;
                    afDebugLog = i15 % 128;
                    if (!(i15 % 2 == 0)) {
                        return sb2;
                    }
                    throw null;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
            r14 = r14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static java.lang.String values(boolean r12, int[] r13, java.lang.String r14) {
            /*
                if (r14 == 0) goto L8
                java.lang.String r0 = "ISO-8859-1"
                byte[] r14 = r14.getBytes(r0)
            L8:
                byte[] r14 = (byte[]) r14
                java.lang.Object r0 = com.appsflyer.internal.AFf1vSDK.AFInAppEventParameterName
                monitor-enter(r0)
                r1 = 0
                r2 = r13[r1]     // Catch: java.lang.Throwable -> L89
                r3 = 1
                r4 = r13[r3]     // Catch: java.lang.Throwable -> L89
                r5 = 2
                r6 = r13[r5]     // Catch: java.lang.Throwable -> L89
                r7 = 3
                r7 = r13[r7]     // Catch: java.lang.Throwable -> L89
                char[] r8 = com.appsflyer.internal.AFa1vSDK.AFa1xSDK.valueOf     // Catch: java.lang.Throwable -> L89
                char[] r9 = new char[r4]     // Catch: java.lang.Throwable -> L89
                java.lang.System.arraycopy(r8, r2, r9, r1, r4)     // Catch: java.lang.Throwable -> L89
                if (r14 == 0) goto L47
                char[] r2 = new char[r4]     // Catch: java.lang.Throwable -> L89
                com.appsflyer.internal.AFf1vSDK.values = r1     // Catch: java.lang.Throwable -> L89
                r8 = 0
            L27:
                int r10 = com.appsflyer.internal.AFf1vSDK.values     // Catch: java.lang.Throwable -> L89
                if (r10 >= r4) goto L46
                r11 = r14[r10]     // Catch: java.lang.Throwable -> L89
                if (r11 != r3) goto L38
                char r11 = r9[r10]     // Catch: java.lang.Throwable -> L89
                int r11 = r11 << r3
                int r11 = r11 + r3
                int r11 = r11 - r8
                char r8 = (char) r11     // Catch: java.lang.Throwable -> L89
                r2[r10] = r8     // Catch: java.lang.Throwable -> L89
                goto L3f
            L38:
                char r11 = r9[r10]     // Catch: java.lang.Throwable -> L89
                int r11 = r11 << r3
                int r11 = r11 - r8
                char r8 = (char) r11     // Catch: java.lang.Throwable -> L89
                r2[r10] = r8     // Catch: java.lang.Throwable -> L89
            L3f:
                char r8 = r2[r10]     // Catch: java.lang.Throwable -> L89
                int r10 = r10 + 1
                com.appsflyer.internal.AFf1vSDK.values = r10     // Catch: java.lang.Throwable -> L89
                goto L27
            L46:
                r9 = r2
            L47:
                if (r7 <= 0) goto L56
                char[] r14 = new char[r4]     // Catch: java.lang.Throwable -> L89
                java.lang.System.arraycopy(r9, r1, r14, r1, r4)     // Catch: java.lang.Throwable -> L89
                int r2 = r4 - r7
                java.lang.System.arraycopy(r14, r1, r9, r2, r7)     // Catch: java.lang.Throwable -> L89
                java.lang.System.arraycopy(r14, r7, r9, r1, r2)     // Catch: java.lang.Throwable -> L89
            L56:
                if (r12 == 0) goto L6d
                char[] r12 = new char[r4]     // Catch: java.lang.Throwable -> L89
                com.appsflyer.internal.AFf1vSDK.values = r1     // Catch: java.lang.Throwable -> L89
            L5c:
                int r14 = com.appsflyer.internal.AFf1vSDK.values     // Catch: java.lang.Throwable -> L89
                if (r14 >= r4) goto L6c
                int r2 = r4 - r14
                int r2 = r2 - r3
                char r2 = r9[r2]     // Catch: java.lang.Throwable -> L89
                r12[r14] = r2     // Catch: java.lang.Throwable -> L89
                int r14 = r14 + 1
                com.appsflyer.internal.AFf1vSDK.values = r14     // Catch: java.lang.Throwable -> L89
                goto L5c
            L6c:
                r9 = r12
            L6d:
                if (r6 <= 0) goto L82
                com.appsflyer.internal.AFf1vSDK.values = r1     // Catch: java.lang.Throwable -> L89
            L71:
                int r12 = com.appsflyer.internal.AFf1vSDK.values     // Catch: java.lang.Throwable -> L89
                if (r12 >= r4) goto L82
                char r14 = r9[r12]     // Catch: java.lang.Throwable -> L89
                r1 = r13[r5]     // Catch: java.lang.Throwable -> L89
                int r14 = r14 - r1
                char r14 = (char) r14     // Catch: java.lang.Throwable -> L89
                r9[r12] = r14     // Catch: java.lang.Throwable -> L89
                int r12 = r12 + 1
                com.appsflyer.internal.AFf1vSDK.values = r12     // Catch: java.lang.Throwable -> L89
                goto L71
            L82:
                java.lang.String r12 = new java.lang.String     // Catch: java.lang.Throwable -> L89
                r12.<init>(r9)     // Catch: java.lang.Throwable -> L89
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L89
                return r12
            L89:
                r12 = move-exception
                monitor-exit(r0)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1vSDK.AFa1xSDK.values(boolean, int[], java.lang.String):java.lang.String");
        }

        @NonNull
        private String AFKeystoreWrapper() {
            try {
                String num = Integer.toString(Build.VERSION.SDK_INT);
                String obj = this.AFInAppEventParameterName.get(values(false, new int[]{0, 12, 149, 3}, "\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001").intern()).toString();
                String obj2 = this.AFInAppEventParameterName.get(AFInAppEventType("\u0001\u0002\u0003\u0004¥", (byte) (65 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))), KeyEvent.normalizeMetaState(0) + 5).intern()).toString();
                if (!(obj2 != null)) {
                    obj2 = AFInAppEventType("\u0006\u0000\b\t\n\u000b\u0004\f", (byte) (((byte) KeyEvent.getModifierMetaStateMask()) + 26), View.combineMeasuredStates(0, 0) + 8).intern();
                }
                StringBuilder sb2 = new StringBuilder(obj);
                sb2.reverse();
                StringBuilder AFKeystoreWrapper2 = AFKeystoreWrapper(num, obj2, sb2.toString());
                int length = AFKeystoreWrapper2.length();
                if (length <= 4) {
                    while (true) {
                        if ((length < 4 ? '`' : IOUtils.DIR_SEPARATOR_UNIX) == '/') {
                            break;
                        }
                        int i9 = afDebugLog + 33;
                        afInfoLog = i9 % 128;
                        int i10 = i9 % 2;
                        length++;
                        AFKeystoreWrapper2.append('1');
                    }
                } else {
                    AFKeystoreWrapper2.delete(4, length);
                }
                AFKeystoreWrapper2.insert(0, AFInAppEventType("\r\u0007l", (byte) (Color.argb(0, 0, 0, 0) + 6), 3 - View.MeasureSpec.getSize(0)).intern());
                String obj3 = AFKeystoreWrapper2.toString();
                int i11 = afDebugLog + 59;
                afInfoLog = i11 % 128;
                int i12 = i11 % 2;
                return obj3;
            } catch (Exception e10) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(AFInAppEventType("\u0010\u0000\u0010\u0011\u000b\u0006\u0012\u0013\n\u0006\b\u0006\u0005\u0010\u0011\u0001\u0013\u0012\r\u0007\u000f\u0012\r\u0007\u000e\u0012\u0016\u000e\u000f\u001a\u0014\n\u0018\u0019\u000b\u001b\u0014\u0010\u0018\u0005\u0018\u0014", (byte) ((KeyEvent.getMaxKeyCode() >> 16) + 67), 42 - TextUtils.getTrimmedLength("")).intern());
                sb3.append(e10);
                AFLogger.afRDLog(sb3.toString());
                return values(false, new int[]{12, 7, 0, 0}, "\u0001\u0000\u0001\u0001\u0000\u0000\u0000").intern();
            }
        }
    }

    private static void AFInAppEventType(StringBuilder sb2) {
        String intern;
        String intern2;
        sb2.append((!(!AFKeystoreWrapper(AFInAppEventType("䓆翹⦛\ueeaf", "⾸ꃸ์仆㒛⦵둺᾽㉥뽸끜Ἲᄟ攢율旗\u2e69\ude77鬝䪽\udeff뷀饸ﭽ뜙", (char) (1 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))), (ViewConfiguration.getMaximumFlingVelocity() >> 16) + (-1686111932), "飽솞\u0a37䧭").intern())) ? AFInAppEventType("ꡌ셄", 1 - Color.red(0)) : AFInAppEventType("뱵Ⱂ", (ViewConfiguration.getEdgeSlop() >> 16) + 1)).intern());
        sb2.append((AFKeystoreWrapper(AFInAppEventType("낇襡訒윳", "儶쮄㴒\ude9f⭹窹\u05cc遁羏\uf558倡ف剁㴈\ue765㕐폜㇈\u20c4ꓴ෦\ue719븓", (char) Color.alpha(0), 310993328 - Color.alpha(0), "飽솞\u0a37䧭").intern()) ? AFInAppEventType("ꡌ셄", 1 - TextUtils.getCapsMode("", 0, 0)) : AFInAppEventType("뱵Ⱂ", TextUtils.indexOf("", "", 0, 0) + 1)).intern());
        if ((AFKeystoreWrapper(AFInAppEventType("\udbf6瀃綡䢎\ufdcb䣜㧞쓛樋颎㪵ꍦ\uf1cb탴⢭綈ꏡ죉ὥ衐", Color.argb(0, 0, 0, 0) + 20).intern()) ? (char) 28 : (char) 15) != 28) {
            intern = AFInAppEventType("뱵Ⱂ", Color.red(0) + 1).intern();
        } else {
            intern = AFInAppEventType("ꡌ셄", -(ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))).intern();
            int i9 = afErrorLog + 109;
            afDebugLog = i9 % 128;
            int i10 = i9 % 2;
        }
        sb2.append(intern);
        if (AFKeystoreWrapper(AFInAppEventType("\udbf6瀃綡䢎\ufdcb䣜㧞쓛\uf2b2\ua7eaᯯ\ue9c2\ue557ᇬꎺご", 16 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1))).intern())) {
            intern2 = AFInAppEventType("ꡌ셄", (Process.myTid() >> 22) + 1).intern();
        } else {
            intern2 = AFInAppEventType("뱵Ⱂ", -ImageFormat.getBitsPerPixel(0)).intern();
            int i11 = afDebugLog + 89;
            afErrorLog = i11 % 128;
            int i12 = i11 % 2;
        }
        sb2.append(intern2);
    }

    private static String AFInAppEventParameterName(String str) {
        int i9 = afErrorLog + 31;
        afDebugLog = i9 % 128;
        int i10 = i9 % 2;
        if ((!str.contains(AFInAppEventType("䄋王ೃ\udc46", "⅏", (char) (ExpandableListView.getPackedPositionType(0L) + 17932), (-1015837887) - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), "飽솞\u0a37䧭").intern()) ? 'G' : '8') != '8') {
            int i11 = afDebugLog + 45;
            afErrorLog = i11 % 128;
            if ((i11 % 2 == 0 ? 'I' : 'Y') != 'I') {
                return str;
            }
            throw null;
        }
        String[] split = str.split(AFInAppEventType("彻틘ꉳ䥆", "ም이", (char) (18081 - TextUtils.indexOf((CharSequence) "", '0')), View.MeasureSpec.getMode(0), "飽솞\u0a37䧭").intern());
        int length = split.length;
        StringBuilder sb2 = new StringBuilder();
        int i12 = length - 1;
        sb2.append(split[i12]);
        sb2.append(AFInAppEventType("䄋王ೃ\udc46", "⅏", (char) ((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 17932), (ViewConfiguration.getLongPressTimeout() >> 16) - 1015837887, "飽솞\u0a37䧭").intern());
        for (int i13 = 1; i13 < i12; i13++) {
            sb2.append(split[i13]);
            sb2.append(AFInAppEventType("䄋王ೃ\udc46", "⅏", (char) ((ViewConfiguration.getTapTimeout() >> 16) + 17932), (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 1015837888, "飽솞\u0a37䧭").intern());
        }
        sb2.append(split[0]);
        return sb2.toString();
    }

    private static String AFInAppEventType(String str) {
        int i9 = afDebugLog + 105;
        afErrorLog = i9 % 128;
        int i10 = i9 % 2;
        String values2 = AFb1rSDK.values(AFb1rSDK.valueOf(str));
        int i11 = afDebugLog + 105;
        afErrorLog = i11 % 128;
        if ((i11 % 2 == 0 ? 'N' : 'Z') == 'Z') {
            return values2;
        }
        throw null;
    }

    private static String AFInAppEventType(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            int i9 = afDebugLog + 91;
            int i10 = i9 % 128;
            afErrorLog = i10;
            int i11 = i9 % 2;
            int i12 = i10 + 47;
            afDebugLog = i12 % 128;
            int i13 = i12 % 2;
            int i14 = i10 + 9;
            afDebugLog = i14 % 128;
            if ((i14 % 2 != 0 ? 'D' : '\t') != 'D') {
                return str;
            }
            throw null;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r10 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String AFInAppEventType(java.lang.String r6, java.lang.String r7, char r8, int r9, java.lang.String r10) {
        /*
            if (r10 == 0) goto L6
            char[] r10 = r10.toCharArray()
        L6:
            char[] r10 = (char[]) r10
            if (r7 == 0) goto Le
            char[] r7 = r7.toCharArray()
        Le:
            char[] r7 = (char[]) r7
            if (r6 == 0) goto L16
            char[] r6 = r6.toCharArray()
        L16:
            char[] r6 = (char[]) r6
            java.lang.Object r0 = com.appsflyer.internal.AFf1ySDK.valueOf
            monitor-enter(r0)
            java.lang.Object r6 = r6.clone()     // Catch: java.lang.Throwable -> L87
            char[] r6 = (char[]) r6     // Catch: java.lang.Throwable -> L87
            java.lang.Object r10 = r10.clone()     // Catch: java.lang.Throwable -> L87
            char[] r10 = (char[]) r10     // Catch: java.lang.Throwable -> L87
            r1 = 0
            char r2 = r6[r1]     // Catch: java.lang.Throwable -> L87
            r8 = r8 ^ r2
            char r8 = (char) r8     // Catch: java.lang.Throwable -> L87
            r6[r1] = r8     // Catch: java.lang.Throwable -> L87
            r8 = 2
            char r2 = r10[r8]     // Catch: java.lang.Throwable -> L87
            char r9 = (char) r9     // Catch: java.lang.Throwable -> L87
            int r2 = r2 + r9
            char r9 = (char) r2     // Catch: java.lang.Throwable -> L87
            r10[r8] = r9     // Catch: java.lang.Throwable -> L87
            int r8 = r7.length     // Catch: java.lang.Throwable -> L87
            char[] r9 = new char[r8]     // Catch: java.lang.Throwable -> L87
            com.appsflyer.internal.AFf1ySDK.AFKeystoreWrapper = r1     // Catch: java.lang.Throwable -> L87
        L3b:
            int r1 = com.appsflyer.internal.AFf1ySDK.AFKeystoreWrapper     // Catch: java.lang.Throwable -> L87
            if (r1 >= r8) goto L80
            int r2 = r1 + 2
            int r2 = r2 % 4
            int r3 = r1 + 3
            int r3 = r3 % 4
            int r1 = r1 % 4
            char r1 = r6[r1]     // Catch: java.lang.Throwable -> L87
            int r1 = r1 * 32718
            char r4 = r10[r2]     // Catch: java.lang.Throwable -> L87
            int r1 = r1 + r4
            r4 = 65535(0xffff, float:9.1834E-41)
            int r1 = r1 % r4
            char r1 = (char) r1     // Catch: java.lang.Throwable -> L87
            com.appsflyer.internal.AFf1ySDK.AFInAppEventType = r1     // Catch: java.lang.Throwable -> L87
            char r5 = r6[r3]     // Catch: java.lang.Throwable -> L87
            int r5 = r5 * 32718
            char r2 = r10[r2]     // Catch: java.lang.Throwable -> L87
            int r5 = r5 + r2
            int r5 = r5 / r4
            char r2 = (char) r5     // Catch: java.lang.Throwable -> L87
            r10[r3] = r2     // Catch: java.lang.Throwable -> L87
            r6[r3] = r1     // Catch: java.lang.Throwable -> L87
            int r1 = com.appsflyer.internal.AFf1ySDK.AFKeystoreWrapper     // Catch: java.lang.Throwable -> L87
            char r2 = r7[r1]     // Catch: java.lang.Throwable -> L87
            char r3 = r6[r3]     // Catch: java.lang.Throwable -> L87
            r2 = r2 ^ r3
            long r2 = (long) r2     // Catch: java.lang.Throwable -> L87
            long r4 = com.appsflyer.internal.AFa1vSDK.valueOf     // Catch: java.lang.Throwable -> L87
            long r2 = r2 ^ r4
            int r4 = com.appsflyer.internal.AFa1vSDK.AFInAppEventType     // Catch: java.lang.Throwable -> L87
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L87
            long r2 = r2 ^ r4
            char r4 = com.appsflyer.internal.AFa1vSDK.AFInAppEventParameterName     // Catch: java.lang.Throwable -> L87
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L87
            long r2 = r2 ^ r4
            int r3 = (int) r2     // Catch: java.lang.Throwable -> L87
            char r2 = (char) r3     // Catch: java.lang.Throwable -> L87
            r9[r1] = r2     // Catch: java.lang.Throwable -> L87
            int r1 = r1 + 1
            com.appsflyer.internal.AFf1ySDK.AFKeystoreWrapper = r1     // Catch: java.lang.Throwable -> L87
            goto L3b
        L80:
            java.lang.String r6 = new java.lang.String     // Catch: java.lang.Throwable -> L87
            r6.<init>(r9)     // Catch: java.lang.Throwable -> L87
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
            return r6
        L87:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1vSDK.AFInAppEventType(java.lang.String, java.lang.String, char, int, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r11 = r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String AFInAppEventType(java.lang.String r11, int r12) {
        /*
            if (r11 == 0) goto L6
            char[] r11 = r11.toCharArray()
        L6:
            char[] r11 = (char[]) r11
            java.lang.Object r0 = com.appsflyer.internal.AFf1qSDK.AFInAppEventParameterName
            monitor-enter(r0)
            int r1 = r11.length     // Catch: java.lang.Throwable -> L7d
            char[] r1 = new char[r1]     // Catch: java.lang.Throwable -> L7d
            r2 = 0
            com.appsflyer.internal.AFf1qSDK.AFKeystoreWrapper = r2     // Catch: java.lang.Throwable -> L7d
            r3 = 2
            char[] r3 = new char[r3]     // Catch: java.lang.Throwable -> L7d
        L14:
            int r4 = com.appsflyer.internal.AFf1qSDK.AFKeystoreWrapper     // Catch: java.lang.Throwable -> L7d
            int r5 = r11.length     // Catch: java.lang.Throwable -> L7d
            if (r4 >= r5) goto L76
            char r5 = r11[r4]     // Catch: java.lang.Throwable -> L7d
            r3[r2] = r5     // Catch: java.lang.Throwable -> L7d
            int r4 = r4 + 1
            char r4 = r11[r4]     // Catch: java.lang.Throwable -> L7d
            r5 = 1
            r3[r5] = r4     // Catch: java.lang.Throwable -> L7d
            r4 = 58224(0xe370, float:8.1589E-41)
            r6 = 0
        L28:
            r7 = 16
            if (r6 >= r7) goto L65
            char r7 = r3[r5]     // Catch: java.lang.Throwable -> L7d
            char r8 = r3[r2]     // Catch: java.lang.Throwable -> L7d
            int r8 = r8 + r4
            char r9 = r3[r2]     // Catch: java.lang.Throwable -> L7d
            int r9 = r9 << 4
            char r10 = com.appsflyer.internal.AFa1vSDK.AFLogger     // Catch: java.lang.Throwable -> L7d
            int r9 = r9 + r10
            r8 = r8 ^ r9
            char r9 = r3[r2]     // Catch: java.lang.Throwable -> L7d
            int r9 = r9 >>> 5
            char r10 = com.appsflyer.internal.AFa1vSDK.afRDLog     // Catch: java.lang.Throwable -> L7d
            int r9 = r9 + r10
            r8 = r8 ^ r9
            int r7 = r7 - r8
            char r7 = (char) r7     // Catch: java.lang.Throwable -> L7d
            r3[r5] = r7     // Catch: java.lang.Throwable -> L7d
            char r7 = r3[r2]     // Catch: java.lang.Throwable -> L7d
            char r8 = r3[r5]     // Catch: java.lang.Throwable -> L7d
            int r8 = r8 + r4
            char r9 = r3[r5]     // Catch: java.lang.Throwable -> L7d
            int r9 = r9 << 4
            char r10 = com.appsflyer.internal.AFa1vSDK.AFKeystoreWrapper     // Catch: java.lang.Throwable -> L7d
            int r9 = r9 + r10
            r8 = r8 ^ r9
            char r9 = r3[r5]     // Catch: java.lang.Throwable -> L7d
            int r9 = r9 >>> 5
            char r10 = com.appsflyer.internal.AFa1vSDK.values     // Catch: java.lang.Throwable -> L7d
            int r9 = r9 + r10
            r8 = r8 ^ r9
            int r7 = r7 - r8
            char r7 = (char) r7     // Catch: java.lang.Throwable -> L7d
            r3[r2] = r7     // Catch: java.lang.Throwable -> L7d
            r7 = 40503(0x9e37, float:5.6757E-41)
            int r4 = r4 - r7
            int r6 = r6 + 1
            goto L28
        L65:
            int r4 = com.appsflyer.internal.AFf1qSDK.AFKeystoreWrapper     // Catch: java.lang.Throwable -> L7d
            char r6 = r3[r2]     // Catch: java.lang.Throwable -> L7d
            r1[r4] = r6     // Catch: java.lang.Throwable -> L7d
            int r6 = r4 + 1
            char r5 = r3[r5]     // Catch: java.lang.Throwable -> L7d
            r1[r6] = r5     // Catch: java.lang.Throwable -> L7d
            int r4 = r4 + 2
            com.appsflyer.internal.AFf1qSDK.AFKeystoreWrapper = r4     // Catch: java.lang.Throwable -> L7d
            goto L14
        L76:
            java.lang.String r11 = new java.lang.String     // Catch: java.lang.Throwable -> L7d
            r11.<init>(r1, r2, r12)     // Catch: java.lang.Throwable -> L7d
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7d
            return r11
        L7d:
            r11 = move-exception
            monitor-exit(r0)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1vSDK.AFInAppEventType(java.lang.String, int):java.lang.String");
    }
}

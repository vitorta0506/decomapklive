package com.appsflyer.internal;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.appsflyer.AFLogger;
import io.jsonwebtoken.JwtParser;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;
import java.util.Map;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.UByte;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public final class AFb1rSDK {
    private static int AFInAppEventParameterName = 1742664664;
    private static int AFInAppEventType = -1141574946;
    private static short[] AFKeystoreWrapper = null;
    private static int AFLogger = 0;
    private static int afRDLog = 1;
    private static byte[] valueOf = {-94, -85, -116, -96, -83, -105, -93, -108, -76, -104, -92, 0};
    private static int values = 29;

    public static String AFInAppEventParameterName(String str) {
        int i9 = AFLogger + 73;
        afRDLog = i9 % 128;
        String str2 = null;
        try {
            if ((i9 % 2 == 0 ? JwtParser.SEPARATOR_CHAR : Typography.less) != '.') {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                messageDigest.reset();
                messageDigest.update(str.getBytes("UTF-8"));
                str = AFKeystoreWrapper(messageDigest.digest());
            } else {
                MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-1");
                messageDigest2.reset();
                messageDigest2.update(str.getBytes("UTF-8"));
                str2 = AFKeystoreWrapper(messageDigest2.digest());
                int i10 = 37 / 0;
                str = str2;
            }
            int i11 = afRDLog + 101;
            AFLogger = i11 % 128;
            int i12 = i11 % 2;
            return str;
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder("Error turning ");
            sb2.append(str.substring(0, 6));
            sb2.append(".. to SHA1");
            AFLogger.afErrorLog(sb2.toString(), e10);
            return str2;
        }
    }

    public static String AFInAppEventType(String str, String str2) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(str2.getBytes(), "HmacSHA256"));
            String lowerCase = valueOf(mac.doFinal(str.getBytes())).toLowerCase();
            int i9 = AFLogger + 109;
            afRDLog = i9 % 128;
            if ((i9 % 2 == 0 ? 'H' : 'L') == 'L') {
                return lowerCase;
            }
            throw null;
        } catch (InvalidKeyException | NoSuchAlgorithmException e10) {
            AFLogger.afErrorLog(e10.getMessage(), e10, true);
            return e10.getMessage();
        }
    }

    private static String AFKeystoreWrapper(byte[] bArr) {
        Formatter formatter = new Formatter();
        int length = bArr.length;
        int i9 = 0;
        while (true) {
            if ((i9 < length ? (char) 30 : 'L') != 30) {
                String obj = formatter.toString();
                formatter.close();
                int i10 = afRDLog + 9;
                AFLogger = i10 % 128;
                int i11 = i10 % 2;
                return obj;
            }
            int i12 = afRDLog + 87;
            AFLogger = i12 % 128;
            int i13 = i12 % 2;
            formatter.format("%02x", Byte.valueOf(bArr[i9]));
            i9++;
        }
    }

    public static String valueOf(String str) {
        String str2;
        int i9 = AFLogger + 85;
        afRDLog = i9 % 128;
        String str3 = null;
        try {
        } catch (Exception e10) {
            e = e10;
        }
        if (!(i9 % 2 == 0)) {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes());
            str2 = valueOf(messageDigest.digest());
            int i10 = AFLogger + 21;
            afRDLog = i10 % 128;
            int i11 = i10 % 2;
            int i12 = AFLogger + 49;
            afRDLog = i12 % 128;
            int i13 = i12 % 2;
            return str2;
        }
        MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-256");
        messageDigest2.update(str.getBytes());
        String valueOf2 = valueOf(messageDigest2.digest());
        try {
            throw null;
        } catch (Exception e11) {
            str3 = valueOf2;
            e = e11;
            StringBuilder sb2 = new StringBuilder("Error turning ");
            sb2.append(str.substring(0, 6));
            sb2.append(".. to SHA-256");
            AFLogger.afErrorLog(sb2.toString(), e);
            str2 = str3;
            int i122 = AFLogger + 49;
            afRDLog = i122 % 128;
            int i132 = i122 % 2;
            return str2;
        }
    }

    public static String values(String str) {
        int i9 = afRDLog + 105;
        AFLogger = i9 % 128;
        int i10 = i9 % 2;
        String str2 = null;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes("UTF-8"));
            str2 = AFKeystoreWrapper(messageDigest.digest());
            int i11 = AFLogger + 53;
            afRDLog = i11 % 128;
            int i12 = i11 % 2;
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder("Error turning ");
            sb2.append(str.substring(0, 6));
            sb2.append(".. to MD5");
            AFLogger.afErrorLog(sb2.toString(), e10);
        }
        return str2;
    }

    public static String AFInAppEventType(Map<String, Object> map) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((String) map.get("appsflyerKey"));
        sb2.append(map.get(valueOf((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) - 1742664665, (byte) TextUtils.getOffsetAfter("", 0), AndroidCharacter.getMirror('0') - 'A', (short) ((ViewConfiguration.getMaximumFlingVelocity() >> 16) + 97), 1141575042 - ((byte) KeyEvent.getModifierMetaStateMask())).intern()));
        String obj = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(obj);
        sb3.append(map.get("uid"));
        String obj2 = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(obj2);
        sb4.append(map.get("installDate"));
        String obj3 = sb4.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append(obj3);
        sb5.append(map.get("counter"));
        String obj4 = sb5.toString();
        StringBuilder sb6 = new StringBuilder();
        sb6.append(obj4);
        sb6.append(map.get("iaecounter"));
        String AFInAppEventParameterName2 = AFInAppEventParameterName(values(sb6.toString()));
        int i9 = AFLogger + 17;
        afRDLog = i9 % 128;
        int i10 = i9 % 2;
        return AFInAppEventParameterName2;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0058 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean AFInAppEventParameterName(java.util.Map<java.lang.String, java.lang.Object> r6, java.lang.String[] r7, com.appsflyer.internal.AFb1cSDK r8) throws java.lang.IllegalStateException {
        /*
            int r0 = com.appsflyer.internal.AFb1rSDK.afRDLog
            int r0 = r0 + 99
            int r1 = r0 % 128
            com.appsflyer.internal.AFb1rSDK.AFLogger = r1
            int r0 = r0 % 2
            r1 = 92
            if (r0 == 0) goto L10
            r0 = 4
            goto L12
        L10:
            r0 = 92
        L12:
            if (r0 != r1) goto L9a
            r0 = 1
            r1 = 0
            if (r6 == 0) goto L1a
            r2 = 1
            goto L1b
        L1a:
            r2 = 0
        L1b:
            if (r2 == r0) goto L1e
            goto L24
        L1e:
            boolean r2 = r6.isEmpty()
            if (r2 == 0) goto L25
        L24:
            return r1
        L25:
            int r2 = r7.length
            r3 = 0
        L27:
            if (r3 >= r2) goto L5c
            int r4 = com.appsflyer.internal.AFb1rSDK.afRDLog
            int r4 = r4 + 79
            int r5 = r4 % 128
            com.appsflyer.internal.AFb1rSDK.AFLogger = r5
            int r4 = r4 % 2
            if (r4 == 0) goto L43
            r4 = r7[r3]
            boolean r4 = r6.containsKey(r4)
            r5 = 46
            int r5 = r5 / r1
            if (r4 != 0) goto L59
            goto L4b
        L41:
            r6 = move-exception
            throw r6
        L43:
            r4 = r7[r3]
            boolean r4 = r6.containsKey(r4)
            if (r4 != 0) goto L59
        L4b:
            int r6 = com.appsflyer.internal.AFb1rSDK.AFLogger
            int r6 = r6 + 17
            int r7 = r6 % 128
            com.appsflyer.internal.AFb1rSDK.afRDLog = r7
            int r6 = r6 % 2
            if (r6 != 0) goto L58
            return r0
        L58:
            return r1
        L59:
            int r3 = r3 + 1
            goto L27
        L5c:
            java.lang.String r7 = "sig"
            java.lang.Object r7 = r6.remove(r7)
            java.lang.String r7 = (java.lang.String) r7
            if (r7 != 0) goto L68
            r2 = 0
            goto L69
        L68:
            r2 = 1
        L69:
            if (r2 == r0) goto L6c
            return r1
        L6c:
            java.lang.String r0 = com.appsflyer.internal.AFb1cSDK.values()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            org.json.JSONObject r2 = new org.json.JSONObject
            r2.<init>(r6)
            r1.append(r2)
            r1.append(r0)
            java.lang.String r6 = r1.toString()
            java.lang.ref.WeakReference r0 = new java.lang.ref.WeakReference
            com.appsflyer.internal.AFb1dSDK r8 = r8.AFKeystoreWrapper
            android.content.Context r8 = r8.values
            r0.<init>(r8)
            java.lang.String r8 = com.appsflyer.internal.AFb1uSDK.AFInAppEventParameterName(r0)
            java.lang.String r6 = AFInAppEventType(r6, r8)
            boolean r6 = r6.equals(r7)
            return r6
        L9a:
            r6 = 0
            throw r6     // Catch: java.lang.Throwable -> L9c
        L9c:
            r6 = move-exception
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1rSDK.AFInAppEventParameterName(java.util.Map, java.lang.String[], com.appsflyer.internal.AFb1cSDK):boolean");
    }

    private static String valueOf(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        int length = bArr.length;
        int i9 = 0;
        int i10 = AFLogger + 3;
        afRDLog = i10 % 128;
        int i11 = i10 % 2;
        while (true) {
            if ((i9 < length ? 'a' : 'C') != 'a') {
                return sb2.toString();
            }
            int i12 = afRDLog + 89;
            AFLogger = i12 % 128;
            int i13 = i12 % 2;
            sb2.append(Integer.toString((bArr[i9] & UByte.MAX_VALUE) + 256, 16).substring(1));
            i9++;
        }
    }

    public static String AFInAppEventType(String... strArr) {
        int i9 = AFLogger + 23;
        afRDLog = i9 % 128;
        int i10 = i9 % 2;
        String join = TextUtils.join("\u2063", strArr);
        int i11 = AFLogger + 101;
        afRDLog = i11 % 128;
        if (i11 % 2 != 0) {
            return join;
        }
        throw null;
    }

    public static String valueOf(Map<String, Object> map) {
        String str = (String) map.get(valueOf(Color.argb(0, 0, 0, 0) - 1742664664, (byte) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) - 17, (short) ((ViewConfiguration.getTapTimeout() >> 16) + 97), View.resolveSize(0, 0) + 1141575043).intern());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(((String) map.get("appsflyerKey")).substring(0, 7));
        sb2.append(((String) map.get("uid")).substring(0, 7));
        sb2.append(str.substring(str.length() - 7));
        String AFInAppEventParameterName2 = AFInAppEventParameterName(sb2.toString());
        int i9 = AFLogger + 51;
        afRDLog = i9 % 128;
        int i10 = i9 % 2;
        return AFInAppEventParameterName2;
    }

    private static String valueOf(int i9, byte b10, int i10, short s10, int i11) {
        String obj;
        synchronized (AFf1rSDK.afRDLog) {
            StringBuilder sb2 = new StringBuilder();
            int i12 = values;
            int i13 = i10 + i12;
            boolean z10 = i13 == -1;
            if (z10) {
                byte[] bArr = valueOf;
                if (bArr != null) {
                    i13 = (byte) (bArr[AFInAppEventParameterName + i9] + i12);
                } else {
                    i13 = (short) (AFKeystoreWrapper[AFInAppEventParameterName + i9] + i12);
                }
            }
            if (i13 > 0) {
                AFf1rSDK.valueOf = ((i9 + i13) - 2) + AFInAppEventParameterName + (z10 ? 1 : 0);
                AFf1rSDK.values = b10;
                char c10 = (char) (i11 + AFInAppEventType);
                AFf1rSDK.AFInAppEventType = c10;
                sb2.append(c10);
                AFf1rSDK.AFInAppEventParameterName = AFf1rSDK.AFInAppEventType;
                AFf1rSDK.AFKeystoreWrapper = 1;
                while (AFf1rSDK.AFKeystoreWrapper < i13) {
                    byte[] bArr2 = valueOf;
                    if (bArr2 != null) {
                        int i14 = AFf1rSDK.valueOf;
                        AFf1rSDK.valueOf = i14 - 1;
                        AFf1rSDK.AFInAppEventType = (char) (AFf1rSDK.AFInAppEventParameterName + (((byte) (bArr2[i14] + s10)) ^ AFf1rSDK.values));
                    } else {
                        short[] sArr = AFKeystoreWrapper;
                        int i15 = AFf1rSDK.valueOf;
                        AFf1rSDK.valueOf = i15 - 1;
                        AFf1rSDK.AFInAppEventType = (char) (AFf1rSDK.AFInAppEventParameterName + (((short) (sArr[i15] + s10)) ^ AFf1rSDK.values));
                    }
                    sb2.append(AFf1rSDK.AFInAppEventType);
                    AFf1rSDK.AFInAppEventParameterName = AFf1rSDK.AFInAppEventType;
                    AFf1rSDK.AFKeystoreWrapper++;
                }
            }
            obj = sb2.toString();
        }
        return obj;
    }
}

package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Map;
import org.light.device.DeviceInstance;
/* loaded from: classes.dex */
public final class AFb1wSDK {
    @NonNull
    public final String AFInAppEventParameterName;
    @NonNull
    public final String AFInAppEventType;
    public boolean AFKeystoreWrapper;
    public int AFLogger;
    private boolean afDebugLog;
    @Nullable
    private final byte[] afInfoLog;
    private final boolean afRDLog;
    @NonNull
    public final Map<String, String> valueOf;
    public boolean values;

    public AFb1wSDK() {
    }

    public AFb1wSDK(String str, byte[] bArr, String str2, Map<String, String> map, boolean z10) {
        this.afDebugLog = true;
        this.values = false;
        this.AFKeystoreWrapper = true;
        this.AFLogger = -1;
        this.AFInAppEventType = str;
        this.afInfoLog = bArr;
        this.AFInAppEventParameterName = str2;
        this.valueOf = map;
        this.afRDLog = z10;
    }

    public static String AFInAppEventParameterName(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            AFLogger.afErrorLog(e10.getMessage(), e10);
            return "";
        }
    }

    public static long AFInAppEventType(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (Build.VERSION.SDK_INT >= 28) {
                return packageInfo.getLongVersionCode();
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            AFLogger.afErrorLog(e10.getMessage(), e10);
            return 0L;
        }
    }

    public static boolean AFKeystoreWrapper(Context context, String str) {
        int checkPermission = context.checkPermission(str, Process.myPid(), Process.myUid());
        StringBuilder sb2 = new StringBuilder("is Permission Available: ");
        sb2.append(str);
        sb2.append("; res: ");
        sb2.append(checkPermission);
        AFLogger.afRDLog(sb2.toString());
        return checkPermission == 0;
    }

    public static boolean valueOf() {
        return Build.BRAND.equals(DeviceInstance.BRAND_OPPO);
    }

    public static boolean values(Context context, Intent intent) {
        return context.getPackageManager().queryIntentServices(intent, 0).size() > 0;
    }

    public final boolean AFLogger() {
        return this.AFKeystoreWrapper;
    }

    public static String valueOf(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException, CertificateException, NoSuchAlgorithmException {
        Signature[] signatureArr = packageManager.getPackageInfo(str, 64).signatures;
        if (signatureArr == null) {
            return null;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        messageDigest.update(((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getEncoded());
        return String.format("%032X", new BigInteger(1, messageDigest.digest()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
        if (r2.equals(com.huawei.hms.opendevice.c.f27627a) != false) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> values(android.content.Context r12, java.util.Map<java.lang.String, java.lang.String> r13, android.net.Uri r14) {
        /*
            java.lang.String r0 = "install_time"
            java.util.Set r1 = r14.getQueryParameterNames()
            java.util.Iterator r1 = r1.iterator()
        La:
            boolean r2 = r1.hasNext()
            r3 = 0
            java.lang.String r4 = "media_source"
            java.lang.String r5 = "agency"
            if (r2 == 0) goto L6a
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r6 = r14.getQueryParameter(r2)
            boolean r7 = r13.containsKey(r2)
            if (r7 != 0) goto L65
            r7 = -1
            int r8 = r2.hashCode()
            r9 = -1420799080(0xffffffffab505398, float:-7.4012454E-13)
            r10 = 2
            r11 = 1
            if (r8 == r9) goto L4e
            r9 = 99
            if (r8 == r9) goto L45
            r3 = 110987(0x1b18b, float:1.55526E-40)
            if (r8 == r3) goto L3b
            goto L58
        L3b:
            java.lang.String r3 = "pid"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L58
            r3 = 1
            goto L59
        L45:
            java.lang.String r8 = "c"
            boolean r8 = r2.equals(r8)
            if (r8 == 0) goto L58
            goto L59
        L4e:
            java.lang.String r3 = "af_prt"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L58
            r3 = 2
            goto L59
        L58:
            r3 = -1
        L59:
            if (r3 == 0) goto L62
            if (r3 == r11) goto L66
            if (r3 == r10) goto L60
            goto L65
        L60:
            r4 = r5
            goto L66
        L62:
            java.lang.String r4 = "campaign"
            goto L66
        L65:
            r4 = r2
        L66:
            r13.put(r4, r6)
            goto La
        L6a:
            boolean r1 = r13.containsKey(r0)     // Catch: java.lang.Exception -> L9e
            if (r1 != 0) goto La4
            java.lang.String r1 = "yyyy-MM-dd HH:mm:ss"
            java.text.SimpleDateFormat r2 = new java.text.SimpleDateFormat     // Catch: java.lang.Exception -> L9e
            java.util.Locale r6 = java.util.Locale.US     // Catch: java.lang.Exception -> L9e
            r2.<init>(r1, r6)     // Catch: java.lang.Exception -> L9e
            android.content.pm.PackageManager r1 = r12.getPackageManager()     // Catch: java.lang.Exception -> L9e
            java.lang.String r12 = r12.getPackageName()     // Catch: java.lang.Exception -> L9e
            android.content.pm.PackageInfo r12 = r1.getPackageInfo(r12, r3)     // Catch: java.lang.Exception -> L9e
            long r6 = r12.firstInstallTime     // Catch: java.lang.Exception -> L9e
            java.lang.String r12 = "UTC"
            java.util.TimeZone r12 = java.util.TimeZone.getTimeZone(r12)     // Catch: java.lang.Exception -> L9e
            r2.setTimeZone(r12)     // Catch: java.lang.Exception -> L9e
            java.util.Date r12 = new java.util.Date     // Catch: java.lang.Exception -> L9e
            r12.<init>(r6)     // Catch: java.lang.Exception -> L9e
            java.lang.String r12 = r2.format(r12)     // Catch: java.lang.Exception -> L9e
            r13.put(r0, r12)     // Catch: java.lang.Exception -> L9e
            goto La4
        L9e:
            r12 = move-exception
            java.lang.String r0 = "Could not fetch install time. "
            com.appsflyer.AFLogger.afErrorLog(r0, r12)
        La4:
            java.lang.String r12 = "af_deeplink"
            boolean r12 = r13.containsKey(r12)
            if (r12 == 0) goto Lb9
            java.lang.String r12 = "af_status"
            boolean r0 = r13.containsKey(r12)
            if (r0 != 0) goto Lb9
            java.lang.String r0 = "Non-organic"
            r13.put(r12, r0)
        Lb9:
            boolean r12 = r13.containsKey(r5)
            if (r12 == 0) goto Lc2
            r13.remove(r4)
        Lc2:
            java.lang.String r12 = r14.getPath()
            if (r12 == 0) goto Lcd
            java.lang.String r0 = "path"
            r13.put(r0, r12)
        Lcd:
            java.lang.String r12 = r14.getScheme()
            if (r12 == 0) goto Ld8
            java.lang.String r0 = "scheme"
            r13.put(r0, r12)
        Ld8:
            java.lang.String r12 = r14.getHost()
            if (r12 == 0) goto Le3
            java.lang.String r14 = "host"
            r13.put(r14, r12)
        Le3:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1wSDK.values(android.content.Context, java.util.Map, android.net.Uri):java.util.Map");
    }

    public final boolean AFInAppEventParameterName() {
        return this.afDebugLog;
    }

    public final boolean AFKeystoreWrapper() {
        return this.afRDLog;
    }

    @Nullable
    public final byte[] AFInAppEventType() {
        return this.afInfoLog;
    }

    public AFb1wSDK(String str, String str2) {
        this(str, null, str2, new HashMap(), false);
    }

    public final boolean values() {
        return this.values;
    }
}

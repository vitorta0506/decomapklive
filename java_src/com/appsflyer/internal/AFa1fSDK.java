package com.appsflyer.internal;

import android.content.Context;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class AFa1fSDK {
    String AFInAppEventParameterName;
    private byte[] AFInAppEventType;
    public String AFKeystoreWrapper;
    public String valueOf;
    @Nullable
    public AFc1lSDK values;

    AFa1fSDK() {
    }

    public AFa1fSDK(String str, byte[] bArr, String str2, AFc1lSDK aFc1lSDK) {
        this.AFKeystoreWrapper = str;
        this.AFInAppEventType = bArr;
        this.AFInAppEventParameterName = str2;
        this.values = aFc1lSDK;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> values(@NonNull Context context) {
        HashMap hashMap = new HashMap();
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            hashMap.put("x_px", String.valueOf(displayMetrics.widthPixels));
            hashMap.put("y_px", String.valueOf(displayMetrics.heightPixels));
            hashMap.put("d_dpi", String.valueOf(displayMetrics.densityDpi));
            hashMap.put("size", String.valueOf(context.getResources().getConfiguration().screenLayout & 15));
            hashMap.put("xdp", String.valueOf(displayMetrics.xdpi));
            hashMap.put("ydp", String.valueOf(displayMetrics.ydpi));
        } catch (Throwable th2) {
            AFLogger.afErrorLog("Couldn't aggregate screen stats: ", th2);
        }
        return hashMap;
    }

    public final byte[] AFInAppEventParameterName() {
        return this.AFInAppEventType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AFa1fSDK.class == obj.getClass()) {
            AFa1fSDK aFa1fSDK = (AFa1fSDK) obj;
            String str = this.AFInAppEventParameterName;
            if (str == null ? aFa1fSDK.AFInAppEventParameterName != null : !str.equals(aFa1fSDK.AFInAppEventParameterName)) {
                return false;
            }
            if (!Arrays.equals(this.AFInAppEventType, aFa1fSDK.AFInAppEventType)) {
                return false;
            }
            String str2 = this.AFKeystoreWrapper;
            if (str2 == null ? aFa1fSDK.AFKeystoreWrapper != null : !str2.equals(aFa1fSDK.AFKeystoreWrapper)) {
                return false;
            }
            String str3 = this.valueOf;
            if (str3 == null ? aFa1fSDK.valueOf != null : !str3.equals(aFa1fSDK.valueOf)) {
                return false;
            }
            if (this.values == aFa1fSDK.values) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.AFInAppEventParameterName;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Arrays.hashCode(this.AFInAppEventType)) * 31;
        String str2 = this.AFKeystoreWrapper;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.valueOf;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        AFc1lSDK aFc1lSDK = this.values;
        return hashCode3 + (aFc1lSDK != null ? aFc1lSDK.hashCode() : 0);
    }

    public AFa1fSDK(char[] cArr) {
        Scanner scanner = new Scanner(new String(cArr));
        int i9 = 0;
        int i10 = 0;
        while (scanner.hasNextLine()) {
            String nextLine = scanner.nextLine();
            if (nextLine.startsWith("url=")) {
                this.AFKeystoreWrapper = nextLine.substring(4).trim();
            } else if (nextLine.startsWith("version=")) {
                this.AFInAppEventParameterName = nextLine.substring(8).trim();
                Matcher matcher = Pattern.compile("^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$").matcher(this.AFInAppEventParameterName);
                if (matcher.matches()) {
                    i9 = Integer.parseInt(matcher.group(1));
                    i10 = Integer.parseInt(matcher.group(2));
                }
            } else if (nextLine.startsWith("data=")) {
                String trim = nextLine.substring(5).trim();
                this.AFInAppEventType = (i9 > 4 || i10 >= 11) ? Base64.decode(trim, 2) : trim.getBytes();
            } else if (nextLine.startsWith("type=")) {
                String trim2 = nextLine.substring(5).trim();
                try {
                    this.values = AFc1lSDK.valueOf(trim2);
                } catch (Exception e10) {
                    AFLogger.afErrorLog("CACHE: Unknown task type: ".concat(String.valueOf(trim2)), e10);
                }
            }
        }
        scanner.close();
    }
}

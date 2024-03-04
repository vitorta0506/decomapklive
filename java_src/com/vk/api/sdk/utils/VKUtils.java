package com.vk.api.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.CookieManager;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.huawei.hms.framework.common.ContainerUtils;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsKt;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001+B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nJ \u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J)\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u001a\u0010\u0015\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u001a\u0010\u001a\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0003J\u000e\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\rH\u0007J\u0018\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\rH\u0007J*\u0010 \u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\r2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\rH\u0007J\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020'H\u0002J\u0012\u0010(\u001a\u00020\r2\b\u0010)\u001a\u0004\u0018\u00010\rH\u0007J\u000e\u0010*\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006,"}, d2 = {"Lcom/vk/api/sdk/utils/VKUtils;", "", "()V", "clearAllCookies", "", "context", "Landroid/content/Context;", "density", "", "dp", "", "explodeQueryString", "", "", "queryString", "getCertificateFingerprint", "", "packageName", "(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;", "getDisplayMetrics", "Landroid/util/DisplayMetrics;", "getDisplaySizePreV23", ServerProtocol.DIALOG_PARAM_DISPLAY, "Landroid/view/Display;", "size", "Landroid/graphics/Point;", "getDisplaySizeV23", "getPhysicalDisplaySize", "height", "isAppEnabled", "", "isAppInstalled", "isIntentAvailable", NativeProtocol.WEB_DIALOG_ACTION, "data", "Landroid/net/Uri;", "allowedPackage", "toHex", "bytes", "", "toHumanReadableAscii", TypedValues.Custom.S_STRING, "width", "MD5", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKUtils {
    @NotNull
    public static final VKUtils INSTANCE = new VKUtils();

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007J\u0010\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001f\u0010\u0005\u001a\u00060\u0006j\u0002`\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/vk/api/sdk/utils/VKUtils$MD5;", "", "()V", "hex", "", "tmpBuilder", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "getTmpBuilder", "()Ljava/lang/StringBuilder;", "tmpBuilder$delegate", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "convert", "", "h", "", "b", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class MD5 {
        static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(MD5.class, "tmpBuilder", "getTmpBuilder()Ljava/lang/StringBuilder;", 0))};
        @NotNull
        public static final MD5 INSTANCE = new MD5();
        @NotNull
        private static final char[] hex = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        @NotNull
        private static final ThreadLocalDelegate tmpBuilder$delegate = ThreadLocalDelegateKt.threadLocal(new Function0<StringBuilder>() { // from class: com.vk.api.sdk.utils.VKUtils$MD5$tmpBuilder$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final StringBuilder invoke() {
                return new StringBuilder();
            }
        });

        private MD5() {
        }

        @JvmStatic
        @NotNull
        public static final String convert(@NotNull String h10) {
            Intrinsics.checkNotNullParameter(h10, "h");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                Charset forName = Charset.forName("UTF-8");
                Intrinsics.checkNotNullExpressionValue(forName, "Charset.forName(charsetName)");
                byte[] bytes = h10.getBytes(forName);
                Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                byte[] md5 = messageDigest.digest(bytes);
                MD5 md52 = INSTANCE;
                md52.getTmpBuilder().setLength(0);
                Intrinsics.checkNotNullExpressionValue(md5, "md5");
                hex(md5);
                String sb2 = md52.getTmpBuilder().toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "tmpBuilder.toString()");
                return sb2;
            } catch (Exception unused) {
                return "";
            }
        }

        private final StringBuilder getTmpBuilder() {
            return (StringBuilder) tmpBuilder$delegate.getValue(this, $$delegatedProperties[0]);
        }

        @JvmStatic
        private static final void hex(byte[] bArr) {
            int length = bArr.length;
            int i9 = 0;
            while (i9 < length) {
                byte b10 = bArr[i9];
                i9++;
                MD5 md5 = INSTANCE;
                StringBuilder tmpBuilder = md5.getTmpBuilder();
                char[] cArr = hex;
                tmpBuilder.append(cArr[(b10 & 240) >> 4]);
                md5.getTmpBuilder().append(cArr[b10 & 15]);
            }
        }
    }

    private VKUtils() {
    }

    @JvmStatic
    @Nullable
    public static final Map<String, String> explodeQueryString(@Nullable String str) {
        List<String> split$default;
        List split$default2;
        if (str == null) {
            return null;
        }
        split$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{ContainerUtils.FIELD_DELIMITER}, false, 0, 6, (Object) null);
        HashMap hashMap = new HashMap(split$default.size());
        for (String str2 : split$default) {
            split$default2 = StringsKt__StringsKt.split$default((CharSequence) str2, new String[]{ContainerUtils.KEY_VALUE_DELIMITER}, false, 0, 6, (Object) null);
            if (split$default2.size() > 1) {
                hashMap.put(split$default2.get(0), split$default2.get(1));
            }
        }
        return hashMap;
    }

    @JvmStatic
    @Nullable
    public static final String[] getCertificateFingerprint(@Nullable Context context, @NotNull String packageName) {
        Signature[] signatureArr;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        if (context != null) {
            try {
                if (context.getPackageManager() == null || (signatureArr = context.getPackageManager().getPackageInfo(packageName, 64).signatures) == null) {
                    return null;
                }
                String[] strArr = new String[signatureArr.length];
                Intrinsics.checkNotNullExpressionValue(signatureArr, "info.signatures");
                int length = signatureArr.length;
                int i9 = 0;
                int i10 = 0;
                while (i9 < length) {
                    Signature signature = signatureArr[i9];
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                    messageDigest.update(signature.toByteArray());
                    int i11 = i10 + 1;
                    VKUtils vKUtils = INSTANCE;
                    byte[] digest = messageDigest.digest();
                    Intrinsics.checkNotNullExpressionValue(digest, "md.digest()");
                    strArr[i10] = vKUtils.toHex(digest);
                    i9++;
                    i10 = i11;
                }
                return strArr;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private final void getDisplaySizePreV23(Display display, Point point) {
        if (display == null) {
            return;
        }
        display.getRealSize(point);
    }

    @RequiresApi(23)
    private final void getDisplaySizeV23(Display display, Point point) {
        Display.Mode mode = display == null ? null : display.getMode();
        point.x = mode == null ? 0 : mode.getPhysicalWidth();
        point.y = mode != null ? mode.getPhysicalHeight() : 0;
    }

    @JvmStatic
    public static final boolean isAppEnabled(@NotNull Context context, @NotNull String packageName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        try {
            return context.getPackageManager().getApplicationInfo(packageName, 0).enabled;
        } catch (Throwable unused) {
            return false;
        }
    }

    @JvmStatic
    public static final boolean isAppInstalled(@NotNull Context context, @NotNull String packageName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        try {
            context.getPackageManager().getPackageInfo(packageName, 1);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    @JvmStatic
    public static final boolean isIntentAvailable(@NotNull Context context, @NotNull String action, @Nullable Uri uri, @NotNull String allowedPackage) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(allowedPackage, "allowedPackage");
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> queryIntentActivities = packageManager == null ? null : packageManager.queryIntentActivities(new Intent(action, uri), 65536);
        if (queryIntentActivities == null || queryIntentActivities.isEmpty()) {
            return false;
        }
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            if (Intrinsics.areEqual(resolveInfo.activityInfo.packageName, allowedPackage)) {
                return true;
            }
        }
        return false;
    }

    private final String toHex(byte[] bArr) {
        BigInteger bigInteger = new BigInteger(1, bArr);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%0" + (bArr.length << 1) + 'X', Arrays.copyOf(new Object[]{bigInteger}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return format;
    }

    @JvmStatic
    @NotNull
    public static final String toHumanReadableAscii(@Nullable String str) {
        if (str == null) {
            return "";
        }
        int i9 = 0;
        while (i9 < str.length()) {
            int codePointAt = str.codePointAt(i9);
            if (32 <= codePointAt && codePointAt <= 126) {
                i9 += Character.charCount(codePointAt);
            } else {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, 0, i9);
                while (i9 < str.length()) {
                    int codePointAt2 = str.codePointAt(i9);
                    buffer.writeUtf8CodePoint(32 <= codePointAt2 && codePointAt2 <= 126 ? codePointAt2 : 63);
                    i9 += Character.charCount(codePointAt2);
                }
                return buffer.readUtf8();
            }
        }
        return str;
    }

    public final void clearAllCookies(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        CookieManager.getInstance().removeAllCookies(null);
    }

    public final float density() {
        return getDisplayMetrics().density;
    }

    public final int dp(int i9) {
        return (int) Math.ceil(i9 * density());
    }

    @NotNull
    public final DisplayMetrics getDisplayMetrics() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getSystem().displayMetrics");
        return displayMetrics;
    }

    @NotNull
    public final Point getPhysicalDisplaySize(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Point point = new Point();
        Object systemService = context.getSystemService("window");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 23) {
            getDisplaySizeV23(defaultDisplay, point);
        } else {
            getDisplaySizePreV23(defaultDisplay, point);
        }
        return point;
    }

    public final int height(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public final int width(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return context.getResources().getDisplayMetrics().widthPixels;
    }
}

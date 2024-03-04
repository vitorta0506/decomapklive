package com.facebook.devicerequests.internal;

import android.graphics.Bitmap;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import androidx.core.view.ViewCompat;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import io.jsonwebtoken.JwtParser;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u0013\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0003J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010\u0017\u001a\u00020\u0004H\u0007J\u001e\u0010\u0017\u001a\u00020\u00042\u0014\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0019H\u0007J\b\u0010\u001a\u001a\u00020\u001bH\u0007J\u0012\u0010\u001c\u001a\u00020\u001b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u001d\u001a\u00020\u001b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\f\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u000e0\rj\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;", "", "()V", "DEVICE_INFO_DEVICE", "", "DEVICE_INFO_MODEL", "DEVICE_INFO_PARAM", "DEVICE_TARGET_USER_ID", "SDK_FLAVOR", "SDK_HEADER", "SERVICE_TYPE", "TAG", "deviceRequestsListeners", "Ljava/util/HashMap;", "Landroid/net/nsd/NsdManager$RegistrationListener;", "Lkotlin/collections/HashMap;", "cleanUpAdvertisementService", "", "userCode", "cleanUpAdvertisementServiceImpl", "generateQRCode", "Landroid/graphics/Bitmap;", "url", "getDeviceInfo", "deviceInfo", "", "isAvailable", "", "startAdvertisementService", "startAdvertisementServiceImpl", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class DeviceRequestsHelper {
    @NotNull
    public static final String DEVICE_INFO_DEVICE = "device";
    @NotNull
    public static final String DEVICE_INFO_MODEL = "model";
    @NotNull
    public static final String DEVICE_INFO_PARAM = "device_info";
    @NotNull
    public static final String DEVICE_TARGET_USER_ID = "target_user_id";
    @NotNull
    public static final String SDK_FLAVOR = "android";
    @NotNull
    public static final String SDK_HEADER = "fbsdk";
    @NotNull
    public static final String SERVICE_TYPE = "_fb._tcp.";
    @NotNull
    public static final DeviceRequestsHelper INSTANCE = new DeviceRequestsHelper();
    @Nullable
    private static final String TAG = DeviceRequestsHelper.class.getCanonicalName();
    @NotNull
    private static final HashMap<String, NsdManager.RegistrationListener> deviceRequestsListeners = new HashMap<>();

    private DeviceRequestsHelper() {
    }

    @JvmStatic
    public static final void cleanUpAdvertisementService(@Nullable String str) {
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return;
        }
        try {
            INSTANCE.cleanUpAdvertisementServiceImpl(str);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, DeviceRequestsHelper.class);
        }
    }

    private final void cleanUpAdvertisementServiceImpl(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            NsdManager.RegistrationListener registrationListener = deviceRequestsListeners.get(str);
            if (registrationListener != null) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                Object systemService = FacebookSdk.getApplicationContext().getSystemService("servicediscovery");
                if (systemService != null) {
                    try {
                        ((NsdManager) systemService).unregisterService(registrationListener);
                    } catch (IllegalArgumentException e10) {
                        Utility utility = Utility.INSTANCE;
                        Utility.logd(TAG, e10);
                    }
                    deviceRequestsListeners.remove(str);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.net.nsd.NsdManager");
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @JvmStatic
    @Nullable
    public static final Bitmap generateQRCode(@Nullable String str) {
        int height;
        int width;
        int[] iArr;
        Bitmap createBitmap;
        Bitmap bitmap = null;
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return null;
        }
        try {
            EnumMap enumMap = new EnumMap(EncodeHintType.class);
            enumMap.put((EnumMap) EncodeHintType.MARGIN, (EncodeHintType) 2);
            try {
                BitMatrix encode = new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, 200, 200, enumMap);
                height = encode.getHeight();
                width = encode.getWidth();
                iArr = new int[height * width];
                if (height > 0) {
                    int i9 = 0;
                    while (true) {
                        int i10 = i9 + 1;
                        int i11 = i9 * width;
                        if (width > 0) {
                            int i12 = 0;
                            while (true) {
                                int i13 = i12 + 1;
                                iArr[i11 + i12] = encode.get(i12, i9) ? ViewCompat.MEASURED_STATE_MASK : -1;
                                if (i13 >= width) {
                                    break;
                                }
                                i12 = i13;
                            }
                        }
                        if (i10 >= height) {
                            break;
                        }
                        i9 = i10;
                    }
                }
                createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            } catch (WriterException unused) {
            }
            try {
                createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
                return createBitmap;
            } catch (WriterException unused2) {
                bitmap = createBitmap;
                return bitmap;
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, DeviceRequestsHelper.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final String getDeviceInfo(@Nullable Map<String, String> map) {
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return null;
        }
        if (map == null) {
            try {
                map = new HashMap<>();
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, DeviceRequestsHelper.class);
                return null;
            }
        }
        String DEVICE = Build.DEVICE;
        Intrinsics.checkNotNullExpressionValue(DEVICE, "DEVICE");
        map.put(DEVICE_INFO_DEVICE, DEVICE);
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        map.put(DEVICE_INFO_MODEL, MODEL);
        String jSONObject = new JSONObject(map).toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "JSONObject(deviceInfo as Map<*, *>).toString()");
        return jSONObject;
    }

    @JvmStatic
    public static final boolean isAvailable() {
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return false;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId());
            if (appSettingsWithoutQuery != null) {
                return appSettingsWithoutQuery.getSmartLoginOptions().contains(SmartLoginOption.Enabled);
            }
            return false;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, DeviceRequestsHelper.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean startAdvertisementService(@Nullable String str) {
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return false;
        }
        try {
            DeviceRequestsHelper deviceRequestsHelper = INSTANCE;
            if (isAvailable()) {
                return deviceRequestsHelper.startAdvertisementServiceImpl(str);
            }
            return false;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, DeviceRequestsHelper.class);
            return false;
        }
    }

    private final boolean startAdvertisementServiceImpl(final String str) {
        String replace$default;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            HashMap<String, NsdManager.RegistrationListener> hashMap = deviceRequestsListeners;
            if (hashMap.containsKey(str)) {
                return true;
            }
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            replace$default = StringsKt__StringsJVMKt.replace$default(FacebookSdk.getSdkVersion(), (char) JwtParser.SEPARATOR_CHAR, '|', false, 4, (Object) null);
            final String str2 = "fbsdk_" + Intrinsics.stringPlus("android-", replace$default) + '_' + ((Object) str);
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType(SERVICE_TYPE);
            nsdServiceInfo.setServiceName(str2);
            nsdServiceInfo.setPort(80);
            Object systemService = FacebookSdk.getApplicationContext().getSystemService("servicediscovery");
            if (systemService != null) {
                NsdManager.RegistrationListener registrationListener = new NsdManager.RegistrationListener() { // from class: com.facebook.devicerequests.internal.DeviceRequestsHelper$startAdvertisementServiceImpl$nsdRegistrationListener$1
                    @Override // android.net.nsd.NsdManager.RegistrationListener
                    public void onRegistrationFailed(@NotNull NsdServiceInfo serviceInfo, int i9) {
                        Intrinsics.checkNotNullParameter(serviceInfo, "serviceInfo");
                        DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                        DeviceRequestsHelper.cleanUpAdvertisementService(str);
                    }

                    @Override // android.net.nsd.NsdManager.RegistrationListener
                    public void onServiceRegistered(@NotNull NsdServiceInfo NsdServiceInfo) {
                        Intrinsics.checkNotNullParameter(NsdServiceInfo, "NsdServiceInfo");
                        if (Intrinsics.areEqual(str2, NsdServiceInfo.getServiceName())) {
                            return;
                        }
                        DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                        DeviceRequestsHelper.cleanUpAdvertisementService(str);
                    }

                    @Override // android.net.nsd.NsdManager.RegistrationListener
                    public void onServiceUnregistered(@NotNull NsdServiceInfo serviceInfo) {
                        Intrinsics.checkNotNullParameter(serviceInfo, "serviceInfo");
                    }

                    @Override // android.net.nsd.NsdManager.RegistrationListener
                    public void onUnregistrationFailed(@NotNull NsdServiceInfo serviceInfo, int i9) {
                        Intrinsics.checkNotNullParameter(serviceInfo, "serviceInfo");
                    }
                };
                hashMap.put(str, registrationListener);
                ((NsdManager) systemService).registerService(nsdServiceInfo, 1, registrationListener);
                return true;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.net.nsd.NsdManager");
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    @JvmStatic
    @NotNull
    public static final String getDeviceInfo() {
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return null;
        }
        try {
            return getDeviceInfo(null);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, DeviceRequestsHelper.class);
            return null;
        }
    }
}

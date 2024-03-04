package com.guochao.library_xmagic;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import android.util.Log;
import com.guochao.library_xmagic.XMagicHelper;
import com.tencent.xmagic.XmagicApi;
import com.tencent.xmagic.XmagicProperty;
import com.tencent.xmagic.auth.Auth;
import com.tencent.xmagic.license.LicenceCheck;
import io.reactivex.k;
import io.reactivex.r;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
import vh.o;
@Metadata(bv = {}, d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 G2\u00020\u00012\u00020\u0002:\u0004GHIJB\u000f\u0012\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\bE\u0010FJ\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u001e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bJ\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0014\u0010\u0012\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0003J\b\u0010\u0013\u001a\u00020\u0007H\u0016J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0018\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u000bH\u0016J\u0006\u0010\u001e\u001a\u00020\u0007R\u0014\u0010 \u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010%\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R$\u0010(\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010.\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R.\u00108\u001a\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0018\u0001078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006K"}, d2 = {"Lcom/guochao/library_xmagic/XMagicHelper;", "Lcom/guochao/library_xmagic/a;", "Landroid/hardware/SensorEventListener;", "Lcom/tencent/xmagic/XmagicProperty;", "property", "", "isDeviceSupportProperty", "", "init", "resume", "pause", "", "textureId", "width", "height", "process", "destroy", "destroyOnGLThread", "update", "onInited", "", "throwable", "onFail", "Landroid/hardware/SensorEvent;", "event", "onSensorChanged", "Landroid/hardware/Sensor;", "sensor", "accuracy", "onAccuracyChanged", "reInit", "Landroid/content/Context;", "context", "Landroid/content/Context;", "Landroid/hardware/SensorManager;", "mSensorManager", "Landroid/hardware/SensorManager;", "mAccelerometer", "Landroid/hardware/Sensor;", "Lcom/tencent/xmagic/XmagicApi;", "mXmagicApi", "Lcom/tencent/xmagic/XmagicApi;", "getMXmagicApi", "()Lcom/tencent/xmagic/XmagicApi;", "setMXmagicApi", "(Lcom/tencent/xmagic/XmagicApi;)V", "mIsSupported", "Z", "getMIsSupported", "()Z", "setMIsSupported", "(Z)V", "Lcom/guochao/library_xmagic/XMagicHelper$Processor;", "mProcessor", "Lcom/guochao/library_xmagic/XMagicHelper$Processor;", "", "pendingItems", "Ljava/util/Set;", "getPendingItems", "()Ljava/util/Set;", "setPendingItems", "(Ljava/util/Set;)V", "Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;", "faceListener", "Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;", "getFaceListener", "()Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;", "setFaceListener", "(Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;)V", "<init>", "(Landroid/content/Context;)V", "Companion", "FaceListener", "Processor", "XmagicProcessor", "lib_xmagic_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes4.dex */
public final class XMagicHelper implements a, SensorEventListener {
    private static final int RESOURCE_VERSION_CODE = 5;
    @NotNull
    private static final String TAG = "XMagicHelper";
    private static boolean licenceChecked;
    private static boolean resourceUnzipped;
    @Nullable
    private static String sBaseDir;
    private static boolean sInitComplete;
    private static boolean sInited;
    @NotNull
    private final Context context;
    @NotNull
    private FaceListener faceListener;
    @Nullable
    private Sensor mAccelerometer;
    private boolean mIsSupported;
    @NotNull
    private final Processor mProcessor;
    @Nullable
    private SensorManager mSensorManager;
    @Nullable
    private XmagicApi mXmagicApi;
    @Nullable
    private Set<XmagicProperty<?>> pendingItems;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final List<a> sCallbacks = new ArrayList();

    @Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b%\u0010&J\b\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J \u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0007J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004R$\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0013R\u0016\u0010\u001c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001dR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010#\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u001dR\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\u001d¨\u0006'"}, d2 = {"Lcom/guochao/library_xmagic/XMagicHelper$Companion;", "", "", "checkDone", "Landroid/content/Context;", "context", "", "oldPath", "newPath", "", "copyAssets", "Lcom/tencent/xmagic/license/LicenceCheck;", "licenceCheck", "checkLicence", "beautyKey", "beautyLicenceUrl", "init", "copyRes", "sBaseDir", "Ljava/lang/String;", "getSBaseDir", "()Ljava/lang/String;", "setSBaseDir", "(Ljava/lang/String;)V", "", "RESOURCE_VERSION_CODE", "I", "TAG", "licenceChecked", "Z", "resourceUnzipped", "", "Lcom/guochao/library_xmagic/a;", "sCallbacks", "Ljava/util/List;", "sInitComplete", "sInited", "<init>", "()V", "lib_xmagic_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkDone() {
            if (XMagicHelper.licenceChecked && XMagicHelper.resourceUnzipped) {
                XMagicHelper.sInitComplete = true;
                for (a aVar : XMagicHelper.sCallbacks) {
                    aVar.onInited();
                }
                XMagicHelper.sCallbacks.clear();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkLicence(Context context, LicenceCheck licenceCheck) {
            String base64Licence = licenceCheck.getBase64Licence();
            if (TextUtils.isEmpty(base64Licence)) {
                String licensePathBase64 = licenceCheck.getLicensePathBase64();
                if (licensePathBase64 != null) {
                    base64Licence = licensePathBase64;
                } else {
                    Log.e(XMagicHelper.TAG, "auth: fail , licenseInfo is NULL");
                }
            }
            if (TextUtils.isEmpty(base64Licence)) {
                return;
            }
            Auth.AuthResult authByBase64 = Auth.authByBase64(context, base64Licence, "");
            Log.i(XMagicHelper.TAG, "auth result " + authByBase64.isSucceed);
            XMagicHelper.licenceChecked = true;
            checkDone();
        }

        private final boolean copyAssets(Context context, String str, String str2) {
            try {
                String[] list = context.getAssets().list(str);
                Intrinsics.checkNotNull(list);
                if (list.length > 0) {
                    Log.i(XMagicHelper.TAG, "copyAssets path: " + Arrays.toString(list));
                    new File(str2).mkdirs();
                    Iterator it = ArrayIteratorKt.iterator(list);
                    while (it.hasNext()) {
                        String str3 = (String) it.next();
                        if (!copyAssets(context, str + IOUtils.DIR_SEPARATOR_UNIX + str3, str2 + IOUtils.DIR_SEPARATOR_UNIX + str3)) {
                            Log.i(XMagicHelper.TAG, "copyAssets: fail,oldPath=" + str + IOUtils.DIR_SEPARATOR_UNIX + str3 + ",newPath=" + str2 + IOUtils.DIR_SEPARATOR_UNIX + str3);
                            return false;
                        }
                    }
                } else {
                    try {
                        InputStream open = context.getAssets().open(str);
                        Intrinsics.checkNotNullExpressionValue(open, "{\n                    co…ldPath)\n                }");
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(new File(str2));
                            byte[] bArr = new byte[1048576];
                            while (true) {
                                int read = open.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, read);
                            }
                            fileOutputStream.flush();
                            try {
                                open.close();
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            try {
                                fileOutputStream.close();
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        } catch (Exception e12) {
                            e12.printStackTrace();
                            return false;
                        }
                    } catch (IOException e13) {
                        e13.printStackTrace();
                        return true;
                    }
                }
                return true;
            } catch (IOException e14) {
                e14.printStackTrace();
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: init$lambda-0  reason: not valid java name */
        public static final String m806init$lambda0(Context context, Integer it) {
            Intrinsics.checkNotNullParameter(context, "$context");
            Intrinsics.checkNotNullParameter(it, "it");
            Companion companion = XMagicHelper.Companion;
            companion.getSBaseDir();
            companion.copyRes(context);
            return companion.getSBaseDir();
        }

        public final boolean copyRes(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            FileUtils.delete(new File(getSBaseDir(), "light_assets"));
            String[] strArr = {"Light3DPlugin", "LightCore", "LightHandPlugin", "LightBodyPlugin", "LightSegmentPlugin"};
            for (int i9 = 0; i9 < 5; i9++) {
                String str = strArr[i9];
                if (!copyAssets(context, str, getSBaseDir() + "light_assets")) {
                    Log.i(XMagicHelper.TAG, "copyRes: fail,path=" + str + ",new path=" + getSBaseDir() + "light_assets");
                    return false;
                }
            }
            return true;
        }

        @Nullable
        public final String getSBaseDir() {
            return XMagicHelper.sBaseDir;
        }

        @JvmStatic
        public final void init(@NotNull final Context context, @NotNull String beautyKey, @NotNull String beautyLicenceUrl) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(beautyKey, "beautyKey");
            Intrinsics.checkNotNullParameter(beautyLicenceUrl, "beautyLicenceUrl");
            if (XMagicHelper.sInited) {
                return;
            }
            XMagicHelper.sInited = true;
            setSBaseDir(context.getFilesDir().getAbsolutePath() + "/xmagic/");
            final LicenceCheck licenceCheck = LicenceCheck.getInstance();
            Intrinsics.checkNotNullExpressionValue(licenceCheck, "getInstance()");
            licenceCheck.setListener(new LicenceCheck.LicenceCheckListener() { // from class: com.guochao.library_xmagic.XMagicHelper$Companion$init$1
                @Override // com.tencent.xmagic.license.LicenceCheck.LicenceCheckListener
                public void onLicenceLoaded(int i9, @Nullable String str) {
                    XMagicHelper.Companion.checkLicence(context, licenceCheck);
                }
            });
            licenceCheck.setXMagicLicense(context, beautyLicenceUrl, beautyKey);
            checkLicence(context, licenceCheck);
            final SharedPreferences sharedPreferences = context.getSharedPreferences("xmaigc_resource", 0);
            int i9 = sharedPreferences.getInt("version_code", -1);
            if (i9 == 5) {
                XMagicHelper.resourceUnzipped = true;
                checkDone();
                return;
            }
            r subscribeWith = k.just(Integer.valueOf(i9)).map(new o() { // from class: com.guochao.library_xmagic.b
                @Override // vh.o
                public final Object apply(Object obj) {
                    String m806init$lambda0;
                    m806init$lambda0 = XMagicHelper.Companion.m806init$lambda0(context, (Integer) obj);
                    return m806init$lambda0;
                }
            }).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribeWith(new io.reactivex.observers.b<String>() { // from class: com.guochao.library_xmagic.XMagicHelper$Companion$init$disposableObserver$2
                @Override // io.reactivex.r
                public void onComplete() {
                }

                @Override // io.reactivex.r
                public void onError(@NotNull Throwable e10) {
                    Intrinsics.checkNotNullParameter(e10, "e");
                    XMagicHelper.Companion companion = XMagicHelper.Companion;
                    XMagicHelper.resourceUnzipped = true;
                    companion.checkDone();
                }

                @Override // io.reactivex.r
                public void onNext(@NotNull String str) {
                    Intrinsics.checkNotNullParameter(str, "str");
                    sharedPreferences.edit().putInt("version_code", 5).apply();
                    XMagicHelper.Companion companion = XMagicHelper.Companion;
                    companion.setSBaseDir(str);
                    XMagicHelper.resourceUnzipped = true;
                    companion.checkDone();
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribeWith, "val sharedPreferences =\n…e() {}\n                })");
            io.reactivex.observers.b bVar = (io.reactivex.observers.b) subscribeWith;
        }

        public final void setSBaseDir(@Nullable String str) {
            XMagicHelper.sBaseDir = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\f\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\r\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, d2 = {"Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;", "Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;", "()V", "faceListener", "getFaceListener", "()Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;", "setFaceListener", "(Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;)V", "onBodyDataUpdated", "", "p0", "", "onFaceDataUpdated", "onHandDataUpdated", "lib_xmagic_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class FaceListener implements XmagicApi.XmagicAIDataListener {
        @Nullable
        private XmagicApi.XmagicAIDataListener faceListener;

        @Nullable
        public final XmagicApi.XmagicAIDataListener getFaceListener() {
            return this.faceListener;
        }

        @Override // com.tencent.xmagic.XmagicApi.XmagicAIDataListener
        public void onBodyDataUpdated(@Nullable Object obj) {
        }

        @Override // com.tencent.xmagic.XmagicApi.XmagicAIDataListener
        public void onFaceDataUpdated(@Nullable Object obj) {
            XmagicApi.XmagicAIDataListener xmagicAIDataListener = this.faceListener;
            if (xmagicAIDataListener != null) {
                xmagicAIDataListener.onFaceDataUpdated(obj);
            }
        }

        @Override // com.tencent.xmagic.XmagicApi.XmagicAIDataListener
        public void onHandDataUpdated(@Nullable Object obj) {
        }

        public final void setFaceListener(@Nullable XmagicApi.XmagicAIDataListener xmagicAIDataListener) {
            this.faceListener = xmagicAIDataListener;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"Lcom/guochao/library_xmagic/XMagicHelper$Processor;", "", "()V", "process", "", "textureId", "width", "height", "lib_xmagic_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static abstract class Processor {
        public int process(int i9, int i10, int i11) {
            return i9;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"Lcom/guochao/library_xmagic/XMagicHelper$XmagicProcessor;", "Lcom/guochao/library_xmagic/XMagicHelper$Processor;", "(Lcom/guochao/library_xmagic/XMagicHelper;)V", "process", "", "textureId", "width", "height", "lib_xmagic_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    private final class XmagicProcessor extends Processor {
        public XmagicProcessor() {
        }

        @Override // com.guochao.library_xmagic.XMagicHelper.Processor
        public int process(int i9, int i10, int i11) {
            try {
                XmagicApi mXmagicApi = XMagicHelper.this.getMXmagicApi();
                if (mXmagicApi != null && XMagicHelper.this.getMIsSupported()) {
                    return mXmagicApi.process(i9, i10, i11);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return i9;
        }
    }

    public XMagicHelper(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.mProcessor = new XmagicProcessor();
        this.faceListener = new FaceListener();
        if (sInitComplete) {
            init();
        } else {
            sCallbacks.add(this);
        }
    }

    @JvmStatic
    public static final void init(@NotNull Context context, @NotNull String str, @NotNull String str2) {
        Companion.init(context, str, str2);
    }

    private final boolean isDeviceSupportProperty(XmagicProperty<?> xmagicProperty) {
        ArrayList<String> arrayList;
        XmagicApi xmagicApi = this.mXmagicApi;
        if (xmagicApi == null) {
            return false;
        }
        Map<String, Boolean> deviceAbilities = xmagicApi.getDeviceAbilities();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(xmagicProperty);
        Map<XmagicProperty<?>, ArrayList<String>> propertyRequiredAbilities = xmagicApi.getPropertyRequiredAbilities(arrayList2);
        if (propertyRequiredAbilities != null && propertyRequiredAbilities.containsKey(xmagicProperty) && (arrayList = propertyRequiredAbilities.get(xmagicProperty)) != null && arrayList.size() != 0) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (!TextUtils.isEmpty(next) && deviceAbilities.containsKey(next)) {
                    Boolean bool = deviceAbilities.get(next);
                    Intrinsics.checkNotNull(bool);
                    if (!bool.booleanValue()) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public final void destroy() {
        SensorManager sensorManager;
        sCallbacks.remove(this);
        if (this.mAccelerometer == null || (sensorManager = this.mSensorManager) == null) {
            return;
        }
        sensorManager.unregisterListener(this);
    }

    public final void destroyOnGLThread() {
        XmagicApi xmagicApi = this.mXmagicApi;
        if (xmagicApi != null) {
            xmagicApi.onPause();
            xmagicApi.onDestroy();
        }
        this.mXmagicApi = null;
    }

    @NotNull
    public final FaceListener getFaceListener() {
        return this.faceListener;
    }

    public final boolean getMIsSupported() {
        return this.mIsSupported;
    }

    @Nullable
    public final XmagicApi getMXmagicApi() {
        return this.mXmagicApi;
    }

    @Nullable
    public final Set<XmagicProperty<?>> getPendingItems() {
        return this.pendingItems;
    }

    public final void init() {
        XmagicApi xmagicApi = new XmagicApi(this.context, sBaseDir, new XmagicApi.OnXmagicPropertyErrorListener() { // from class: com.guochao.library_xmagic.XMagicHelper$init$1
            @Override // com.tencent.xmagic.XmagicApi.OnXmagicPropertyErrorListener
            public void onXmagicPropertyError(@Nullable String str, int i9) {
                Log.i("XMagicHelper", "xmagic error " + str + ",  code is  " + i9);
            }
        });
        xmagicApi.onResume();
        this.mIsSupported = xmagicApi.isSupportBeauty();
        Set<XmagicProperty<?>> set = this.pendingItems;
        if (set != null && (!set.isEmpty())) {
            xmagicApi.updateProperties(new ArrayList(set));
            set.clear();
            this.pendingItems = null;
        }
        xmagicApi.setAIDataListener(this.faceListener);
        xmagicApi.setXmagicLogLevel(6);
        this.mXmagicApi = xmagicApi;
        Object systemService = this.context.getSystemService("sensor");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
        SensorManager sensorManager = (SensorManager) systemService;
        this.mSensorManager = sensorManager;
        if (sensorManager != null) {
            Sensor defaultSensor = sensorManager.getDefaultSensor(1);
            this.mAccelerometer = defaultSensor;
            sensorManager.registerListener(this, defaultSensor, 3);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(@NotNull Sensor sensor, int i9) {
        Intrinsics.checkNotNullParameter(sensor, "sensor");
    }

    public void onFail(@NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
    }

    @Override // com.guochao.library_xmagic.a
    public void onInited() {
        init();
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(@NotNull SensorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        XmagicApi xmagicApi = this.mXmagicApi;
        if (xmagicApi != null) {
            xmagicApi.sensorChanged(event, this.mAccelerometer);
        }
    }

    public final void pause() {
        XmagicApi xmagicApi = this.mXmagicApi;
        if (xmagicApi != null) {
            xmagicApi.onPause();
        }
    }

    public final int process(int i9, int i10, int i11) {
        return this.mProcessor.process(i9, i10, i11);
    }

    public final void reInit() {
        if (this.mXmagicApi != null) {
            destroy();
        }
        if (sInitComplete) {
            init();
            return;
        }
        List<a> list = sCallbacks;
        if (list.contains(this)) {
            return;
        }
        list.add(this);
    }

    public final void resume() {
        XmagicApi xmagicApi = this.mXmagicApi;
        if (xmagicApi != null) {
            xmagicApi.onResume();
        }
    }

    public final void setFaceListener(@NotNull FaceListener faceListener) {
        Intrinsics.checkNotNullParameter(faceListener, "<set-?>");
        this.faceListener = faceListener;
    }

    public final void setMIsSupported(boolean z10) {
        this.mIsSupported = z10;
    }

    public final void setMXmagicApi(@Nullable XmagicApi xmagicApi) {
        this.mXmagicApi = xmagicApi;
    }

    public final void setPendingItems(@Nullable Set<XmagicProperty<?>> set) {
        this.pendingItems = set;
    }

    public final void update(@Nullable XmagicProperty<?> xmagicProperty) {
        XmagicApi xmagicApi;
        if (xmagicProperty == null || (xmagicApi = this.mXmagicApi) == null || !xmagicApi.isSupportBeauty()) {
            return;
        }
        ArrayList<XmagicProperty> arrayList = new ArrayList(Collections.singleton(xmagicProperty));
        xmagicApi.isDeviceSupport(arrayList);
        for (XmagicProperty xmagicProperty2 : arrayList) {
            if (!xmagicProperty2.isSupport) {
                return;
            }
        }
        if (isDeviceSupportProperty(xmagicProperty)) {
            xmagicApi.updateProperty(xmagicProperty);
        }
    }
}

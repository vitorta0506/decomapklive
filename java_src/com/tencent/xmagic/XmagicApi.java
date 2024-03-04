package com.tencent.xmagic;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.media.MediaPlayer;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.ServerProtocol;
import com.huawei.hms.api.ConnectionResult;
import com.tencent.bugly.Bugly;
import com.tencent.xmagic.LightNode;
import com.tencent.xmagic.XmagicConstant;
import com.tencent.xmagic.XmagicProperty;
import java.io.File;
import java.io.IOException;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import org.light.CameraConfig;
import org.light.Constants;
import org.light.DeviceCameraConfig;
import org.light.DeviceSupportUtil;
import org.light.LightAsset;
import org.light.LightConstants;
import org.light.bean.BodyData;
import org.light.bean.FaceData;
import org.light.bean.HandData;
import org.light.listener.OnAIDataListener;
import org.light.listener.OnTipsStatusListener;
import org.light.listener.YTDataListener;
import org.light.utils.FpsUtils;
import org.light.utils.LightLogUtil;
/* loaded from: classes4.dex */
public class XmagicApi {
    private static final String ENTERPRISE_COMBO_TYPE = "DEFAULT";
    public static final int PROCESS_TYPE_CAMERA_STREAM = 0;
    public static final int PROCESS_TYPE_PICTURE_DATA = 1;
    private static final String TAG = "XmagicApi";
    private static boolean mLibPathSet = false;
    private final int MAX_SEG_IAMGE_HEIGHT;
    private final int MAX_SEG_IAMGE_WIDHT;
    private final int MAX_SEG_VIDEO_DURATION;
    private Map<String, String> agents;
    private final Map<String, Boolean> deviceAbilities;
    private DeviceCameraConfig deviceCameraConfig;
    private float eps;
    private boolean isFirstFrame;
    private float lastXAxis;
    private Context mContext;
    private final LightNode mLightNode;
    private final Set<XmagicProperty<?>> mPendingProperties;
    private boolean mSegmentInited;
    private volatile int mTextureHeight;
    private volatile int mTextureWidth;
    private OnXmagicPropertyErrorListener mXmagicPropertyErrorListener;
    private int processDataType;
    private CameraConfig.DeviceCameraOrientation recognizedOrientation;
    private int srcBitmapTextureId;

    /* loaded from: classes4.dex */
    public interface OnXmagicPropertyErrorListener {
        void onXmagicPropertyError(String str, int i9);
    }

    /* loaded from: classes4.dex */
    public interface XmagicAIDataListener {
        void onBodyDataUpdated(Object obj);

        void onFaceDataUpdated(Object obj);

        void onHandDataUpdated(Object obj);
    }

    /* loaded from: classes4.dex */
    public interface XmagicTipsListener {
        void tipsNeedHide(String str, String str2, int i9);

        void tipsNeedShow(String str, String str2, int i9, int i10);
    }

    /* loaded from: classes4.dex */
    public interface XmagicYTDataListener {
        void onYTDataUpdate(String str);
    }

    public XmagicApi(Context context, String str) {
        this(context, str, null);
    }

    private void addAssetsLoadError() {
        this.mLightNode.setAssetsLoadErrorListener(new LightNode.OnAssetsLoadErrorListener() { // from class: com.tencent.xmagic.XmagicApi.4
            @Override // com.tencent.xmagic.LightNode.OnAssetsLoadErrorListener
            public void onAssetsLoadError(int i9) {
                String string;
                if (i9 == -800) {
                    string = XmagicApi.this.mContext.getResources().getString(R.string.xamgic_n800);
                } else if (i9 == -700) {
                    string = XmagicApi.this.mContext.getResources().getString(R.string.xamgic_n700);
                } else if (i9 == -600) {
                    string = XmagicApi.this.mContext.getResources().getString(R.string.xamgic_n600);
                } else if (i9 == -500) {
                    string = XmagicApi.this.mContext.getResources().getString(R.string.xamgic_n500);
                } else if (i9 == -400) {
                    string = XmagicApi.this.mContext.getResources().getString(R.string.xamgic_n400);
                } else if (i9 == -300) {
                    string = XmagicApi.this.mContext.getResources().getString(R.string.xamgic_n300);
                } else if (i9 == -200) {
                    string = XmagicApi.this.mContext.getResources().getString(R.string.xamgic_n200);
                } else if (i9 != -100) {
                    string = i9 != -1 ? "" : XmagicApi.this.mContext.getResources().getString(R.string.xamgic_n1);
                } else {
                    string = XmagicApi.this.mContext.getResources().getString(R.string.xamgic_n100);
                }
                String str = XmagicApi.TAG;
                LightLogUtil.d(str, "load assets error:" + string + ",code=" + i9);
                if (XmagicApi.this.mXmagicPropertyErrorListener != null) {
                    XmagicApi.this.mXmagicPropertyErrorListener.onXmagicPropertyError(string, i9);
                }
            }
        });
    }

    private void detectModelExists(String str) {
        if (!new File(str + "light_assets/models/LightSegmentBody.bundle").exists()) {
            LightLogUtil.e(TAG, "load assets fail:LightSegmentBodyModel is not exists");
        }
        if (!new File(str + "light_assets/models/LightSegmentHair.bundle").exists()) {
            LightLogUtil.e(TAG, "load assets fail:LightSegmentHairModel is not exists");
        }
        if (!new File(str + "light_assets/models/LightSegmentHead.bundle").exists()) {
            LightLogUtil.e(TAG, "load assets fail:LightSegmentHeadModel is not exists");
        }
        if (!new File(str + "light_assets/models/LightHandModel.bundle").exists()) {
            LightLogUtil.e(TAG, "load assets fail:LightHandModel is not exists");
        }
        if (new File(str + "light_assets/models/LightBodyModel.bundle").exists()) {
            return;
        }
        LightLogUtil.e(TAG, "load assets fail:LightBodyModel is not exists");
    }

    private String fixThinFaceValue(String str) {
        return str.equals("0.0") ? "0.01" : str;
    }

    private boolean isDeviceSupportProperty(XmagicProperty<?> xmagicProperty) {
        ArrayList<String> arrayList;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(xmagicProperty);
        Map<XmagicProperty<?>, ArrayList<String>> propertyRequiredAbilities = getPropertyRequiredAbilities(arrayList2);
        if (propertyRequiredAbilities != null && propertyRequiredAbilities.containsKey(xmagicProperty) && (arrayList = propertyRequiredAbilities.get(xmagicProperty)) != null && arrayList.size() != 0) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (!TextUtils.isEmpty(next) && this.deviceAbilities.containsKey(next) && !Boolean.TRUE.equals(this.deviceAbilities.get(next))) {
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean loadLib(String str, String str2) {
        boolean z10;
        String str3 = TAG;
        LightLogUtil.d(str3, "loadLib: path=" + str + ",libName=" + str2);
        try {
            System.load(str + "lib" + str2 + ".so");
            LightLogUtil.d(str3, "loadLib: try 1 success");
            z10 = true;
        } catch (UnsatisfiedLinkError e10) {
            String str4 = TAG;
            LightLogUtil.d(str4, "loadLib try 1: error=" + e10.toString());
            z10 = false;
        }
        if (z10) {
            return true;
        }
        try {
            System.loadLibrary(str2);
            LightLogUtil.d(TAG, "loadLib: try 2 success");
            return true;
        } catch (UnsatisfiedLinkError e11) {
            String str5 = TAG;
            LightLogUtil.d(str5, "loadLib try 2: error=" + e11.toString());
            return false;
        }
    }

    private void preInitSegmentAgent() {
        if (this.mSegmentInited) {
            return;
        }
        this.mLightNode.setPreInitAgents(new String[]{"BG_SEG_AGENT"});
        this.mSegmentInited = true;
    }

    public static boolean setLibPathAndLoad(String str) {
        mLibPathSet = true;
        String str2 = TAG;
        LightLogUtil.d(str2, "setLibPath: path=" + str);
        if (TextUtils.isEmpty(str)) {
            try {
                System.loadLibrary("light-sdk");
                LightLogUtil.d(str2, "setLibPathAndLoad,light-sdk,success");
                return true;
            } catch (UnsatisfiedLinkError e10) {
                LightLogUtil.e(TAG, "setLibPathAndLoad,light-sdk,error=" + e10.toString());
                return false;
            }
        }
        String str3 = File.separator;
        if (!str.endsWith(str3)) {
            str = str + str3;
        }
        loadLib(str, "YTCommonXMagic");
        return loadLib(str, "v8jni") && loadLib(str, "libpag") && loadLib(str, "light-sdk");
    }

    private void setSegmentBg(String str, int i9) {
        String str2 = TAG;
        LightLogUtil.d(str2, "setSegmentBg, fileName=" + str + ",type = " + i9);
        int i10 = 0;
        if (!TextUtils.isEmpty(str) && new File(str).exists()) {
            boolean z10 = true;
            if (i9 == 0) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(str, options);
                int i11 = options.outWidth;
                int i12 = options.outHeight;
                boolean z11 = i11 < i12;
                boolean z12 = i11 <= 0 || i12 <= 0;
                boolean z13 = z11 && (i11 > 2160 || i12 > 3840);
                if (z11 || (i11 <= 3840 && i12 <= 2160)) {
                    z10 = false;
                }
                if (!z13 && !z10 && !z12) {
                    try {
                        Bitmap decodeFile = BitmapFactory.decodeFile(str);
                        if (decodeFile != null) {
                            decodeFile.recycle();
                        }
                    } catch (OutOfMemoryError unused) {
                        str = null;
                        if (this.mXmagicPropertyErrorListener != null) {
                            this.mXmagicPropertyErrorListener.onXmagicPropertyError(this.mContext.getResources().getString(R.string.xamgic_5001), 5001);
                        }
                        LightLogUtil.d(TAG, "load assets error code:5001");
                    }
                    this.mLightNode.setSegmentBg(str, i9, 0);
                } else {
                    if (this.mXmagicPropertyErrorListener != null) {
                        this.mXmagicPropertyErrorListener.onXmagicPropertyError(this.mContext.getResources().getString(R.string.xamgic_5000), 5000);
                    }
                    LightLogUtil.d(str2, "load assets error code:5000");
                    return;
                }
            } else if (str.substring(str.lastIndexOf(".") + 1).equalsIgnoreCase("mp4")) {
                MediaPlayer mediaPlayer = new MediaPlayer();
                try {
                    mediaPlayer.setDataSource(str);
                    mediaPlayer.prepare();
                } catch (IOException unused2) {
                    if (this.mXmagicPropertyErrorListener != null) {
                        this.mXmagicPropertyErrorListener.onXmagicPropertyError(this.mContext.getResources().getString(R.string.xamgic_5002), 5002);
                    }
                    LightLogUtil.d(TAG, "load assets error code:5002");
                }
                i10 = mediaPlayer.getDuration() - 10;
                if (i10 > 200000) {
                    if (this.mXmagicPropertyErrorListener != null) {
                        this.mXmagicPropertyErrorListener.onXmagicPropertyError(this.mContext.getResources().getString(R.string.xamgic_5003), 5003);
                    }
                    LightLogUtil.d(TAG, "load assets error code:5003");
                    return;
                }
            } else {
                if (this.mXmagicPropertyErrorListener != null) {
                    this.mXmagicPropertyErrorListener.onXmagicPropertyError(this.mContext.getApplicationContext().getResources().getString(R.string.xamgic_5004), 5004);
                }
                LightLogUtil.d(str2, "load assets error code:5004");
            }
        }
        this.mLightNode.setSegmentBg(str, i9, i10);
    }

    public Map<String, Boolean> getDeviceAbilities() {
        return this.deviceAbilities;
    }

    public Map<XmagicProperty<?>, ArrayList<String>> getPropertyRequiredAbilities(List<XmagicProperty<?>> list) {
        String[] strArr;
        if (list == null || list.size() <= 0) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (XmagicProperty<?> xmagicProperty : list) {
            String str = xmagicProperty.resPath;
            if (!TextUtils.isEmpty(str) && new File(str).isDirectory() && new File(str).exists()) {
                ArrayList arrayList = new ArrayList();
                LightAsset makeLightAssetByPath = this.mLightNode.makeLightAssetByPath(str);
                for (String str2 : DeviceSupportUtil.DEVICE_ABILITY_ARRAY) {
                    if (makeLightAssetByPath != null && !TextUtils.isEmpty(str2) && makeLightAssetByPath.needRenderAbility(str2)) {
                        arrayList.add(str2);
                    }
                }
                linkedHashMap.put(xmagicProperty, arrayList);
            }
        }
        return linkedHashMap;
    }

    public void isBeautyAuthorized(List<XmagicProperty<?>> list) {
        if (list == null) {
            return;
        }
        for (XmagicProperty<?> xmagicProperty : list) {
            if (xmagicProperty != null && !TextUtils.isEmpty(xmagicProperty.effKey)) {
                boolean isBeautyAuthorized = this.mLightNode.getmBeautyController().isBeautyAuthorized(xmagicProperty.effKey);
                String str = TAG;
                LightLogUtil.d(str, "isBeautyAuthorized,property.effKey=" + xmagicProperty.effKey + ",isAuth= " + isBeautyAuthorized);
                xmagicProperty.isAuth = isBeautyAuthorized;
            }
        }
    }

    public void isDeviceSupport(List<XmagicProperty<?>> list) {
        for (XmagicProperty<?> xmagicProperty : list) {
            xmagicProperty.isSupport = isDeviceSupportProperty(xmagicProperty);
            LightLogUtil.d("isDeviceSupport", "    id=" + xmagicProperty.f35092id + "  isSupport=" + xmagicProperty.isSupport);
        }
    }

    public boolean isSupportBeauty() {
        boolean booleanValue = this.deviceAbilities.get(Constants.DEVICE_ABILITY_OPENGL).booleanValue();
        String str = TAG;
        LightLogUtil.d(str, "isSupportBeauty = " + booleanValue);
        return booleanValue;
    }

    public void onDestroy() {
        LightLogUtil.d(TAG, "onDestroy()");
        this.mLightNode.clear();
        this.mSegmentInited = false;
    }

    public void onPause() {
        LightLogUtil.d(TAG, "onPause()");
        onPauseAudio();
    }

    public void onPauseAudio() {
        LightLogUtil.d(TAG, "onPauseAudio()");
        this.mLightNode.pauseAudio();
    }

    public void onResume() {
        LightLogUtil.d(TAG, "onResume()");
        this.mLightNode.resumeAudio();
    }

    public Bitmap process(Bitmap bitmap, boolean z10) {
        if (bitmap == null) {
            LightLogUtil.e(TAG, "process bitmap,Input bitmap is null");
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        String str = TAG;
        LightLogUtil.d(str, "process bitmap,width=" + width + ",height=" + height);
        int i9 = this.srcBitmapTextureId;
        if (i9 == -1) {
            this.srcBitmapTextureId = GlUtil.createTexture(bitmap);
        } else {
            GlUtil.bindTexture(bitmap, i9);
        }
        if (!this.mLightNode.isInited()) {
            for (int i10 = 0; i10 < 3; i10++) {
                process(this.srcBitmapTextureId, width, height);
                try {
                    Thread.sleep(200L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        }
        this.mLightNode.setSyncMode(true);
        if (z10) {
            for (int i11 = 0; i11 < 1; i11++) {
                process(this.srcBitmapTextureId, width, height);
            }
        }
        return GlUtil.readTexture(process(this.srcBitmapTextureId, width, height), width, height);
    }

    public void sensorChanged(SensorEvent sensorEvent, Sensor sensor) {
        CameraConfig.DeviceCameraOrientation deviceCameraOrientation = this.recognizedOrientation;
        if (sensorEvent.sensor == sensor) {
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            if (Math.abs(f11) > Math.abs(f10)) {
                if (f11 > 1.0f) {
                    deviceCameraOrientation = CameraConfig.DeviceCameraOrientation.ROTATION_0;
                } else if (f11 < -1.0f) {
                    deviceCameraOrientation = CameraConfig.DeviceCameraOrientation.ROTATION_180;
                }
            } else if (f10 > 1.0f) {
                deviceCameraOrientation = CameraConfig.DeviceCameraOrientation.ROTATION_90;
            } else if (f10 < -1.0f) {
                deviceCameraOrientation = CameraConfig.DeviceCameraOrientation.ROTATION_270;
            }
            if (this.recognizedOrientation != deviceCameraOrientation) {
                if (Math.abs(f10 - this.lastXAxis) > this.eps || Math.abs(f11 - this.lastXAxis) > this.eps) {
                    this.deviceCameraConfig.deviceCameraOrientation = deviceCameraOrientation;
                    this.lastXAxis = f10;
                    this.recognizedOrientation = deviceCameraOrientation;
                }
            }
        }
    }

    public void setAIDataListener(final XmagicAIDataListener xmagicAIDataListener) {
        this.mLightNode.setAIDataListener(new OnAIDataListener() { // from class: com.tencent.xmagic.XmagicApi.2
            @Override // org.light.listener.OnAIDataListener
            public void onBodyDataUpdated(List<BodyData> list) {
                XmagicAIDataListener xmagicAIDataListener2 = xmagicAIDataListener;
                if (xmagicAIDataListener2 != null) {
                    xmagicAIDataListener2.onBodyDataUpdated(list);
                }
            }

            @Override // org.light.listener.OnAIDataListener
            public void onFaceDataUpdated(List<FaceData> list) {
                XmagicAIDataListener xmagicAIDataListener2 = xmagicAIDataListener;
                if (xmagicAIDataListener2 != null) {
                    xmagicAIDataListener2.onFaceDataUpdated(list);
                }
            }

            @Override // org.light.listener.OnAIDataListener
            public void onHandDataUpdated(List<HandData> list) {
                XmagicAIDataListener xmagicAIDataListener2 = xmagicAIDataListener;
                if (xmagicAIDataListener2 != null) {
                    xmagicAIDataListener2.onHandDataUpdated(list);
                }
            }
        });
    }

    public void setBundleToLightEngine(Map<String, String> map) {
        LightNode lightNode = this.mLightNode;
        if (lightNode != null && lightNode.isInited()) {
            this.mLightNode.setBundleToLightEngine(map);
            return;
        }
        if (this.agents == null) {
            this.agents = new HashMap();
        }
        this.agents.putAll(map);
    }

    public void setTipsListener(final XmagicTipsListener xmagicTipsListener) {
        this.mLightNode.setTipsListener(new OnTipsStatusListener() { // from class: com.tencent.xmagic.XmagicApi.3
            @Override // org.light.listener.OnTipsStatusListener
            public void tipsNeedHide(String str, String str2, int i9) {
                XmagicTipsListener xmagicTipsListener2 = xmagicTipsListener;
                if (xmagicTipsListener2 != null) {
                    xmagicTipsListener2.tipsNeedHide(str, str2, i9);
                }
            }

            @Override // org.light.listener.OnTipsStatusListener
            public void tipsNeedShow(String str, String str2, int i9, int i10) {
                XmagicTipsListener xmagicTipsListener2 = xmagicTipsListener;
                if (xmagicTipsListener2 != null) {
                    xmagicTipsListener2.tipsNeedShow(str, str2, i9, i10);
                }
            }
        });
    }

    public void setXmagicLogLevel(int i9) {
        LightLogUtil.init();
        LightLogUtil.setMinPriority(i9);
    }

    public void setXmagicStreamType(int i9) {
        this.processDataType = i9;
    }

    public void setYTDataListener(final XmagicYTDataListener xmagicYTDataListener) {
        this.mLightNode.setYTDataListener(new YTDataListener() { // from class: com.tencent.xmagic.XmagicApi.1
            @Override // org.light.listener.YTDataListener
            public void onYTDataUpdate(String str) {
                XmagicYTDataListener xmagicYTDataListener2 = xmagicYTDataListener;
                if (xmagicYTDataListener2 != null) {
                    xmagicYTDataListener2.onYTDataUpdate(str);
                }
            }
        });
    }

    public void updateProperties(List<XmagicProperty<?>> list) {
        for (XmagicProperty<?> xmagicProperty : list) {
            if (XmagicPropertyChecker.checkProperty(xmagicProperty)) {
                this.mPendingProperties.add(xmagicProperty);
            } else {
                String str = TAG;
                LightLogUtil.e(str, "XmagicProperty parameter is invalid " + xmagicProperty.toString());
            }
        }
    }

    public void updateProperty(XmagicProperty<?> xmagicProperty) {
        if (XmagicPropertyChecker.checkProperty(xmagicProperty)) {
            this.mPendingProperties.add(xmagicProperty);
            return;
        }
        String str = TAG;
        LightLogUtil.e(str, "XmagicProperty parameter is invalid " + xmagicProperty.toString());
    }

    public XmagicApi(Context context, String str, OnXmagicPropertyErrorListener onXmagicPropertyErrorListener) {
        OnXmagicPropertyErrorListener onXmagicPropertyErrorListener2;
        this.eps = 3.0f;
        this.deviceCameraConfig = new DeviceCameraConfig();
        this.mSegmentInited = false;
        this.mPendingProperties = new CopyOnWriteArraySet();
        this.srcBitmapTextureId = -1;
        this.processDataType = 0;
        this.MAX_SEG_IAMGE_HEIGHT = 3840;
        this.MAX_SEG_IAMGE_WIDHT = 2160;
        this.MAX_SEG_VIDEO_DURATION = 200000;
        this.isFirstFrame = true;
        this.agents = null;
        LightLogUtil.d(TAG, "XmagicApi constructor，resDir=" + str + ",mLibPathSet=" + mLibPathSet);
        this.mXmagicPropertyErrorListener = onXmagicPropertyErrorListener;
        if (!mLibPathSet && !setLibPathAndLoad(null) && (onXmagicPropertyErrorListener2 = this.mXmagicPropertyErrorListener) != null) {
            onXmagicPropertyErrorListener2.onXmagicPropertyError(context.getString(R.string.xamgic_9000), ConnectionResult.NETWORK_ERROR);
        }
        String str2 = File.separator;
        if (!str.endsWith(str2)) {
            str = str + str2;
        }
        detectModelExists(str);
        if (this.agents == null) {
            this.agents = new HashMap();
        }
        this.agents.put("BG_SEG_AGENT", str + "light_assets/models/LightSegmentBody.bundle");
        this.agents.put("HAIR_SEG_AGENT", str + "light_assets/models/LightSegmentHair.bundle");
        this.agents.put("HEAD_SEG_AGENT", str + "light_assets/models/LightSegmentHead.bundle");
        this.agents.put("HAND_AGENT", str + "light_assets/models/LightHandModel.bundle");
        this.agents.put("BODY_AGENT", str + "light_assets/models/LightBodyModel.bundle");
        this.agents.put("Ace_3d_Engine", str + "light_assets");
        this.mContext = context;
        LightNode lightNode = new LightNode(context, str + "light_assets", str + "light_assets/template.json");
        this.mLightNode = lightNode;
        addAssetsLoadError();
        this.deviceAbilities = lightNode.getDeviceSupportAbilities();
        setXmagicLogLevel(5);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int process(int i9, int i10, int i11) {
        Iterator it;
        char c10;
        int fps;
        LightNode lightNode = this.mLightNode;
        if (lightNode == null) {
            LightLogUtil.w(TAG, "process(): mLightNode == null, just return srcTextureId.");
            return i9;
        }
        if (!lightNode.isInited()) {
            this.mLightNode.initPreviewSize(i10, i11);
            this.mLightNode.init();
            Map<String, String> map = this.agents;
            if (map != null && map.size() > 0) {
                setBundleToLightEngine(this.agents);
            }
            StringBuilder sb2 = new StringBuilder("process(): LightNode.initPreviewSize(): width = [");
            sb2.append(i10);
            sb2.append("], height = [");
            sb2.append(i11 + "]");
            String str = TAG;
            LightLogUtil.d(str, sb2.toString());
            LightLogUtil.d(str, "process(): LightNode.init()");
        } else if (this.mTextureWidth != i10 || this.mTextureHeight != i11) {
            this.mLightNode.updatePreviewSize(i10, i11);
            LightLogUtil.d(TAG, "process(): src texture size changed, call LightNode.updatePreviewSize(): width = [" + i10 + "], height = [" + i10 + "]");
        }
        this.mTextureWidth = i10;
        this.mTextureHeight = i11;
        if (this.isFirstFrame) {
            this.isFirstFrame = false;
            HashMap hashMap = new HashMap();
            for (String str2 : XmagicConstant.BeautyConstant.BEAUTY_EFF_KEYS) {
                hashMap.put(str2, Float.toString(0.0f));
            }
            hashMap.put(LightConstants.BasicSwitchKey.BASIC_LIPS_ENABLE, Bugly.SDK_IS_DEV);
            hashMap.put(LightConstants.BasicSwitchKey.BASIC_SOFT_LIGHT_ENABLE, Bugly.SDK_IS_DEV);
            hashMap.put(LightConstants.BasicSwitchKey.BASIC_MAKEUP_MULTIPLY_ENABLE, Bugly.SDK_IS_DEV);
            this.mLightNode.updateCameraConfigData(hashMap);
        }
        if (this.processDataType == 0 && (fps = FpsUtils.getFps()) == 0) {
            LightLogUtil.d(TAG, "jump frame fps " + fps);
            return this.mLightNode.render(i9, i10, i11);
        }
        if (!this.mPendingProperties.isEmpty()) {
            ArrayList arrayList = new ArrayList(this.mPendingProperties);
            this.mPendingProperties.clear();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                XmagicProperty xmagicProperty = (XmagicProperty) it2.next();
                String str3 = TAG;
                LightLogUtil.d(str3, "process mPendingProperties，property=" + xmagicProperty.toString());
                XmagicProperty.Category category = xmagicProperty.category;
                XmagicProperty.Category category2 = XmagicProperty.Category.MOTION;
                if (category != category2 && category != XmagicProperty.Category.SEGMENTATION && category != XmagicProperty.Category.MAKEUP) {
                    HashMap hashMap2 = new HashMap();
                    XmagicProperty.Category category3 = xmagicProperty.category;
                    if (category3 == XmagicProperty.Category.BEAUTY) {
                        if (!TextUtils.isEmpty(xmagicProperty.f35092id)) {
                            hashMap2.put(xmagicProperty.f35092id, xmagicProperty.resPath);
                            String str4 = xmagicProperty.f35092id;
                            str4.hashCode();
                            it = it2;
                            switch (str4.hashCode()) {
                                case -1290776897:
                                    if (str4.equals("beauty.makeupMultiply.multiplyMask")) {
                                        c10 = 0;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case -1052607321:
                                    if (str4.equals(XmagicConstant.BeautyConstant.BEAUTY_FACE_NATURE_ID)) {
                                        c10 = 1;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case 87971656:
                                    if (str4.equals("beauty.lips.lipsMask")) {
                                        c10 = 2;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case 833501999:
                                    if (str4.equals(XmagicConstant.BeautyConstant.BEAUTY_FACE_MALE_GOD_ID)) {
                                        c10 = 3;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case 1086925200:
                                    if (str4.equals(XmagicConstant.BeautyConstant.BEAUTY_FACE_FEMALE_GOD_ID)) {
                                        c10 = 4;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                case 1860290884:
                                    if (str4.equals("beauty.softLight.softLightMask")) {
                                        c10 = 5;
                                        break;
                                    }
                                    c10 = 65535;
                                    break;
                                default:
                                    c10 = 65535;
                                    break;
                            }
                            String str5 = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
                            switch (c10) {
                                case 0:
                                    int currentDisplayValue = (int) ((XmagicProperty.XmagicPropertyValues) xmagicProperty.effValue).getCurrentDisplayValue();
                                    if (currentDisplayValue <= 0) {
                                        str5 = Bugly.SDK_IS_DEV;
                                    }
                                    hashMap2.put(LightConstants.BasicSwitchKey.BASIC_MAKEUP_MULTIPLY_ENABLE, str5);
                                    if (currentDisplayValue <= 0) {
                                        this.mLightNode.getmBeautyController().enableBasicBeautyMakeup(3, false);
                                    } else {
                                        this.mLightNode.getmBeautyController().openAndUpdateBasicMultiply(xmagicProperty.resPath, currentDisplayValue);
                                    }
                                    this.mLightNode.updateCameraConfigData(hashMap2);
                                    break;
                                case 1:
                                    hashMap2.put(LightConstants.ReshapeConfigKey.RESHAPE_BASIC_FACE_SUB_TYPE_UNIFORM, XmagicConstant.BeautyConstant.BEAUTY_FACE_NATURE_ID);
                                    hashMap2.put(xmagicProperty.effKey, fixThinFaceValue(((XmagicProperty.XmagicPropertyValues) xmagicProperty.effValue).getCurrentInnerValueString()));
                                    this.mLightNode.updateCameraConfigData(hashMap2);
                                    break;
                                case 2:
                                    int currentDisplayValue2 = (int) ((XmagicProperty.XmagicPropertyValues) xmagicProperty.effValue).getCurrentDisplayValue();
                                    if (currentDisplayValue2 <= 0) {
                                        str5 = Bugly.SDK_IS_DEV;
                                    }
                                    hashMap2.put(LightConstants.BasicSwitchKey.BASIC_LIPS_ENABLE, str5);
                                    if (currentDisplayValue2 <= 0) {
                                        this.mLightNode.getmBeautyController().enableBasicBeautyMakeup(1, false);
                                    } else {
                                        this.mLightNode.getmBeautyController().openAndUpdateBasicLips(xmagicProperty.resPath, currentDisplayValue2, 2);
                                    }
                                    this.mLightNode.updateCameraConfigData(hashMap2);
                                    break;
                                case 3:
                                    hashMap2.put(LightConstants.ReshapeConfigKey.RESHAPE_BASIC_FACE_SUB_TYPE_UNIFORM, XmagicConstant.BeautyConstant.BEAUTY_FACE_MALE_GOD_ID);
                                    hashMap2.put(xmagicProperty.effKey, fixThinFaceValue(((XmagicProperty.XmagicPropertyValues) xmagicProperty.effValue).getCurrentInnerValueString()));
                                    this.mLightNode.updateCameraConfigData(hashMap2);
                                    break;
                                case 4:
                                    hashMap2.put(LightConstants.ReshapeConfigKey.RESHAPE_BASIC_FACE_SUB_TYPE_UNIFORM, XmagicConstant.BeautyConstant.BEAUTY_FACE_FEMALE_GOD_ID);
                                    hashMap2.put(xmagicProperty.effKey, fixThinFaceValue(((XmagicProperty.XmagicPropertyValues) xmagicProperty.effValue).getCurrentInnerValueString()));
                                    this.mLightNode.updateCameraConfigData(hashMap2);
                                    break;
                                case 5:
                                    int currentDisplayValue3 = (int) ((XmagicProperty.XmagicPropertyValues) xmagicProperty.effValue).getCurrentDisplayValue();
                                    if (currentDisplayValue3 <= 0) {
                                        str5 = Bugly.SDK_IS_DEV;
                                    }
                                    hashMap2.put(LightConstants.BasicSwitchKey.BASIC_SOFT_LIGHT_ENABLE, str5);
                                    if (currentDisplayValue3 <= 0) {
                                        this.mLightNode.getmBeautyController().enableBasicBeautyMakeup(2, false);
                                    } else {
                                        this.mLightNode.getmBeautyController().openAndUpdateBasicSoftLight(xmagicProperty.resPath, currentDisplayValue3);
                                    }
                                    this.mLightNode.updateCameraConfigData(hashMap2);
                                    break;
                            }
                        } else {
                            it = it2;
                            hashMap2.put(xmagicProperty.effKey, ((XmagicProperty.XmagicPropertyValues) xmagicProperty.effValue).getCurrentInnerValueString());
                            this.mLightNode.updateCameraConfigData(hashMap2);
                        }
                    } else {
                        it = it2;
                        if (category3 == XmagicProperty.Category.BODY_BEAUTY) {
                            String str6 = xmagicProperty.effKey;
                            V v10 = xmagicProperty.effValue;
                            hashMap2.put(str6, v10 != 0 ? ((XmagicProperty.XmagicPropertyValues) v10).getCurrentInnerValueString() : "0");
                            this.mLightNode.updateCameraConfigData(hashMap2);
                        } else if (category3 == XmagicProperty.Category.KV) {
                            hashMap2.put(xmagicProperty.effKey, (String) xmagicProperty.effValue);
                            this.mLightNode.updateCameraConfigData(hashMap2);
                        } else if (category3 == XmagicProperty.Category.LUT) {
                            hashMap2.put(LightConstants.LutConfigKey.LUT_PATH, xmagicProperty.resPath);
                            V v11 = xmagicProperty.effValue;
                            hashMap2.put(LightConstants.LutConfigKey.LUT_INTENSITY, v11 != 0 ? ((XmagicProperty.XmagicPropertyValues) v11).getCurrentInnerValueString() : "0");
                            this.mLightNode.updateCameraConfigData(hashMap2);
                        }
                    }
                    LightLogUtil.d(str3, "render() called, update property: " + hashMap2);
                } else {
                    it = it2;
                    if (!xmagicProperty.f35092id.equals(XmagicProperty.ID_NONE) && (xmagicProperty.category == XmagicProperty.Category.SEGMENTATION || xmagicProperty.f35092id.equals(XmagicConstant.SegmentationId.CUSTOM_SEG_ID) || xmagicProperty.f35092id.startsWith("video_segmentation_"))) {
                        preInitSegmentAgent();
                    }
                    if (xmagicProperty.f35092id.equals(XmagicConstant.SegmentationId.CUSTOM_SEG_ID)) {
                        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(xmagicProperty.effKey);
                        if (contentTypeFor.contains("image")) {
                            LightLogUtil.d(str3, "image background");
                            setSegmentBg(xmagicProperty.effKey, 0);
                        } else if (contentTypeFor.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                            LightLogUtil.d(str3, "video background");
                            setSegmentBg(xmagicProperty.effKey, 1);
                        } else {
                            LightLogUtil.e(str3, "invalid bg type: " + contentTypeFor);
                        }
                        this.mLightNode.updateAsset(xmagicProperty.resPath, true);
                    } else {
                        this.mLightNode.updateAsset(xmagicProperty.resPath, false);
                        V v12 = xmagicProperty.effValue;
                        if (v12 != 0) {
                            String currentInnerValueString = ((XmagicProperty.XmagicPropertyValues) v12).getCurrentInnerValueString();
                            if (xmagicProperty.effKey.equals("makeup.strength")) {
                                this.mLightNode.setPresetData(xmagicProperty.effKey, currentInnerValueString);
                            } else {
                                HashMap hashMap3 = new HashMap();
                                hashMap3.put(xmagicProperty.effKey, currentInnerValueString);
                                this.mLightNode.updateCameraConfigData(hashMap3);
                            }
                        }
                    }
                    if (xmagicProperty.category == category2) {
                        this.mLightNode.setPresetData("makeup.strength", "1.0");
                    }
                    LightLogUtil.d(str3, "render() called, updateAsset: " + xmagicProperty.resPath);
                }
                it2 = it;
            }
        }
        this.mLightNode.updateDeviceCameraConfig(this.deviceCameraConfig);
        return this.mLightNode.render(i9, i10, i11);
    }
}

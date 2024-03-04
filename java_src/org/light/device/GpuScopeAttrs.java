package org.light.device;

import android.content.Context;
import com.google.gson.Gson;
import java.util.Iterator;
import java.util.List;
import org.light.utils.FileUtils;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class GpuScopeAttrs {
    private static final String[] GPU_NAMES = {"Mali-T860", "Mali-T720"};
    private static final GpuScopeAttrs INSTANCE = new GpuScopeAttrs();
    private static final String TAG = "GpuScopeAttrs";
    private GpuBean.DeviceModel thisDeviceModel;
    private GpuBean.GpuModel thisGpuModel;
    private GpuBean.SysVersionModel thisSysVersionModel;

    /* loaded from: classes7.dex */
    public static class GpuBean {
        public List<DeviceModel> deviceModels;
        public List<GpuModel> gpuModels;
        public List<SysVersionModel> sysVersionModels;

        /* loaded from: classes7.dex */
        public static class BaseModel {
            public List<String> GLExtensionBlackList;
            public List<String> filamentWhiteList;
            public List<String> renderBlackList;
            public boolean kapuSupport = true;
            public boolean filamentSupport = true;
            public boolean openclSupport = true;
            public boolean aiSupport = true;
            public boolean shareGLContextError = false;
            public boolean ace3dFlushSupport = true;
            public boolean hairSegPreLoadSupport = true;
            public boolean fenceSupport = true;
        }

        /* loaded from: classes7.dex */
        public static class DeviceModel extends BaseModel {
            public String device;
            public boolean enableImuSmooth = false;
        }

        /* loaded from: classes7.dex */
        public static class GpuModel extends BaseModel {
            public String gpu;
        }

        /* loaded from: classes7.dex */
        public static class SysVersionModel extends BaseModel {
            public String version;
        }
    }

    public static GpuScopeAttrs getInstance() {
        return INSTANCE;
    }

    public GpuBean.DeviceModel getDeviceModel() {
        return this.thisDeviceModel;
    }

    public GpuBean.GpuModel getGPuModel() {
        return this.thisGpuModel;
    }

    public GpuBean.SysVersionModel getSysVersionModel() {
        return this.thisSysVersionModel;
    }

    public void init(Context context, String str, String str2, String str3, String str4) {
        GpuBean gpuBean;
        String str5;
        String str6;
        String str7 = FileUtils.genSeperateFileDir(str4) + "device_config.json";
        if (!FileUtils.isFileExist(str7)) {
            str7 = "assets://device_config.json";
        }
        try {
            gpuBean = (GpuBean) new Gson().fromJson(FileUtils.load(context, str7), (Class<Object>) GpuBean.class);
        } catch (Throwable th2) {
            LightLogUtil.e(TAG, th2.toString());
            gpuBean = null;
        }
        if (gpuBean != null) {
            this.thisGpuModel = null;
            List<GpuBean.GpuModel> list = gpuBean.gpuModels;
            if (list != null) {
                Iterator<GpuBean.GpuModel> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    GpuBean.GpuModel next = it.next();
                    if (str2 != null && (str6 = next.gpu) != null && str2.contains(str6)) {
                        this.thisGpuModel = next;
                        break;
                    }
                }
            }
            this.thisDeviceModel = null;
            List<GpuBean.DeviceModel> list2 = gpuBean.deviceModels;
            if (list2 != null) {
                Iterator<GpuBean.DeviceModel> it2 = list2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    GpuBean.DeviceModel next2 = it2.next();
                    if (str.toLowerCase().contains(next2.device.toLowerCase())) {
                        LightLogUtil.i(TAG, str + "->>deviceModels:" + next2.device + ",shareGLContextError:" + next2.shareGLContextError);
                        this.thisDeviceModel = next2;
                        break;
                    }
                }
            }
            this.thisSysVersionModel = null;
            List<GpuBean.SysVersionModel> list3 = gpuBean.sysVersionModels;
            if (list3 != null) {
                for (GpuBean.SysVersionModel sysVersionModel : list3) {
                    if (str2 != null && (str5 = sysVersionModel.version) != null && str3.contains(str5)) {
                        this.thisSysVersionModel = sysVersionModel;
                        return;
                    }
                }
            }
        }
    }
}

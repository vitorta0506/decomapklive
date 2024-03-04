package org.light;

import android.app.Application;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.io.File;
/* loaded from: classes7.dex */
public class RendererConfig implements Parcelable {
    private static final String CACHE_PATH = "cache";
    public static final Parcelable.Creator<RendererConfig> CREATOR = new Parcelable.Creator<RendererConfig>() { // from class: org.light.RendererConfig.1
        @Override // android.os.Parcelable.Creator
        public RendererConfig createFromParcel(Parcel parcel) {
            return new RendererConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public RendererConfig[] newArray(int i9) {
            return new RendererConfig[i9];
        }
    };
    public static final int INIT_ALL_SEG = 0;
    public static final int INIT_BG_SEG = 2;
    public static final int INIT_CLEAN = 1;
    private static final String PROGRAM_CACHE_PATH = "program_cache";
    public String bundlePath;
    public String debugPath;
    public boolean enableAutoCropImage;
    public boolean enableFastSoftDecode;
    public boolean enablePerfReport;
    public boolean enablePerfVramTrace;
    public boolean englishPerfKey;
    public int initMode;
    public String lightCacheRootPath;
    public int perfRunMode;
    public int softDecodeThreadCount;
    public String userConfigPath;

    public RendererConfig() {
        this.bundlePath = "";
        this.debugPath = "";
        this.userConfigPath = "";
        this.initMode = 0;
        this.enablePerfReport = false;
        this.enablePerfVramTrace = false;
        this.englishPerfKey = false;
        this.perfRunMode = 0;
        this.enableAutoCropImage = true;
        this.enableFastSoftDecode = false;
        this.softDecodeThreadCount = -1;
        this.lightCacheRootPath = "";
        setDefaultDebugPath();
        setDefaultCachePath();
    }

    public static String getDefaultFileCacheRootPath() {
        try {
            return ((Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null)).getApplicationContext().getCacheDir().getAbsolutePath();
        } catch (Exception e10) {
            Log.e("RendererConfig", e10.getMessage());
            return "";
        }
    }

    private void setDefaultCachePath() {
        this.lightCacheRootPath = getDefaultFileCacheRootPath();
    }

    private void setDefaultDebugPath() {
        try {
            Context applicationContext = ((Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null)).getApplicationContext();
            this.debugPath = applicationContext.getFilesDir().getAbsolutePath() + "/Debug";
            File file = new File(this.debugPath);
            if (file.exists()) {
                return;
            }
            file.mkdir();
        } catch (Exception e10) {
            Log.e("RendererConfig", e10.getMessage());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.bundlePath);
        parcel.writeString(this.debugPath);
        parcel.writeString(this.userConfigPath);
        parcel.writeInt(this.initMode);
        parcel.writeByte(this.enablePerfReport ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.enablePerfVramTrace ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.englishPerfKey ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.perfRunMode);
        parcel.writeByte(this.enableAutoCropImage ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.enableFastSoftDecode ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.softDecodeThreadCount);
        parcel.writeString(this.lightCacheRootPath);
    }

    public RendererConfig(String str) {
        this();
        this.bundlePath = str;
        this.userConfigPath = str;
        new File(str);
    }

    protected RendererConfig(Parcel parcel) {
        this.bundlePath = "";
        this.debugPath = "";
        this.userConfigPath = "";
        this.initMode = 0;
        this.enablePerfReport = false;
        this.enablePerfVramTrace = false;
        this.englishPerfKey = false;
        this.perfRunMode = 0;
        this.enableAutoCropImage = true;
        this.enableFastSoftDecode = false;
        this.softDecodeThreadCount = -1;
        this.lightCacheRootPath = "";
        this.bundlePath = parcel.readString();
        this.debugPath = parcel.readString();
        this.userConfigPath = parcel.readString();
        this.initMode = parcel.readInt();
        this.enablePerfReport = parcel.readByte() != 0;
        this.enablePerfVramTrace = parcel.readByte() != 0;
        this.englishPerfKey = parcel.readByte() != 0;
        this.perfRunMode = parcel.readInt();
        this.enableAutoCropImage = parcel.readByte() != 0;
        this.enableFastSoftDecode = parcel.readByte() != 0;
        this.softDecodeThreadCount = parcel.readInt();
        this.lightCacheRootPath = parcel.readString();
    }
}

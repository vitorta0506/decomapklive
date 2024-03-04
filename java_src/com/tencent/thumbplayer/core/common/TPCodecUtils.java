package com.tencent.thumbplayer.core.common;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.core.common.TPCodecCapability;
import com.tencent.thumbplayer.core.common.TPMediaDecoderInfo;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class TPCodecUtils {
    public static final int CAP_AUDIO_AAC = 8;
    public static final int CAP_AUDIO_DD = 16;
    public static final int CAP_AUDIO_DDP = 32;
    public static final int CAP_AUDIO_DTS = 128;
    public static final int CAP_AUDIO_FLAC = 64;
    public static final int CAP_VIDEO_AVC = 1;
    public static final int CAP_VIDEO_HEVC = 2;
    public static final int CAP_VIDEO_VP8 = 256;
    public static final int CAP_VIDEO_VP9 = 4;
    public static final int PLAYER_LEVEL_0 = 0;
    public static final int PLAYER_LEVEL_1 = 1;
    public static final int PLAYER_LEVEL_11 = 11;
    public static final int PLAYER_LEVEL_16 = 16;
    public static final int PLAYER_LEVEL_21 = 21;
    public static final int PLAYER_LEVEL_26 = 26;
    public static final int PLAYER_LEVEL_28 = 28;
    public static final int PLAYER_LEVEL_33 = 33;
    public static final int PLAYER_LEVEL_6 = 6;
    public static final int PLAYER_LEVEL_UNKNOWN = -1;
    private static final String TAG = "TPCodecUtils";
    private static final String VVC_SHD_HISI_CPU_NAME = "Kirin9000E";
    private static final String VVC_SHD_MTK_CPU_NAME = "MT6893";
    private static final String VVC_SHD_QUALCOMMN_CPU_NAME = "SM8250";
    private static final String VVC_SHD_SAMSUNG_CPU_NAME = "Exynos2100";
    private static int mAACMaxSupportedBitrate = 510000;
    private static int mAACMaxSupportedChannels = 8;
    private static int mAACMaxSupportedSamplerate = 96000;
    private static TPCodecCapability.TPCodecMaxCapability mAV1SWMaxCapability = null;
    private static TPCodecCapability.TPCodecMaxCapability mAVCSWMaxCapability = null;
    private static TPCodecCapability.TPCodecMaxCapability mAVS3WMaxCapability = null;
    private static int mAvs3DeviceLevel = -1;
    private static HashMap<String, Integer> mCodecCapBlackList = null;
    private static HashMap<String, Integer> mCodecCapWhiteList = null;
    private static Context mContext = null;
    private static int mDDPMaxSupportedBitrate = 6144000;
    private static int mDDPMaxSupportedChannels = 8;
    private static int mDDPMaxSupportedSamplerate = 48000;
    private static int mFLACMaxSupportedBitrate = 21000000;
    private static int mFLACMaxSupportedChannels = 8;
    private static int mFLACMaxSupportedSamplerate = 192000;
    private static TPCodecCapability.TPCodecMaxCapability mHEVCSWMaxCapability = null;
    private static int mHevcDeviceLevel = -1;
    private static boolean mIsFFmpegCapGot = false;
    private static LocalCache mLocalCache = null;
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxACodecHwCapabilityMap = null;
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxACodecSwCapabilityMap = null;
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxVCodecHwCapabilityMap = null;
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxVCodecSwCapabilityMap = null;
    private static TPCodecCapability.TPCodecMaxCapability mVP8SWMaxCapability = null;
    private static TPCodecCapability.TPCodecMaxCapability mVP9SWMaxCapability = null;
    private static TPCodecCapability.TPCodecMaxCapability mVVCSWMaxCapability = null;
    private static int mVvcDeviceLevel = -1;
    protected static ArrayList<String> mVMediaCodecCapList = new ArrayList<>();
    protected static ArrayList<String> mAMediaCodecCapList = new ArrayList<>();
    private static ArrayList<String> mVMediaCodecBlackListModel = new ArrayList<>();
    private static ArrayList<String> mAMediaCodecBlackListModel = new ArrayList<>();
    private static ArrayList<String> mAMediaCodecBlackListInstance = new ArrayList<>();
    private static ArrayList<String> mSupportedMediaCodec = new ArrayList<>();
    private static HashMap<Integer, HashMap<String, TPCodecCapability.TPHdrSupportVersionRange>> mHdrWhiteMap = new HashMap<>();
    private static HashMap<Integer, HashMap<String, TPCodecCapability.TPHdrSupportVersionRange>> mHdrBlackMap = new HashMap<>();
    private static HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> mHDRVividSupportVersionMap = new HashMap<>();
    private static HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> mHDRTypeToHDRSoftwareCodecWhiteListMap = new HashMap<>();
    private static HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> mHDRTypeToHDRHardwareCodecWhiteListMap = new HashMap<>();
    private static HashMap<String, String> mAudioMaxCapCodecInstance = new HashMap<>();
    private static ArrayList<String> mWideVineBlackListModel = new ArrayList<>();
    private static HashMap<Integer, ArrayList<String>> mDrmL1BlackList = new HashMap<>();
    private static boolean mIsInitDone = false;
    private static boolean mPreferredSoftwareComponent = false;
    private static int mShdHevcQualcommIndex = 32;
    private static int mHdHevcQualcommIndex = 20;
    private static int mShdHevcMtkIndex = 12;
    private static int mHdHevcMtkIndex = 8;
    private static int mShdHevcHisiIndex = 8;
    private static int mHdHevcHisiIndex = 3;
    private static int mShdHevcSamsungIndex = 8;
    private static int mHdHevcSamsungIndex = 5;
    private static int mFhdAvs3QualcommIndex = 58;
    private static int mShdAvs3QualcommIndex = 55;
    private static int mFhdAvs3HisiIndex = 14;
    private static SparseArray<VideoSwCapabilityModel> mVideoCodecIdToSwCapabilityModel = new SparseArray<>();
    private static HashMap<DefinitionName, Integer> mDefinitionNameToDecodeLevelTable = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum DefinitionName {
        DEFINITION_720P
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class VideoSwCapabilityModel {
        SparseArray<HashMap<DefinitionName, String>> mCpuProducerToAllDefinitionDecTable;

        /* loaded from: classes4.dex */
        static class Builder {
            private SparseArray<HashMap<DefinitionName, String>> mCpuProducerToAllDefinitionDecCapabilities = new SparseArray<>();

            Builder() {
            }

            Builder addVideoDecCap(int i9, DefinitionName definitionName, String str) {
                HashMap<DefinitionName, String> hashMap = this.mCpuProducerToAllDefinitionDecCapabilities.get(i9);
                if (hashMap == null) {
                    hashMap = new HashMap<>();
                    this.mCpuProducerToAllDefinitionDecCapabilities.put(i9, hashMap);
                }
                hashMap.put(definitionName, str);
                return this;
            }

            VideoSwCapabilityModel build() {
                VideoSwCapabilityModel videoSwCapabilityModel = new VideoSwCapabilityModel();
                videoSwCapabilityModel.mCpuProducerToAllDefinitionDecTable = this.mCpuProducerToAllDefinitionDecCapabilities;
                return videoSwCapabilityModel;
            }
        }

        private VideoSwCapabilityModel() {
            this.mCpuProducerToAllDefinitionDecTable = new SparseArray<>();
        }
    }

    static {
        HashMap<String, Integer> hashMap = new HashMap<>();
        mCodecCapWhiteList = hashMap;
        hashMap.put("NX511J", 11);
        mCodecCapWhiteList.put("Hi3798MV100", 11);
        mCodecCapWhiteList.put("长虹智能电视", 11);
        mCodecCapWhiteList.put("Android TV on Tcl 901", 11);
        mCodecCapWhiteList.put("xt880b", 11);
        TPNativeLog.printLog(2, TAG, "white list init");
        mSupportedMediaCodec.add(TPDecoderType.TP_CODEC_MIMETYPE_AVC);
        mSupportedMediaCodec.add("video/hevc");
        mSupportedMediaCodec.add(TPDecoderType.TP_CODEC_MIMETYPE_VP8);
        mSupportedMediaCodec.add(TPDecoderType.TP_CODEC_MIMETYPE_VP9);
        mSupportedMediaCodec.add(TPDecoderType.TP_CODEC_MIMETYPE_AV1);
        mSupportedMediaCodec.add("audio/mp4a-latm");
        mSupportedMediaCodec.add("audio/ac3");
        mSupportedMediaCodec.add("audio/eac3");
        mSupportedMediaCodec.add("audio/eac3-joc");
        mSupportedMediaCodec.add("audio/flac");
        mSupportedMediaCodec.add("audio/vnd.dts");
        mAMediaCodecBlackListInstance.add("OMX.qti.audio.decoder.flac");
        mVMediaCodecBlackListModel.add("SM-J7008");
        mVMediaCodecBlackListModel.add("SM-J5008");
        mVMediaCodecBlackListModel.add("TCL i806");
        mVMediaCodecBlackListModel.add("NX511J");
        mVMediaCodecBlackListModel.add("vivo Y11i T");
        mVMediaCodecBlackListModel.add("长虹智能电视");
        mVMediaCodecBlackListModel.add("MI 1S");
        mVMediaCodecBlackListModel.add("SP9832A");
        mVMediaCodecBlackListModel.add("SP9830A");
        mVMediaCodecBlackListModel.add("VOTO GT17");
        mVMediaCodecBlackListModel.add("EVA-AL10");
        mHDRVividSupportVersionMap.put("TAS-AL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("TAS-TL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("TAS-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AN00P", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AN00m", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-TL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ANA-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ANA-TN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ELS-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ELS-TN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ELS-AN10", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100166, 99, 3));
        mHDRVividSupportVersionMap.put("MRX-AL09", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-AL19", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W09", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W19", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-AN19", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W29", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W39", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("OCE-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("OCE-AN10", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("OCE-AL50", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("OCE-AN50", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-NX9", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-AN01", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-AL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOP-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AN10", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AL50", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AL60", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-N29", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-N09", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550B", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550C", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550X", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550AX", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-560", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-560B", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-570", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("PLAT-760", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200172, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350B", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350C", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-360", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-360S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-370", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-370S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-359", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200183, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-369", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200183, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-550", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-560", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-570", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-580", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("FREG-770", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-220", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250SY", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250SZ", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260SY", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260SZ", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-270", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200547, 99, 0));
        mHDRVividSupportVersionMap.put("SOKR-790A", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("VOLT-350S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mWideVineBlackListModel.add("RVL-AL09");
        mWideVineBlackListModel.add("CLT-L29");
        mWideVineBlackListModel.add("ASUS_Z00AD");
        mWideVineBlackListModel.add(TPSystemInfo.getDeviceName());
        mDrmL1BlackList.put(0, mWideVineBlackListModel);
        SparseArray<VideoSwCapabilityModel> sparseArray = mVideoCodecIdToSwCapabilityModel;
        VideoSwCapabilityModel.Builder builder = new VideoSwCapabilityModel.Builder();
        DefinitionName definitionName = DefinitionName.DEFINITION_720P;
        sparseArray.put(193, builder.addVideoDecCap(0, definitionName, VVC_SHD_QUALCOMMN_CPU_NAME).addVideoDecCap(1, definitionName, VVC_SHD_MTK_CPU_NAME).addVideoDecCap(2, definitionName, VVC_SHD_HISI_CPU_NAME).addVideoDecCap(3, definitionName, VVC_SHD_SAMSUNG_CPU_NAME).build());
        mDefinitionNameToDecodeLevelTable.put(definitionName, 21);
        mIsFFmpegCapGot = false;
        mAVCSWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mHEVCSWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mVP9SWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mAVS3WMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mAV1SWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mVP8SWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mVVCSWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mMaxVCodecHwCapabilityMap = new HashMap<>();
        mMaxVCodecSwCapabilityMap = new HashMap<>();
        mMaxACodecHwCapabilityMap = new HashMap<>();
        mMaxACodecSwCapabilityMap = new HashMap<>();
    }

    public static boolean addDRMLevel1Blacklist(int i9) {
        if (mDrmL1BlackList.containsKey(Integer.valueOf(i9))) {
            ArrayList<String> arrayList = mDrmL1BlackList.get(Integer.valueOf(i9));
            if (!arrayList.contains(TPSystemInfo.getDeviceName())) {
                arrayList.add(TPSystemInfo.getDeviceName());
            }
            mDrmL1BlackList.remove(Integer.valueOf(i9));
            mDrmL1BlackList.put(Integer.valueOf(i9), arrayList);
            return true;
        }
        return true;
    }

    public static boolean addHDRBlackList(int i9, String str, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap;
        if (tPHdrSupportVersionRange == null) {
            return false;
        }
        if (mHdrBlackMap.containsKey(Integer.valueOf(i9))) {
            hashMap = mHdrBlackMap.get(Integer.valueOf(i9));
            mHdrBlackMap.remove(Integer.valueOf(i9));
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, tPHdrSupportVersionRange);
            }
            hashMap.remove(str);
        } else {
            hashMap = new HashMap<>();
        }
        hashMap.put(str, tPHdrSupportVersionRange);
        mHdrBlackMap.put(Integer.valueOf(i9), hashMap);
        return true;
    }

    private static void addHDRVersionRangeToWhiteList(int i9, @NonNull TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange, @NonNull HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> hashMap) {
        ArrayList<TPCodecCapability.TPHdrSupportVersionRange> arrayList = hashMap.containsKey(Integer.valueOf(i9)) ? hashMap.get(Integer.valueOf(i9)) : new ArrayList<>();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            if (isTheSameVersionRange(tPHdrSupportVersionRange, arrayList.get(i10))) {
                return;
            }
        }
        arrayList.add(tPHdrSupportVersionRange);
        hashMap.put(Integer.valueOf(i9), arrayList);
    }

    public static boolean addHDRVideoDecoderTypeWhiteList(int i9, int i10, @NonNull TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> hashMap;
        if (i10 == 101) {
            hashMap = mHDRTypeToHDRSoftwareCodecWhiteListMap;
        } else if (i10 != 102) {
            TPNativeLog.printLog(3, TAG, "addHDRVideoDecoderTypeWhiteList, decoder not support.");
            return false;
        } else {
            hashMap = mHDRTypeToHDRHardwareCodecWhiteListMap;
        }
        addHDRVersionRangeToWhiteList(i9, tPHdrSupportVersionRange, hashMap);
        return true;
    }

    public static boolean addHDRWhiteList(int i9, String str, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap;
        if (tPHdrSupportVersionRange == null) {
            return false;
        }
        if (mHdrWhiteMap.containsKey(Integer.valueOf(i9))) {
            hashMap = mHdrWhiteMap.get(Integer.valueOf(i9));
            mHdrWhiteMap.remove(Integer.valueOf(i9));
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, tPHdrSupportVersionRange);
            }
            hashMap.remove(str);
        } else {
            hashMap = new HashMap<>();
        }
        hashMap.put(str, tPHdrSupportVersionRange);
        mHdrWhiteMap.put(Integer.valueOf(i9), hashMap);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x012f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean checkHDRVividSupportByVersion(java.lang.String r13, java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPCodecUtils.checkHDRVividSupportByVersion(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    private static int convertDefinitionNameToDecodeLevel(@NonNull DefinitionName definitionName) {
        Integer num = mDefinitionNameToDecodeLevelTable.get(definitionName);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public static int convertDolbyVisionToOmxLevel(int i9) {
        int i10 = 1 << i9;
        if (i10 <= 0 || i10 > 256) {
            TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxLevel Unsupported level".concat(String.valueOf(i9)));
            return i9;
        }
        TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxLevel dolbyVisionLevel:" + i9 + " omxLevel:" + i10);
        return i10;
    }

    public static int convertDolbyVisionToOmxProfile(int i9) {
        int i10 = 1 << i9;
        if (i9 <= 0 || i9 > 512) {
            TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxProfile Unsupported profile".concat(String.valueOf(i9)));
            return i9;
        }
        TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxProfile dolbyVisionProfile:" + i9 + " omxProfile:" + i10);
        return i10;
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getACodecSWMaxCapabilityMap() {
        synchronized (TPCodecUtils.class) {
            TPNativeLog.printLog(2, TAG, "getACodecSWMaxCapabilityMap func in");
            if (!mMaxACodecSwCapabilityMap.isEmpty()) {
                return mMaxACodecSwCapabilityMap;
            }
            try {
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, mAACMaxSupportedSamplerate, mAACMaxSupportedBitrate, mAACMaxSupportedChannels);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability2 = new TPCodecCapability.TPCodecMaxCapability(0, 0, mFLACMaxSupportedSamplerate, mFLACMaxSupportedBitrate, mFLACMaxSupportedChannels);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability3 = new TPCodecCapability.TPCodecMaxCapability(0, 0, mDDPMaxSupportedSamplerate, mDDPMaxSupportedBitrate, mDDPMaxSupportedChannels);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability4 = new TPCodecCapability.TPCodecMaxCapability(0, 0, mDDPMaxSupportedSamplerate, mDDPMaxSupportedBitrate, mDDPMaxSupportedChannels);
                mMaxACodecSwCapabilityMap.put(5002, tPCodecMaxCapability);
                mMaxACodecSwCapabilityMap.put(5012, tPCodecMaxCapability2);
                mMaxACodecSwCapabilityMap.put(5003, tPCodecMaxCapability3);
                mMaxACodecSwCapabilityMap.put(5040, tPCodecMaxCapability4);
                TPNativeLog.printLog(2, "getACodecSWMaxCapabilityMap success.");
                return mMaxACodecSwCapabilityMap;
            } catch (Exception unused) {
                TPNativeLog.printLog(4, TAG, "getACodecSWMaxCapabilityMap exception");
                return null;
            }
        }
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getAMediaCodecMaxCapabilityMap() {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        synchronized (TPCodecUtils.class) {
            TPNativeLog.printLog(2, TAG, "getAMediaCodecMaxCapabilityMap func in");
            if (!mMaxACodecHwCapabilityMap.isEmpty()) {
                TPNativeLog.printLog(2, TAG, "return memory stored audio max cap map");
                return mMaxACodecHwCapabilityMap;
            }
            try {
                for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
                    String decoderMimeType = tPMediaDecoderInfo.getDecoderMimeType();
                    if (tPMediaDecoderInfo.isAudio() && isSupportedMediaCodec(decoderMimeType) && !isInMediaCodecBlackList(decoderMimeType) && !isAMediaCodecBlackListInstance(tPMediaDecoderInfo.getDecoderName())) {
                        TPNativeLog.printLog(2, TAG, "Audio MimeType: " + decoderMimeType + " codecName: " + tPMediaDecoderInfo.getDecoderName());
                        TPMediaDecoderInfo.DecoderProfileLevel maxProfileLevel = tPMediaDecoderInfo.getMaxProfileLevel();
                        TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = new TPCodecCapability.TPCodecMaxCapability(maxProfileLevel.profile, maxProfileLevel.level, tPMediaDecoderInfo.getMaxAudioSampleRate(), tPMediaDecoderInfo.getMaxAudioBitRate(), tPMediaDecoderInfo.getMaxAudioChannels());
                        if (!mMaxACodecHwCapabilityMap.containsKey(Integer.valueOf(getSupportedCodecId(decoderMimeType)))) {
                            TPNativeLog.printLog(2, TAG, "audio codecName: " + tPMediaDecoderInfo.getDecoderName() + " maxSamplerate: " + tPMediaDecoderInfo.getMaxAudioSampleRate() + " maxChannels: " + tPMediaDecoderInfo.getMaxAudioChannels());
                            replace(Integer.valueOf(getSupportedCodecId(decoderMimeType)), tPCodecMaxCapability, mMaxACodecHwCapabilityMap);
                            replace(decoderMimeType, tPMediaDecoderInfo.getDecoderName(), mAudioMaxCapCodecInstance);
                            mAMediaCodecCapList.add(decoderMimeType);
                        } else if (tPMediaDecoderInfo.getMaxAudioSampleRate() > mMaxACodecHwCapabilityMap.get(Integer.valueOf(getSupportedCodecId(decoderMimeType))).maxSampleRate || TextUtils.equals(decoderMimeType, "audio/eac3-joc")) {
                            TPNativeLog.printLog(2, TAG, "audio codecName: " + tPMediaDecoderInfo.getDecoderName() + " maxSamplerate: " + tPMediaDecoderInfo.getMaxAudioSampleRate() + " maxChannels: " + tPMediaDecoderInfo.getMaxAudioChannels());
                            replace(Integer.valueOf(getSupportedCodecId(decoderMimeType)), tPCodecMaxCapability, mMaxACodecHwCapabilityMap);
                            replace(decoderMimeType, tPMediaDecoderInfo.getDecoderName(), mAudioMaxCapCodecInstance);
                        }
                    }
                }
            } catch (Exception e10) {
                TPNativeLog.printLog(4, TAG, "getAMediaCodecMaxCapabilityMap failed:" + e10.getMessage());
            }
            return mMaxACodecHwCapabilityMap;
        }
    }

    public static int getAV1SWDecodeLevel() {
        return getDecodeLevelByCoresAndFreq();
    }

    public static boolean getAudioMediaCodecPassThroughCap(int i9, int i10, int i11) {
        if (i9 != 5004) {
            return false;
        }
        int i12 = 1;
        if (i10 == 20) {
            i12 = 7;
        } else if (i10 == 50 || i10 == 60) {
            i12 = 8;
        }
        return TPAudioPassThroughPluginDetector.isAudioPassThroughSupport(i12, i11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005d, code lost:
        if (r1 != 3) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0062, code lost:
        if (r2 >= com.tencent.thumbplayer.core.common.TPCodecUtils.mFhdAvs3HisiIndex) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getAvs3SWDecodeLevel() {
        /*
            java.lang.String r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHarewareName()
            int r1 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHWProducter(r0)
            int r2 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHWProductIndex(r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "[getAvs3SWDecodeLevel], mCpuHWProducter = "
            r3.<init>(r4)
            r3.append(r1)
            java.lang.String r4 = ", getMaxCpuFreq() = "
            r3.append(r4)
            long r4 = com.tencent.thumbplayer.core.common.TPSystemInfo.getMaxCpuFreq()
            r3.append(r4)
            java.lang.String r4 = ", numCores = "
            r3.append(r4)
            int r4 = com.tencent.thumbplayer.core.common.TPSystemInfo.getNumCores()
            r3.append(r4)
            java.lang.String r4 = ", mCpuHWProductIdx="
            r3.append(r4)
            r3.append(r2)
            java.lang.String r4 = ", hardware="
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r3 = 2
            java.lang.String r4 = "TPCodecUtils"
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r3, r4, r0)
            int r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.mAvs3DeviceLevel
            r4 = -1
            if (r4 == r0) goto L4e
            return r0
        L4e:
            r0 = 0
            com.tencent.thumbplayer.core.common.TPCodecUtils.mAvs3DeviceLevel = r0
            if (r4 == r1) goto L71
            r0 = 26
            if (r1 == 0) goto L65
            r4 = 1
            if (r1 == r4) goto L71
            if (r1 == r3) goto L60
            r0 = 3
            if (r1 == r0) goto L71
            goto L77
        L60:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mFhdAvs3HisiIndex
            if (r2 < r1) goto L71
            goto L69
        L65:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mFhdAvs3QualcommIndex
            if (r2 < r1) goto L6a
        L69:
            goto L75
        L6a:
            int r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.mShdAvs3QualcommIndex
            if (r2 < r0) goto L71
            r0 = 21
            goto L75
        L71:
            int r0 = getDecodeLevelByCoresAndFreq()
        L75:
            com.tencent.thumbplayer.core.common.TPCodecUtils.mAvs3DeviceLevel = r0
        L77:
            int r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.mAvs3DeviceLevel
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPCodecUtils.getAvs3SWDecodeLevel():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int getDecodeLevelByCoresAndFreq() {
        /*
            int r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.getNumCores()
            r1 = 6
            r2 = 21
            r3 = 16
            r4 = 1000(0x3e8, double:4.94E-321)
            r6 = 8
            if (r0 < r6) goto L20
            long r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.getMaxCpuFreq()
            long r0 = r0 / r4
            r4 = 1200(0x4b0, double:5.93E-321)
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 < 0) goto L1d
        L1a:
            r1 = 21
            goto L45
        L1d:
            r1 = 16
            goto L45
        L20:
            int r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.getNumCores()
            if (r0 < r1) goto L32
            long r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.getMaxCpuFreq()
            long r0 = r0 / r4
            r4 = 1400(0x578, double:6.917E-321)
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 < 0) goto L1d
            goto L1a
        L32:
            int r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.getNumCores()
            r6 = 4
            if (r0 < r6) goto L45
            long r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.getMaxCpuFreq()
            long r0 = r0 / r4
            r4 = 1600(0x640, double:7.905E-321)
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 < 0) goto L1d
            goto L1a
        L45:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPCodecUtils.getDecodeLevelByCoresAndFreq():int");
    }

    public static synchronized void getDecoderMaxCapabilityMapAsync() {
        synchronized (TPCodecUtils.class) {
            if (mIsInitDone) {
                TPNativeLog.printLog(2, TAG, "decoder capability already init,return directly!");
                return;
            }
            TPNativeLog.printLog(2, TAG, "decoder capability not init,acquire async with create thread!");
            Thread thread = new Thread(new Runnable() { // from class: com.tencent.thumbplayer.core.common.TPCodecUtils.1
                @Override // java.lang.Runnable
                public final void run() {
                    TPCodecUtils.getVMediaCodecMaxCapabilityMap();
                    TPCodecUtils.getAMediaCodecMaxCapabilityMap();
                    TPCodecUtils.getVCodecSWMaxCapabilityMap();
                    TPCodecUtils.getACodecSWMaxCapabilityMap();
                    boolean unused = TPCodecUtils.mIsInitDone = true;
                    TPNativeLog.printLog(2, TPCodecUtils.TAG, "new thread getDecoderMaxCapabilityMap done");
                }
            });
            thread.setName("TP_codec_init_thread");
            thread.start();
        }
    }

    public static String getDecoderName(String str, boolean z10) {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        if (str.contains("audio")) {
            if (TextUtils.equals(str, "audio/eac3") && mAudioMaxCapCodecInstance.containsKey("audio/eac3-joc")) {
                return mAudioMaxCapCodecInstance.get("audio/eac3-joc");
            }
            if (mAudioMaxCapCodecInstance.containsKey(str)) {
                return mAudioMaxCapCodecInstance.get(str);
            }
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
            if (TextUtils.equals(str, tPMediaDecoderInfo.getDecoderMimeType()) && tPMediaDecoderInfo.isSecureDecoder() == z10) {
                TPNativeLog.printLog(2, TAG, "getDecoderName:" + tPMediaDecoderInfo.getDecoderName());
                arrayList.add(tPMediaDecoderInfo);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TPMediaDecoderInfo tPMediaDecoderInfo2 = (TPMediaDecoderInfo) it.next();
            if ((tPMediaDecoderInfo2.isVideo() && tPMediaDecoderInfo2.isVideoSofwareDecoder() == mPreferredSoftwareComponent) || (tPMediaDecoderInfo2.isAudio() && tPMediaDecoderInfo2.isAudioSofwareDecoder() == mPreferredSoftwareComponent)) {
                return tPMediaDecoderInfo2.getDecoderName();
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((TPMediaDecoderInfo) arrayList.get(0)).getDecoderName();
    }

    public static String getDisplayVersion() {
        return null;
    }

    public static String getDolbyVisionDecoderName(String str, int i9, int i10, boolean z10) {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        if (TextUtils.equals(TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION, str)) {
            int convertDolbyVisionToOmxProfile = convertDolbyVisionToOmxProfile(i9);
            for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
                TPMediaDecoderInfo.DecoderProfileLevel[] profileLevels = tPMediaDecoderInfo.getProfileLevels();
                if (TextUtils.equals(tPMediaDecoderInfo.getDecoderMimeType(), str)) {
                    for (TPMediaDecoderInfo.DecoderProfileLevel decoderProfileLevel : profileLevels) {
                        if (decoderProfileLevel.profile == convertDolbyVisionToOmxProfile) {
                            TPNativeLog.printLog(2, TAG, "getDolbyVisionDecoderName  profile:" + decoderProfileLevel.profile + " dvProfile:" + i9 + " bSecure:" + z10 + " name:" + tPMediaDecoderInfo.getDecoderName());
                            if (tPMediaDecoderInfo.isSecureDecoder() == z10) {
                                return tPMediaDecoderInfo.getDecoderName();
                            }
                        }
                    }
                    continue;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0069, code lost:
        if (r2 >= com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcSamsungIndex) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0073, code lost:
        if (r2 >= com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcHisiIndex) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007d, code lost:
        if (r2 >= com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcMtkIndex) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0089, code lost:
        if (r2 >= com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcQualcommIndex) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getHevcSWDecodeLevel() {
        /*
            java.lang.String r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHarewareName()
            int r1 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHWProducter(r0)
            int r2 = com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuHWProductIndex(r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "[getHevcSWDecodeLevel], mCpuHWProducter = "
            r3.<init>(r4)
            r3.append(r1)
            java.lang.String r4 = ", getMaxCpuFreq() = "
            r3.append(r4)
            long r4 = com.tencent.thumbplayer.core.common.TPSystemInfo.getMaxCpuFreq()
            r3.append(r4)
            java.lang.String r4 = ", numCores = "
            r3.append(r4)
            int r4 = com.tencent.thumbplayer.core.common.TPSystemInfo.getNumCores()
            r3.append(r4)
            java.lang.String r4 = ", mCpuHWProductIdx="
            r3.append(r4)
            r3.append(r2)
            java.lang.String r4 = ", hardware="
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r3 = 2
            java.lang.String r4 = "TPCodecUtils"
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r3, r4, r0)
            int r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHevcDeviceLevel
            r4 = -1
            if (r4 == r0) goto L4e
            return r0
        L4e:
            r0 = 0
            com.tencent.thumbplayer.core.common.TPCodecUtils.mHevcDeviceLevel = r0
            if (r4 == r1) goto L8c
            r0 = 16
            r4 = 21
            if (r1 == 0) goto L80
            r5 = 1
            if (r1 == r5) goto L76
            if (r1 == r3) goto L6c
            r3 = 3
            if (r1 == r3) goto L62
            goto L92
        L62:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mShdHevcSamsungIndex
            if (r2 < r1) goto L67
            goto L84
        L67:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcSamsungIndex
            if (r2 < r1) goto L8c
            goto L8b
        L6c:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mShdHevcHisiIndex
            if (r2 < r1) goto L71
            goto L84
        L71:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcHisiIndex
            if (r2 < r1) goto L8c
            goto L8b
        L76:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mShdHevcMtkIndex
            if (r2 < r1) goto L7b
            goto L84
        L7b:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcMtkIndex
            if (r2 < r1) goto L8c
            goto L8b
        L80:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mShdHevcQualcommIndex
            if (r2 < r1) goto L87
        L84:
            com.tencent.thumbplayer.core.common.TPCodecUtils.mHevcDeviceLevel = r4
            goto L92
        L87:
            int r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHdHevcQualcommIndex
            if (r2 < r1) goto L8c
        L8b:
            goto L90
        L8c:
            int r0 = getDecodeLevelByCoresAndFreq()
        L90:
            com.tencent.thumbplayer.core.common.TPCodecUtils.mHevcDeviceLevel = r0
        L92:
            int r0 = com.tencent.thumbplayer.core.common.TPCodecUtils.mHevcDeviceLevel
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPCodecUtils.getHevcSWDecodeLevel():int");
    }

    public static int getMaxLumaSample(String str, int i9) {
        if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_AVC)) {
            return TPMediaCodecProfileLevel.getAVCMaxLumaSample(i9);
        }
        if (TextUtils.equals(str, "video/hevc")) {
            return TPMediaCodecProfileLevel.getHEVCMaxLumaSample(i9);
        }
        if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_VP8)) {
            return TPMediaCodecProfileLevel.getVP8MaxLumaSample(i9);
        }
        if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_VP9)) {
            return TPMediaCodecProfileLevel.getVP9MaxLumaSample(i9);
        }
        if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_AV1)) {
            return TPMediaCodecProfileLevel.getAV1MaxLumaSample(i9);
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
        r11 = r4.getDecoderMaxWidth();
        r1 = r4.getDecoderMaxHeight();
        r2 = r4.getDecoderLumaWidth();
        r12 = r4.getDecoderLumaHeight();
        r13 = r4.getDecoderMaxFrameRateForMaxLuma();
        r14 = r4.getDecoderMaxFrameRate();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005c, code lost:
        if (isLimitMaxWidthOrMaxHeight(r11, r1, r2, r12, r17, r18) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
        r9 = java.lang.Integer.valueOf(java.lang.Math.min(r14, java.lang.Math.max(1, ((int) (((r11 * r12) * 1) / java.lang.Math.max((r17 * r18) * 1, 1L))) * r13)));
        com.tencent.thumbplayer.core.common.TPNativeLog.printLog(2, com.tencent.thumbplayer.core.common.TPCodecUtils.TAG, "getSupportedFrameRatesFor max width:" + r11 + " max height:" + r12 + " max framerate for max resolution:" + r13 + " current width:" + r17 + " height:" + r18 + " max support framerate:" + r9);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized int getMaxSupportedFrameRatesFor(int r15, int r16, int r17, int r18) {
        /*
            r0 = r15
            r6 = r17
            r7 = r18
            java.lang.Class<com.tencent.thumbplayer.core.common.TPCodecUtils> r8 = com.tencent.thumbplayer.core.common.TPCodecUtils.class
            monitor-enter(r8)
            r1 = 101(0x65, float:1.42E-43)
            r2 = 30
            if (r0 == r1) goto Le4
            r1 = -1
            if (r0 != r1) goto L13
            goto Le4
        L13:
            java.lang.String r0 = getSupportedHWMimeType(r16)     // Catch: java.lang.Throwable -> Le1
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> Le1
            if (r1 == 0) goto L1f
            monitor-exit(r8)
            return r2
        L1f:
            java.lang.Integer r9 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> Le1
            com.tencent.thumbplayer.core.thirdparties.LocalCache r1 = com.tencent.thumbplayer.core.common.TPCodecUtils.mLocalCache     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            com.tencent.thumbplayer.core.common.TPMediaDecoderInfo[] r1 = com.tencent.thumbplayer.core.common.TPMediaDecoderList.getTPMediaDecoderInfos(r1)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            int r2 = r1.length     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            r10 = 0
            r3 = 0
        L2c:
            if (r3 >= r2) goto Ldb
            r4 = r1[r3]     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            java.lang.String r5 = r4.getDecoderMimeType()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            boolean r5 = r0.equals(r5)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            if (r5 == 0) goto Lbe
            int r11 = r4.getDecoderMaxWidth()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            int r1 = r4.getDecoderMaxHeight()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            int r2 = r4.getDecoderLumaWidth()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            int r12 = r4.getDecoderLumaHeight()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            int r13 = r4.getDecoderMaxFrameRateForMaxLuma()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            int r14 = r4.getDecoderMaxFrameRate()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            r0 = r11
            r3 = r12
            r4 = r17
            r5 = r18
            boolean r0 = isLimitMaxWidthOrMaxHeight(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            if (r0 == 0) goto L60
            monitor-exit(r8)
            return r10
        L60:
            int r0 = r11 * r12
            long r0 = (long) r0
            r2 = 1
            long r0 = r0 * r2
            int r4 = r6 * r7
            long r4 = (long) r4
            long r4 = r4 * r2
            long r2 = java.lang.Math.max(r4, r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            long r0 = r0 / r2
            int r1 = (int) r0     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            int r1 = r1 * r13
            r0 = 1
            int r0 = java.lang.Math.max(r0, r1)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            int r0 = java.lang.Math.min(r14, r0)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            java.lang.Integer r9 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            r0 = 2
            java.lang.String r1 = "TPCodecUtils"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            java.lang.String r3 = "getSupportedFrameRatesFor max width:"
            r2.<init>(r3)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            r2.append(r11)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            java.lang.String r3 = " max height:"
            r2.append(r3)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            r2.append(r12)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            java.lang.String r3 = " max framerate for max resolution:"
            r2.append(r3)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            r2.append(r13)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            java.lang.String r3 = " current width:"
            r2.append(r3)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            r2.append(r6)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            java.lang.String r3 = " height:"
            r2.append(r3)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            r2.append(r7)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            java.lang.String r3 = " max support framerate:"
            r2.append(r3)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            r2.append(r9)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r0, r1, r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Le1
            goto Ldb
        Lbe:
            int r3 = r3 + 1
            goto L2c
        Lc2:
            r0 = move-exception
            r1 = 4
            java.lang.String r2 = "TPCodecUtils"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le1
            java.lang.String r4 = "getMaxSupportedFrameRatesFor failed:"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> Le1
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> Le1
            r3.append(r0)     // Catch: java.lang.Throwable -> Le1
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> Le1
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r1, r2, r0)     // Catch: java.lang.Throwable -> Le1
        Ldb:
            int r0 = r9.intValue()     // Catch: java.lang.Throwable -> Le1
            monitor-exit(r8)
            return r0
        Le1:
            r0 = move-exception
            monitor-exit(r8)
            throw r0
        Le4:
            monitor-exit(r8)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPCodecUtils.getMaxSupportedFrameRatesFor(int, int, int, int):int");
    }

    private static int getSoftMaxSamples(int i9) {
        if (i9 != 1) {
            if (i9 != 6) {
                if (i9 != 11) {
                    if (i9 != 16) {
                        if (i9 != 21) {
                            if (i9 != 26) {
                                if (i9 != 28) {
                                    return i9 != 33 ? 0 : 8847360;
                                }
                                return 8294400;
                            }
                            return 2073600;
                        }
                        return 921600;
                    }
                    return 480000;
                }
                return 407040;
            }
            return 307200;
        }
        return 129600;
    }

    private static int getSupportedCodecId(String str) {
        if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_AVC)) {
            return 26;
        }
        if (TextUtils.equals(str, "video/hevc")) {
            return 172;
        }
        if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_VP8)) {
            return 138;
        }
        if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_VP9)) {
            return 166;
        }
        if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_AV1)) {
            return 1029;
        }
        if (TextUtils.equals(str, "audio/mp4a-latm")) {
            return 5002;
        }
        if (TextUtils.equals(str, "audio/ac3")) {
            return 5003;
        }
        if (TextUtils.equals(str, "audio/eac3") || TextUtils.equals(str, "audio/eac3-joc")) {
            return 5040;
        }
        if (TextUtils.equals(str, "audio/flac")) {
            return 5012;
        }
        return TextUtils.equals(str, "audio/vnd.dts") ? 5004 : -1;
    }

    private static String getSupportedHWMimeType(int i9) {
        return i9 != 26 ? i9 != 138 ? i9 != 166 ? i9 != 172 ? i9 != 1029 ? "" : TPDecoderType.TP_CODEC_MIMETYPE_AV1 : "video/hevc" : TPDecoderType.TP_CODEC_MIMETYPE_VP9 : TPDecoderType.TP_CODEC_MIMETYPE_VP8 : TPDecoderType.TP_CODEC_MIMETYPE_AVC;
    }

    public static String getSystemPatchVersion() {
        return null;
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getVCodecSWMaxCapabilityMap() {
        synchronized (TPCodecUtils.class) {
            TPNativeLog.printLog(2, TAG, "getVCodecSWMaxCapabilityMap func in");
            if (mIsFFmpegCapGot) {
                return mMaxVCodecSwCapabilityMap;
            }
            try {
                int hevcSWDecodeLevel = getHevcSWDecodeLevel();
                int softMaxSamples = getSoftMaxSamples(hevcSWDecodeLevel);
                int avs3SWDecodeLevel = getAvs3SWDecodeLevel();
                int aV1SWDecodeLevel = getAV1SWDecodeLevel();
                int vvcSWDecodeLevel = getVvcSWDecodeLevel();
                int softMaxSamples2 = getSoftMaxSamples(avs3SWDecodeLevel);
                int softMaxSamples3 = getSoftMaxSamples(aV1SWDecodeLevel);
                int softMaxSamples4 = getSoftMaxSamples(vvcSWDecodeLevel);
                TPNativeLog.printLog(2, "getVCodecSWMaxCapabilityMap, hevcDecodeLevel:" + hevcSWDecodeLevel + ", avs3DecodeLevel:" + avs3SWDecodeLevel + ", AV1DecodeLevel:" + aV1SWDecodeLevel + ", vvcDecodeLevel:" + vvcSWDecodeLevel);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = mAVCSWMaxCapability;
                tPCodecMaxCapability.maxLumaSamples = softMaxSamples;
                tPCodecMaxCapability.maxProfile = 64;
                tPCodecMaxCapability.maxLevel = 65536;
                mMaxVCodecSwCapabilityMap.put(26, mAVCSWMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability2 = mHEVCSWMaxCapability;
                tPCodecMaxCapability2.maxLumaSamples = softMaxSamples;
                tPCodecMaxCapability2.maxProfile = 2;
                tPCodecMaxCapability2.maxLevel = TPMediaCodecProfileLevel.HEVCHighTierLevel62;
                mMaxVCodecSwCapabilityMap.put(172, mHEVCSWMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability3 = mVP9SWMaxCapability;
                tPCodecMaxCapability3.maxLumaSamples = softMaxSamples;
                tPCodecMaxCapability3.maxProfile = 8;
                tPCodecMaxCapability3.maxLevel = 8192;
                mMaxVCodecSwCapabilityMap.put(166, mVP9SWMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability4 = mVP8SWMaxCapability;
                tPCodecMaxCapability4.maxLumaSamples = softMaxSamples;
                tPCodecMaxCapability4.maxProfile = 1;
                tPCodecMaxCapability4.maxLevel = 8;
                mMaxVCodecSwCapabilityMap.put(138, mVP8SWMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability5 = mAVS3WMaxCapability;
                tPCodecMaxCapability5.maxLumaSamples = softMaxSamples2;
                tPCodecMaxCapability5.maxProfile = 0;
                tPCodecMaxCapability5.maxLevel = 0;
                mMaxVCodecSwCapabilityMap.put(192, mAVS3WMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability6 = mAV1SWMaxCapability;
                tPCodecMaxCapability6.maxLumaSamples = softMaxSamples3;
                tPCodecMaxCapability6.maxProfile = 0;
                tPCodecMaxCapability6.maxLevel = 0;
                mMaxVCodecSwCapabilityMap.put(1029, mAV1SWMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability7 = mVVCSWMaxCapability;
                tPCodecMaxCapability7.maxLumaSamples = softMaxSamples4;
                tPCodecMaxCapability7.maxProfile = 0;
                tPCodecMaxCapability7.maxLevel = 0;
                mMaxVCodecSwCapabilityMap.put(193, mVVCSWMaxCapability);
                TPNativeLog.printLog(2, "getVCodecSWMaxCapabilityMap success, maxHevcLumaSamples:" + softMaxSamples + ", maxAvs3LumaSamples:" + softMaxSamples2 + ", maxAV1LumaSamples:" + softMaxSamples3 + ", maxVvcLumaSamples:" + softMaxSamples4);
                mIsFFmpegCapGot = true;
                return mMaxVCodecSwCapabilityMap;
            } catch (Exception unused) {
                TPNativeLog.printLog(4, TAG, "getVCodecSWMaxCapabilityMap exception");
                return null;
            }
        }
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getVMediaCodecMaxCapabilityMap() {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        synchronized (TPCodecUtils.class) {
            TPNativeLog.printLog(2, TAG, "getVMediaCodecMaxCapabilityMap func in");
            if (!mMaxVCodecHwCapabilityMap.isEmpty()) {
                TPNativeLog.printLog(2, TAG, "return memory stored video max cap map");
                return mMaxVCodecHwCapabilityMap;
            }
            try {
                for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
                    String decoderMimeType = tPMediaDecoderInfo.getDecoderMimeType();
                    if (tPMediaDecoderInfo.isVideo()) {
                        mVMediaCodecCapList.add(decoderMimeType);
                        TPNativeLog.printLog(2, TAG, "Video MimeType: " + decoderMimeType + " codecName: " + tPMediaDecoderInfo.getDecoderName());
                        if (isSupportedMediaCodec(decoderMimeType) && !tPMediaDecoderInfo.isSecureDecoder()) {
                            TPMediaDecoderInfo.DecoderProfileLevel maxProfileLevel = tPMediaDecoderInfo.getMaxProfileLevel();
                            TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = new TPCodecCapability.TPCodecMaxCapability(getMaxLumaSample(decoderMimeType, maxProfileLevel.level), maxProfileLevel.profile, maxProfileLevel.level, tPMediaDecoderInfo.getDecoderMaxFrameRateForMaxLuma());
                            TPNativeLog.printLog(2, TAG, "video codecName: " + tPMediaDecoderInfo.getDecoderName() + " lumasample: " + getMaxLumaSample(decoderMimeType, maxProfileLevel.level) + " framerate: " + tPMediaDecoderInfo.getDecoderMaxFrameRateForMaxLuma());
                            if (!mMaxVCodecHwCapabilityMap.containsKey(Integer.valueOf(getSupportedCodecId(decoderMimeType))) || maxProfileLevel.level > mMaxVCodecHwCapabilityMap.get(Integer.valueOf(getSupportedCodecId(decoderMimeType))).maxLevel) {
                                replace(Integer.valueOf(getSupportedCodecId(decoderMimeType)), tPCodecMaxCapability, mMaxVCodecHwCapabilityMap);
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                TPNativeLog.printLog(4, TAG, "getVMediaCodecMaxCapabilityMap failed:" + Log.getStackTraceString(e10));
            }
            return mMaxVCodecHwCapabilityMap;
        }
    }

    private static int getValueFromSubstring(String str, int i9, int i10) {
        if (i9 < 0) {
            i9 = 0;
        }
        if (i10 >= str.length()) {
            i10 = str.length() - 1;
        }
        if (i9 > i10) {
            i9 = i10;
        }
        return Integer.parseInt(str.substring(i9, i10));
    }

    private static int getVvcSWDecodeLevel() {
        String valueOf;
        String str;
        int i9 = mVvcDeviceLevel;
        if (i9 != -1) {
            return i9;
        }
        String cpuHarewareName = TPSystemInfo.getCpuHarewareName();
        int cpuHWProducter = TPSystemInfo.getCpuHWProducter(cpuHarewareName);
        int cpuHWProductIndex = TPSystemInfo.getCpuHWProductIndex(cpuHarewareName);
        TPNativeLog.printLog(2, TAG, "[getVvcSWDecodeLevel], mCpuHWProducer = " + cpuHWProducter + ", getMaxCpuFreq() = " + TPSystemInfo.getMaxCpuFreq() + ", numCores = " + TPSystemInfo.getNumCores() + ", mCpuHWProductIdx = " + cpuHWProductIndex + ", hardware = " + cpuHarewareName);
        if (cpuHWProducter == -1) {
            valueOf = String.valueOf(cpuHWProducter);
            str = "current cpu manufacturer is not listed in the performance list, cpuHwProducer:";
        } else if (cpuHWProductIndex != -1) {
            int selectBestDecodeLevelFromCapabilityTable = selectBestDecodeLevelFromCapabilityTable(193, cpuHWProducter, cpuHWProductIndex);
            int i10 = selectBestDecodeLevelFromCapabilityTable != -1 ? selectBestDecodeLevelFromCapabilityTable : 0;
            mVvcDeviceLevel = i10;
            return i10;
        } else {
            valueOf = String.valueOf(cpuHWProductIndex);
            str = "current cpu model is not listed in the performance list, cpuHwProductIdx:";
        }
        TPNativeLog.printLog(3, TAG, str.concat(valueOf));
        mVvcDeviceLevel = 0;
        return 0;
    }

    public static synchronized void init(Context context, boolean z10) {
        synchronized (TPCodecUtils.class) {
            TPNativeLog.printLog(2, TAG, "is local cache enabled:".concat(String.valueOf(z10)));
            Context applicationContext = context.getApplicationContext();
            mContext = applicationContext;
            if (z10) {
                mLocalCache = LocalCache.get(applicationContext);
            }
            getDecoderMaxCapabilityMapAsync();
        }
    }

    public static boolean isAMediaCodecBlackListInstance(String str) {
        return mAMediaCodecBlackListInstance.contains(str);
    }

    public static boolean isAMediaCodecBlackListModel() {
        return mAMediaCodecBlackListModel.contains(TPSystemInfo.getDeviceName());
    }

    public static boolean isBlackListType(String str) {
        return Arrays.asList("PRO 7 Plus", "PRO 7-H", "PRO+7+Plus").contains(TPSystemInfo.getDeviceName()) && TextUtils.equals(str, "video/hevc");
    }

    private static synchronized boolean isHDR10Support(int i9) {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        synchronized (TPCodecUtils.class) {
            for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
                if (TextUtils.equals(tPMediaDecoderInfo.getDecoderMimeType(), "video/hevc")) {
                    for (TPMediaDecoderInfo.DecoderProfileLevel decoderProfileLevel : tPMediaDecoderInfo.getProfileLevels()) {
                        if (decoderProfileLevel.profile == i9) {
                            TPNativeLog.printLog(2, TAG, "support hdr10 ".concat(String.valueOf(i9)));
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        }
    }

    private static synchronized boolean isHDRDVSupport(int i9, int i10) {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        TPMediaDecoderInfo.DecoderProfileLevel[] profileLevels;
        synchronized (TPCodecUtils.class) {
            if (i9 == 0 && i10 == 0) {
                return mVMediaCodecCapList.contains(TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION);
            }
            for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
                if (TextUtils.equals(tPMediaDecoderInfo.getDecoderMimeType(), TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION)) {
                    for (TPMediaDecoderInfo.DecoderProfileLevel decoderProfileLevel : tPMediaDecoderInfo.getProfileLevels()) {
                        if (decoderProfileLevel.profile == i9 && decoderProfileLevel.level == i10) {
                            TPNativeLog.printLog(2, TAG, "support dolbyvision");
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        }
    }

    @TPMethodCalledByNative
    public static boolean isHDRDecoderTypeSupport(int i9, int i10) {
        String valueOf;
        String str;
        if (i10 == 102 || i10 == 101) {
            HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> hashMap = i10 == 102 ? mHDRTypeToHDRHardwareCodecWhiteListMap : mHDRTypeToHDRSoftwareCodecWhiteListMap;
            if (hashMap.containsKey(Integer.valueOf(i9))) {
                return isInHDRVersionRangeWhiteList(hashMap.get(Integer.valueOf(i9)));
            }
            valueOf = String.valueOf(i9);
            str = "isHDRDecodeTypeSupport, not config hdrType whiteList, hdrType = ";
        } else {
            valueOf = String.valueOf(i10);
            str = "isHDRDecodeTypeSupport, not support decoderType, decoderType = ";
        }
        TPNativeLog.printLog(3, TAG, str.concat(valueOf));
        return false;
    }

    @TPMethodCalledByNative
    public static boolean isHDRsupport(int i9, int i10, int i11) {
        if (i9 == 2) {
            return isHDRDVSupport(i10, i11);
        }
        if (i9 == 0) {
            return isHDR10Support(4096);
        }
        if (i9 == 1) {
            return isHDR10Support(8192);
        }
        if (i9 == 4) {
            String displayVersion = getDisplayVersion();
            String systemPatchVersion = getSystemPatchVersion();
            TPNativeLog.printLog(2, TAG, "isHDRsupport(HDRVivid):display version:".concat(String.valueOf(displayVersion)));
            TPNativeLog.printLog(2, TAG, "isHDRsupport(HDRVivid):patch version:".concat(String.valueOf(systemPatchVersion)));
            return checkHDRVividSupportByVersion(TPSystemInfo.getDeviceName(), displayVersion, systemPatchVersion);
        }
        return false;
    }

    public static boolean isInDRMLevel1Blacklist(int i9) {
        if (mDrmL1BlackList.containsKey(Integer.valueOf(i9))) {
            return mDrmL1BlackList.get(Integer.valueOf(i9)).contains(TPSystemInfo.getDeviceName());
        }
        return false;
    }

    private static boolean isInHDRVersionRangeWhiteList(ArrayList<TPCodecCapability.TPHdrSupportVersionRange> arrayList) {
        if (arrayList == null) {
            return false;
        }
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange = arrayList.get(i9);
            int i10 = Build.VERSION.SDK_INT;
            if (i10 <= tPHdrSupportVersionRange.upperboundAndroidAPILevel && i10 >= tPHdrSupportVersionRange.lowerboundAndroidAPILevel) {
                TPNativeLog.printLog(2, TAG, "inHDRVersionRangeWhiteList!");
                return true;
            }
        }
        return false;
    }

    public static boolean isInHDRVividBlackList(String str, int i9, int i10) {
        if (mHdrBlackMap.containsKey(4)) {
            HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap = mHdrBlackMap.get(4);
            if (hashMap.containsKey(str)) {
                TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange = hashMap.get(str);
                if (i9 <= tPHdrSupportVersionRange.upperboundSystemVersion && i9 >= tPHdrSupportVersionRange.lowerboundSystemVersion && i10 <= tPHdrSupportVersionRange.upperboundPatchVersion && i10 >= tPHdrSupportVersionRange.lowerboundPatchVersion) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isInHDRVividWhiteList(String str, int i9, int i10) {
        if (mHdrWhiteMap.containsKey(4)) {
            HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap = mHdrWhiteMap.get(4);
            if (hashMap.containsKey(str)) {
                TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange = hashMap.get(str);
                if (i9 <= tPHdrSupportVersionRange.upperboundSystemVersion && i9 >= tPHdrSupportVersionRange.lowerboundSystemVersion && i10 <= tPHdrSupportVersionRange.upperboundPatchVersion && i10 >= tPHdrSupportVersionRange.lowerboundPatchVersion) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isInMediaCodecBlackList(String str) {
        HashMap<String, Integer> hashMap;
        String deviceName = TPSystemInfo.getDeviceName();
        if (TextUtils.isEmpty(deviceName) || (hashMap = mCodecCapBlackList) == null || !hashMap.containsKey(deviceName)) {
            return false;
        }
        Integer num = mCodecCapBlackList.get(deviceName);
        if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_AVC)) {
            if ((num.intValue() & 1) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "video/hevc")) {
            if ((num.intValue() & 2) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_VP8)) {
            if ((num.intValue() & 256) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_VP9)) {
            if ((num.intValue() & 4) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "audio/mp4a-latm")) {
            if ((num.intValue() & 8) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "audio/ac3")) {
            if ((num.intValue() & 16) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "audio/eac3")) {
            if ((num.intValue() & 32) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "audio/flac")) {
            if ((num.intValue() & 64) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "audio/vnd.dts")) {
            if ((num.intValue() & 128) == 0) {
                return false;
            }
        } else if (!TextUtils.equals(str, "audio/eac3-joc") || (num.intValue() & 32) == 0) {
            return false;
        }
        return true;
    }

    public static boolean isInMediaCodecWhiteList(String str) {
        HashMap<String, Integer> hashMap;
        String deviceName = TPSystemInfo.getDeviceName();
        if (TextUtils.isEmpty(deviceName) || (hashMap = mCodecCapWhiteList) == null || !hashMap.containsKey(deviceName)) {
            return false;
        }
        Integer num = mCodecCapWhiteList.get(deviceName);
        if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_AVC)) {
            if ((num.intValue() & 1) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "video/hevc")) {
            if ((num.intValue() & 2) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_VP8)) {
            if ((num.intValue() & 256) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, TPDecoderType.TP_CODEC_MIMETYPE_VP9)) {
            if ((num.intValue() & 4) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "audio/mp4a-latm")) {
            if ((num.intValue() & 8) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "audio/ac3")) {
            if ((num.intValue() & 16) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "audio/eac3")) {
            if ((num.intValue() & 32) == 0) {
                return false;
            }
        } else if (TextUtils.equals(str, "audio/flac")) {
            if ((num.intValue() & 64) == 0) {
                return false;
            }
        } else if (!TextUtils.equals(str, "audio/vnd.dts") || (num.intValue() & 128) == 0) {
            return false;
        }
        return true;
    }

    private static boolean isLimitMaxWidthOrMaxHeight(int i9, int i10, int i11, int i12, int i13, int i14) {
        if ((i13 <= i14 || (i13 <= i9 && i14 <= i12)) && (i13 >= i14 || (i13 <= i11 && i14 <= i10))) {
            return false;
        }
        int i15 = i13 > i14 ? i12 * i9 : i11 * i10;
        if (i9 < i13 || i10 < i14 || i15 < i13 * i14) {
            TPNativeLog.printLog(4, TAG, "getSupportedFrameRatesFor width:" + i13 + " height:" + i14 + " do not support! maxWidth:" + i9 + " maxHeight:" + i10);
            return true;
        }
        TPNativeLog.printLog(2, TAG, "getSupportedFrameRatesFor width:" + i13 + " height:" + i14 + " limit maxLumaWidth or maxLumaHeight, but not limit maxLumaSamples, do support! maxWidth:" + i9 + " maxHeight:" + i10 + " maxLumaSamples:" + i15);
        return false;
    }

    public static synchronized boolean isMediaCodecDDPlusSupported() {
        synchronized (TPCodecUtils.class) {
            if (isAMediaCodecBlackListModel()) {
                return false;
            }
            if (!mAMediaCodecCapList.contains("audio/eac3")) {
                if (!mAMediaCodecCapList.contains("audio/eac3-joc")) {
                    return false;
                }
            }
            return true;
        }
    }

    public static synchronized boolean isMediaCodecDolbyDSSupported() {
        synchronized (TPCodecUtils.class) {
            if (isAMediaCodecBlackListModel()) {
                return false;
            }
            return mAMediaCodecCapList.contains("audio/ac3");
        }
    }

    private static boolean isSupportedMediaCodec(String str) {
        return mSupportedMediaCodec.contains(str);
    }

    private static boolean isTheSameVersionRange(TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange2) {
        return tPHdrSupportVersionRange.lowerboundPatchVersion == tPHdrSupportVersionRange2.lowerboundPatchVersion && tPHdrSupportVersionRange.lowerboundSystemVersion == tPHdrSupportVersionRange2.lowerboundSystemVersion && tPHdrSupportVersionRange.upperboundPatchVersion == tPHdrSupportVersionRange2.upperboundPatchVersion && tPHdrSupportVersionRange.upperboundSystemVersion == tPHdrSupportVersionRange2.upperboundSystemVersion;
    }

    public static boolean isVMediaCodecBlackListModel() {
        return mVMediaCodecBlackListModel.contains(TPSystemInfo.getDeviceName());
    }

    private static <K, T> void replace(K k10, T t10, HashMap<K, T> hashMap) {
        if (!hashMap.containsKey(k10)) {
            hashMap.put(k10, t10);
            return;
        }
        hashMap.remove(k10);
        hashMap.put(k10, t10);
    }

    private static int selectBestDecodeLevelFromCapabilityTable(int i9, int i10, int i11) {
        String valueOf;
        String str;
        DefinitionName[] values;
        VideoSwCapabilityModel videoSwCapabilityModel = mVideoCodecIdToSwCapabilityModel.get(i9);
        if (videoSwCapabilityModel == null) {
            valueOf = String.valueOf(i9);
            str = "No corresponding codec id found, codecId:";
        } else {
            HashMap<DefinitionName, String> hashMap = videoSwCapabilityModel.mCpuProducerToAllDefinitionDecTable.get(i10);
            if (hashMap != null && !hashMap.isEmpty()) {
                for (DefinitionName definitionName : DefinitionName.values()) {
                    String str2 = hashMap.get(definitionName);
                    if (!TextUtils.isEmpty(str2) && i11 >= TPSystemInfo.getCpuHWProductIndex(i10, str2)) {
                        return convertDefinitionNameToDecodeLevel(definitionName);
                    }
                }
                return -1;
            }
            valueOf = String.valueOf(i10);
            str = "No corresponding cpu producer found, cpuHwProducer:";
        }
        TPNativeLog.printLog(3, TAG, str.concat(valueOf));
        return -1;
    }

    public static void setMediaCodecPreferredSoftwareComponent(boolean z10) {
        mPreferredSoftwareComponent = z10;
    }
}

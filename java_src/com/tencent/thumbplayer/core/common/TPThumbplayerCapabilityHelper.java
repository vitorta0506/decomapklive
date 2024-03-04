package com.tencent.thumbplayer.core.common;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.core.common.TPCodecCapability;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class TPThumbplayerCapabilityHelper {
    public static boolean addACodecBlacklist(int i9, int i10, TPCodecCapability.TPACodecPropertyRange tPACodecPropertyRange) {
        return TPPlayerDecoderCapability.addACodecBlacklist(i9, i10, tPACodecPropertyRange);
    }

    public static boolean addACodecWhitelist(int i9, int i10, TPCodecCapability.TPACodecPropertyRange tPACodecPropertyRange) {
        return TPPlayerDecoderCapability.addACodecWhitelist(i9, i10, tPACodecPropertyRange);
    }

    public static boolean addDRMLevel1Blacklist(int i9) {
        return TPPlayerDecoderCapability.addDRMLevel1Blacklist(i9);
    }

    public static boolean addHDRBlackList(int i9, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        return TPPlayerDecoderCapability.addHDRBlackList(i9, tPHdrSupportVersionRange);
    }

    public static boolean addHDRVideoDecoderTypeWhiteList(int i9, int i10, @NonNull TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        return TPPlayerDecoderCapability.addHDRVideoDecoderTypeWhiteList(i9, i10, tPHdrSupportVersionRange);
    }

    public static boolean addHDRWhiteList(int i9, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        return TPPlayerDecoderCapability.addHDRWhiteList(i9, tPHdrSupportVersionRange);
    }

    public static boolean addVCodecBlacklist(int i9, int i10, TPCodecCapability.TPVCodecPropertyRange tPVCodecPropertyRange) {
        return TPPlayerDecoderCapability.addVCodecBlacklist(i9, i10, tPVCodecPropertyRange);
    }

    public static boolean addVCodecWhitelist(int i9, int i10, TPCodecCapability.TPVCodecPropertyRange tPVCodecPropertyRange) {
        return TPPlayerDecoderCapability.addVCodecWhitelist(i9, i10, tPVCodecPropertyRange);
    }

    public static int[] getDRMCapabilities() {
        return TPDrm.getDRMCapabilities();
    }

    public static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getVCodecDecoderMaxCapabilityMap(int i9) {
        return TPPlayerDecoderCapability.getVCodecDecoderMaxCapabilityMap(i9);
    }

    public static TPCodecCapability.TPCodecMaxCapability getVCodecMaxCapability(int i9) {
        TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability;
        TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability2;
        TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability3 = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> vCodecDecoderMaxCapabilityMap = TPPlayerDecoderCapability.getVCodecDecoderMaxCapabilityMap(102);
        HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> vCodecDecoderMaxCapabilityMap2 = TPPlayerDecoderCapability.getVCodecDecoderMaxCapabilityMap(101);
        if (vCodecDecoderMaxCapabilityMap != null && (tPCodecMaxCapability2 = vCodecDecoderMaxCapabilityMap.get(Integer.valueOf(i9))) != null) {
            tPCodecMaxCapability3 = tPCodecMaxCapability2;
        }
        return (vCodecDecoderMaxCapabilityMap2 == null || (tPCodecMaxCapability = vCodecDecoderMaxCapabilityMap2.get(Integer.valueOf(i9))) == null || tPCodecMaxCapability.maxLumaSamples <= tPCodecMaxCapability3.maxLumaSamples) ? tPCodecMaxCapability3 : tPCodecMaxCapability;
    }

    public static synchronized void init(Context context, boolean z10) {
        synchronized (TPThumbplayerCapabilityHelper.class) {
            TPPlayerDecoderCapability.init(context, z10);
        }
    }

    public static boolean isACodecCapabilityCanSupport(int i9, int i10, int i11, int i12, int i13, int i14) {
        if (isACodecCapabilitySupport(1, i9, i10, i11, i12, i13, i14)) {
            return true;
        }
        return isACodecCapabilitySupport(102, i9, i10, i11, i12, i13, i14);
    }

    public static boolean isACodecCapabilitySupport(int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        return TPPlayerDecoderCapability.isACodecCapabilitySupport(i9, i10, i11, i12, i13, i14, i15);
    }

    public static boolean isDDPlusSupported() {
        return TPPlayerDecoderCapability.isDDPlusSupported();
    }

    public static boolean isDDSupported() {
        return TPPlayerDecoderCapability.isDDPlusSupported();
    }

    public static boolean isDRMsupport(int i9) {
        int[] dRMCapabilities = getDRMCapabilities();
        if (dRMCapabilities.length == 0) {
            return false;
        }
        for (int i10 : dRMCapabilities) {
            if (i9 == i10) {
                return true;
            }
        }
        return false;
    }

    public static boolean isDolbyDSSupported() {
        return TPPlayerDecoderCapability.isDolbyDSSupported();
    }

    public static boolean isFeatureSupport(int i9) {
        return TPFeatureCapability.isFeatureSupport(i9);
    }

    public static boolean isHDRsupport(int i9, int i10, int i11) {
        return TPPlayerDecoderCapability.isHDRsupport(i9, i10, i11);
    }

    public static boolean isSupportMediaCodecRotateInternal() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean isSupportNativeMediaCodec() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean isSupportSetOutputSurfaceApi() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @Deprecated
    public static boolean isVCodecCapabilityCanSupport(int i9, int i10, int i11, int i12, int i13) {
        return isVCodecCapabilityCanSupport(i9, i10, i11, i12, i13, 30);
    }

    public static boolean isVCodecCapabilityCanSupport(int i9, int i10, int i11, int i12, int i13, int i14) {
        if (isVCodecCapabilitySupport(101, i9, i10, i11, i12, i13, i14)) {
            return true;
        }
        return isVCodecCapabilitySupport(102, i9, i10, i11, i12, i13, i14);
    }

    @Deprecated
    public static boolean isVCodecCapabilitySupport(int i9, int i10, int i11, int i12, int i13, int i14) {
        return isVCodecCapabilitySupport(i9, i10, i11, i12, i13, i14, 30);
    }

    public static boolean isVCodecCapabilitySupport(int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        return TPPlayerDecoderCapability.isVCodecCapabilitySupport(i9, i10, i11, i12, i13, i14, i15);
    }

    public static void setMediaCodecPreferredSoftwareComponent(boolean z10) {
        TPPlayerDecoderCapability.setMediaCodecPreferredSoftwareComponent(z10);
    }
}

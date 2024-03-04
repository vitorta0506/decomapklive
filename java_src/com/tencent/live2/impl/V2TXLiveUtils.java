package com.tencent.live2.impl;

import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.live2.V2TXLiveDef;
/* loaded from: classes4.dex */
public class V2TXLiveUtils {
    private static final String TAG = "V2TXLiveUtils";
    public static final String TRTC_ADDRESS1 = "room://cloud.tencent.com/rtc";
    public static final String TRTC_ADDRESS2 = "room://rtc.tencent.com";

    /* renamed from: com.tencent.live2.impl.V2TXLiveUtils$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33360a;

        static {
            int[] iArr = new int[V2TXLiveDef.V2TXLiveVideoResolution.values().length];
            f33360a = iArr;
            try {
                iArr[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution160x160.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution270x270.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution480x480.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution320x240.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution480x360.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution640x480.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution320x180.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution480x270.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution640x360.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution960x540.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution1280x720.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f33360a[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution1920x1080.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f33361a;

        /* renamed from: b  reason: collision with root package name */
        public int f33362b;

        public a(int i9, int i10) {
            this.f33361a = i9;
            this.f33362b = i10;
        }
    }

    public static a getBitrateByResolution(V2TXLiveDef.V2TXLiveVideoResolution v2TXLiveVideoResolution) {
        int i9 = 900;
        int i10 = 600;
        switch (AnonymousClass1.f33360a[v2TXLiveVideoResolution.ordinal()]) {
            case 1:
                i10 = 100;
                i9 = 150;
                break;
            case 2:
                i10 = 200;
                i9 = 300;
                break;
            case 3:
                i9 = 525;
                i10 = 350;
                break;
            case 4:
                i9 = 375;
                i10 = 250;
                break;
            case 5:
                i9 = 600;
                i10 = 400;
                break;
            case 6:
                break;
            case 7:
                i9 = 400;
                i10 = 250;
                break;
            case 8:
                i9 = 550;
                i10 = 350;
                break;
            case 9:
                i10 = 500;
                break;
            case 10:
            default:
                i9 = 1500;
                i10 = 800;
                break;
            case 11:
                i10 = 1000;
                i9 = 1800;
                break;
            case 12:
                i10 = 2500;
                i9 = 3000;
                break;
        }
        return new a(i10, i9);
    }

    public static V2TXLiveDef.V2TXLiveMode parseLiveMode(String str) {
        if (!str.startsWith("trtc://") && !str.startsWith(TRTC_ADDRESS1) && !str.startsWith(TRTC_ADDRESS2)) {
            TXCLog.i(TAG, "parseLiveMode: rtmp.");
            return V2TXLiveDef.V2TXLiveMode.TXLiveMode_RTMP;
        }
        TXCLog.i(TAG, "parseLiveMode: rtc.");
        return V2TXLiveDef.V2TXLiveMode.TXLiveMode_RTC;
    }

    public static String removeURLSensitiveInfo(String str) {
        int indexOf;
        int indexOf2;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            String[] strArr = {"roomsig", "privatemapkey", "usersig"};
            for (int i9 = 0; i9 < 3; i9++) {
                if (str.contains(strArr[i9]) && (indexOf = str.indexOf(strArr[i9])) != -1) {
                    str = str.indexOf(ContainerUtils.FIELD_DELIMITER, indexOf) == -1 ? str.substring(0, indexOf) : str.substring(0, indexOf) + str.substring(indexOf2);
                }
            }
        } catch (Exception e10) {
            TXCLog.e(TAG, "remove url sensitive info failed.", e10);
        }
        return str;
    }
}

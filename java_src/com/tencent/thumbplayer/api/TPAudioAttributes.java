package com.tencent.thumbplayer.api;

import android.media.AudioAttributes;
import androidx.annotation.RequiresApi;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class TPAudioAttributes {
    @TPNativeKeyMap.MapTPAudioAttributeContentType(3)
    public static final int TP_CONTENT_MOVIE = 3;
    @TPNativeKeyMap.MapTPAudioAttributeContentType(2)
    public static final int TP_CONTENT_MUSIC = 2;
    @TPNativeKeyMap.MapTPAudioAttributeContentType(4)
    public static final int TP_CONTENT_SONIFICATION = 4;
    @TPNativeKeyMap.MapTPAudioAttributeContentType(1)
    public static final int TP_CONTENT_SPEECH = 1;
    @TPNativeKeyMap.MapTPAudioAttributeContentType(0)
    public static final int TP_CONTENT_UNKNOWN = 0;
    @TPNativeKeyMap.MapTPAudioAttributeFlag(1)
    public static final int TP_FLAG_AUDIBILITY_ENFORCED = 1;
    @TPNativeKeyMap.MapTPAudioAttributeFlag(16)
    public static final int TP_FLAG_HW_AV_SYNC = 16;
    @TPNativeKeyMap.MapTPAudioAttributeFlag(256)
    public static final int TP_FLAG_LOW_LATENCY = 256;
    private static final int TP_FLAG_PUBLIC = 273;
    @TPNativeKeyMap.MapTPAudioAttributeFlag(0)
    public static final int TP_FLAG_UNKNOWN = 0;
    @TPNativeKeyMap.MapTPAudioAttributeStreamType(4)
    public static final int TP_STREAM_ALARM = 4;
    @TPNativeKeyMap.MapTPAudioAttributeStreamType(8)
    public static final int TP_STREAM_DTMF = 8;
    @TPNativeKeyMap.MapTPAudioAttributeStreamType(3)
    public static final int TP_STREAM_MUSIC = 3;
    @TPNativeKeyMap.MapTPAudioAttributeStreamType(5)
    public static final int TP_STREAM_NOTIFICATION = 5;
    @TPNativeKeyMap.MapTPAudioAttributeStreamType(2)
    public static final int TP_STREAM_RING = 2;
    @TPNativeKeyMap.MapTPAudioAttributeStreamType(1)
    public static final int TP_STREAM_SYSTEM = 1;
    @TPNativeKeyMap.MapTPAudioAttributeStreamType(-1)
    public static final int TP_STREAM_UNKNOWN = -1;
    @TPNativeKeyMap.MapTPAudioAttributeStreamType(0)
    public static final int TP_STREAM_VOICE_CALL = 0;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(4)
    public static final int TP_USAGE_ALARM = 4;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(11)
    public static final int TP_USAGE_ASSISTANCE_ACCESSIBILITY = 11;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(12)
    public static final int TP_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE = 12;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(13)
    public static final int TP_USAGE_ASSISTANCE_SONIFICATION = 13;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(16)
    public static final int TP_USAGE_ASSISTANT = 16;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(14)
    public static final int TP_USAGE_GAME = 14;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(1)
    public static final int TP_USAGE_MEDIA = 1;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(5)
    public static final int TP_USAGE_NOTIFICATION = 5;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(9)
    public static final int TP_USAGE_NOTIFICATION_COMMUNICATION_DELAYED = 9;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(8)
    public static final int TP_USAGE_NOTIFICATION_COMMUNICATION_INSTANT = 8;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(7)
    public static final int TP_USAGE_NOTIFICATION_COMMUNICATION_REQUEST = 7;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(10)
    public static final int TP_USAGE_NOTIFICATION_EVENT = 10;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(6)
    public static final int TP_USAGE_NOTIFICATION_RINGTONE = 6;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(0)
    public static final int TP_USAGE_UNKNOWN = 0;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(2)
    public static final int TP_USAGE_VOICE_COMMUNICATION = 2;
    @TPNativeKeyMap.MapTPAudioAttributeUsage(3)
    public static final int TP_USAGE_VOICE_COMMUNICATION_SIGNALLING = 3;
    private static final HashMap<Integer, Integer> mMapContentTypeToAndroidMediaContentType;
    private static final HashMap<Integer, String> mMapContentTypeToString;
    private static final HashMap<Integer, Integer> mMapUsageToAndroidMediaStreamType;
    private static final HashMap<Integer, Integer> mMapUsageToAndroidMediaUsage;
    private static final HashMap<Integer, String> mMapUsageToString;
    private int mContentType;
    private int mFlags;
    private int mUsage;

    /* loaded from: classes4.dex */
    public static class Builder {
        private static final HashMap<Integer, Integer> mMapStreamTypeToContentType;
        private static final HashMap<Integer, Integer> mMapStreamTypeToUsage;
        private int mUsage = 0;
        private int mContentType = 0;
        private int mFlags = 0;

        static {
            HashMap<Integer, Integer> hashMap = new HashMap<>();
            mMapStreamTypeToContentType = hashMap;
            hashMap.put(-1, 0);
            hashMap.put(0, 1);
            hashMap.put(1, 4);
            hashMap.put(2, 4);
            hashMap.put(3, 2);
            hashMap.put(4, 4);
            hashMap.put(5, 4);
            hashMap.put(8, 4);
            HashMap<Integer, Integer> hashMap2 = new HashMap<>();
            mMapStreamTypeToUsage = hashMap2;
            hashMap2.put(-1, 0);
            hashMap2.put(0, 2);
            hashMap2.put(1, 13);
            hashMap2.put(2, 6);
            hashMap2.put(3, 1);
            hashMap2.put(4, 4);
            hashMap2.put(5, 5);
            hashMap2.put(8, 3);
        }

        public Builder addFlags(int i9) {
            this.mFlags = (i9 & TPAudioAttributes.TP_FLAG_PUBLIC) | this.mFlags;
            return this;
        }

        public TPAudioAttributes build() {
            TPAudioAttributes tPAudioAttributes = new TPAudioAttributes();
            tPAudioAttributes.mContentType = this.mContentType;
            tPAudioAttributes.mUsage = this.mUsage;
            tPAudioAttributes.mFlags = this.mFlags;
            return tPAudioAttributes;
        }

        public Builder setContentType(@TPAudioAttributeContentType int i9) {
            if (!TPAudioAttributes.mMapContentTypeToString.containsKey(Integer.valueOf(i9))) {
                i9 = 0;
            }
            this.mContentType = i9;
            return this;
        }

        public Builder setFlag(int i9) {
            this.mFlags = i9 & TPAudioAttributes.TP_FLAG_PUBLIC;
            return this;
        }

        public Builder setLegacyStreamType(@TPAudioAttributeStreamType int i9) {
            HashMap<Integer, Integer> hashMap = mMapStreamTypeToContentType;
            if (hashMap.containsKey(Integer.valueOf(i9))) {
                this.mContentType = hashMap.get(Integer.valueOf(i9)).intValue();
            } else {
                this.mContentType = 0;
            }
            HashMap<Integer, Integer> hashMap2 = mMapStreamTypeToUsage;
            if (hashMap2.containsKey(Integer.valueOf(i9))) {
                this.mUsage = hashMap2.get(Integer.valueOf(i9)).intValue();
            } else {
                this.mUsage = 0;
            }
            return this;
        }

        public Builder setUsage(@TPAudioAttributeUsage int i9) {
            if (!TPAudioAttributes.mMapUsageToString.containsKey(Integer.valueOf(i9))) {
                i9 = 0;
            }
            this.mUsage = i9;
            return this;
        }
    }

    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes4.dex */
    public @interface TPAudioAttributeContentType {
    }

    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes4.dex */
    public @interface TPAudioAttributeFlag {
    }

    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes4.dex */
    public @interface TPAudioAttributeStreamType {
    }

    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes4.dex */
    public @interface TPAudioAttributeUsage {
    }

    static {
        HashMap<Integer, String> hashMap = new HashMap<>();
        mMapContentTypeToString = hashMap;
        hashMap.put(0, "TP_CONTENT_UNKNOWN");
        hashMap.put(1, "TP_CONTENT_SPEECH");
        hashMap.put(2, "TP_CONTENT_MUSIC");
        hashMap.put(3, "TP_CONTENT_MOVIE");
        hashMap.put(4, "TP_CONTENT_SONIFICATION");
        HashMap<Integer, Integer> hashMap2 = new HashMap<>();
        mMapContentTypeToAndroidMediaContentType = hashMap2;
        hashMap2.put(0, 0);
        hashMap2.put(1, 1);
        hashMap2.put(2, 2);
        hashMap2.put(3, 3);
        hashMap2.put(4, 4);
        HashMap<Integer, String> hashMap3 = new HashMap<>();
        mMapUsageToString = hashMap3;
        hashMap3.put(0, "TP_USAGE_UNKNOWN");
        hashMap3.put(1, "TP_USAGE_MEDIA");
        hashMap3.put(2, "TP_USAGE_VOICE_COMMUNICATION");
        hashMap3.put(3, "TP_USAGE_VOICE_COMMUNICATION_SIGNALLING");
        hashMap3.put(4, "TP_USAGE_ALARM");
        hashMap3.put(5, "TP_USAGE_NOTIFICATION");
        hashMap3.put(6, "TP_USAGE_NOTIFICATION_RINGTONE");
        hashMap3.put(7, "TP_USAGE_NOTIFICATION_COMMUNICATION_REQUEST");
        hashMap3.put(8, "TP_USAGE_NOTIFICATION_COMMUNICATION_INSTANT");
        hashMap3.put(9, "TP_USAGE_NOTIFICATION_COMMUNICATION_DELAYED");
        hashMap3.put(10, "TP_USAGE_NOTIFICATION_EVENT");
        hashMap3.put(11, "TP_USAGE_ASSISTANCE_ACCESSIBILITY");
        hashMap3.put(12, "TP_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE");
        hashMap3.put(13, "TP_USAGE_ASSISTANCE_SONIFICATION");
        hashMap3.put(14, "TP_USAGE_GAME");
        hashMap3.put(16, "TP_USAGE_ASSISTANT");
        HashMap<Integer, Integer> hashMap4 = new HashMap<>();
        mMapUsageToAndroidMediaUsage = hashMap4;
        hashMap4.put(0, 0);
        hashMap4.put(1, 1);
        hashMap4.put(2, 2);
        hashMap4.put(3, 3);
        hashMap4.put(4, 4);
        hashMap4.put(5, 5);
        hashMap4.put(6, 6);
        hashMap4.put(7, 7);
        hashMap4.put(8, 8);
        hashMap4.put(9, 9);
        hashMap4.put(10, 10);
        hashMap4.put(11, 11);
        hashMap4.put(12, 12);
        hashMap4.put(13, 13);
        hashMap4.put(14, 14);
        hashMap4.put(16, 16);
        HashMap<Integer, Integer> hashMap5 = new HashMap<>();
        mMapUsageToAndroidMediaStreamType = hashMap5;
        hashMap5.put(0, 3);
        hashMap5.put(1, 3);
        hashMap5.put(2, 0);
        hashMap5.put(3, 8);
        hashMap5.put(4, 4);
        hashMap5.put(5, 5);
        hashMap5.put(6, 2);
        hashMap5.put(7, 5);
        hashMap5.put(8, 5);
        hashMap5.put(9, 5);
        hashMap5.put(10, 5);
        hashMap5.put(12, 3);
        hashMap5.put(13, 1);
        hashMap5.put(14, 3);
        hashMap5.put(16, 3);
    }

    private TPAudioAttributes() {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
    }

    private static int contentTypeToAndroidMediaContentType(@TPAudioAttributeContentType int i9) {
        HashMap<Integer, Integer> hashMap = mMapContentTypeToAndroidMediaContentType;
        if (hashMap.containsKey(Integer.valueOf(i9))) {
            return hashMap.get(Integer.valueOf(i9)).intValue();
        }
        return 0;
    }

    public static String contentTypeToString(@TPAudioAttributeContentType int i9) {
        HashMap<Integer, String> hashMap = mMapContentTypeToString;
        return hashMap.containsKey(Integer.valueOf(i9)) ? hashMap.get(Integer.valueOf(i9)) : "unknown content type".concat(String.valueOf(i9));
    }

    private static int flagsToAndroidMediaFlags(int i9) {
        int i10 = (i9 & 1) != 0 ? 1 : 0;
        if ((i9 & 16) != 0) {
            i10 |= 16;
        }
        return (i9 & 256) != 0 ? i10 | 256 : i10;
    }

    public static int usageToAndroidMediaStreamType(@TPAudioAttributeUsage int i9) {
        HashMap<Integer, Integer> hashMap = mMapUsageToAndroidMediaStreamType;
        if (hashMap.containsKey(Integer.valueOf(i9))) {
            return hashMap.get(Integer.valueOf(i9)).intValue();
        }
        return 3;
    }

    private static int usageToAndroidMediaUsage(@TPAudioAttributeUsage int i9) {
        HashMap<Integer, Integer> hashMap = mMapUsageToAndroidMediaUsage;
        if (hashMap.containsKey(Integer.valueOf(i9))) {
            return hashMap.get(Integer.valueOf(i9)).intValue();
        }
        return 0;
    }

    public static String usageToString(@TPAudioAttributeUsage int i9) {
        HashMap<Integer, String> hashMap = mMapUsageToString;
        return hashMap.containsKey(Integer.valueOf(i9)) ? hashMap.get(Integer.valueOf(i9)) : "unknown usage ".concat(String.valueOf(i9));
    }

    @TPAudioAttributeContentType
    public int getContentType() {
        return this.mContentType;
    }

    public int getFlags() {
        return this.mFlags & TP_FLAG_PUBLIC;
    }

    @TPAudioAttributeUsage
    public int getUsage() {
        return this.mUsage;
    }

    @RequiresApi(api = 21)
    public AudioAttributes toAndroidMediaAudioAttributes() {
        int usageToAndroidMediaUsage = usageToAndroidMediaUsage(this.mUsage);
        int contentTypeToAndroidMediaContentType = contentTypeToAndroidMediaContentType(this.mContentType);
        return new AudioAttributes.Builder().setContentType(contentTypeToAndroidMediaContentType).setUsage(usageToAndroidMediaUsage).setFlags(flagsToAndroidMediaFlags(this.mFlags)).build();
    }

    public String toString() {
        return "AudioAttributes: usage=" + usageToString(this.mUsage) + " content=" + contentTypeToString(this.mContentType) + " flags=0x" + Integer.toHexString(this.mFlags).toUpperCase();
    }
}

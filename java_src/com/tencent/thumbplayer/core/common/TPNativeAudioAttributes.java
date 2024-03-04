package com.tencent.thumbplayer.core.common;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class TPNativeAudioAttributes {
    public static final int TP_NATIVE_CONTENT_MOVIE = 3;
    public static final int TP_NATIVE_CONTENT_MUSIC = 2;
    public static final int TP_NATIVE_CONTENT_SONIFICATION = 4;
    public static final int TP_NATIVE_CONTENT_SPEECH = 1;
    public static final int TP_NATIVE_CONTENT_UNKNOWN = 0;
    public static final int TP_NATIVE_FLAG_AUDIBILITY_ENFORCED = 1;
    public static final int TP_NATIVE_FLAG_HW_AV_SYNC = 16;
    public static final int TP_NATIVE_FLAG_LOW_LATENCY = 256;
    private static final int TP_NATIVE_FLAG_PUBLIC = 273;
    public static final int TP_NATIVE_FLAG_UNKNOWN = 0;
    public static final int TP_NATIVE_STREAM_ALARM = 4;
    public static final int TP_NATIVE_STREAM_DTMF = 8;
    public static final int TP_NATIVE_STREAM_MUSIC = 3;
    public static final int TP_NATIVE_STREAM_NOTIFICATION = 5;
    public static final int TP_NATIVE_STREAM_RING = 2;
    public static final int TP_NATIVE_STREAM_SYSTEM = 1;
    public static final int TP_NATIVE_STREAM_UNKNOWN = -1;
    public static final int TP_NATIVE_STREAM_VOICE_CALL = 0;
    public static final int TP_NATIVE_USAGE_ALARM = 4;
    public static final int TP_NATIVE_USAGE_ASSISTANCE_ACCESSIBILITY = 11;
    public static final int TP_NATIVE_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE = 12;
    public static final int TP_NATIVE_USAGE_ASSISTANCE_SONIFICATION = 13;
    public static final int TP_NATIVE_USAGE_ASSISTANT = 16;
    public static final int TP_NATIVE_USAGE_GAME = 14;
    public static final int TP_NATIVE_USAGE_MEDIA = 1;
    public static final int TP_NATIVE_USAGE_NOTIFICATION = 5;
    public static final int TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_DELAYED = 9;
    public static final int TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_INSTANT = 8;
    public static final int TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_REQUEST = 7;
    public static final int TP_NATIVE_USAGE_NOTIFICATION_EVENT = 10;
    public static final int TP_NATIVE_USAGE_NOTIFICATION_RINGTONE = 6;
    public static final int TP_NATIVE_USAGE_UNKNOWN = 0;
    public static final int TP_NATIVE_USAGE_VOICE_COMMUNICATION = 2;
    public static final int TP_NATIVE_USAGE_VOICE_COMMUNICATION_SIGNALLING = 3;
    private static final HashMap<Integer, String> mMapContentTypeToString;
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
            this.mFlags = (i9 & TPNativeAudioAttributes.TP_NATIVE_FLAG_PUBLIC) | this.mFlags;
            return this;
        }

        public TPNativeAudioAttributes build() {
            TPNativeAudioAttributes tPNativeAudioAttributes = new TPNativeAudioAttributes();
            tPNativeAudioAttributes.mContentType = this.mContentType;
            tPNativeAudioAttributes.mUsage = this.mUsage;
            tPNativeAudioAttributes.mFlags = this.mFlags;
            return tPNativeAudioAttributes;
        }

        public Builder setContentType(@TPNativeAudioAttributeContentType int i9) {
            if (!TPNativeAudioAttributes.mMapContentTypeToString.containsKey(Integer.valueOf(i9))) {
                i9 = 0;
            }
            this.mContentType = i9;
            return this;
        }

        public Builder setFlags(int i9) {
            this.mFlags = i9 & TPNativeAudioAttributes.TP_NATIVE_FLAG_PUBLIC;
            return this;
        }

        public Builder setLegacyStreamType(@TPNativeAudioAttributeStreamType int i9) {
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

        public Builder setUsage(@TPNativeAudioAttributeUsage int i9) {
            if (!TPNativeAudioAttributes.mMapUsageToString.containsKey(Integer.valueOf(i9))) {
                i9 = 0;
            }
            this.mUsage = i9;
            return this;
        }
    }

    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes4.dex */
    public @interface TPNativeAudioAttributeContentType {
    }

    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes4.dex */
    public @interface TPNativeAudioAttributeFlag {
    }

    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes4.dex */
    public @interface TPNativeAudioAttributeStreamType {
    }

    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes4.dex */
    public @interface TPNativeAudioAttributeUsage {
    }

    static {
        HashMap<Integer, String> hashMap = new HashMap<>();
        mMapContentTypeToString = hashMap;
        hashMap.put(0, "TP_NATIVE_CONTENT_UNKNOWN");
        hashMap.put(1, "TP_NATIVE_CONTENT_SPEECH");
        hashMap.put(2, "TP_NATIVE_CONTENT_MUSIC");
        hashMap.put(3, "TP_NATIVE_CONTENT_MOVIE");
        hashMap.put(4, "TP_NATIVE_CONTENT_SONIFICATION");
        HashMap<Integer, String> hashMap2 = new HashMap<>();
        mMapUsageToString = hashMap2;
        hashMap2.put(0, "TP_NATIVE_USAGE_UNKNOWN");
        hashMap2.put(1, "TP_NATIVE_USAGE_MEDIA");
        hashMap2.put(2, "TP_NATIVE_USAGE_VOICE_COMMUNICATION");
        hashMap2.put(3, "TP_NATIVE_USAGE_VOICE_COMMUNICATION_SIGNALLING");
        hashMap2.put(4, "TP_NATIVE_USAGE_ALARM");
        hashMap2.put(5, "TP_NATIVE_USAGE_NOTIFICATION");
        hashMap2.put(6, "TP_NATIVE_USAGE_NOTIFICATION_RINGTONE");
        hashMap2.put(7, "TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_REQUEST");
        hashMap2.put(8, "TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_INSTANT");
        hashMap2.put(9, "TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_DELAYED");
        hashMap2.put(10, "TP_NATIVE_USAGE_NOTIFICATION_EVENT");
        hashMap2.put(11, "TP_NATIVE_USAGE_ASSISTANCE_ACCESSIBILITY");
        hashMap2.put(12, "TP_NATIVE_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE");
        hashMap2.put(13, "TP_NATIVE_USAGE_ASSISTANCE_SONIFICATION");
        hashMap2.put(14, "TP_NATIVE_USAGE_GAME");
        hashMap2.put(16, "TP_NATIVE_USAGE_ASSISTANT");
    }

    private TPNativeAudioAttributes() {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
    }

    public static String contentTypeToString(@TPNativeAudioAttributeContentType int i9) {
        HashMap<Integer, String> hashMap = mMapContentTypeToString;
        return hashMap.containsKey(Integer.valueOf(i9)) ? hashMap.get(Integer.valueOf(i9)) : "unknown content type".concat(String.valueOf(i9));
    }

    public static String usageToString(@TPNativeAudioAttributeUsage int i9) {
        HashMap<Integer, String> hashMap = mMapUsageToString;
        return hashMap.containsKey(Integer.valueOf(i9)) ? hashMap.get(Integer.valueOf(i9)) : "unknown usage ".concat(String.valueOf(i9));
    }

    @TPNativeAudioAttributeContentType
    public int getContentType() {
        return this.mContentType;
    }

    public int getFlags() {
        return this.mFlags & TP_NATIVE_FLAG_PUBLIC;
    }

    @TPNativeAudioAttributeUsage
    public int getUsage() {
        return this.mUsage;
    }

    public String toString() {
        return "AudioAttributes: usage=" + usageToString(this.mUsage) + " content=" + contentTypeToString(this.mContentType) + " flags=0x" + Integer.toHexString(this.mFlags).toUpperCase();
    }
}

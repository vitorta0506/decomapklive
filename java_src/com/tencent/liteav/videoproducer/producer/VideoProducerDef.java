package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
public interface VideoProducerDef {

    /* loaded from: classes4.dex */
    public enum GSensorMode {
        DISABLE(0),
        UI_AUTO_LAYOUT(1),
        UI_FIX_LAYOUT(2);
        

        /* renamed from: d  reason: collision with root package name */
        private static final GSensorMode[] f33131d = values();
        int mValue;

        GSensorMode(int i9) {
            this.mValue = i9;
        }

        public static GSensorMode a(int i9) {
            GSensorMode[] gSensorModeArr;
            for (GSensorMode gSensorMode : f33131d) {
                if (gSensorMode.mValue == i9) {
                    return gSensorMode;
                }
            }
            return UI_FIX_LAYOUT;
        }
    }

    /* loaded from: classes4.dex */
    public enum HomeOrientation {
        UNSET(-1),
        UP(0),
        LEFT(1),
        RIGHT(2),
        DOWN(3);
        

        /* renamed from: f  reason: collision with root package name */
        private static final HomeOrientation[] f33138f = values();
        int mValue;

        HomeOrientation(int i9) {
            this.mValue = i9;
        }

        public static HomeOrientation a(int i9) {
            HomeOrientation[] homeOrientationArr;
            for (HomeOrientation homeOrientation : f33138f) {
                if (homeOrientation.mValue == i9) {
                    return homeOrientation;
                }
            }
            return DOWN;
        }
    }

    /* loaded from: classes4.dex */
    public enum ProducerMode {
        AUTO(0),
        PERFORMANCE(1),
        HIGH_QUALITY(2),
        MANUAL(3);
        

        /* renamed from: e  reason: collision with root package name */
        private static final ProducerMode[] f33144e = values();
        private int mValue;

        ProducerMode(int i9) {
            this.mValue = i9;
        }

        public static ProducerMode a(int i9) {
            ProducerMode[] producerModeArr;
            for (ProducerMode producerMode : f33144e) {
                if (producerMode.mValue == i9) {
                    return producerMode;
                }
            }
            return AUTO;
        }
    }

    /* loaded from: classes4.dex */
    public enum StreamType {
        STREAM_TYPE_BIG_VIDEO(0),
        STREAM_TYPE_SMALL_VIDEO(1),
        STREAM_TYPE_SUB_VIDEO(2);
        

        /* renamed from: d  reason: collision with root package name */
        private static final StreamType[] f33149d = values();
        public final int mValue;

        StreamType(int i9) {
            this.mValue = i9;
        }

        public static StreamType a(int i9) {
            StreamType[] streamTypeArr;
            for (StreamType streamType : f33149d) {
                if (streamType.mValue == i9) {
                    return streamType;
                }
            }
            return STREAM_TYPE_BIG_VIDEO;
        }
    }
}

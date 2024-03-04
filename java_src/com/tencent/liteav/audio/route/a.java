package com.tencent.liteav.audio.route;
/* loaded from: classes4.dex */
public enum a {
    STOPPED(1),
    VOICE_PLAY_AND_RECORD(2),
    MEDIA_PLAY_AND_RECORD(3),
    MEDIA_PLAYBACK(4),
    VOICE_PLAYBACK(5);
    
    int mValue;

    /* renamed from: com.tencent.liteav.audio.route.a$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f30816a;

        static {
            int[] iArr = new int[a.values().length];
            f30816a = iArr;
            try {
                iArr[a.VOICE_PLAY_AND_RECORD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30816a[a.VOICE_PLAYBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30816a[a.MEDIA_PLAY_AND_RECORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f30816a[a.MEDIA_PLAYBACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    a(int i9) {
        this.mValue = i9;
    }

    public static a a(int i9) {
        a[] values;
        for (a aVar : values()) {
            if (aVar.mValue == i9) {
                return aVar;
            }
        }
        return STOPPED;
    }

    public static int a(a aVar) {
        int i9 = AnonymousClass1.f30816a[aVar.ordinal()];
        return (i9 == 1 || i9 == 2) ? 3 : 0;
    }

    public final boolean a() {
        return this == VOICE_PLAY_AND_RECORD || this == VOICE_PLAYBACK;
    }
}

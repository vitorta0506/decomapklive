package com.tencent.liteav.videoproducer.producer;

import android.util.LongSparseArray;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final LongSparseArray<a> f33253a = new LongSparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    long f33254b = -1;

    /* renamed from: c  reason: collision with root package name */
    CaptureSourceInterface.SourceType f33255c = CaptureSourceInterface.SourceType.NONE;

    /* renamed from: d  reason: collision with root package name */
    Rotation f33256d = Rotation.NORMAL;

    /* renamed from: e  reason: collision with root package name */
    VideoProducerDef.HomeOrientation f33257e = VideoProducerDef.HomeOrientation.UNSET;

    /* renamed from: f  reason: collision with root package name */
    VideoProducerDef.GSensorMode f33258f = VideoProducerDef.GSensorMode.UI_FIX_LAYOUT;

    /* renamed from: com.tencent.liteav.videoproducer.producer.e$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33259a;

        static {
            int[] iArr = new int[VideoProducerDef.HomeOrientation.values().length];
            f33259a = iArr;
            try {
                iArr[VideoProducerDef.HomeOrientation.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33259a[VideoProducerDef.HomeOrientation.UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33259a[VideoProducerDef.HomeOrientation.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33259a[VideoProducerDef.HomeOrientation.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33259a[VideoProducerDef.HomeOrientation.UNSET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        boolean f33263a = false;

        /* renamed from: b  reason: collision with root package name */
        boolean f33264b = false;
    }

    public final void a(CaptureSourceInterface.SourceType sourceType) {
        if (sourceType == null) {
            sourceType = CaptureSourceInterface.SourceType.NONE;
        }
        this.f33255c = sourceType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final a b(long j10) {
        a aVar = this.f33253a.get(j10);
        if (aVar == null) {
            a aVar2 = new a((byte) 0);
            this.f33253a.put(j10, aVar2);
            return aVar2;
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c(long j10) {
        a b10 = b(j10);
        return b10.f33260a ? b10.f33261b != GLConstants.MirrorMode.DISABLE : b10.f33261b == GLConstants.MirrorMode.ENABLE;
    }

    public final void a(long j10, GLConstants.MirrorMode mirrorMode) {
        b(j10).f33261b = mirrorMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f33260a;

        /* renamed from: b  reason: collision with root package name */
        public GLConstants.MirrorMode f33261b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f33262c;

        private a() {
            this.f33260a = false;
            this.f33261b = GLConstants.MirrorMode.AUTO;
            this.f33262c = false;
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    public final void a(long j10, boolean z10) {
        b(j10).f33262c = z10;
    }

    public final b a(long j10) {
        Rotation rotation;
        b bVar = new b();
        a b10 = b(j10);
        CaptureSourceInterface.SourceType sourceType = this.f33255c;
        if (sourceType == CaptureSourceInterface.SourceType.CUSTOM) {
            bVar.f33263a = b10.f33262c;
            return bVar;
        }
        if (sourceType == CaptureSourceInterface.SourceType.CAMERA && b10.f33262c) {
            int i9 = AnonymousClass1.f33259a[this.f33257e.ordinal()];
            if (i9 != 1 && i9 != 2) {
                if (i9 == 3 || i9 == 4) {
                    bVar.f33264b = b10.f33262c;
                    return bVar;
                } else if (i9 != 5) {
                    return bVar;
                } else {
                    if (this.f33258f != VideoProducerDef.GSensorMode.DISABLE && ((rotation = this.f33256d) == Rotation.ROTATION_90 || rotation == Rotation.ROTATION_270)) {
                        bVar.f33264b = b10.f33262c;
                    } else {
                        bVar.f33263a = b10.f33262c;
                    }
                    return bVar;
                }
            }
            bVar.f33263a = b10.f33262c;
        }
        return bVar;
    }
}

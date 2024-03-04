package com.tencent.liteav.beauty;

import android.util.SparseBooleanArray;
import com.tencent.liteav.TXLiteAVCode;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.beauty.b.l;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final C0318a[] f31042a = {new C0318a(l.a.FACE_SLIM, TXLiteAVCode.WARNING_SCREEN_CAPTURE_NOT_AUTHORIZED, "reportFaceSlimDua", (byte) 0), new C0318a(l.a.EYE_SCALE, 1205, "reportEyeScaleDua", (byte) 0), new C0318a(l.a.FACE_V_SHAPE, 1214, "reportFaceVDua", (byte) 0), new C0318a(l.a.FACE_SHORT, 1216, "reportFaceShortDua", (byte) 0), new C0318a(l.a.CHIN_SCALE, 1215, "reportChinDua", (byte) 0), new C0318a(l.a.NOSE_SLIM, 1217, "reportNoseSlimDua", (byte) 0), new C0318a(l.a.FOREHEAD, 1221, "reportForeheadDua", (byte) 0), new C0318a(l.a.EYE_DISTANCE, 1222, "reportEyeDistanceDua", (byte) 0), new C0318a(l.a.EYE_ANGLE, 1223, "reportEyeAngleDua", (byte) 0), new C0318a(l.a.MOUTH_SHAPE, 1224, "reportMouthShapeDua", (byte) 0), new C0318a(l.a.NOSE_WING, 1225, "reportNoseWingDua", (byte) 0), new C0318a(l.a.NOSE_POSITION, 1226, "reportNosePositionDua", (byte) 0), new C0318a(l.a.LIPS_THICKNESS, 1227, "reportLipsThicknessDua", (byte) 0), new C0318a(l.a.BASIC3, 1213, "reportFaceBeautyDua", (byte) 0), new C0318a(l.a.EYE_LIGHTEN, 1229, "reportEyeLightenDua", (byte) 0), new C0318a(l.a.TOOTH_WHITEN, 1230, "reportToothWhitenDua", (byte) 0), new C0318a(l.a.REMOVE_WRINKLES, 1218, "reportWrinkleRemoveDua", (byte) 0), new C0318a(l.a.REMOVE_POUNCH, 1219, "reportPounchRemoveDua", (byte) 0), new C0318a(l.a.REMOVE_SMILE_LINES, 1220, "reportSmileLinesRemoveDua", (byte) 0)};

    /* renamed from: b  reason: collision with root package name */
    private static final SparseBooleanArray f31043b = new SparseBooleanArray();

    /* renamed from: com.tencent.liteav.beauty.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class C0318a {

        /* renamed from: a  reason: collision with root package name */
        public final l.a f31044a;

        /* renamed from: b  reason: collision with root package name */
        public final int f31045b;

        /* renamed from: c  reason: collision with root package name */
        public final String f31046c;

        /* synthetic */ C0318a(l.a aVar, int i9, String str, byte b10) {
            this(aVar, i9, str);
        }

        private C0318a(l.a aVar, int i9, String str) {
            this.f31044a = aVar;
            this.f31045b = i9;
            this.f31046c = str;
        }
    }

    public static void a(IVideoReporter iVideoReporter) {
        f31043b.clear();
        a(iVideoReporter, TXLiteAVCode.WARNING_MICROPHONE_DEVICE_EMPTY, "reportSDKInit!");
    }

    public static void b(IVideoReporter iVideoReporter) {
        a(iVideoReporter, TXLiteAVCode.WARNING_SPEAKER_DEVICE_EMPTY, "reportBeautyDua");
    }

    public static void c(IVideoReporter iVideoReporter) {
        a(iVideoReporter, TXLiteAVCode.WARNING_MICROPHONE_NOT_AUTHORIZED, "reportWhiteDua");
    }

    public static void d(IVideoReporter iVideoReporter) {
        a(iVideoReporter, 1210, "reportSharpDua");
    }

    public static void e(IVideoReporter iVideoReporter) {
        a(iVideoReporter, 1204, "reportRuddyDua");
    }

    public static void f(IVideoReporter iVideoReporter) {
        a(iVideoReporter, 1208, "reportFilterImageDua");
    }

    public static void g(IVideoReporter iVideoReporter) {
        a(iVideoReporter, 1211, "reportTemplateDua");
    }

    public static void h(IVideoReporter iVideoReporter) {
        a(iVideoReporter, 1212, "reportWarterMarkDua");
    }

    public static void a(IVideoReporter iVideoReporter, l.a aVar) {
        C0318a[] c0318aArr;
        for (C0318a c0318a : f31042a) {
            if (c0318a.f31044a == aVar) {
                a(iVideoReporter, c0318a.f31045b, c0318a.f31046c);
                return;
            }
        }
    }

    private static synchronized void a(IVideoReporter iVideoReporter, int i9, String str) {
        synchronized (a.class) {
            SparseBooleanArray sparseBooleanArray = f31043b;
            if (sparseBooleanArray.get(i9)) {
                return;
            }
            sparseBooleanArray.put(i9, true);
            LiteavLog.i("ReportDauManager", "report DAU eventId: %d", Integer.valueOf(i9));
            if (iVideoReporter != null) {
                h.b bVar = h.b.EVT_VIDEO_PREPROCESS_COSMETIC_FIRST_USE;
                iVideoReporter.notifyEvent(bVar, "report DAU eventId:" + i9 + " errorInfo:" + str, new Object[0]);
            }
        }
    }
}

package com.tencent.liteav.videoproducer.producer;

import android.content.Context;
import android.os.Looper;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import com.tencent.liteav.base.util.v;
import com.tencent.liteav.videobase.utils.Rotation;
/* loaded from: classes4.dex */
public final class d extends OrientationEventListener implements v.a {

    /* renamed from: a  reason: collision with root package name */
    private final a f33248a;

    /* renamed from: b  reason: collision with root package name */
    private final Display f33249b;

    /* renamed from: c  reason: collision with root package name */
    private Rotation f33250c;

    /* renamed from: d  reason: collision with root package name */
    private int f33251d;

    /* renamed from: e  reason: collision with root package name */
    private com.tencent.liteav.base.util.v f33252e;

    /* loaded from: classes4.dex */
    public interface a {
        void a(Rotation rotation, int i9);
    }

    public d(Context context, a aVar) {
        super(context);
        this.f33248a = aVar;
        this.f33249b = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    private static int a(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return i9 != 3 ? 0 : 270;
                }
                return 180;
            }
            return 90;
        }
        return 0;
    }

    private void a() {
        a aVar = this.f33248a;
        if (aVar != null) {
            aVar.a(this.f33250c, a(this.f33251d));
        }
    }

    @Override // android.view.OrientationEventListener
    public final void disable() {
        super.disable();
        com.tencent.liteav.base.util.v vVar = this.f33252e;
        if (vVar != null) {
            vVar.a();
            this.f33252e = null;
        }
    }

    @Override // android.view.OrientationEventListener
    public final void enable() {
        super.enable();
        if (this.f33252e == null) {
            com.tencent.liteav.base.util.v vVar = new com.tencent.liteav.base.util.v(Looper.getMainLooper(), this);
            this.f33252e = vVar;
            vVar.a(0, 1000);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    @Override // android.view.OrientationEventListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onOrientationChanged(int r2) {
        /*
            r1 = this;
            r0 = -1
            if (r2 != r0) goto L4
            return
        L4:
            r0 = 45
            if (r2 <= r0) goto L1d
            r0 = 135(0x87, float:1.89E-43)
            if (r2 > r0) goto Lf
            com.tencent.liteav.videobase.utils.Rotation r2 = com.tencent.liteav.videobase.utils.Rotation.ROTATION_90
            goto L1f
        Lf:
            r0 = 225(0xe1, float:3.15E-43)
            if (r2 > r0) goto L16
            com.tencent.liteav.videobase.utils.Rotation r2 = com.tencent.liteav.videobase.utils.Rotation.ROTATION_180
            goto L1f
        L16:
            r0 = 315(0x13b, float:4.41E-43)
            if (r2 > r0) goto L1d
            com.tencent.liteav.videobase.utils.Rotation r2 = com.tencent.liteav.videobase.utils.Rotation.ROTATION_270
            goto L1f
        L1d:
            com.tencent.liteav.videobase.utils.Rotation r2 = com.tencent.liteav.videobase.utils.Rotation.NORMAL
        L1f:
            com.tencent.liteav.videobase.utils.Rotation r0 = r1.f33250c
            if (r0 == r2) goto L30
            r1.f33250c = r2
            android.view.Display r2 = r1.f33249b
            int r2 = r2.getRotation()
            r1.f33251d = r2
            r1.a()
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.producer.d.onOrientationChanged(int):void");
    }

    @Override // com.tencent.liteav.base.util.v.a
    public final void onTimeout() {
        int rotation = this.f33249b.getRotation();
        if (this.f33251d != rotation) {
            this.f33251d = rotation;
            a();
        }
    }
}

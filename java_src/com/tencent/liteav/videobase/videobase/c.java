package com.tencent.liteav.videobase.videobase;

import androidx.annotation.NonNull;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.videobase.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<com.tencent.liteav.videobase.videobase.a, f> f31928a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.e f31929b;

    /* loaded from: classes4.dex */
    public interface a {
        void onFrameConverted(int i9, PixelFrame pixelFrame);
    }

    public final void a(com.tencent.liteav.videobase.videobase.a aVar, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType, int i9, a aVar2) {
        f fVar = this.f31928a.get(aVar);
        if (fVar == null) {
            fVar = new f(aVar);
            com.tencent.liteav.videobase.frame.e eVar = this.f31929b;
            if (eVar != null) {
                fVar.a(eVar);
            }
            this.f31928a.put(aVar, fVar);
        }
        List<f.a> list = fVar.f31934e.get(pixelFormatType);
        if (list == null) {
            list = new ArrayList<>();
            fVar.f31934e.put(pixelFormatType, list);
        }
        for (f.a aVar3 : list) {
            if (aVar3.f31943b == i9 && aVar3.f31944c == aVar2) {
                return;
            }
        }
        list.add(new f.a(pixelBufferType, i9, aVar2));
    }

    public final void a(int i9, a aVar) {
        ArrayList<com.tencent.liteav.videobase.videobase.a> arrayList = new ArrayList();
        for (Map.Entry<com.tencent.liteav.videobase.videobase.a, f> entry : this.f31928a.entrySet()) {
            entry.getValue().a(i9, aVar);
            if (!(!entry.getValue().f31934e.isEmpty())) {
                arrayList.add(entry.getKey());
            }
        }
        for (com.tencent.liteav.videobase.videobase.a aVar2 : arrayList) {
            f fVar = this.f31928a.get(aVar2);
            if (fVar != null) {
                fVar.a();
            }
            this.f31928a.remove(aVar2);
        }
    }

    public final void a(@NonNull com.tencent.liteav.videobase.frame.e eVar) {
        this.f31929b = eVar;
        for (f fVar : this.f31928a.values()) {
            fVar.a(eVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00fe A[EDGE_INSN: B:99:0x00fe->B:48:0x00fe ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r25, com.tencent.liteav.videobase.frame.d r27) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videobase.videobase.c.a(long, com.tencent.liteav.videobase.frame.d):void");
    }

    public final void a() {
        for (f fVar : this.f31928a.values()) {
            fVar.a();
        }
    }
}

package com.tencent.liteav.videobase.a;

import android.opengl.GLES20;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import java.lang.reflect.Array;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public abstract class k extends b {

    /* renamed from: a  reason: collision with root package name */
    protected final a f31681a;

    /* renamed from: b  reason: collision with root package name */
    private final FloatBuffer f31682b;

    /* renamed from: c  reason: collision with root package name */
    private final FloatBuffer f31683c;

    /* renamed from: d  reason: collision with root package name */
    private final List<a> f31684d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<a, Integer> f31685e;

    /* renamed from: f  reason: collision with root package name */
    private a f31686f;

    /* renamed from: g  reason: collision with root package name */
    private int[] f31687g;

    /* renamed from: h  reason: collision with root package name */
    private int f31688h;

    /* renamed from: i  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.d f31689i;

    /* renamed from: j  reason: collision with root package name */
    private FloatBuffer f31690j;

    /* renamed from: k  reason: collision with root package name */
    private FloatBuffer f31691k;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final b f31692a;

        /* renamed from: b  reason: collision with root package name */
        final Map<String, a> f31693b;

        /* renamed from: c  reason: collision with root package name */
        com.tencent.liteav.videobase.frame.d f31694c;

        /* renamed from: d  reason: collision with root package name */
        int f31695d;

        /* synthetic */ a(b bVar, byte b10) {
            this(bVar);
        }

        public final void a(a aVar) {
            aVar.f31695d++;
            this.f31693b.put("input-texture-name-for-on-draw", aVar);
        }

        private a(b bVar) {
            this.f31693b = new HashMap();
            this.f31694c = null;
            this.f31695d = 0;
            this.f31692a = bVar;
        }

        public final void a(String str, a aVar) {
            aVar.f31695d++;
            this.f31693b.put(str, aVar);
        }
    }

    public k() {
        ArrayList arrayList = new ArrayList();
        this.f31684d = arrayList;
        this.f31685e = new HashMap();
        this.f31682b = OpenGlUtils.createNormalCubeVerticesBuffer();
        this.f31683c = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);
        a aVar = new a(null, (byte) 0);
        this.f31681a = aVar;
        arrayList.add(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a a(b bVar) {
        a aVar = new a(bVar, (byte) 0);
        this.f31684d.add(aVar);
        return aVar;
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onDraw(int i9, com.tencent.liteav.videobase.frame.d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (isInitialized()) {
            runPendingOnDrawTasks();
            this.f31688h = i9;
            this.f31689i = dVar;
            this.f31690j = floatBuffer;
            this.f31691k = floatBuffer2;
            Arrays.fill(this.f31687g, 0);
            a(this.f31686f);
            Iterator<a> it = this.f31684d.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.liteav.videobase.a.b
    public void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        for (a aVar : this.f31684d) {
            b bVar = aVar.f31692a;
            if (bVar != null) {
                bVar.initialize(eVar);
            }
        }
        for (int i9 = 0; i9 < this.f31684d.size(); i9++) {
            this.f31685e.put(this.f31684d.get(i9), Integer.valueOf(i9));
        }
        int size = this.f31684d.size();
        ArrayList<Integer> arrayList = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(Integer.valueOf(i10));
        }
        boolean[][] zArr = (boolean[][]) Array.newInstance(boolean.class, size, size);
        for (int i11 = 0; i11 < this.f31684d.size(); i11++) {
            Arrays.fill(zArr[i11], false);
        }
        for (a aVar2 : this.f31684d) {
            int intValue = this.f31685e.get(aVar2).intValue();
            for (a aVar3 : aVar2.f31693b.values()) {
                zArr[this.f31685e.get(aVar3).intValue()][intValue] = true;
            }
        }
        int[] iArr = new int[size];
        int[] iArr2 = new int[size];
        ArrayList<Integer> arrayList2 = new ArrayList();
        while (arrayList.size() > 1) {
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            arrayList2.clear();
            for (int i12 = 0; i12 < size; i12++) {
                for (int i13 = 0; i13 < size; i13++) {
                    if (zArr[i12][i13]) {
                        iArr2[i12] = iArr2[i12] + 1;
                        iArr[i13] = iArr[i13] + 1;
                    }
                }
            }
            for (Integer num : arrayList) {
                int intValue2 = num.intValue();
                if (iArr[intValue2] == 0 && iArr2[intValue2] != 0) {
                    arrayList2.add(Integer.valueOf(intValue2));
                }
            }
            if (arrayList2.isEmpty()) {
                break;
            }
            arrayList.removeAll(arrayList2);
            for (Integer num2 : arrayList2) {
                Arrays.fill(zArr[num2.intValue()], false);
            }
        }
        a aVar4 = arrayList.size() == 1 ? this.f31684d.get(((Integer) arrayList.get(0)).intValue()) : null;
        this.f31686f = aVar4;
        if (aVar4 != null) {
            this.f31687g = new int[this.f31684d.size()];
            return;
        }
        throw new RuntimeException("Directed acyclic graph can't find a final node.");
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        for (a aVar : this.f31684d) {
            b bVar = aVar.f31692a;
            if (bVar != null) {
                bVar.onOutputSizeChanged(i9, i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.liteav.videobase.a.b
    public void onUninit() {
        super.onUninit();
        for (a aVar : this.f31684d) {
            b bVar = aVar.f31692a;
            if (bVar != null) {
                bVar.uninitialize();
            }
        }
    }

    private void a(a aVar) {
        for (a aVar2 : aVar.f31693b.values()) {
            if (aVar2 != this.f31681a && aVar2.f31694c == null) {
                a(aVar2);
            }
        }
        b bVar = aVar.f31692a;
        if (bVar instanceof j) {
            j jVar = (j) bVar;
            for (Map.Entry<String, a> entry : aVar.f31693b.entrySet()) {
                if (!"input-texture-name-for-on-draw".equals(entry.getKey())) {
                    if (entry.getValue() == this.f31681a) {
                        jVar.setInputTexture(entry.getKey(), this.f31688h);
                    } else {
                        jVar.setInputTexture(entry.getKey(), entry.getValue().f31694c.a());
                    }
                }
            }
        }
        com.tencent.liteav.videobase.frame.d dVar = this.f31689i;
        q qVar = this.mOutputSize;
        int i9 = qVar.f31029a;
        int i10 = qVar.f31030b;
        if (aVar != this.f31686f) {
            i9 = aVar.f31692a.getOutputSize().f31029a;
            i10 = aVar.f31692a.getOutputSize().f31030b;
            dVar = this.mTexturePool.a(i9, i10);
            aVar.f31694c = dVar;
        }
        a aVar3 = aVar.f31693b.get("input-texture-name-for-on-draw");
        GLES20.glViewport(0, 0, i9, i10);
        if (aVar3 == this.f31681a) {
            aVar.f31692a.onDraw(this.f31688h, dVar, this.f31690j, this.f31691k);
        } else {
            aVar.f31692a.onDraw(aVar3.f31694c.a(), dVar, this.f31682b, this.f31683c);
        }
        for (a aVar4 : aVar.f31693b.values()) {
            int intValue = this.f31685e.get(aVar4).intValue();
            int[] iArr = this.f31687g;
            iArr[intValue] = iArr[intValue] + 1;
            com.tencent.liteav.videobase.frame.d dVar2 = aVar4.f31694c;
            if (dVar2 != null && iArr[intValue] == aVar4.f31695d) {
                dVar2.release();
                aVar4.f31694c = null;
            }
        }
    }
}

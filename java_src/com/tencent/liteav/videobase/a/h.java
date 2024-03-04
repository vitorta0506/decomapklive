package com.tencent.liteav.videobase.a;

import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class h extends b {
    private static final String TAG = "TXCGPUImageFilterChain";
    private final List<b> mFilters = new ArrayList();
    private final Map<b, List<a>> mInterceptorsBeforeFilter = new HashMap();
    @NonNull
    private final List<a> mLastInterceptors = new ArrayList();
    private long mTimestamp = 0;
    private final FloatBuffer mNormalCubeVerticesBuffer = OpenGlUtils.createNormalCubeVerticesBuffer();
    private final FloatBuffer mNormalTextureCoordsBuffer = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);

    private com.tencent.liteav.videobase.frame.d doIntercept(List<a> list, com.tencent.liteav.videobase.frame.d dVar) {
        if (list == null || list.isEmpty()) {
            return dVar;
        }
        com.tencent.liteav.videobase.frame.d dVar2 = null;
        Iterator<a> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            com.tencent.liteav.videobase.frame.d a10 = it.next().a(this.mTimestamp, dVar2 == null ? dVar : dVar2);
            if (a10 == null) {
                LiteavLog.e(TAG, "doIntercept return null value");
                break;
            }
            if (dVar2 != null && a10 != dVar2) {
                dVar2.release();
            }
            dVar2 = a10;
        }
        return dVar2;
    }

    private com.tencent.liteav.videobase.frame.d doLastIntercept(com.tencent.liteav.videobase.frame.d dVar) {
        if (this.mLastInterceptors.isEmpty()) {
            return dVar;
        }
        if (dVar == null) {
            LiteavLog.e(TAG, "last interceptors intecept on surface.");
            return null;
        }
        return doIntercept(this.mLastInterceptors, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initFiltersAndInterceptors() {
        for (b bVar : this.mFilters) {
            if (!bVar.isInitialized()) {
                bVar.initialize(this.mTexturePool);
            }
        }
        for (List<a> list : this.mInterceptorsBeforeFilter.values()) {
            if (list != null && !list.isEmpty()) {
                for (a aVar : list) {
                    if (!aVar.f31665a) {
                        aVar.a(this.mTexturePool);
                    }
                }
            }
        }
        for (a aVar2 : this.mLastInterceptors) {
            if (!aVar2.f31665a) {
                aVar2.a(this.mTexturePool);
            }
        }
    }

    private void initFiltersAndInterceptorsOnDraw() {
        runOnDraw(i.a(this));
    }

    public synchronized void addFilter(b bVar) {
        if (bVar == null) {
            return;
        }
        if (!this.mLastInterceptors.isEmpty()) {
            if (this.mFilters.size() == 0) {
                this.mFilters.add(new b());
                LiteavLog.w(TAG, "add COPY filter to filter chain.");
            }
            this.mInterceptorsBeforeFilter.put(bVar, new ArrayList(this.mLastInterceptors));
            this.mLastInterceptors.clear();
        }
        this.mFilters.add(bVar);
        initFiltersAndInterceptorsOnDraw();
    }

    public synchronized void addInterceptor(a aVar) {
        if (aVar != null) {
            this.mLastInterceptors.add(aVar);
            initFiltersAndInterceptorsOnDraw();
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onDraw(int i9, com.tencent.liteav.videobase.frame.d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (isInitialized()) {
            runPendingOnDrawTasks();
            if (i9 == -1) {
                return;
            }
            List<b> list = this.mFilters;
            int size = list.size();
            com.tencent.liteav.videobase.frame.d dVar2 = null;
            int i10 = 0;
            while (i10 < size) {
                b bVar = list.get(i10);
                q outputSize = bVar.getOutputSize();
                if (dVar2 != null) {
                    com.tencent.liteav.videobase.frame.d doIntercept = doIntercept(this.mInterceptorsBeforeFilter.get(bVar), dVar2);
                    if (doIntercept != null && doIntercept != dVar2) {
                        dVar2.release();
                    }
                    if (doIntercept != null) {
                        doIntercept.a(dVar.d());
                    }
                    dVar2 = doIntercept;
                }
                boolean z10 = true;
                boolean z11 = i10 < size + (-1);
                z10 = (!z11 || com.tencent.liteav.videobase.utils.c.a(this.mInterceptorsBeforeFilter.get(list.get(i10 + 1)))) ? false : false;
                if (z11 && outputSize.equals(this.mOutputSize) && bVar.canBeSkipped() && (dVar2 != null || !z10)) {
                    bVar.onFilterBeenSkipped();
                } else {
                    com.tencent.liteav.videobase.frame.d a10 = z11 ? this.mTexturePool.a(outputSize.f31029a, outputSize.f31030b) : dVar;
                    OpenGlUtils.glViewport(0, 0, outputSize.f31029a, outputSize.f31030b);
                    int a11 = dVar2 == null ? i9 : dVar2.a();
                    if (i10 == 0) {
                        bVar.onDraw(a11, a10, floatBuffer, floatBuffer2);
                    } else {
                        bVar.onDraw(a11, a10, this.mNormalCubeVerticesBuffer, this.mNormalTextureCoordsBuffer);
                    }
                    if (dVar2 != null) {
                        dVar2.release();
                    }
                    if (a10 != null) {
                        a10.a(dVar.d());
                    }
                    dVar2 = a10;
                }
                i10++;
            }
            if (dVar2 != null && dVar2 != dVar) {
                dVar2.release();
            }
            com.tencent.liteav.videobase.frame.d doLastIntercept = doLastIntercept(dVar);
            if (doLastIntercept == null || doLastIntercept == dVar) {
                return;
            }
            OpenGlUtils.glViewport(0, 0, doLastIntercept.b(), doLastIntercept.c());
            super.onDraw(doLastIntercept.a(), dVar, this.mNormalCubeVerticesBuffer, this.mNormalTextureCoordsBuffer);
            doLastIntercept.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.liteav.videobase.a.b
    public void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        initFiltersAndInterceptors();
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        for (b bVar : this.mFilters) {
            bVar.onOutputSizeChanged(i9, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.liteav.videobase.a.b
    public void onUninit() {
        super.onUninit();
        for (b bVar : this.mFilters) {
            bVar.uninitialize();
        }
        for (List<a> list : this.mInterceptorsBeforeFilter.values()) {
            if (list != null && !list.isEmpty()) {
                for (a aVar : list) {
                    aVar.a();
                }
            }
        }
        for (a aVar2 : this.mLastInterceptors) {
            aVar2.a();
        }
    }

    public synchronized void removeAllFilterAndInterceptor() {
        this.mFilters.clear();
        this.mInterceptorsBeforeFilter.clear();
        this.mLastInterceptors.clear();
    }

    public void setTimestamp(long j10) {
        this.mTimestamp = j10;
    }
}

package com.tencent.thumbplayer.f;

import android.content.Context;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizerListener;
import com.tencent.thumbplayer.api.richmedia.TPRichMediaFeature;
import com.tencent.thumbplayer.api.richmedia.TPRichMediaFeatureData;
import com.tencent.thumbplayer.api.richmedia.TPRichMediaRequestExtraInfo;
import com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaInnerProcessorCallback;
import com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor;
import com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeature;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeatureData;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaProcessor;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaRequestExtraInfo;
import com.tencent.thumbplayer.f.a;
import com.tencent.thumbplayer.tplayer.plugins.c;
/* loaded from: classes4.dex */
public class b implements com.tencent.thumbplayer.f.a {

    /* renamed from: a  reason: collision with root package name */
    private ITPNativeRichMediaProcessor f33939a;

    /* renamed from: b  reason: collision with root package name */
    private a f33940b;

    /* renamed from: c  reason: collision with root package name */
    private C0349b f33941c;

    /* renamed from: d  reason: collision with root package name */
    private c f33942d;

    /* loaded from: classes4.dex */
    class a implements ITPNativeRichMediaInnerProcessorCallback {

        /* renamed from: b  reason: collision with root package name */
        private a.InterfaceC0346a f33954b;

        a() {
        }

        public void a(a.InterfaceC0346a interfaceC0346a) {
            this.f33954b = interfaceC0346a;
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaInnerProcessorCallback
        public long onGetCurrentPositionMs(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor) {
            a.InterfaceC0346a interfaceC0346a = this.f33954b;
            if (interfaceC0346a != null) {
                long a10 = interfaceC0346a.a(b.this);
                b.this.a(311, (int) a10, 0, null, null);
                return a10;
            }
            return -1L;
        }
    }

    /* renamed from: com.tencent.thumbplayer.f.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0349b implements ITPNativeRichMediaProcessorCallback {

        /* renamed from: b  reason: collision with root package name */
        private ITPRichMediaSynchronizerListener f33961b;

        C0349b() {
        }

        public void a(ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener) {
            this.f33961b = iTPRichMediaSynchronizerListener;
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onDeselectFeatureSuccess(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9) {
            b.this.a(305, i9, 0, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.f33961b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onDeselectFeatureSuccess(b.this, i9);
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaError(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9) {
            b.this.a(308, i9, 0, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.f33961b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaError(b.this, i9);
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaFeatureData(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9, TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData) {
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.f33961b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaFeatureData(b.this, i9, new TPRichMediaFeatureData(tPNativeRichMediaFeatureData));
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaFeatureFailure(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9, int i10) {
            b.this.a(310, i9, i10, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.f33961b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaFeatureFailure(b.this, i9, i10);
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaInfo(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9, long j10, long j11, long j12, Object obj) {
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.f33961b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaInfo(b.this, i9, j10, j11, j12, obj);
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaPrepared(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor) {
            b.this.a(301, 0, 0, null, b.this.getFeatures());
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.f33961b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaPrepared(b.this);
            }
        }

        @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onSelectFeatureSuccess(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9) {
            b.this.a(303, i9, 0, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.f33961b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onSelectFeatureSuccess(b.this, i9);
            }
        }
    }

    public b(Context context) {
        this.f33939a = new TPNativeRichMediaProcessor(context);
        a aVar = new a();
        this.f33940b = aVar;
        this.f33939a.setInnerProcessorCallback(aVar);
        C0349b c0349b = new C0349b();
        this.f33941c = c0349b;
        this.f33939a.setProcessorCallback(c0349b);
        c cVar = new c();
        this.f33942d = cVar;
        cVar.a(new com.tencent.thumbplayer.f.b.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, int i10, int i11, String str, Object obj) {
        this.f33942d.a(i9, i10, i11, str, obj);
    }

    @Override // com.tencent.thumbplayer.f.a
    public void a(float f10) {
        this.f33939a.setPlaybackRate(f10);
    }

    @Override // com.tencent.thumbplayer.f.a
    public void a(long j10) {
        this.f33939a.seek(j10);
    }

    @Override // com.tencent.thumbplayer.f.a
    public void a(a.InterfaceC0346a interfaceC0346a) {
        this.f33940b.a(interfaceC0346a);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void deselectFeatureAsync(int i9) {
        this.f33939a.deselectFeatureAsync(i9);
        a(304, i9, 0, null, null);
    }

    protected void finalize() {
        this.f33939a.setInnerProcessorCallback(null);
        this.f33939a.setProcessorCallback(null);
        this.f33939a.release();
        this.f33941c.a(null);
        this.f33940b.a(null);
        super.finalize();
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public TPRichMediaFeature[] getFeatures() {
        TPNativeRichMediaFeature[] features = this.f33939a.getFeatures();
        if (features == null) {
            return new TPRichMediaFeature[0];
        }
        TPRichMediaFeature[] tPRichMediaFeatureArr = new TPRichMediaFeature[features.length];
        for (int i9 = 0; i9 < features.length && features[i9] != null; i9++) {
            tPRichMediaFeatureArr[i9] = new TPRichMediaFeature(features[i9]);
        }
        return tPRichMediaFeatureArr;
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void prepareAsync() {
        this.f33939a.prepareAsync();
        a(300, 0, 0, null, null);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void release() {
        this.f33939a.setInnerProcessorCallback(null);
        this.f33939a.setProcessorCallback(null);
        this.f33939a.release();
        this.f33941c.a(null);
        this.f33940b.a(null);
        a(307, 0, 0, null, null);
        this.f33942d.c();
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void reset() {
        this.f33939a.reset();
        a(306, 0, 0, null, null);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void selectFeatureAsync(int i9, TPRichMediaRequestExtraInfo tPRichMediaRequestExtraInfo) {
        TPNativeRichMediaRequestExtraInfo tPNativeRichMediaRequestExtraInfo = new TPNativeRichMediaRequestExtraInfo();
        tPNativeRichMediaRequestExtraInfo.setActOnOptional(tPRichMediaRequestExtraInfo.getActOnOption());
        this.f33939a.selectFeatureAsync(i9, tPNativeRichMediaRequestExtraInfo);
        a(302, i9, 0, null, null);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void setListener(ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener) {
        this.f33941c.a(iTPRichMediaSynchronizerListener);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer
    public void setRichMediaSource(String str) {
        this.f33939a.setRichMediaSource(str);
        a(309, 0, 0, str, null);
    }
}

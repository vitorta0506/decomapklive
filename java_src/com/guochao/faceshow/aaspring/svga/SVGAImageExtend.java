package com.guochao.faceshow.aaspring.svga;

import android.content.Context;
import android.util.AttributeSet;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAVideoEntity;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes3.dex */
public class SVGAImageExtend extends SVGAImageView {

    /* renamed from: a  reason: collision with root package name */
    private b f23413a;

    /* loaded from: classes3.dex */
    class a implements SVGACallback {

        /* renamed from: a  reason: collision with root package name */
        SVGACallback f23414a;

        public a(SVGACallback sVGACallback) {
            this.f23414a = sVGACallback;
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onFinished() {
            if (SVGAImageExtend.this.getLoops() == 1 && SVGAImageExtend.this.getClearsAfterStop() && SVGAImageExtend.this.getMVideoItem() != null) {
                SVGAImageExtend.this.getMVideoItem().release();
            }
            SVGACallback sVGACallback = this.f23414a;
            if (sVGACallback != null) {
                sVGACallback.onFinished();
            }
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onPause() {
            SVGACallback sVGACallback = this.f23414a;
            if (sVGACallback != null) {
                sVGACallback.onPause();
            }
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onRepeat() {
            SVGACallback sVGACallback = this.f23414a;
            if (sVGACallback != null) {
                sVGACallback.onRepeat();
            }
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onStep(int i9, double d10) {
            SVGACallback sVGACallback = this.f23414a;
            if (sVGACallback != null) {
                sVGACallback.onStep(i9, d10);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a();
    }

    public SVGAImageExtend(@Nullable Context context) {
        super(context);
        b();
    }

    private void b() {
    }

    @Override // com.opensource.svgaplayer.SVGAImageView
    public void setCallback(@Nullable SVGACallback sVGACallback) {
        super.setCallback(new a(sVGACallback));
    }

    public void setMediaSource(b bVar) {
        this.f23413a = bVar;
        bVar.a();
    }

    @Override // com.opensource.svgaplayer.SVGAImageView
    public void setVideoItem(@Nullable SVGAVideoEntity sVGAVideoEntity) {
        super.setVideoItem(sVGAVideoEntity);
        startAnimation();
    }

    public SVGAImageExtend(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public SVGAImageExtend(@Nullable Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        b();
    }
}

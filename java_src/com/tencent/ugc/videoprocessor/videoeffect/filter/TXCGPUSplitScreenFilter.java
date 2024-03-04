package com.tencent.ugc.videoprocessor.videoeffect.filter;

import android.opengl.GLES20;
import com.tencent.liteav.videobase.frame.d;
import com.tencent.ugc.videoprocessor.videoeffect.TXCGPUEffectFilterBase;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public class TXCGPUSplitScreenFilter extends TXCGPUEffectFilterBase {
    private static final int DURATION_SPLIT_SCREEN = 1000;
    private SplitSceenParam mSplitScreenParam;
    private int mSpliteNumber = 0;
    private final int[] mSupportSplitNumber = {1, 4, 9};
    private a[] mSubWindowPosition = null;

    /* loaded from: classes4.dex */
    public static class SplitSceenParam extends TXCGPUEffectFilterBase.VideoEffectParams {
        public int splitScreenNumber;
    }

    private void updateParams(SplitSceenParam splitSceenParam) {
        int i9 = splitSceenParam.splitScreenNumber;
        if (i9 != this.mSpliteNumber) {
            int[] iArr = this.mSupportSplitNumber;
            int i10 = 0;
            if (i9 == iArr[0] || i9 == iArr[1] || i9 == iArr[2]) {
                this.mSpliteNumber = i9;
                this.mSubWindowPosition = new a[i9];
                for (int i11 = 0; i11 < this.mSpliteNumber; i11++) {
                    this.mSubWindowPosition[i11] = new a((byte) 0);
                }
                int i12 = getOutputSize().f31029a;
                int i13 = getOutputSize().f31030b;
                int i14 = splitSceenParam.splitScreenNumber;
                int[] iArr2 = this.mSupportSplitNumber;
                if (i14 == iArr2[0]) {
                    a[] aVarArr = this.mSubWindowPosition;
                    aVarArr[0].f35081a = 0;
                    aVarArr[0].f35082b = 0;
                    aVarArr[0].f35083c = i12;
                    aVarArr[0].f35084d = i13;
                } else if (i14 == iArr2[1]) {
                    while (i10 < this.mSupportSplitNumber[1]) {
                        a[] aVarArr2 = this.mSubWindowPosition;
                        aVarArr2[i10].f35081a = ((i10 % 2) * i12) / 2;
                        aVarArr2[i10].f35082b = ((i10 / 2) * i13) / 2;
                        aVarArr2[i10].f35083c = i12 / 2;
                        aVarArr2[i10].f35084d = i13 / 2;
                        i10++;
                    }
                } else if (i14 == iArr2[2]) {
                    while (i10 < this.mSupportSplitNumber[2]) {
                        a[] aVarArr3 = this.mSubWindowPosition;
                        aVarArr3[i10].f35081a = ((i10 % 3) * i12) / 3;
                        aVarArr3[i10].f35082b = ((i10 / 3) * i13) / 3;
                        aVarArr3[i10].f35083c = i12 / 3;
                        aVarArr3[i10].f35084d = i13 / 3;
                        i10++;
                    }
                }
            }
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onDraw(int i9, d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        a[] aVarArr;
        if (this.mSubWindowPosition == null) {
            super.onDraw(i9, dVar, floatBuffer, floatBuffer2);
        }
        for (a aVar : this.mSubWindowPosition) {
            if (aVar != null) {
                GLES20.glViewport(aVar.f35081a, aVar.f35082b, aVar.f35083c, aVar.f35084d);
            }
            super.onDraw(i9, dVar, floatBuffer, floatBuffer2);
        }
        GLES20.glViewport(0, 0, getOutputSize().f31029a, getOutputSize().f31030b);
    }

    @Override // com.tencent.ugc.videoprocessor.videoeffect.TXCGPUEffectFilterBase
    public void setNextFrameTimestamp(long j10) {
        super.setNextFrameTimestamp(j10);
        if (this.mSplitScreenParam == null) {
            this.mSplitScreenParam = new SplitSceenParam();
        }
        long abs = Math.abs(j10 - this.mEffectStartTime);
        if (abs <= 1000) {
            this.mSplitScreenParam.splitScreenNumber = 4;
        } else if (abs <= 2000) {
            this.mSplitScreenParam.splitScreenNumber = 9;
        } else {
            this.mEffectStartTime = -1L;
        }
        updateParams(this.mSplitScreenParam);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f35081a;

        /* renamed from: b  reason: collision with root package name */
        public int f35082b;

        /* renamed from: c  reason: collision with root package name */
        public int f35083c;

        /* renamed from: d  reason: collision with root package name */
        public int f35084d;

        private a() {
            this.f35081a = 0;
            this.f35082b = 0;
            this.f35083c = 0;
            this.f35084d = 0;
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }
}

package com.tencent.liteav.videoproducer.preprocessor;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.facebook.internal.security.CertificateUtil;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.beauty.b.l;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import java.util.HashMap;
import java.util.Map;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class BeautyProcessor extends com.tencent.liteav.videobase.a.h {
    private static final String TAG = "TXCBeautyManager";
    private a mBeautyManagerStatusListener;
    private final boolean mIsEnterPriseProEnabled;
    @NonNull
    private final IVideoReporter mReporter;
    private com.tencent.liteav.videobase.a.b mCurrentBeautyFilter = null;
    private int mBeautyStyle = -1;
    private float mBeautyLevel = 0.0f;
    private float mWhitenessLevel = 0.0f;
    private float mRuddyLevel = 0.0f;
    private float mSharpnessLevel = 0.4f;
    private boolean mIsPerformanceMode = true;
    private float mUserSetSharpnessLevel = 0.0f;
    private final Map<String, String> mBeautyStats = new HashMap();
    private final SparseArray<com.tencent.liteav.videobase.a.b> mBeautyFilters = new SparseArray<>();
    private final com.tencent.liteav.beauty.b.l mMotionFilter = new com.tencent.liteav.beauty.b.l() { // from class: com.tencent.liteav.a.a.1
        @Override // com.tencent.liteav.videobase.a.b
        public final boolean canBeSkipped() {
            return true;
        }
    };

    /* loaded from: classes4.dex */
    public interface a {
        void onBeautyStatsChanged(String str);
    }

    public BeautyProcessor(@NonNull Context context, boolean z10, @NonNull IVideoReporter iVideoReporter) {
        this.mReporter = iVideoReporter;
        this.mIsEnterPriseProEnabled = z10;
    }

    private float getSharpnessLevel() {
        float f10 = this.mUserSetSharpnessLevel;
        if (f10 != 0.0f) {
            return f10;
        }
        if (!this.mIsPerformanceMode) {
            com.tencent.liteav.base.util.q qVar = this.mOutputSize;
            if (Math.min(qVar.f31029a, qVar.f31030b) >= 540) {
                return 0.4f;
            }
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setBeautyLevel$1(BeautyProcessor beautyProcessor, float f10) {
        beautyProcessor.updateBeautyInternal(beautyProcessor.mBeautyStyle, f10, beautyProcessor.mWhitenessLevel, beautyProcessor.mRuddyLevel, beautyProcessor.mSharpnessLevel);
        if (f10 > 0.0f) {
            com.tencent.liteav.beauty.a.b(beautyProcessor.mReporter);
        }
        beautyProcessor.updateStatsInternal("beautyLevel", f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setPerformanceMode$6(BeautyProcessor beautyProcessor, boolean z10) {
        beautyProcessor.mIsPerformanceMode = z10;
        beautyProcessor.updateSharpenLevelInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setRuddyLevel$4(BeautyProcessor beautyProcessor, float f10) {
        beautyProcessor.updateBeautyInternal(beautyProcessor.mBeautyStyle, beautyProcessor.mBeautyLevel, beautyProcessor.mWhitenessLevel, f10, beautyProcessor.mSharpnessLevel);
        if (f10 > 0.0f) {
            com.tencent.liteav.beauty.a.e(beautyProcessor.mReporter);
        }
        beautyProcessor.updateStatsInternal("ruddyLevel", f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setSharpenLevel$3(BeautyProcessor beautyProcessor, float f10) {
        beautyProcessor.mUserSetSharpnessLevel = com.tencent.liteav.base.util.g.a(f10, 0.0f, 0.9f);
        LiteavLog.d(TAG, "mUserSetSharpnessLevel: " + beautyProcessor.mUserSetSharpnessLevel);
        beautyProcessor.updateSharpenLevelInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setWhitenessLevel$2(BeautyProcessor beautyProcessor, float f10) {
        beautyProcessor.updateBeautyInternal(beautyProcessor.mBeautyStyle, beautyProcessor.mBeautyLevel, f10, beautyProcessor.mRuddyLevel, beautyProcessor.mSharpnessLevel);
        if (f10 > 0.0f) {
            com.tencent.liteav.beauty.a.c(beautyProcessor.mReporter);
        }
        beautyProcessor.updateStatsInternal("whiteLevel", f10);
    }

    private void setScalableCosmeticTypeLevel(l.a aVar, int i9) {
        LiteavLog.d(TAG, "setScalableCosmeticTypeLevel %s %d", aVar, Integer.valueOf(i9));
        if (!this.mIsEnterPriseProEnabled) {
            LiteavLog.i(TAG, "need support EnterPrise above!!!");
        } else if (i9 > 0) {
            com.tencent.liteav.beauty.a.a(this.mReporter, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBeautyInternal(int i9, float f10, float f11, float f12, float f13) {
        com.tencent.liteav.base.util.q qVar = this.mOutputSize;
        if (qVar.f31029a == -1 || qVar.f31030b == -1) {
            return;
        }
        if (this.mBeautyStyle != i9) {
            updateStatsOnDraw("beautyStyle", i9);
        }
        com.tencent.liteav.videobase.a.b bVar = this.mBeautyFilters.get(i9);
        boolean z10 = true;
        if (bVar == null) {
            if (i9 == 0) {
                bVar = new com.tencent.liteav.beauty.b.b.a();
            } else if (i9 == 1) {
                bVar = new com.tencent.liteav.beauty.b.c.a();
            } else if (i9 != 2) {
                bVar = new com.tencent.liteav.beauty.b.a();
            } else {
                bVar = new com.tencent.liteav.beauty.b.a.a();
            }
            bVar.initialize(this.mTexturePool);
            com.tencent.liteav.base.util.q qVar2 = this.mOutputSize;
            bVar.onOutputSizeChanged(qVar2.f31029a, qVar2.f31030b);
            this.mBeautyFilters.put(i9, bVar);
        }
        com.tencent.liteav.beauty.b.b bVar2 = (com.tencent.liteav.beauty.b.b) bVar;
        bVar2.a(f10);
        bVar2.c(f12);
        bVar2.b(f11);
        bVar2.d(f13);
        if (this.mBeautyStyle == i9 && com.tencent.liteav.videobase.utils.e.a(this.mBeautyLevel, f10) && com.tencent.liteav.videobase.utils.e.a(this.mWhitenessLevel, f11) && com.tencent.liteav.videobase.utils.e.a(this.mRuddyLevel, f12) && com.tencent.liteav.videobase.utils.e.a(this.mSharpnessLevel, f13)) {
            return;
        }
        this.mBeautyStyle = i9;
        this.mBeautyLevel = f10;
        this.mWhitenessLevel = f11;
        this.mRuddyLevel = f12;
        this.mSharpnessLevel = f13;
        removeAllFilterAndInterceptor();
        this.mCurrentBeautyFilter = null;
        if (!((isLessOrEqualZero(this.mBeautyLevel) && isLessOrEqualZero(this.mRuddyLevel) && isLessOrEqualZero(this.mWhitenessLevel)) ? false : false)) {
            addFilter(bVar);
            this.mCurrentBeautyFilter = bVar;
        }
        addFilter(this.mMotionFilter);
    }

    private void updateSharpenLevelInternal() {
        float sharpnessLevel = getSharpnessLevel();
        LiteavLog.d(TAG, "sharpnessLevel: ".concat(String.valueOf(sharpnessLevel)));
        updateBeautyInternal(this.mBeautyStyle, this.mBeautyLevel, this.mWhitenessLevel, this.mRuddyLevel, sharpnessLevel);
        if (sharpnessLevel > 0.0f) {
            com.tencent.liteav.beauty.a.d(this.mReporter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatsInternal(String str, float f10) {
        this.mBeautyStats.put(str, String.valueOf(f10));
        if (this.mBeautyManagerStatusListener == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : this.mBeautyStats.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(CertificateUtil.DELIMITER);
            sb2.append(entry.getValue());
            sb2.append(" ");
        }
        this.mBeautyManagerStatusListener.onBeautyStatsChanged("{" + ((Object) sb2) + "}");
    }

    @Override // com.tencent.liteav.videobase.a.b
    public boolean canBeSkipped() {
        return canBeSkipped(this.mCurrentBeautyFilter) && this.mMotionFilter.canBeSkipped();
    }

    @Override // com.tencent.liteav.videobase.a.h, com.tencent.liteav.videobase.a.b
    public void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.mMotionFilter.initialize(eVar);
        int i9 = this.mBeautyStyle;
        updateBeautyInternal(i9 == -1 ? 0 : i9, this.mBeautyLevel, this.mWhitenessLevel, this.mRuddyLevel, this.mSharpnessLevel);
    }

    @Override // com.tencent.liteav.videobase.a.h, com.tencent.liteav.videobase.a.b
    public void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        this.mMotionFilter.onOutputSizeChanged(i9, i10);
        float sharpnessLevel = getSharpnessLevel();
        for (int i11 = 0; i11 < this.mBeautyFilters.size(); i11++) {
            com.tencent.liteav.videobase.a.b valueAt = this.mBeautyFilters.valueAt(i11);
            valueAt.onOutputSizeChanged(i9, i10);
            if (valueAt instanceof com.tencent.liteav.beauty.b.b) {
                ((com.tencent.liteav.beauty.b.b) valueAt).d(sharpnessLevel);
            }
        }
        int i12 = this.mBeautyStyle;
        updateBeautyInternal(i12 == -1 ? 0 : i12, this.mBeautyLevel, this.mWhitenessLevel, this.mRuddyLevel, sharpnessLevel);
    }

    @Override // com.tencent.liteav.videobase.a.h, com.tencent.liteav.videobase.a.b
    public void onUninit() {
        super.onUninit();
        this.mMotionFilter.uninitialize();
        for (int i9 = 0; i9 < this.mBeautyFilters.size(); i9++) {
            this.mBeautyFilters.valueAt(i9).uninitialize();
        }
    }

    public void setAIDetectListener(com.tencent.liteav.videobase.base.a aVar) {
    }

    @CalledByNative
    public void setBeautyLevel(float f10) {
        float a10 = com.tencent.liteav.base.util.g.a(f10, 0.0f, 0.9f);
        LiteavLog.d(TAG, "setBeautyLevel beautyLevel:".concat(String.valueOf(f10)));
        runOnDraw(b.a(this, a10));
    }

    public void setBeautyManagerStatusListener(a aVar) {
        this.mBeautyManagerStatusListener = aVar;
    }

    @CalledByNative
    public void setBeautyStyle(int i9) {
        LiteavLog.d(TAG, "setBeautyStyle beautyStyle:".concat(String.valueOf(i9)));
        runOnDraw(com.tencent.liteav.videoproducer.preprocessor.a.a(this, i9));
    }

    @CalledByNative
    public void setChinLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.CHIN_SCALE, i9);
        updateStatsOnDraw("chinLevel", i9);
    }

    @CalledByNative
    public void setEyeAngleLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.EYE_ANGLE, i9);
        updateStatsOnDraw("eyeAngleLevel", i9);
    }

    @CalledByNative
    public void setEyeDistanceLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.EYE_DISTANCE, i9);
        updateStatsOnDraw("eyeDistanceLevel", i9);
    }

    @CalledByNative
    public void setEyeLightenLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.EYE_LIGHTEN, i9);
        updateStatsOnDraw("eyeLightenLevel", i9);
    }

    @CalledByNative
    public void setEyeScaleLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.EYE_SCALE, i9);
        updateStatsOnDraw("eyeBigScale", i9);
    }

    @CalledByNative
    public void setFaceBeautyLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.BASIC3, i9);
        updateStatsOnDraw("faceBeautyLevel", i9);
    }

    @CalledByNative
    public void setFaceNarrowLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.FACE_NARROW, i9);
        updateStatsOnDraw("faceNarrowLevel", i9);
    }

    @CalledByNative
    public void setFaceShortLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.FACE_SHORT, i9);
        updateStatsOnDraw("faceShortLevel", i9);
    }

    @CalledByNative
    public void setFaceSlimLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.FACE_SLIM, i9);
        updateStatsOnDraw("faceSlimLevel", i9);
    }

    @CalledByNative
    public void setFaceVLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.FACE_V_SHAPE, i9);
        updateStatsOnDraw("faceVLevel", i9);
    }

    @CalledByNative
    public void setForeheadLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.FOREHEAD, i9);
        updateStatsOnDraw("foreheadLevel", i9);
    }

    public void setHomeOrientation(int i9) {
    }

    @CalledByNative
    public void setLipsThicknessLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.LIPS_THICKNESS, i9);
        updateStatsOnDraw("lipsThicknessLevel", i9);
    }

    @CalledByNative
    public void setMotionMute(boolean z10) {
        LiteavLog.d(TAG, "setMotionMute motionMute:".concat(String.valueOf(z10)));
    }

    @CalledByNative
    public void setMotionTmpl(String str) {
        LiteavLog.d(TAG, "setMotionTmpl tmplPath:".concat(String.valueOf(str)));
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.tencent.liteav.beauty.a.g(this.mReporter);
    }

    @CalledByNative
    public void setMouthShapeLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.MOUTH_SHAPE, i9);
        updateStatsOnDraw("mouthShapeLevel", i9);
    }

    @CalledByNative
    public void setNosePositionLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.NOSE_POSITION, i9);
        updateStatsOnDraw("nosePositionLevel", i9);
    }

    @CalledByNative
    public void setNoseSlimLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.NOSE_SLIM, i9);
        updateStatsOnDraw("noseSlimLevel", i9);
    }

    @CalledByNative
    public void setNoseWingLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.NOSE_WING, i9);
        updateStatsOnDraw("noseWingLevel", i9);
    }

    public void setPerformanceMode(boolean z10) {
        LiteavLog.d(TAG, "setPerformanceMode: ".concat(String.valueOf(z10)));
        runOnDraw(g.a(this, z10));
    }

    @CalledByNative
    public void setPounchRemoveLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.REMOVE_POUNCH, i9);
        updateStatsOnDraw("pounchRemoveLevel", i9);
    }

    @CalledByNative
    public void setRuddyLevel(float f10) {
        float a10 = com.tencent.liteav.base.util.g.a(f10, 0.0f, 0.9f);
        LiteavLog.d(TAG, "setRuddyLevel ruddyLevel:".concat(String.valueOf(f10)));
        runOnDraw(e.a(this, a10));
    }

    @CalledByNative
    public void setSharpenLevel(float f10) {
        runOnDraw(d.a(this, f10));
    }

    @CalledByNative
    public void setSmileLinesRemoveLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.REMOVE_SMILE_LINES, i9);
        updateStatsOnDraw("smileLinesRemoveLevel", i9);
    }

    @CalledByNative
    public void setToothWhitenLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.TOOTH_WHITEN, i9);
        updateStatsOnDraw("toothWhitenLevel", i9);
    }

    @CalledByNative
    public void setWhitenessLevel(float f10) {
        float a10 = com.tencent.liteav.base.util.g.a(f10, 0.0f, 0.9f);
        LiteavLog.d(TAG, "setWhitenessLevel whitenessLevel:".concat(String.valueOf(f10)));
        runOnDraw(c.a(this, a10));
    }

    @CalledByNative
    public void setWrinkleRemoveLevel(int i9) {
        setScalableCosmeticTypeLevel(l.a.REMOVE_WRINKLES, i9);
        updateStatsOnDraw("wrinkleRemoveLevel", i9);
    }

    public void updateStatsOnDraw(String str, int i9) {
        runOnDraw(f.a(this, str, i9));
    }

    private boolean canBeSkipped(com.tencent.liteav.videobase.a.b bVar) {
        if (bVar == null) {
            return true;
        }
        return bVar.canBeSkipped();
    }
}

package com.tencent.ugc;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.ugc.RemuxJoiner;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.TXVideoEditer;
import com.tencent.ugc.datereport.UGCDataReport;
import java.io.File;
import java.util.List;
/* loaded from: classes4.dex */
public class TXVideoJoiner {
    private static final String TAG = "TXVideoJoiner";
    private final Context mContext;
    private RemuxJoiner mRemuxJoiner;
    private List<TXVideoEditConstants.TXAbsoluteRect> mSplitScreenRects;
    private TXVideoEditer mTXVideoEditer;
    private TXVideoJoinerListener mTXVideoJoinerListener;
    private TXVideoPreviewListener mTXVideoPreviewListener;
    private TXVideoEditConstants.TXPreviewParam mTxPreviewParam;
    private String mVideoOutputPath;
    private List<String> mVideoSourceList;
    private float[] mVideoVolumes;
    private boolean mIsNeedEdit = false;
    private int mProfile = -1;
    private int mSplitScreenCanvasWidth = -1;
    private int mSplitScreenCanvasHeight = -1;
    private final TXVideoEditer.TXVideoPreviewListener mTXEditerVideoPreviewListener = new AnonymousClass1();
    private final TXVideoEditer.TXVideoGenerateListener mTXEditerVideoJoinerListener = new TXVideoEditer.TXVideoGenerateListener() { // from class: com.tencent.ugc.TXVideoJoiner.2
        @Override // com.tencent.ugc.TXVideoEditer.TXVideoGenerateListener
        public final void onGenerateComplete(TXVideoEditConstants.TXGenerateResult tXGenerateResult) {
            TXVideoJoiner.this.notifyJoinComplete(tXGenerateResult.retCode, tXGenerateResult.descMsg);
        }

        @Override // com.tencent.ugc.TXVideoEditer.TXVideoGenerateListener
        public final void onGenerateProgress(float f10) {
            TXVideoJoiner.this.notifyJoinProgress(f10);
        }
    };
    private final RemuxJoiner.RemuxJoinerListener mRemuxJoinerListener = new AnonymousClass3();
    private final com.tencent.liteav.base.util.j mSequenceTaskRunner = new com.tencent.liteav.base.util.j();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.ugc.TXVideoJoiner$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass1 implements TXVideoEditer.TXVideoPreviewListener {
        AnonymousClass1() {
        }

        @Override // com.tencent.ugc.TXVideoEditer.TXVideoPreviewListener
        public final void onPreviewFinished() {
            TXVideoJoiner.this.mSequenceTaskRunner.a(ci.a(this));
            TXVideoPreviewListener tXVideoPreviewListener = TXVideoJoiner.this.mTXVideoPreviewListener;
            if (tXVideoPreviewListener != null) {
                tXVideoPreviewListener.onPreviewFinished();
            }
        }

        @Override // com.tencent.ugc.TXVideoEditer.TXVideoPreviewListener
        public final void onPreviewProgress(int i9) {
            TXVideoPreviewListener tXVideoPreviewListener = TXVideoJoiner.this.mTXVideoPreviewListener;
            if (tXVideoPreviewListener != null) {
                tXVideoPreviewListener.onPreviewProgress(i9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.ugc.TXVideoJoiner$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass3 implements RemuxJoiner.RemuxJoinerListener {
        AnonymousClass3() {
        }

        @Override // com.tencent.ugc.RemuxJoiner.RemuxJoinerListener
        public final void onRemuxJoinerComplete(int i9, String str) {
            TXVideoJoiner.this.mSequenceTaskRunner.a(ck.a(this, i9, str));
        }

        @Override // com.tencent.ugc.RemuxJoiner.RemuxJoinerListener
        public final void onRemuxJoinerProgress(float f10) {
            TXVideoJoiner.this.mSequenceTaskRunner.a(cj.a(this, f10));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AnonymousClass3 anonymousClass3, int i9, String str) {
            TXVideoJoiner.this.notifyJoinComplete(i9, str);
            TXVideoJoiner.this.destroyRemuxJoiner();
        }
    }

    /* loaded from: classes4.dex */
    public interface TXVideoJoinerListener {
        void onJoinComplete(TXVideoEditConstants.TXJoinerResult tXJoinerResult);

        void onJoinProgress(float f10);
    }

    /* loaded from: classes4.dex */
    public interface TXVideoPreviewListener {
        void onPreviewFinished();

        void onPreviewProgress(int i9);
    }

    public TXVideoJoiner(Context context) {
        this.mContext = context.getApplicationContext();
        UGCDataReport.reportDAU(1005);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyRemuxJoiner() {
        RemuxJoiner remuxJoiner = this.mRemuxJoiner;
        if (remuxJoiner != null) {
            remuxJoiner.stop();
            this.mRemuxJoiner.uninitialize();
            this.mRemuxJoiner = null;
        }
    }

    private void destroyVideoEditer() {
        TXVideoEditer tXVideoEditer = this.mTXVideoEditer;
        if (tXVideoEditer != null) {
            tXVideoEditer.cancel();
            this.mTXVideoEditer.release();
            this.mTXVideoEditer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinVideoInternal(int i9, String str, boolean z10) {
        destroyVideoEditer();
        TXVideoEditer tXVideoEditer = new TXVideoEditer(this.mContext, this.mSequenceTaskRunner);
        this.mTXVideoEditer = tXVideoEditer;
        tXVideoEditer.setMediaSourcePaths(this.mVideoSourceList);
        if (z10 && this.mTXVideoEditer.isHasAudio() && !com.tencent.liteav.videobase.utils.c.a(this.mSplitScreenRects)) {
            this.mTXVideoEditer.setIsSplitScreen(true);
            this.mTXVideoEditer.setSplitScreenList(this.mSplitScreenRects, this.mSplitScreenCanvasWidth, this.mSplitScreenCanvasHeight);
            float[] fArr = this.mVideoVolumes;
            if (fArr != null) {
                this.mTXVideoEditer.setVideoVolumes(fArr);
            }
        }
        this.mTXVideoEditer.setVideoGenerateListener(this.mTXEditerVideoJoinerListener);
        this.mTXVideoEditer.setIsFullIFrame(this.mIsNeedEdit);
        this.mTXVideoEditer.setProfile(this.mProfile);
        this.mTXVideoEditer.generateVideo(i9, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$cancel$9(TXVideoJoiner tXVideoJoiner) {
        tXVideoJoiner.destroyRemuxJoiner();
        tXVideoJoiner.destroyVideoEditer();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initWithPreview$1(TXVideoJoiner tXVideoJoiner, TXVideoEditConstants.TXPreviewParam tXPreviewParam) {
        tXVideoJoiner.mTxPreviewParam = tXPreviewParam;
        TXVideoEditer tXVideoEditer = tXVideoJoiner.mTXVideoEditer;
        if (tXVideoEditer != null) {
            tXVideoEditer.initWithPreview(tXPreviewParam);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$joinVideo$8(TXVideoJoiner tXVideoJoiner, String str, int i9) {
        if (tXVideoJoiner.startQuickJoinVideo(str)) {
            LiteavLog.i(TAG, "quickJoinVideo success");
        } else {
            tXVideoJoiner.joinVideoInternal(i9, str, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$notifyJoinComplete$14(TXVideoJoiner tXVideoJoiner) {
        TXVideoEditer tXVideoEditer = tXVideoJoiner.mTXVideoEditer;
        if (tXVideoEditer != null) {
            tXVideoEditer.release();
            tXVideoJoiner.mTXVideoEditer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$pausePlay$4(TXVideoJoiner tXVideoJoiner) {
        TXVideoEditer tXVideoEditer = tXVideoJoiner.mTXVideoEditer;
        if (tXVideoEditer != null) {
            tXVideoEditer.pausePlay();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$resumePlay$5(TXVideoJoiner tXVideoJoiner) {
        TXVideoEditer tXVideoEditer = tXVideoJoiner.mTXVideoEditer;
        if (tXVideoEditer != null) {
            tXVideoEditer.resumePlay();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setSplitScreenList$10(TXVideoJoiner tXVideoJoiner, List list, int i9, int i10) {
        tXVideoJoiner.mSplitScreenRects = list;
        tXVideoJoiner.mSplitScreenCanvasWidth = i9;
        tXVideoJoiner.mSplitScreenCanvasHeight = i10;
        TXVideoEditer tXVideoEditer = tXVideoJoiner.mTXVideoEditer;
        if (tXVideoEditer != null) {
            tXVideoEditer.setSplitScreenList(list, i9, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setVideoVolumes$11(TXVideoJoiner tXVideoJoiner, List list) {
        tXVideoJoiner.mVideoVolumes = new float[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            tXVideoJoiner.mVideoVolumes[i9] = ((Float) list.get(i9)).floatValue();
        }
        TXVideoEditer tXVideoEditer = tXVideoJoiner.mTXVideoEditer;
        if (tXVideoEditer != null) {
            tXVideoEditer.setVideoVolumes(tXVideoJoiner.mVideoVolumes);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$startPlay$3(TXVideoJoiner tXVideoJoiner) {
        tXVideoJoiner.stopPlayInternal();
        TXVideoEditer tXVideoEditer = new TXVideoEditer(tXVideoJoiner.mContext, tXVideoJoiner.mSequenceTaskRunner);
        tXVideoJoiner.mTXVideoEditer = tXVideoEditer;
        tXVideoEditer.setMediaSourcePaths(tXVideoJoiner.mVideoSourceList);
        tXVideoJoiner.mTXVideoEditer.initWithPreview(tXVideoJoiner.mTxPreviewParam);
        if (tXVideoJoiner.mTXVideoEditer.isHasAudio() && !com.tencent.liteav.videobase.utils.c.a(tXVideoJoiner.mSplitScreenRects)) {
            tXVideoJoiner.mTXVideoEditer.setIsSplitScreen(true);
            tXVideoJoiner.mTXVideoEditer.setSplitScreenList(tXVideoJoiner.mSplitScreenRects, tXVideoJoiner.mSplitScreenCanvasWidth, tXVideoJoiner.mSplitScreenCanvasHeight);
            float[] fArr = tXVideoJoiner.mVideoVolumes;
            if (fArr != null) {
                tXVideoJoiner.mTXVideoEditer.setVideoVolumes(fArr);
            }
        }
        tXVideoJoiner.mTXVideoEditer.setTXVideoPreviewListener(tXVideoJoiner.mTXEditerVideoPreviewListener);
        TXVideoEditer tXVideoEditer2 = tXVideoJoiner.mTXVideoEditer;
        tXVideoEditer2.startPlayFromTime(0L, tXVideoEditer2.getDuration());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyJoinComplete(int i9, String str) {
        this.mSequenceTaskRunner.a(bz.a(this));
        TXVideoEditConstants.TXJoinerResult tXJoinerResult = new TXVideoEditConstants.TXJoinerResult();
        tXJoinerResult.descMsg = str;
        tXJoinerResult.retCode = i9;
        LiteavLog.i(TAG, "TXGenerateResult descMsg = " + str + " retCode = " + i9);
        TXVideoJoinerListener tXVideoJoinerListener = this.mTXVideoJoinerListener;
        if (tXVideoJoinerListener != null) {
            tXVideoJoinerListener.onJoinComplete(tXJoinerResult);
        }
        if (i9 == 0 && !TextUtils.isEmpty(this.mVideoOutputPath) && new File(this.mVideoOutputPath).exists()) {
            UGCDataReport.reportDAU(1032, (int) new File(this.mVideoOutputPath).length(), "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyJoinProgress(float f10) {
        TXVideoJoinerListener tXVideoJoinerListener = this.mTXVideoJoinerListener;
        if (tXVideoJoinerListener != null) {
            tXVideoJoinerListener.onJoinProgress(f10);
        }
    }

    private boolean startQuickJoinVideo(String str) {
        destroyRemuxJoiner();
        List<String> list = this.mVideoSourceList;
        if (list == null || !RemuxJoiner.isConcatableWithoutReencode(list)) {
            return false;
        }
        LiteavLog.i(TAG, "RemuxerJoinerChecker check is ok");
        if (this.mRemuxJoiner == null) {
            RemuxJoiner remuxJoiner = new RemuxJoiner();
            this.mRemuxJoiner = remuxJoiner;
            remuxJoiner.initialize();
        }
        this.mRemuxJoiner.stop();
        if (this.mRemuxJoiner.setSourcePaths(this.mVideoSourceList) || this.mRemuxJoiner.setTargetPath(str)) {
            return false;
        }
        this.mVideoOutputPath = str;
        this.mRemuxJoiner.setVideoJoinerListener(this.mRemuxJoinerListener);
        return this.mRemuxJoiner.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopPlayInternal() {
        LiteavLog.i(TAG, "stopPlayInternal");
        TXVideoEditer tXVideoEditer = this.mTXVideoEditer;
        if (tXVideoEditer != null) {
            tXVideoEditer.stopPlay();
            this.mTXVideoEditer.release();
            this.mTXVideoEditer = null;
        }
    }

    public void cancel() {
        LiteavLog.i(TAG, "cancel");
        this.mSequenceTaskRunner.a(bu.a(this));
    }

    public void initWithPreview(TXVideoEditConstants.TXPreviewParam tXPreviewParam) {
        LiteavLog.i(TAG, "initWithPreview videoView = " + tXPreviewParam.videoView);
        this.mSequenceTaskRunner.a(ca.a(this, tXPreviewParam));
    }

    public void joinVideo(int i9, String str) {
        LiteavLog.i(TAG, "joinVideo videoCompressed " + i9 + " videoOutputPath = " + str);
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "joinVideo is not support on smart version");
            notifyJoinComplete(-5, "licence verify failed");
            return;
        }
        this.mVideoOutputPath = str;
        this.mSequenceTaskRunner.a(bt.a(this, str, i9));
    }

    public void pausePlay() {
        LiteavLog.i(TAG, "pausePlay");
        this.mSequenceTaskRunner.a(cd.a(this));
    }

    public void resumePlay() {
        LiteavLog.i(TAG, "resumePlay");
        this.mSequenceTaskRunner.a(ce.a(this));
    }

    public void setNeedEdit(boolean z10) {
        LiteavLog.i(TAG, "setNeedEdit = ".concat(String.valueOf(z10)));
        this.mSequenceTaskRunner.a(by.a(this, z10));
    }

    public void setProfile(int i9) {
        LiteavLog.i(TAG, "setProfile profile ".concat(String.valueOf(i9)));
        this.mSequenceTaskRunner.a(ch.a(this, i9));
    }

    public void setRecordPath(String str) {
        LiteavLog.i(TAG, "setRecordPath recordPath = ".concat(String.valueOf(str)));
    }

    public void setSplitScreenList(List<TXVideoEditConstants.TXAbsoluteRect> list, int i9, int i10) {
        LiteavLog.i(TAG, "setSplitScreenList canvasWidth = " + i9 + " canvasHeight = " + i10);
        this.mSequenceTaskRunner.a(bv.a(this, list, i9, i10));
    }

    public void setTXVideoPreviewListener(TXVideoPreviewListener tXVideoPreviewListener) {
        LiteavLog.i(TAG, "setTXVideoPreviewListener");
        this.mSequenceTaskRunner.a(cb.a(this, tXVideoPreviewListener));
    }

    public void setVideoJoinerListener(TXVideoJoinerListener tXVideoJoinerListener) {
        LiteavLog.i(TAG, "setVideoJoinerListener");
        this.mSequenceTaskRunner.a(cg.a(this, tXVideoJoinerListener));
    }

    public int setVideoPathList(List<String> list) {
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            int isMediaSourceValid = TXVideoEditer.isMediaSourceValid(str);
            if (isMediaSourceValid != 0) {
                LiteavLog.i(TAG, "setVideoPathList " + str + " is illegal." + isMediaSourceValid);
                return isMediaSourceValid;
            }
        }
        this.mSequenceTaskRunner.a(bs.a(this, list));
        return 0;
    }

    public void setVideoVolumes(List<Float> list) {
        LiteavLog.i(TAG, "setVideoVolumes");
        this.mSequenceTaskRunner.a(bw.a(this, list));
    }

    public void splitJoinVideo(int i9, String str) {
        LiteavLog.i(TAG, "splitJoinVideo video Compressed = " + i9 + " videoOutputPath = " + str);
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "splitJoinVideo is not support on smart version");
            notifyJoinComplete(-5, "licence verify failed");
            return;
        }
        this.mVideoOutputPath = str;
        this.mSequenceTaskRunner.a(bx.a(this, i9, str));
        UGCDataReport.reportDAU(1031);
    }

    public void startPlay() {
        LiteavLog.i(TAG, "startPlay");
        this.mSequenceTaskRunner.a(cc.a(this));
    }

    public void stopPlay() {
        LiteavLog.i(TAG, "stopPlay");
        this.mSequenceTaskRunner.a(cf.a(this));
    }
}

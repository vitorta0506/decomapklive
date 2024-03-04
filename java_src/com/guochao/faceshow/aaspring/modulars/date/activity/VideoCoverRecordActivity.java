package com.guochao.faceshow.aaspring.modulars.date.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.GifUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.VideoCoverCircleProgressView;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
import com.tencent.ugc.TXUGCRecord;
import java.lang.reflect.Field;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class VideoCoverRecordActivity extends BaseActivity implements TXRecordCommon.ITXVideoRecordListener {

    /* renamed from: a  reason: collision with root package name */
    TXUGCRecord f17555a;

    /* renamed from: b  reason: collision with root package name */
    TXRecordCommon.TXUGCCustomConfig f17556b;

    /* renamed from: c  reason: collision with root package name */
    boolean f17557c;

    /* renamed from: d  reason: collision with root package name */
    boolean f17558d = false;

    /* renamed from: e  reason: collision with root package name */
    int f17559e = 100;

    /* renamed from: f  reason: collision with root package name */
    XMagicBeautyManager f17560f = XMagicBeautyManager.getInstance(BaseApplication.getInstance());
    @BindView
    View mEffectView;
    @BindView
    VideoCoverCircleProgressView mProgressBar;
    @BindView
    TXCloudVideoView mTXCloudVideoView;
    @BindView
    View mTouchView;

    /* loaded from: classes3.dex */
    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() != 0) {
                return false;
            }
            VideoCoverRecordActivity.this.f17555a.setFocusPosition(motionEvent.getX(), motionEvent.getY());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements TXUGCRecord.VideoCustomProcessListener {
        b() {
        }

        @Override // com.tencent.ugc.TXUGCRecord.VideoCustomProcessListener
        public void onDetectFacePoints(float[] fArr) {
        }

        @Override // com.tencent.ugc.TXUGCRecord.VideoCustomProcessListener
        public int onTextureCustomProcess(int i9, int i10, int i11) {
            return VideoCoverRecordActivity.this.f17560f.process(i9, i10, i11);
        }

        @Override // com.tencent.ugc.TXUGCRecord.VideoCustomProcessListener
        public void onTextureDestroyed() {
            VideoCoverRecordActivity.this.f17560f.destroyOnGLThread();
            if (VideoCoverRecordActivity.this.isFinishing() || VideoCoverRecordActivity.this.isDestroyed()) {
                VideoCoverRecordActivity.this.f17555a.setVideoRecordListener(null);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements PendantDialog.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PendantDialog f17563a;

        c(PendantDialog pendantDialog) {
            this.f17563a = pendantDialog;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void b(String str, ResourceListItemBean resourceListItemBean) {
            if (VideoCoverRecordActivity.this.isDestroyed() || VideoCoverRecordActivity.this.isFinishing() || VideoCoverRecordActivity.this.f17560f == null || TextUtils.isEmpty(str)) {
                return;
            }
            VideoCoverRecordActivity.this.f17560f.setMotionTmpl(str);
            this.f17563a.W1(resourceListItemBean.getId(), 6, 2);
        }
    }

    /* loaded from: classes3.dex */
    class d implements GifUtils.OnGiftEncodeListener {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.GifUtils.OnGiftEncodeListener
        public void onEncodeFail(String str, String str2) {
            VideoCoverRecordActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.utils.GifUtils.OnGiftEncodeListener
        public void onEncodeSuccess(String str, String str2) {
            VideoCoverRecordActivity.this.dismissProgressDialog();
            VideoCoverRecordActivity.this.startActivityForResult(new Intent(VideoCoverRecordActivity.this.getActivity(), UploadVideoCoverMainActivity.class).putExtra(TCConstants.VIDEO_RECORD_VIDEPATH, str2), 1024);
            VideoCoverRecordActivity.this.f17555a.getPartsManager().deleteAllParts();
        }
    }

    private void b0() {
        this.f17555a = TXUGCRecord.getInstance(getApplicationContext());
        TXRecordCommon.TXUGCCustomConfig tXUGCCustomConfig = new TXRecordCommon.TXUGCCustomConfig();
        this.f17556b = tXUGCCustomConfig;
        tXUGCCustomConfig.videoResolution = 2;
        tXUGCCustomConfig.maxDuration = 5000;
        tXUGCCustomConfig.touchFocus = true;
        this.mTXCloudVideoView.showLog(false);
        this.f17555a.setVideoRecordListener(this);
        BeautyItemCacheManager.setBeauty(6, this.f17560f);
        this.f17555a.setVideoProcessListener(new b());
    }

    private void d0() {
        try {
            Field declaredField = TXUGCRecord.class.getDeclaredField("instance");
            declaredField.setAccessible(true);
            if (declaredField.get(null) != null) {
                declaredField.set(null, null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void release() {
        if (this.f17558d) {
            return;
        }
        this.f17555a.stopRecord();
        this.f17555a.release();
        this.f17558d = true;
        this.f17557c = false;
        d0();
        this.f17560f.destroyOnMainThread();
    }

    @OnClick
    public void cancel(View view) {
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.do_nothing, R.anim.down_out);
        release();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_video_cover_record;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        getWindow().setBackgroundDrawableResource(R.color.white);
        if (getIntent().getIntExtra(Contants.USER_APPOINT_STATE, 0) == 1 && ja.a.b().g("KEY_SHOW_COVER_BANNED_TIPS")) {
            ToastUtils.showToast(getActivity(), getString(R.string.trtc_the_video_was_not_approved));
        }
        b0();
        this.mTouchView.setOnTouchListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        int intExtra;
        super.onActivityResult(i9, i10, intent);
        if (i10 != -1 || i9 != 1024 || intent == null || (intExtra = intent.getIntExtra("result", -1)) == -1) {
            return;
        }
        if (intExtra == 1) {
            finish();
        } else if (intExtra != 2) {
        } else {
            this.mEffectView.setVisibility(0);
            this.mProgressBar.setProgress(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        release();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.f17557c) {
            this.f17555a.pauseRecord();
            this.f17555a.pauseBGM();
        }
    }

    @Override // com.tencent.ugc.TXRecordCommon.ITXVideoRecordListener
    public void onRecordComplete(TXRecordCommon.TXRecordResult tXRecordResult) {
        this.f17557c = false;
        if (tXRecordResult.retCode < 0) {
            LogUtils.i("VideoCoverRecord", "onRecordComplete:  录制失败, code : " + tXRecordResult.retCode);
            return;
        }
        showProgressDialog("");
        String str = tXRecordResult.videoPath;
        GifUtils.convertMp4ToGif(str, FilePathProvider.getCachePath("crop") + "/gif_" + System.currentTimeMillis() + ".gif", 320, new d());
    }

    @Override // com.tencent.ugc.TXRecordCommon.ITXVideoRecordListener
    public void onRecordEvent(int i9, Bundle bundle) {
    }

    @Override // com.tencent.ugc.TXRecordCommon.ITXVideoRecordListener
    public void onRecordProgress(long j10) {
        this.mProgressBar.setProgress((((float) j10) * 1.0f) / 5000.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f17557c) {
            this.f17555a.resumeRecord();
            this.f17555a.resumeBGM();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f17555a.startCameraCustomPreview(this.f17556b, this.mTXCloudVideoView);
        this.f17555a.setAspectRatio(2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f17555a.stopCameraPreview();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean shouldShowLiveFloatWindow() {
        return false;
    }

    @OnClick
    public void showEffect(View view) {
        PendantDialog pendantDialog = new PendantDialog();
        pendantDialog.setType(this.f17559e);
        pendantDialog.X1(false);
        pendantDialog.setOnItemClickListener(new c(pendantDialog));
        pendantDialog.show(getSupportFragmentManager(), "pendant");
    }

    @OnClick
    public void startRecord(View view) {
        if (this.f17557c) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.f17555a.startRecord(FilePathProvider.getCachePath("crop") + "/video_" + currentTimeMillis + FileUtils.PIC_POSTFIX_MP4, FilePathProvider.getCachePath("crop") + "/thumbnail_" + currentTimeMillis + FileUtils.PIC_POSTFIX_JPEG);
        view.animate().scaleX(1.2f).scaleY(1.2f).setDuration(300L).start();
        this.f17557c = true;
        this.mEffectView.setVisibility(4);
    }
}

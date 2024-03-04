package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a3;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.o;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.s1;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.exoplayer2.x1;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.modulars.chat.models.VideoMessage;
import com.guochao.faceshow.aaspring.utils.BaseZoomHelper;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.views.DownloadDialogProgressView;
import com.guochao.faceshow.views.e;
import com.tencent.imsdk.v2.V2TIMElem;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import h3.z;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;
import k3.y;
import v2.d0;
/* loaded from: classes3.dex */
public class IMVideoPreviewFragment extends BaseFragment implements BaseZoomHelper.Zoomable {

    /* renamed from: a  reason: collision with root package name */
    private int f16986a;

    /* renamed from: b  reason: collision with root package name */
    private VideoMessage f16987b;

    /* renamed from: d  reason: collision with root package name */
    q f16989d;

    /* renamed from: e  reason: collision with root package name */
    v2.q f16990e;

    /* renamed from: f  reason: collision with root package name */
    h1.f f16991f;

    /* renamed from: h  reason: collision with root package name */
    e f16993h;
    @BindView
    DownloadDialogProgressView mDownloadDialogProgressView;
    @BindView
    ImageView mImageView;
    @BindView
    ImageView mImageViewThumb;
    @BindView
    PlayerView mPlayerView;
    @BindView
    TextView mProgressTv;
    @BindView
    View mProgressViewArea;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16988c = false;

    /* renamed from: g  reason: collision with root package name */
    d f16992g = new d(this);

    /* renamed from: i  reason: collision with root package name */
    l2.d f16994i = new a();

    /* renamed from: j  reason: collision with root package name */
    boolean f16995j = false;

    /* loaded from: classes3.dex */
    class a implements l2.d {
        a() {
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void A(int i9) {
            n2.p(this, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void B(boolean z10) {
            n2.i(this, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void C(l2.b bVar) {
            n2.a(this, bVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void F(i3 i3Var, int i9) {
            n2.B(this, i3Var, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void G(int i9) {
            n2.o(this, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void I(o oVar) {
            n2.d(this, oVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void K(x1 x1Var) {
            n2.k(this, x1Var);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void L(boolean z10) {
            n2.y(this, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void N(int i9, boolean z10) {
            n2.e(this, i9, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void O() {
            n2.v(this);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void R(int i9, int i10) {
            n2.A(this, i9, i10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void S(PlaybackException playbackException) {
            n2.r(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void T(z zVar) {
            n2.C(this, zVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void U(int i9) {
            n2.t(this, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void W(n3 n3Var) {
            n2.D(this, n3Var);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void X(boolean z10) {
            n2.g(this, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void Y() {
            n2.x(this);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void Z(PlaybackException playbackException) {
            n2.q(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void a(boolean z10) {
            n2.z(this, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void f0(l2 l2Var, l2.c cVar) {
            n2.f(this, l2Var, cVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void g(Metadata metadata) {
            n2.l(this, metadata);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void g0(boolean z10, int i9) {
            ImageView imageView;
            if (i9 == 4) {
                if (!IMVideoPreviewFragment.this.f16988c && (imageView = IMVideoPreviewFragment.this.mImageView) != null) {
                    imageView.setVisibility(0);
                }
                z8.c.o().E(false);
            } else if (i9 == 3) {
                IMVideoPreviewFragment.this.mImageView.setVisibility(8);
                IMVideoPreviewFragment.this.mImageViewThumb.setVisibility(8);
                z8.c.o().E(true);
            }
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void h0(s1 s1Var, int i9) {
            n2.j(this, s1Var, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void j0(boolean z10, int i9) {
            n2.m(this, z10, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void k(x2.e eVar) {
            n2.c(this, eVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void l(List list) {
            n2.b(this, list);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void m0(boolean z10) {
            n2.h(this, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void n(y yVar) {
            n2.E(this, yVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void onRepeatModeChanged(int i9) {
            n2.w(this, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void q(k2 k2Var) {
            n2.n(this, k2Var);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void z(l2.e eVar, l2.e eVar2, int i9) {
            n2.u(this, eVar, eVar2, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements V2TIMValueCallback<String> {
        b() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(String str) {
            if (IMVideoPreviewFragment.this.getActivity() == null) {
                return;
            }
            ic.a.c(IMVideoPreviewFragment.this.mImageViewThumb).r(str).Q0(IMVideoPreviewFragment.this.mImageViewThumb);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
        }
    }

    /* loaded from: classes3.dex */
    class c extends SimpleObserver<te.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16998a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    PackageUtils.gotoSetting(IMVideoPreviewFragment.this.getActivity());
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        c(View view) {
            this.f16998a = view;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            super.onNext((c) aVar);
            if (aVar.f58133b) {
                String localVideoPath = IMVideoPreviewFragment.this.f16987b.getLocalVideoPath();
                if (!TextUtils.isEmpty(localVideoPath) && new File(localVideoPath).exists()) {
                    String photoPath = FilePathProvider.getPhotoPath();
                    String absolutePath = new File(photoPath, System.currentTimeMillis() + new File(localVideoPath).getName()).getAbsolutePath();
                    if (FileUtils.saveVideoToGallery(localVideoPath, absolutePath)) {
                        IMVideoPreviewFragment.this.V1(absolutePath);
                        IMVideoPreviewFragment.this.showToast(R.string.save_successful);
                    } else {
                        IMVideoPreviewFragment.this.showToast(R.string.saved_error);
                    }
                    this.f16998a.setVisibility(8);
                    return;
                }
                File videoPath = IMVideoPreviewFragment.this.f16987b.getVideoPath();
                if (videoPath == null) {
                    return;
                }
                String absolutePath2 = videoPath.getAbsolutePath();
                if (new File(absolutePath2).exists()) {
                    String photoPath2 = FilePathProvider.getPhotoPath();
                    String absolutePath3 = new File(photoPath2, System.currentTimeMillis() + new File(absolutePath2).getName()).getAbsolutePath();
                    if (FileUtils.saveVideoToGallery(absolutePath2, absolutePath3)) {
                        IMVideoPreviewFragment.this.V1(absolutePath3);
                        IMVideoPreviewFragment.this.showToast(R.string.save_successful);
                    } else {
                        IMVideoPreviewFragment.this.showToast(R.string.saved_error);
                    }
                    this.f16998a.setVisibility(8);
                }
            } else if (aVar.f58134c) {
            } else {
                IMVideoPreviewFragment iMVideoPreviewFragment = IMVideoPreviewFragment.this;
                iMVideoPreviewFragment.alert(iMVideoPreviewFragment.getString(R.string.Open_storage_permission_to_use), null, new a(), false).k(IMVideoPreviewFragment.this.getString(R.string.payment_password_setting));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class d implements V2TIMValueCallback<V2TIMElem.V2ProgressInfo> {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<IMVideoPreviewFragment> f17001a;

        d(IMVideoPreviewFragment iMVideoPreviewFragment) {
            this.f17001a = new WeakReference<>(iMVideoPreviewFragment);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMElem.V2ProgressInfo v2ProgressInfo) {
            IMVideoPreviewFragment iMVideoPreviewFragment;
            WeakReference<IMVideoPreviewFragment> weakReference = this.f17001a;
            if (weakReference == null || (iMVideoPreviewFragment = weakReference.get()) == null || iMVideoPreviewFragment.getActivity() == null || iMVideoPreviewFragment.f16995j) {
                return;
            }
            TextView textView = iMVideoPreviewFragment.mProgressTv;
            int currentSize = (int) ((((float) v2ProgressInfo.getCurrentSize()) * 100.0f) / ((float) v2ProgressInfo.getTotalSize()));
            textView.setText(String.format("%d%s", Integer.valueOf(currentSize), "%"));
            iMVideoPreviewFragment.mDownloadDialogProgressView.setProgress(currentSize);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class e implements V2TIMValueCallback<String> {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<IMVideoPreviewFragment> f17002a;

        /* renamed from: b  reason: collision with root package name */
        String f17003b;

        e(IMVideoPreviewFragment iMVideoPreviewFragment, String str) {
            this.f17002a = new WeakReference<>(iMVideoPreviewFragment);
            this.f17003b = str;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(String str) {
            IMVideoPreviewFragment iMVideoPreviewFragment;
            WeakReference<IMVideoPreviewFragment> weakReference = this.f17002a;
            if (weakReference == null || (iMVideoPreviewFragment = weakReference.get()) == null || iMVideoPreviewFragment.getActivity() == null || iMVideoPreviewFragment.f16995j) {
                return;
            }
            iMVideoPreviewFragment.mProgressViewArea.setVisibility(8);
            if (!iMVideoPreviewFragment.getUserVisibleHint()) {
                iMVideoPreviewFragment.mImageView.setVisibility(0);
            } else {
                iMVideoPreviewFragment.W1(Uri.parse(this.f17003b));
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
        }
    }

    private void T1() {
        VideoMessage videoMessage = this.f16987b;
        if (videoMessage == null || this.mPlayerView == null || videoMessage.getVideo() == null) {
            return;
        }
        File file = new File(this.f16987b.getLocalThumbnailPath());
        if (file.exists() && file.length() == this.f16987b.getVideo().getSnapshotSize()) {
            ic.a.c(this.mImageViewThumb).J(file).Q0(this.mImageViewThumb);
        } else {
            this.f16987b.getVideo().getSnapshotUrl(new b());
        }
    }

    public static IMVideoPreviewFragment U1(int i9) {
        IMVideoPreviewFragment iMVideoPreviewFragment = new IMVideoPreviewFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("position", i9);
        iMVideoPreviewFragment.setArguments(bundle);
        return iMVideoPreviewFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1(String str) {
        if (getActivity() == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(str)));
        getActivity().sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W1(Uri uri) {
        d0 b10 = new d0.b(new j3.q(getActivity(), "Exo")).b(s1.d(uri));
        this.f16990e = b10;
        this.f16989d.a(b10);
    }

    @OnClick
    public void content(View view) {
        h1.f fVar = this.f16991f;
        if (fVar != null) {
            fVar.onPhotoTap(this.mImageView, 0.0f, 0.0f);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.activity_im_video;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (com.guochao.faceshow.aaspring.manager.im.b.l0().i0() == null) {
            return;
        }
        this.mImageView.setImageResource(R.mipmap.im_play);
        com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = com.guochao.faceshow.aaspring.manager.im.b.l0().i0().get(this.f16986a);
        if (aVar instanceof VideoMessage) {
            this.f16987b = (VideoMessage) aVar;
        }
        if (this.f16987b == null) {
            return;
        }
        this.mPlayerView.setPlayer(this.f16989d);
        this.f16989d.l(true);
        this.f16989d.setRepeatMode(0);
        this.f16989d.K(this.f16994i);
        T1();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        VideoMessage videoMessage = this.f16987b;
        if (videoMessage == null || videoMessage.getVideo() == null || this.mPlayerView == null || this.f16987b.getVideoPath() == null) {
            return;
        }
        String localVideoPath = this.f16987b.getLocalVideoPath();
        if (!TextUtils.isEmpty(localVideoPath) && new File(localVideoPath).exists()) {
            this.mProgressViewArea.setVisibility(8);
            W1(Uri.parse(localVideoPath));
            return;
        }
        File file = new File(this.f16987b.getVideoPath().getAbsolutePath());
        if (this.f16993h == null) {
            this.f16993h = new e(this, file.getAbsolutePath());
        }
        long videoSize = this.f16987b.getVideo().getVideoSize();
        if (file.exists() && file.length() == videoSize) {
            this.mProgressViewArea.setVisibility(8);
            W1(Uri.parse(file.getAbsolutePath()));
            return;
        }
        this.mProgressViewArea.setVisibility(0);
        this.f16987b.registerDownloadCallback(this.f16993h);
        this.f16987b.registerProgressCallback(this.f16992g);
        this.f16987b.download();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f16986a = getArguments().getInt("position");
        }
        this.f16989d = new a3.a(getActivity()).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f16989d.C(true);
        this.f16989d.g(this.f16994i);
        this.f16989d.release();
        VideoMessage videoMessage = this.f16987b;
        if (videoMessage != null) {
            videoMessage.unregisterDownloadCallback(this.f16993h);
            this.f16987b.unregisterProgressCallback(this.f16992g);
        }
        super.onDestroy();
    }

    @OnClick
    public void play(View view) {
        v2.q qVar;
        if (!this.f16989d.isPlaying() && (qVar = this.f16990e) != null) {
            this.f16989d.a(qVar);
        }
        view.setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper.Zoomable
    public void save(View view) {
        new com.tbruyelle.rxpermissions2.a(getActivity()).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new c(view));
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper.Zoomable
    public boolean scaled() {
        return false;
    }

    public void setOnPhotoTapListener(h1.f fVar) {
        this.f16991f = fVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z10) {
        super.setUserVisibleHint(z10);
        if (!z10) {
            if (this.mPlayerView == null || !this.f16989d.isPlaying()) {
                return;
            }
            this.f16989d.stop();
            this.mImageView.setVisibility(0);
            return;
        }
        T1();
        loadData();
    }

    public void stopPlay() {
        if (this.mPlayerView != null && this.f16989d.isPlaying()) {
            this.f16989d.stop();
        }
        this.f16995j = true;
    }
}

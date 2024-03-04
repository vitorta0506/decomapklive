package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.modulars.chat.utils.g;
import com.guochao.faceshow.myPlayView.widget.ScaleType;
import com.guochao.faceshow.myPlayView.widget.TextureVideoView;
/* loaded from: classes3.dex */
public class VideoPreviewFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    LocalImageOrVideoBean f17015a;

    /* renamed from: b  reason: collision with root package name */
    g f17016b;

    /* renamed from: c  reason: collision with root package name */
    boolean f17017c = false;
    @BindView
    ImageView mImagePreview;
    @BindView
    View mPlay;
    @BindView
    TextureVideoView mTextureVideoView;

    public static VideoPreviewFragment P1(LocalImageOrVideoBean localImageOrVideoBean) {
        VideoPreviewFragment videoPreviewFragment = new VideoPreviewFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", localImageOrVideoBean);
        videoPreviewFragment.setArguments(bundle);
        videoPreviewFragment.setHasOptionsMenu(true);
        return videoPreviewFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.layout_im_video_preview;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        hc.a.g(this.mImagePreview, this.f17015a.getDisplayUri());
        this.mTextureVideoView.setVisibility(8);
        this.mTextureVideoView.setScaleType(ScaleType.FIT_CENTER);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        this.mTextureVideoView.setVideoURI(this.f17015a.getDisplayUri());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof g) {
            this.f17016b = (g) context;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f17015a = (LocalImageOrVideoBean) getArguments().getParcelable("data");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.mTextureVideoView.g();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f17017c) {
            this.mTextureVideoView.i();
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.img || id2 == R.id.video_view) {
            this.f17016b.V();
        }
    }

    @OnClick
    public void play(View view) {
        this.mImagePreview.setVisibility(8);
        this.mTextureVideoView.setVisibility(0);
        view.setVisibility(8);
        this.f17017c = true;
        this.mTextureVideoView.k();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z10) {
        TextureVideoView textureVideoView;
        super.setUserVisibleHint(z10);
        if (z10 || (textureVideoView = this.mTextureVideoView) == null || this.f17015a == null) {
            return;
        }
        textureVideoView.g();
        this.mTextureVideoView.setVisibility(8);
        this.mImagePreview.setVisibility(0);
        this.mPlay.setVisibility(0);
        if (this.f17017c) {
            this.mTextureVideoView.l();
        }
        this.f17017c = false;
    }
}

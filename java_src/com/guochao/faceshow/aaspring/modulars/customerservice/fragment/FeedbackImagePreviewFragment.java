package com.guochao.faceshow.aaspring.modulars.customerservice.fragment;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.bumptech.glide.c;
import com.github.chrisbanes.photoview.PhotoView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackImagePreviewActivity;
import h1.f;
/* loaded from: classes3.dex */
public class FeedbackImagePreviewFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    FeedbackImagePreviewActivity.MediaInfo f17451a;
    @BindView
    PhotoView mPhotoView;

    /* loaded from: classes3.dex */
    class a implements f {
        a() {
        }

        @Override // h1.f
        public void onPhotoTap(ImageView imageView, float f10, float f11) {
            if (FeedbackImagePreviewFragment.this.getActivity() instanceof FeedbackImagePreviewActivity) {
                ((FeedbackImagePreviewActivity) FeedbackImagePreviewFragment.this.getActivity()).k0();
            }
        }
    }

    public static FeedbackImagePreviewFragment P1(FeedbackImagePreviewActivity.MediaInfo mediaInfo) {
        FeedbackImagePreviewFragment feedbackImagePreviewFragment = new FeedbackImagePreviewFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", mediaInfo);
        feedbackImagePreviewFragment.setArguments(bundle);
        return feedbackImagePreviewFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.image_detail_fragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        c.u(BaseApplication.getInstance()).q(this.f17451a.c() == null ? this.f17451a.a() : this.f17451a.c()).g1(c.u(BaseApplication.getInstance()).r(this.f17451a.b())).Q0(this.mPhotoView);
        this.mPhotoView.setOnPhotoTapListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f17451a = (FeedbackImagePreviewActivity.MediaInfo) getArguments().getParcelable("data");
        }
    }
}

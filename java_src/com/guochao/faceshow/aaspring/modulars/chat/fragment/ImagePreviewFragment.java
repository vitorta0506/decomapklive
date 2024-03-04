package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.modulars.chat.utils.g;
import com.guochao.faceshow.aaspring.views.GifImageView;
/* loaded from: classes3.dex */
public class ImagePreviewFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    LocalImageOrVideoBean f17011a;

    /* renamed from: b  reason: collision with root package name */
    g f17012b;
    @BindView
    GifImageView mPhotoView;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ImagePreviewFragment.this.f17012b.V();
        }
    }

    public static ImagePreviewFragment P1(LocalImageOrVideoBean localImageOrVideoBean) {
        ImagePreviewFragment imagePreviewFragment = new ImagePreviewFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", localImageOrVideoBean);
        imagePreviewFragment.setHasOptionsMenu(true);
        imagePreviewFragment.setArguments(bundle);
        return imagePreviewFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.layout_im_image_preview;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (this.f17011a.getPath().endsWith(".gif")) {
            this.mPhotoView.setGifDrawable(this.f17011a.getDisplayUri());
        } else {
            this.mPhotoView.setVisibility(0);
            ic.a.c(this.mPhotoView).q(this.f17011a.getDisplayUri() != null ? this.f17011a.getDisplayUri() : this.f17011a.getPath()).m().h1(m0.d.i()).Q0(this.mPhotoView);
        }
        this.mPhotoView.setOnClickListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof g) {
            this.f17012b = (g) context;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f17011a = (LocalImageOrVideoBean) getArguments().getParcelable("data");
        }
    }
}

package com.guochao.faceshow.aaspring.modulars.ugc.viewholder;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.DynamicFile;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.h;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class LiveDynamicViewHolder extends BaseDynamicViewHolder {
    @BindView
    ImageView mImageViewCover;
    @BindView
    ImageView mImageViewStatus;
    @BindView
    View mMainContent;

    /* renamed from: r  reason: collision with root package name */
    int f23047r;

    /* loaded from: classes3.dex */
    class a implements h.b {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onClick(View view) {
            if (((BaseDynamicViewHolder) LiveDynamicViewHolder.this).f22557g.getLiveState() == 1) {
                LiveDynamicViewHolder.this.w(view);
            } else {
                ToastUtils.showToast(((BaseDynamicViewHolder) LiveDynamicViewHolder.this).f22551a, (int) R.string.live_over_title);
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onDoubleTabClick(View view) {
            LiveDynamicViewHolder.this.q();
        }
    }

    public LiveDynamicViewHolder(Context context, View view) {
        super(context, view);
        this.f23047r = context.getResources().getDisplayMetrics().widthPixels;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder
    public void G(DynamicBean dynamicBean) {
        super.G(dynamicBean);
        ArrayList<DynamicFile> dynamicFile = dynamicBean.getDynamicFile();
        if (dynamicFile != null && dynamicFile.size() > 0) {
            hc.a.h(this.mImageViewCover, dynamicFile.get(0).getFileUrl(), R.drawable.shape_ugc_dynamic_placeholder);
        } else {
            hc.a.h(this.mImageViewCover, Integer.valueOf((int) R.drawable.shape_ugc_dynamic_placeholder), R.drawable.shape_ugc_dynamic_placeholder);
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) this.mImageViewStatus.getDrawable();
        if (this.f22557g.getLiveState() == 1) {
            animationDrawable.start();
        } else {
            animationDrawable.stop();
        }
        ViewGroup.LayoutParams layoutParams = this.mMainContent.getLayoutParams();
        int i9 = this.f23047r;
        layoutParams.width = i9;
        layoutParams.height = i9;
    }

    @OnClick
    public void click(View view) {
        h.c(view, new a());
    }
}

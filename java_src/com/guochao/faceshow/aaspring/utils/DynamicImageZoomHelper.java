package com.guochao.faceshow.aaspring.utils;

import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.DynamicFile;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.DynamicFullscreenImageFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.ImageDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.BaseZoomHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class DynamicImageZoomHelper extends BaseZoomHelper {
    DynamicBean mDynamicBean;
    List<DynamicFile> mDynamicFiles;
    private ImageDynamicViewHolder mHolder;
    RecyclerView mRecyclerView;

    public DynamicImageZoomHelper(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.mDynamicFiles = new ArrayList();
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public Fragment createItem(int i9) {
        DynamicFullscreenImageFragment a22 = DynamicFullscreenImageFragment.a2(this.mDynamicBean.getUserId(), this.mDynamicFiles.get(i9), false, i9);
        a22.setOnScaleListener(this);
        a22.setOnPhotoTapListener(this);
        a22.d2(this.mFullScreenScrollToExitView);
        return a22;
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public int getItemCount() {
        return this.mDynamicFiles.size();
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public View getResetThumbView() {
        ViewPager viewPager = this.mViewPager;
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = viewPager != null ? this.mRecyclerView.findViewHolderForAdapterPosition(viewPager.getCurrentItem()) : null;
        if (findViewHolderForAdapterPosition != null) {
            return findViewHolderForAdapterPosition.itemView;
        }
        return super.getResetThumbView();
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper, com.guochao.faceshow.aaspring.modulars.ugc.fragment.l
    public void onScaled(MotionEvent motionEvent, int i9) {
        ImageDynamicViewHolder imageDynamicViewHolder = this.mHolder;
        if (imageDynamicViewHolder != null) {
            imageDynamicViewHolder.q();
        }
    }

    public void startZoom(ImageDynamicViewHolder imageDynamicViewHolder, DynamicBean dynamicBean, int i9, RecyclerView recyclerView, View view) {
        this.mHolder = imageDynamicViewHolder;
        this.mDynamicFiles = dynamicBean.getDynamicFile();
        this.mDynamicBean = dynamicBean;
        this.mRecyclerView = recyclerView;
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null && viewPager.getParent() != null) {
            ((ViewGroup) this.mViewPager.getParent()).removeView(this.mViewPager);
        }
        removeCurrentViewPager();
        ViewPager makeViewPager = makeViewPager();
        this.mViewPager = makeViewPager;
        BaseZoomHelper.ViewPagerAdapter viewPagerAdapter = new BaseZoomHelper.ViewPagerAdapter(this.mActivity.getSupportFragmentManager());
        this.mViewPagerAdapter = viewPagerAdapter;
        makeViewPager.setAdapter(viewPagerAdapter);
        if (i9 > 0) {
            this.mViewPager.setCurrentItem(i9);
        }
        this.mFullScreenScrollToExitView.addView(this.mViewPager, 0);
        this.mLargeView.setBackground(this.mColorDrawable);
        this.mTextView.setText(this.mActivity.getString(R.string.viewpager_indicator, new Object[]{Integer.valueOf(i9 + 1), Integer.valueOf(this.mDynamicFiles.size())}));
        this.mViewZoomHelper.startZoom(view, this.mFullScreenScrollToExitView, this.mActivity.findViewById(16908290));
        this.mTextView.setVisibility(4);
        this.mViewPager.postDelayed(this.mRunnable, 300L);
        this.mLargeView.setVisibility(0);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
        FragmentActivity fragmentActivity = this.mActivity;
        if (fragmentActivity instanceof BaseActivity) {
            ((BaseActivity) fragmentActivity).setLightStatusBar(false);
        }
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.aaspring.utils.DynamicImageZoomHelper.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                DynamicImageZoomHelper.this.mColorDrawable.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        ofInt.start();
        FragmentActivity fragmentActivity2 = this.mActivity;
        if (fragmentActivity2 instanceof BaseActivity) {
            ((BaseActivity) fragmentActivity2).setOnBackButtonPressedHandler(this);
        }
        View view2 = this.mViewSave;
        if (view2 != null) {
            view2.setOnClickListener(this.mOnClickListener);
        }
    }
}

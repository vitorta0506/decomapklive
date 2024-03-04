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
import com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.IMImagePreviewFragment;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.IMVideoPreviewFragment;
import com.guochao.faceshow.aaspring.modulars.chat.models.ImageMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.VideoMessage;
import com.guochao.faceshow.aaspring.utils.BaseZoomHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ImImageAndVideoZoomHelper extends BaseZoomHelper implements BaseChatActivity.c {
    final List<com.guochao.faceshow.aaspring.modulars.chat.models.a> mMediaMessages;
    OnPrefetchListener mOnPrefetchListener;
    RecyclerView mRecyclerView;
    private boolean mZoomOut;

    /* loaded from: classes3.dex */
    public interface OnPrefetchListener {
        void onShouldPrefetch(int i9);
    }

    public ImImageAndVideoZoomHelper(FragmentActivity fragmentActivity, OnPrefetchListener onPrefetchListener) {
        super(fragmentActivity);
        this.mMediaMessages = new ArrayList();
        this.mTextView.setVisibility(4);
        this.mOnPrefetchListener = onPrefetchListener;
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public Fragment createItem(int i9) {
        com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = this.mMediaMessages.get(i9);
        if (aVar instanceof ImageMessage) {
            IMImagePreviewFragment P1 = IMImagePreviewFragment.P1(i9);
            P1.setOnPhotoTapListener(this);
            P1.setOnScaleListener(this);
            return P1;
        } else if (aVar instanceof VideoMessage) {
            IMVideoPreviewFragment U1 = IMVideoPreviewFragment.U1(i9);
            U1.setOnPhotoTapListener(this);
            return U1;
        } else {
            return new Fragment();
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public int getItemCount() {
        return this.mMediaMessages.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0064 A[LOOP:0: B:13:0x003d->B:27:0x0064, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0062 A[SYNTHETIC] */
    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getResetThumbView() {
        /*
            r7 = this;
            androidx.viewpager.widget.ViewPager r0 = r7.mViewPager
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            androidx.recyclerview.widget.RecyclerView r0 = r7.mRecyclerView
            if (r0 == 0) goto L67
            androidx.recyclerview.widget.RecyclerView$Adapter r0 = r0.getAdapter()
            if (r0 == 0) goto L67
            androidx.recyclerview.widget.RecyclerView r0 = r7.mRecyclerView
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r0.getLayoutManager()
            if (r0 != 0) goto L19
            goto L67
        L19:
            androidx.viewpager.widget.ViewPager r0 = r7.mViewPager
            int r0 = r0.getCurrentItem()
            com.guochao.faceshow.aaspring.manager.im.b r2 = com.guochao.faceshow.aaspring.manager.im.b.l0()
            java.util.List r2 = r2.i0()
            java.lang.Object r0 = r2.get(r0)
            com.guochao.faceshow.aaspring.modulars.chat.models.a r0 = (com.guochao.faceshow.aaspring.modulars.chat.models.a) r0
            androidx.recyclerview.widget.RecyclerView r2 = r7.mRecyclerView
            androidx.recyclerview.widget.RecyclerView$LayoutManager r2 = r2.getLayoutManager()
            androidx.recyclerview.widget.LinearLayoutManager r2 = (androidx.recyclerview.widget.LinearLayoutManager) r2
            int r3 = r2.findFirstVisibleItemPosition()
            int r2 = r2.findLastVisibleItemPosition()
        L3d:
            if (r3 > r2) goto L67
            androidx.recyclerview.widget.RecyclerView r4 = r7.mRecyclerView
            androidx.recyclerview.widget.RecyclerView$ViewHolder r4 = r4.findViewHolderForAdapterPosition(r3)
            boolean r5 = r4 instanceof com.guochao.faceshow.aaspring.modulars.chat.viewholder.ImageMessageHolder
            if (r5 == 0) goto L53
            r5 = r4
            com.guochao.faceshow.aaspring.modulars.chat.viewholder.ImageMessageHolder r5 = (com.guochao.faceshow.aaspring.modulars.chat.viewholder.ImageMessageHolder) r5
            com.guochao.faceshow.aaspring.modulars.chat.models.a r6 = r5.mMessage
            if (r0 != r6) goto L53
            android.widget.ImageView r5 = r5.mImageView
            goto L54
        L53:
            r5 = r1
        L54:
            boolean r6 = r4 instanceof com.guochao.faceshow.aaspring.modulars.chat.viewholder.VideoMessageHolder
            if (r6 == 0) goto L60
            com.guochao.faceshow.aaspring.modulars.chat.viewholder.VideoMessageHolder r4 = (com.guochao.faceshow.aaspring.modulars.chat.viewholder.VideoMessageHolder) r4
            com.guochao.faceshow.aaspring.modulars.chat.models.a r6 = r4.mMessage
            if (r0 != r6) goto L60
            android.widget.ImageView r5 = r4.mImageViewThumb
        L60:
            if (r5 == 0) goto L64
            r1 = r5
            goto L67
        L64:
            int r3 = r3 + 1
            goto L3d
        L67:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.utils.ImImageAndVideoZoomHelper.getResetThumbView():android.view.View");
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper, androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
        OnPrefetchListener onPrefetchListener;
        super.onPageSelected(i9);
        if (i9 != 0 || (onPrefetchListener = this.mOnPrefetchListener) == null) {
            return;
        }
        onPrefetchListener.onShouldPrefetch(100);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity.c
    public void onPrefetchMessage(List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list) {
        if (this.mZoomOut) {
            try {
                ArrayList arrayList = new ArrayList();
                for (int i9 = 0; i9 < list.size(); i9++) {
                    com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = list.get(i9);
                    if ((aVar instanceof ImageMessage) || (aVar instanceof VideoMessage)) {
                        arrayList.add(aVar);
                    }
                }
                this.mMediaMessages.addAll(0, arrayList);
                com.guochao.faceshow.aaspring.manager.im.b.l0().O0(this.mMediaMessages);
                this.mViewPagerAdapter = new BaseZoomHelper.ViewPagerAdapter(this.mActivity.getSupportFragmentManager());
                ViewPager viewPager = this.mViewPager;
                if (viewPager != null) {
                    viewPager.setAdapter(null);
                    this.mViewPager.setAdapter(this.mViewPagerAdapter);
                    this.mViewPager.setCurrentItem(arrayList.size(), false);
                }
            } catch (Exception e10) {
                LogUtils.e("ZoomHelper", "error", e10);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper, com.guochao.faceshow.aaspring.modulars.ugc.fragment.l
    public /* bridge */ /* synthetic */ void onScaled(MotionEvent motionEvent, int i9) {
        com.guochao.faceshow.aaspring.modulars.ugc.fragment.k.a(this, motionEvent, i9);
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public void resetZoom() {
        super.resetZoom();
        this.mZoomOut = false;
        ViewPager viewPager = this.mViewPager;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return;
        }
        Object instantiateItem = this.mViewPagerAdapter.instantiateItem((ViewGroup) this.mViewPager, this.mViewPager.getCurrentItem());
        if (instantiateItem instanceof IMVideoPreviewFragment) {
            ((IMVideoPreviewFragment) instantiateItem).stopPlay();
        }
        z8.c.o().E(false);
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    boolean showIndex() {
        return false;
    }

    public void start(List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list, View view, int i9, RecyclerView recyclerView) {
        this.mMediaMessages.clear();
        this.mMediaMessages.addAll(list);
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
        this.mTextView.setText(this.mActivity.getString(R.string.viewpager_indicator, new Object[]{Integer.valueOf(i9 + 1), Integer.valueOf(getItemCount())}));
        this.mViewZoomHelper.startZoom(view, this.mFullScreenScrollToExitView, this.mActivity.findViewById(16908290));
        this.mTextView.setVisibility(4);
        this.mViewPager.postDelayed(this.mRunnable, 300L);
        this.mLargeView.setVisibility(0);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
        FragmentActivity fragmentActivity = this.mActivity;
        if (fragmentActivity instanceof BaseActivity) {
            ((BaseActivity) fragmentActivity).setLightStatusBar(false);
        }
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.aaspring.utils.ImImageAndVideoZoomHelper.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ImImageAndVideoZoomHelper.this.mColorDrawable.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
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
        onPageSelected(i9);
        this.mZoomOut = true;
    }
}

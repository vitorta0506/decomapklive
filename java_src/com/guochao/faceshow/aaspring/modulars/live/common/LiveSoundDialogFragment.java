package com.guochao.faceshow.aaspring.modulars.live.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.utils.DensityUtil;
import com.rd.PageIndicatorView;
import java.util.ArrayList;
import java.util.List;
@Route(path = RouterPath.ROUTER_LIVE_ROOM_SOUND)
/* loaded from: classes3.dex */
public class LiveSoundDialogFragment extends BaseDialogFragment {

    /* renamed from: f  reason: collision with root package name */
    static long f18816f;

    /* renamed from: a  reason: collision with root package name */
    private List<ResourceListItemBean> f18817a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f18818b = 11;

    /* renamed from: c  reason: collision with root package name */
    private ResourceCategoryItem f18819c;

    /* renamed from: d  reason: collision with root package name */
    private List<Fragment> f18820d;

    /* renamed from: e  reason: collision with root package name */
    boolean f18821e;
    @BindView
    ViewPager mPager;
    @BindView
    TextView modelTitle;
    @BindView
    PageIndicatorView pageIndicatorView;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<ResourceCategoryItem>>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<SparseArray<List<ResourceCategoryItem>>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(SparseArray<List<ResourceCategoryItem>> sparseArray, @NonNull FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> faceCastBaseResponse) {
            LiveSoundDialogFragment liveSoundDialogFragment = LiveSoundDialogFragment.this;
            if (liveSoundDialogFragment.f18821e) {
                return;
            }
            liveSoundDialogFragment.T1(sparseArray.get(liveSoundDialogFragment.f18818b));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends FragmentPagerAdapter {
        b(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return LiveSoundDialogFragment.this.f18820d.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        @NonNull
        public Fragment getItem(int i9) {
            return (Fragment) LiveSoundDialogFragment.this.f18820d.get(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements ViewPager.OnPageChangeListener {
        c() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            LiveSoundDialogFragment.this.pageIndicatorView.setSelected(i9);
        }
    }

    public static LiveSoundDialogFragment S1() {
        LiveSoundDialogFragment liveSoundDialogFragment = new LiveSoundDialogFragment();
        liveSoundDialogFragment.setArguments(new Bundle());
        return liveSoundDialogFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T1(List<ResourceCategoryItem> list) {
        if (System.currentTimeMillis() - f18816f >= 14400000) {
            com.guochao.faceshow.aaspring.manager.a.d(list);
            f18816f = System.currentTimeMillis();
        }
        int i9 = 0;
        if (list != null && !list.isEmpty()) {
            this.f18819c = list.get(0);
            this.f18817a.clear();
            this.f18817a.addAll(this.f18819c.getGifList());
        }
        int size = this.f18817a.size() % 8 == 0 ? this.f18817a.size() / 8 : (this.f18817a.size() / 8) + 1;
        while (i9 < size) {
            List<ResourceListItemBean> list2 = this.f18817a;
            int i10 = i9 * 8;
            i9++;
            int i11 = i9 * 8;
            if (i11 >= list2.size()) {
                i11 = this.f18817a.size();
            }
            this.f18820d.add(LiveSoundFragment.S1(list2.subList(i10, i11), this.f18819c));
        }
        this.mPager.setAdapter(new b(getChildFragmentManager()));
        this.mPager.addOnPageChangeListener(new c());
        this.pageIndicatorView.setCount(size);
        if (size <= 1) {
            this.pageIndicatorView.setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.live_sound_more_menu;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f18820d = new ArrayList();
        this.modelTitle.setText(R.string.live_sound_effect);
        ((ViewGroup.MarginLayoutParams) this.mPager.getLayoutParams()).leftMargin = DensityUtil.dp2px(2.5f);
        ((ViewGroup.MarginLayoutParams) this.mPager.getLayoutParams()).rightMargin = DensityUtil.dp2px(2.5f);
        com.guochao.faceshow.aaspring.manager.a.g().w(this, new a(), this.f18818b);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog_FullScreen);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        createBottomDialog.setCanceledOnTouchOutside(true);
        return createBottomDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f18821e = true;
        super.onDismiss(dialogInterface);
    }
}

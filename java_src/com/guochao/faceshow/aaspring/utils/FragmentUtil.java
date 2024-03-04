package com.guochao.faceshow.aaspring.utils;

import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.guochao.faceshow.R;
import java.util.List;
/* loaded from: classes3.dex */
public class FragmentUtil {
    private FragmentManager mFragmentManger;
    private List<Fragment> mFragments;

    public static void showFragmentAsDialog(FragmentManager fragmentManager, int i9, Fragment fragment, boolean z10, String str) {
        Fragment findFragmentByTag;
        if (TextUtils.isEmpty(str) || (findFragmentByTag = fragmentManager.findFragmentByTag(str)) == null || !findFragmentByTag.isAdded()) {
            FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
            if (z10) {
                beginTransaction.addToBackStack(str);
            }
            beginTransaction.setCustomAnimations(R.anim.pop_in_bottom_to_top, R.anim.pop_out_top_to_bottom, R.anim.pop_in_bottom_to_top, R.anim.pop_out_top_to_bottom).add(i9, fragment, str).commitAllowingStateLoss();
        }
    }

    public void hideFragment(Fragment fragment) {
        FragmentTransaction beginTransaction = this.mFragmentManger.beginTransaction();
        beginTransaction.hide(fragment);
        beginTransaction.commitAllowingStateLoss();
    }

    public void initFragments(int i9, FragmentManager fragmentManager, List<Fragment> list) {
        this.mFragments = list;
        this.mFragmentManger = fragmentManager;
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        for (Fragment fragment : list) {
            beginTransaction.add(i9, fragment, fragment.getClass().getSimpleName());
            beginTransaction.hide(fragment);
        }
        beginTransaction.commitAllowingStateLoss();
    }

    public void showFragment(Fragment fragment) {
        FragmentTransaction beginTransaction = this.mFragmentManger.beginTransaction();
        for (Fragment fragment2 : this.mFragments) {
            beginTransaction.hide(fragment2);
        }
        beginTransaction.show(fragment);
        beginTransaction.commitAllowingStateLoss();
    }
}

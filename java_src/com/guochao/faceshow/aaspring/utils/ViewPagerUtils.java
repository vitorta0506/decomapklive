package com.guochao.faceshow.aaspring.utils;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.facebook.internal.security.CertificateUtil;
/* loaded from: classes3.dex */
public class ViewPagerUtils {
    public static Fragment getCurrent(FragmentManager fragmentManager, ViewPager viewPager) {
        return getFragmentAt(fragmentManager, viewPager, viewPager.getCurrentItem());
    }

    public static Fragment getFragmentAt(FragmentManager fragmentManager, ViewPager viewPager, int i9) {
        if (viewPager == null) {
            return null;
        }
        PagerAdapter adapter = viewPager.getAdapter();
        if (adapter instanceof FragmentStatePagerAdapter) {
            return (Fragment) adapter.instantiateItem((ViewGroup) viewPager, i9);
        }
        if (adapter instanceof FragmentPagerAdapter) {
            return fragmentManager.findFragmentByTag(makeFragmentName(viewPager.getId(), i9));
        }
        return null;
    }

    private static String makeFragmentName(int i9, long j10) {
        return "android:switcher:" + i9 + CertificateUtil.DELIMITER + j10;
    }

    public static Fragment getFragmentAt(FragmentManager fragmentManager, ViewPager2 viewPager2, int i9) {
        if (viewPager2 == null || viewPager2.getAdapter() == null) {
            return null;
        }
        return fragmentManager.findFragmentByTag("f" + viewPager2.getAdapter().getItemId(i9));
    }
}

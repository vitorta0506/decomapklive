package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ActivityTransitionAnimUtils {
    public static void startActivityByDownToUp(Context context, Intent intent) {
        ActivityOptionsCompat makeCustomAnimation = ActivityOptionsCompat.makeCustomAnimation(context, R.anim.bottom_to_top, R.anim.activity_stay);
        intent.putExtra("anim", true);
        PackageUtils.checkIntent(context, intent);
        ContextCompat.startActivity(context, intent, makeCustomAnimation.toBundle());
    }

    public static void startActivityByDownToUp(Fragment fragment, Intent intent) {
        if (fragment.getActivity() == null) {
            return;
        }
        ActivityOptionsCompat makeCustomAnimation = ActivityOptionsCompat.makeCustomAnimation(fragment.getActivity(), R.anim.bottom_to_top, R.anim.activity_stay);
        intent.putExtra("anim", true);
        fragment.startActivity(intent, makeCustomAnimation.toBundle());
    }
}

package com.guochao.faceshow.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.pusher.beauty.FilterItem;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class Tool {
    public static List<VideoItem> mDataList = new ArrayList();
    private static PopupWindow popWindow;

    public static PopupWindow creatPopWindowBottomAnim(View view, View view2, int i9, int i10) {
        popWindow = new PopupWindow(view, i9, i10);
        ColorDrawable colorDrawable = new ColorDrawable(14474460);
        popWindow.setFocusable(true);
        popWindow.setTouchable(true);
        popWindow.setInputMethodMode(1);
        popWindow.setSoftInputMode(16);
        popWindow.setOutsideTouchable(true);
        popWindow.setBackgroundDrawable(colorDrawable);
        popWindow.showAtLocation(view2, 83, 0, 0);
        return popWindow;
    }

    public static PopupWindow creatPopWindowCenter(View view, View view2, int i9) {
        view2.postDelayed(new Runnable() { // from class: com.guochao.faceshow.utils.Tool.1
            @Override // java.lang.Runnable
            public void run() {
                Tool.setBackgroundAlpha(AppManager.getInstance().getTopActivity(), 0.6f);
            }
        }, 300L);
        popWindow = new PopupWindow(view, i9, -2);
        ColorDrawable colorDrawable = new ColorDrawable(0);
        popWindow.setFocusable(true);
        popWindow.setTouchable(true);
        popWindow.setOutsideTouchable(true);
        popWindow.setBackgroundDrawable(colorDrawable);
        popWindow.setAnimationStyle(R.style.mypopwindow_anim_style);
        popWindow.showAtLocation(view2, 17, 0, 0);
        popWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.guochao.faceshow.utils.Tool.2
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                Tool.setBackgroundAlpha(AppManager.getInstance().getTopActivity(), 1.0f);
            }
        });
        return popWindow;
    }

    public static PopupWindow creatPopWindowTopshareAnim(View view, View view2) {
        popWindow = new PopupWindow(view, -1, -2);
        new ColorDrawable(14474460);
        popWindow.setFocusable(false);
        popWindow.setTouchable(true);
        popWindow.setOutsideTouchable(false);
        popWindow.setAnimationStyle(R.style.zz_popwindow_anim_style);
        popWindow.showAtLocation(view2, 51, 0, 10);
        return popWindow;
    }

    public static PopupWindow createPopWindowBottomInstance(View view, int i9, int i10) {
        PopupWindow popupWindow = new PopupWindow(view, i9, i10);
        ColorDrawable colorDrawable = new ColorDrawable(Color.parseColor("#00000000"));
        popupWindow.setFocusable(true);
        popupWindow.setTouchable(true);
        popupWindow.setInputMethodMode(1);
        popupWindow.setSoftInputMode(16);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setElevation(0.0f);
        popupWindow.setBackgroundDrawable(colorDrawable);
        return popupWindow;
    }

    public static PopupWindow createPopWindowInstance(View view, int i9, int i10) {
        PopupWindow popupWindow = new PopupWindow(view, i9, i10);
        ColorDrawable colorDrawable = new ColorDrawable(view.getResources().getColor(R.color.transparent));
        popupWindow.setFocusable(true);
        popupWindow.setTouchable(true);
        popupWindow.setInputMethodMode(1);
        popupWindow.setSoftInputMode(16);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(colorDrawable);
        return popupWindow;
    }

    public static PopupWindow createPopWindowTopAnimInstance(View view) {
        PopupWindow popupWindow = new PopupWindow(view, -2, -2);
        new ColorDrawable(14474460);
        popupWindow.setFocusable(false);
        popupWindow.setTouchable(false);
        popupWindow.setOutsideTouchable(false);
        popupWindow.setAnimationStyle(R.style.zz_popwindow_anim_style);
        return popupWindow;
    }

    public static void dismissPopWindow() {
        if (popWindow == null) {
            return;
        }
        try {
            setBackgroundAlpha(AppManager.getInstance().getTopActivity(), 1.0f);
            if (popWindow.isShowing()) {
                popWindow.dismiss();
                popWindow = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static List<FilterItem> getLJList() {
        return LivePlayerProvider.beautyManager().getFilterItems();
    }

    public static ArrayList<String> getljListName(Activity activity) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(activity.getString(R.string.normal_my));
        arrayList.add("F1");
        arrayList.add("F2");
        arrayList.add("F3");
        arrayList.add("F4");
        arrayList.add("F5");
        arrayList.add("F6");
        arrayList.add("F7");
        arrayList.add("F8");
        arrayList.add("F9");
        return arrayList;
    }

    public static String helloHistoryTime(long j10, Context context) {
        long j11 = (((j10 / 60) / 1000) / 60) / 24;
        if (j11 > 30) {
            long j12 = j11 / 30;
            if (j12 == 1) {
                return j12 + " " + context.getString(R.string.time_month_ago);
            }
            return j12 + " " + context.getString(R.string.time_months_ago);
        }
        int i9 = (j11 > 1L ? 1 : (j11 == 1L ? 0 : -1));
        if (i9 > 0) {
            return j11 + " " + context.getString(R.string.time_days_ago);
        } else if (i9 == 0) {
            return j11 + " " + context.getString(R.string.time_day_ago);
        } else {
            long j13 = ((j10 / 1000) / 60) / 60;
            int i10 = (j13 > 1L ? 1 : (j13 == 1L ? 0 : -1));
            if (i10 > 0) {
                return j13 + " " + context.getString(R.string.time_huors_ago);
            } else if (i10 == 0) {
                return j13 + " " + context.getString(R.string.time_huor_ago);
            } else {
                int i11 = (((int) j10) / 1000) / 60;
                if (i11 < 1) {
                    i11 = 1;
                }
                if (i11 == 1) {
                    return context.getString(R.string.message_time);
                }
                return i11 + " " + context.getString(R.string.time_minutes_ago);
            }
        }
    }

    public static void setBackgroundAlpha(Activity activity, float f10) {
        if (activity == null) {
            return;
        }
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = f10;
        activity.getWindow().setAttributes(attributes);
    }

    public static void setViewPadding(View view, int i9) {
        if (view == null) {
            return;
        }
        view.setPadding(i9, i9, i9, i9);
    }

    public static void timeString(String str, TextView textView, Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        if (TextUtils.isEmpty(str)) {
            str = "" + (System.currentTimeMillis() - 60000);
        }
        textView.setText(helloHistoryTime(currentTimeMillis - Long.valueOf(str).longValue(), context));
    }
}

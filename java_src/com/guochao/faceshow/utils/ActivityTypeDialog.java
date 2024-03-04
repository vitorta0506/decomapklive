package com.guochao.faceshow.utils;

import android.app.Activity;
import android.app.Dialog;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.web.WebViewActivity;
/* loaded from: classes4.dex */
public class ActivityTypeDialog {
    public static void getPrizeDialog(final Activity activity, final String str) {
        final Dialog dialog = new Dialog(activity, R.style.simpleDialogStyle);
        View inflate = View.inflate(activity, R.layout.christmas_activity_prize_dialog, null);
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
        attributes.width = (int) (defaultDisplay.getWidth() * 0.6d);
        attributes.height = (int) (defaultDisplay.getHeight() * 0.5d);
        dialog.getWindow().setAttributes(attributes);
        dialog.setContentView(inflate);
        dialog.show();
        ((ImageView) inflate.findViewById(R.id.dialog_close)).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.utils.ActivityTypeDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        ((TextView) inflate.findViewById(R.id.get_prize)).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.utils.ActivityTypeDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WebViewActivity.createBuilder().m(str).g(true).k(str).a(activity);
                dialog.dismiss();
            }
        });
    }

    public static void sharePrizeDialog(final Activity activity, final String str) {
        final Dialog dialog = new Dialog(activity, R.style.simpleDialogStyle);
        View inflate = View.inflate(activity, R.layout.christmas_activity_dialog, null);
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
        attributes.width = (int) (defaultDisplay.getWidth() * 0.6d);
        attributes.height = (int) (defaultDisplay.getHeight() * 0.5d);
        dialog.getWindow().setAttributes(attributes);
        dialog.setContentView(inflate);
        dialog.show();
        ((ImageView) inflate.findViewById(R.id.dialog_close)).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.utils.ActivityTypeDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        ((TextView) inflate.findViewById(R.id.get_prize)).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.utils.ActivityTypeDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WebViewActivity.createBuilder().m(str).g(true).k(str).a(activity);
                dialog.dismiss();
            }
        });
    }
}

package com.tencent.rtmp.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.RequiresApi;
import com.tencent.liteav.base.util.LiteavLog;
/* loaded from: classes4.dex */
public class TXSubtitleView extends RelativeLayout {
    private static final String TAG = "TXSubtitleView";
    private Handler mMainHandler;
    private ImageView mSubtitleIV;

    public TXSubtitleView(Context context) {
        super(context);
        init();
    }

    private void init() {
        this.mMainHandler = new Handler(Looper.getMainLooper());
        this.mSubtitleIV = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        addView(this.mSubtitleIV, layoutParams);
    }

    private void runOnUIThread(Runnable runnable) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            this.mMainHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public void show(final Bitmap bitmap) {
        LiteavLog.i(TAG, "[show] subtitleBitmap =".concat(String.valueOf(bitmap)));
        runOnUIThread(new Runnable() { // from class: com.tencent.rtmp.ui.TXSubtitleView.1
            @Override // java.lang.Runnable
            public final void run() {
                TXSubtitleView.this.mSubtitleIV.setImageBitmap(bitmap);
            }
        });
    }

    public TXSubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public TXSubtitleView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        init();
    }

    @RequiresApi(api = 21)
    public TXSubtitleView(Context context, AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9, i10);
        init();
    }
}

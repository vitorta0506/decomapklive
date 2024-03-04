package com.guochao.faceshow.aaspring.utils.listener;

import android.view.View;
import com.guochao.faceshow.aaspring.utils.SoundPoolManager;
/* loaded from: classes3.dex */
public abstract class BaseSoundEffectListener implements View.OnClickListener {
    public abstract void doClick(View view);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SoundPoolManager.getInstance(view.getContext()).playDefaultButtonSound();
        doClick(view);
    }
}

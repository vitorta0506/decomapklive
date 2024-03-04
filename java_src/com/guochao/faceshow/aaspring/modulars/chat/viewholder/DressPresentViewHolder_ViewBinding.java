package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class DressPresentViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private DressPresentViewHolder f17271b;

    @UiThread
    public DressPresentViewHolder_ViewBinding(DressPresentViewHolder dressPresentViewHolder, View view) {
        this.f17271b = dressPresentViewHolder;
        dressPresentViewHolder.mImageView = (ImageView) c.d(view, R.id.icon, "field 'mImageView'", ImageView.class);
        dressPresentViewHolder.mTextViewTitle = (TextView) c.d(view, R.id.title, "field 'mTextViewTitle'", TextView.class);
        dressPresentViewHolder.mTextViewInfo = (TextView) c.d(view, R.id.info, "field 'mTextViewInfo'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DressPresentViewHolder dressPresentViewHolder = this.f17271b;
        if (dressPresentViewHolder != null) {
            this.f17271b = null;
            dressPresentViewHolder.mImageView = null;
            dressPresentViewHolder.mTextViewTitle = null;
            dressPresentViewHolder.mTextViewInfo = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

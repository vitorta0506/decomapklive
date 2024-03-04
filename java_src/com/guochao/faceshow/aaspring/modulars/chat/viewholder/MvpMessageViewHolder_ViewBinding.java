package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public final class MvpMessageViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private MvpMessageViewHolder f17286b;

    @UiThread
    public MvpMessageViewHolder_ViewBinding(MvpMessageViewHolder mvpMessageViewHolder, View view) {
        this.f17286b = mvpMessageViewHolder;
        mvpMessageViewHolder.title = (TextView) c.d(view, R.id.title, "field 'title'", TextView.class);
        mvpMessageViewHolder.imageView = (ImageView) c.d(view, R.id.icon, "field 'imageView'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        MvpMessageViewHolder mvpMessageViewHolder = this.f17286b;
        if (mvpMessageViewHolder != null) {
            this.f17286b = null;
            mvpMessageViewHolder.title = null;
            mvpMessageViewHolder.imageView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

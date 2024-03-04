package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class LiveShareViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveShareViewHolder f17285b;

    @UiThread
    public LiveShareViewHolder_ViewBinding(LiveShareViewHolder liveShareViewHolder, View view) {
        this.f17285b = liveShareViewHolder;
        liveShareViewHolder.mHeadPortraitView = (HeadPortraitView) c.d(view, R.id.head, "field 'mHeadPortraitView'", HeadPortraitView.class);
        liveShareViewHolder.mTextViewNickName = (TextView) c.d(view, R.id.nickname, "field 'mTextViewNickName'", TextView.class);
        liveShareViewHolder.mTextViewAddress = (TextView) c.d(view, R.id.address, "field 'mTextViewAddress'", TextView.class);
        liveShareViewHolder.mAddressArea = c.c(view, R.id.address_area, "field 'mAddressArea'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveShareViewHolder liveShareViewHolder = this.f17285b;
        if (liveShareViewHolder != null) {
            this.f17285b = null;
            liveShareViewHolder.mHeadPortraitView = null;
            liveShareViewHolder.mTextViewNickName = null;
            liveShareViewHolder.mTextViewAddress = null;
            liveShareViewHolder.mAddressArea = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

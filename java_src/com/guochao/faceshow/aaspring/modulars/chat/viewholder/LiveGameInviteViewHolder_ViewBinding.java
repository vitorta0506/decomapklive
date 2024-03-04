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
public class LiveGameInviteViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveGameInviteViewHolder f17284b;

    @UiThread
    public LiveGameInviteViewHolder_ViewBinding(LiveGameInviteViewHolder liveGameInviteViewHolder, View view) {
        this.f17284b = liveGameInviteViewHolder;
        liveGameInviteViewHolder.mTextViewGameName = (TextView) c.d(view, R.id.game_name, "field 'mTextViewGameName'", TextView.class);
        liveGameInviteViewHolder.mTextViewContent = (TextView) c.d(view, R.id.name, "field 'mTextViewContent'", TextView.class);
        liveGameInviteViewHolder.mImageViewIcon = (ImageView) c.d(view, R.id.game_icon, "field 'mImageViewIcon'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveGameInviteViewHolder liveGameInviteViewHolder = this.f17284b;
        if (liveGameInviteViewHolder != null) {
            this.f17284b = null;
            liveGameInviteViewHolder.mTextViewGameName = null;
            liveGameInviteViewHolder.mTextViewContent = null;
            liveGameInviteViewHolder.mImageViewIcon = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

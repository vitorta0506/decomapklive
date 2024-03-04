package com.guochao.faceshow.aaspring.modulars.live.viewholder.watcher;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
/* loaded from: classes3.dex */
public class SubBroadCasterInfoMaskViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SubBroadCasterInfoMaskViewHolder f19940b;

    /* renamed from: c  reason: collision with root package name */
    private View f19941c;

    /* renamed from: d  reason: collision with root package name */
    private View f19942d;

    /* renamed from: e  reason: collision with root package name */
    private View f19943e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SubBroadCasterInfoMaskViewHolder f19944a;

        a(SubBroadCasterInfoMaskViewHolder subBroadCasterInfoMaskViewHolder) {
            this.f19944a = subBroadCasterInfoMaskViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19944a.clickUserName(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SubBroadCasterInfoMaskViewHolder f19946a;

        b(SubBroadCasterInfoMaskViewHolder subBroadCasterInfoMaskViewHolder) {
            this.f19946a = subBroadCasterInfoMaskViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19946a.showRichBox(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SubBroadCasterInfoMaskViewHolder f19948a;

        c(SubBroadCasterInfoMaskViewHolder subBroadCasterInfoMaskViewHolder) {
            this.f19948a = subBroadCasterInfoMaskViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19948a.showRichBox(view);
        }
    }

    @UiThread
    public SubBroadCasterInfoMaskViewHolder_ViewBinding(SubBroadCasterInfoMaskViewHolder subBroadCasterInfoMaskViewHolder, View view) {
        this.f19940b = subBroadCasterInfoMaskViewHolder;
        View c10 = butterknife.internal.c.c(view, R.id.user_name, "field 'mTextViewUserName' and method 'clickUserName'");
        subBroadCasterInfoMaskViewHolder.mTextViewUserName = (TextView) butterknife.internal.c.a(c10, R.id.user_name, "field 'mTextViewUserName'", TextView.class);
        this.f19941c = c10;
        c10.setOnClickListener(new a(subBroadCasterInfoMaskViewHolder));
        View c11 = butterknife.internal.c.c(view, R.id.avatar_group_view, "field 'mAvatarGroupView' and method 'showRichBox'");
        subBroadCasterInfoMaskViewHolder.mAvatarGroupView = (AvatarGroupView) butterknife.internal.c.a(c11, R.id.avatar_group_view, "field 'mAvatarGroupView'", AvatarGroupView.class);
        this.f19942d = c11;
        c11.setOnClickListener(new b(subBroadCasterInfoMaskViewHolder));
        View c12 = butterknife.internal.c.c(view, R.id.iv_nothing, "field 'ivNothing' and method 'showRichBox'");
        subBroadCasterInfoMaskViewHolder.ivNothing = (ImageView) butterknife.internal.c.a(c12, R.id.iv_nothing, "field 'ivNothing'", ImageView.class);
        this.f19943e = c12;
        c12.setOnClickListener(new c(subBroadCasterInfoMaskViewHolder));
        subBroadCasterInfoMaskViewHolder.mTextViewIndex = (TextView) butterknife.internal.c.d(view, R.id.index, "field 'mTextViewIndex'", TextView.class);
        subBroadCasterInfoMaskViewHolder.mBroadcasterIcon = (ImageView) butterknife.internal.c.d(view, R.id.icon_broadcaster, "field 'mBroadcasterIcon'", ImageView.class);
        subBroadCasterInfoMaskViewHolder.mTextViewFcoins = (TextView) butterknife.internal.c.d(view, R.id.live_fb_count, "field 'mTextViewFcoins'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SubBroadCasterInfoMaskViewHolder subBroadCasterInfoMaskViewHolder = this.f19940b;
        if (subBroadCasterInfoMaskViewHolder != null) {
            this.f19940b = null;
            subBroadCasterInfoMaskViewHolder.mTextViewUserName = null;
            subBroadCasterInfoMaskViewHolder.mAvatarGroupView = null;
            subBroadCasterInfoMaskViewHolder.ivNothing = null;
            subBroadCasterInfoMaskViewHolder.mTextViewIndex = null;
            subBroadCasterInfoMaskViewHolder.mBroadcasterIcon = null;
            subBroadCasterInfoMaskViewHolder.mTextViewFcoins = null;
            this.f19941c.setOnClickListener(null);
            this.f19941c = null;
            this.f19942d.setOnClickListener(null);
            this.f19942d = null;
            this.f19943e.setOnClickListener(null);
            this.f19943e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

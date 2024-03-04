package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class CollectionViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private CollectionViewHolder f17139b;

    /* renamed from: c  reason: collision with root package name */
    private View f17140c;

    /* renamed from: d  reason: collision with root package name */
    private View f17141d;

    /* renamed from: e  reason: collision with root package name */
    private View f17142e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionViewHolder f17143a;

        a(CollectionViewHolder collectionViewHolder) {
            this.f17143a = collectionViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17143a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionViewHolder f17145a;

        b(CollectionViewHolder collectionViewHolder) {
            this.f17145a = collectionViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17145a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionViewHolder f17147a;

        c(CollectionViewHolder collectionViewHolder) {
            this.f17147a = collectionViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17147a.onViewClicked(view);
        }
    }

    @UiThread
    public CollectionViewHolder_ViewBinding(CollectionViewHolder collectionViewHolder, View view) {
        this.f17139b = collectionViewHolder;
        View c10 = butterknife.internal.c.c(view, R.id.avatar_view, "field 'userAvatar' and method 'onViewClicked'");
        collectionViewHolder.userAvatar = (HeadPortraitView) butterknife.internal.c.a(c10, R.id.avatar_view, "field 'userAvatar'", HeadPortraitView.class);
        this.f17140c = c10;
        c10.setOnClickListener(new a(collectionViewHolder));
        View c11 = butterknife.internal.c.c(view, R.id.user_name, "field 'userName' and method 'onViewClicked'");
        collectionViewHolder.userName = (TextView) butterknife.internal.c.a(c11, R.id.user_name, "field 'userName'", TextView.class);
        this.f17141d = c11;
        c11.setOnClickListener(new b(collectionViewHolder));
        View c12 = butterknife.internal.c.c(view, R.id.user_name_lay, "field 'userNameLay' and method 'onViewClicked'");
        collectionViewHolder.userNameLay = (LinearLayout) butterknife.internal.c.a(c12, R.id.user_name_lay, "field 'userNameLay'", LinearLayout.class);
        this.f17142e = c12;
        c12.setOnClickListener(new c(collectionViewHolder));
        collectionViewHolder.content = (TextView) butterknife.internal.c.d(view, R.id.content, "field 'content'", TextView.class);
        collectionViewHolder.iconVideo = (ImageView) butterknife.internal.c.d(view, R.id.icon_video, "field 'iconVideo'", ImageView.class);
        collectionViewHolder.bgVideo = (ImageView) butterknife.internal.c.d(view, R.id.bg_video, "field 'bgVideo'", ImageView.class);
        collectionViewHolder.iconVideoLay = (FrameLayout) butterknife.internal.c.d(view, R.id.icon_video_lay, "field 'iconVideoLay'", FrameLayout.class);
        collectionViewHolder.timeHistory = (TextView) butterknife.internal.c.d(view, R.id.time_history, "field 'timeHistory'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CollectionViewHolder collectionViewHolder = this.f17139b;
        if (collectionViewHolder != null) {
            this.f17139b = null;
            collectionViewHolder.userAvatar = null;
            collectionViewHolder.userName = null;
            collectionViewHolder.userNameLay = null;
            collectionViewHolder.content = null;
            collectionViewHolder.iconVideo = null;
            collectionViewHolder.bgVideo = null;
            collectionViewHolder.iconVideoLay = null;
            collectionViewHolder.timeHistory = null;
            this.f17140c.setOnClickListener(null);
            this.f17140c = null;
            this.f17141d.setOnClickListener(null);
            this.f17141d = null;
            this.f17142e.setOnClickListener(null);
            this.f17142e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

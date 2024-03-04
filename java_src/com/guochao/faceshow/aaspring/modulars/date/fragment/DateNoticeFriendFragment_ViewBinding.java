package com.guochao.faceshow.aaspring.modulars.date.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public final class DateNoticeFriendFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private DateNoticeFriendFragment f17593b;

    /* renamed from: c  reason: collision with root package name */
    private View f17594c;

    /* renamed from: d  reason: collision with root package name */
    private View f17595d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DateNoticeFriendFragment f17596a;

        a(DateNoticeFriendFragment dateNoticeFriendFragment) {
            this.f17596a = dateNoticeFriendFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17596a.tellEverybody(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DateNoticeFriendFragment f17598a;

        b(DateNoticeFriendFragment dateNoticeFriendFragment) {
            this.f17598a = dateNoticeFriendFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17598a.dismiss(view);
        }
    }

    @UiThread
    public DateNoticeFriendFragment_ViewBinding(DateNoticeFriendFragment dateNoticeFriendFragment, View view) {
        this.f17593b = dateNoticeFriendFragment;
        View c10 = butterknife.internal.c.c(view, R.id.tell_everybody, "method 'tellEverybody'");
        this.f17594c = c10;
        c10.setOnClickListener(new a(dateNoticeFriendFragment));
        View c11 = butterknife.internal.c.c(view, R.id.skip, "method 'dismiss'");
        this.f17595d = c11;
        c11.setOnClickListener(new b(dateNoticeFriendFragment));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        if (this.f17593b != null) {
            this.f17593b = null;
            this.f17594c.setOnClickListener(null);
            this.f17594c = null;
            this.f17595d.setOnClickListener(null);
            this.f17595d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

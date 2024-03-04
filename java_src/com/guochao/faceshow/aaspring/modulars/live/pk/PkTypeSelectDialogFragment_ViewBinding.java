package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
/* loaded from: classes3.dex */
public class PkTypeSelectDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PkTypeSelectDialogFragment f19743b;

    /* renamed from: c  reason: collision with root package name */
    private View f19744c;

    /* renamed from: d  reason: collision with root package name */
    private View f19745d;

    /* renamed from: e  reason: collision with root package name */
    private View f19746e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkTypeSelectDialogFragment f19747a;

        a(PkTypeSelectDialogFragment pkTypeSelectDialogFragment) {
            this.f19747a = pkTypeSelectDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19747a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkTypeSelectDialogFragment f19749a;

        b(PkTypeSelectDialogFragment pkTypeSelectDialogFragment) {
            this.f19749a = pkTypeSelectDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19749a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkTypeSelectDialogFragment f19751a;

        c(PkTypeSelectDialogFragment pkTypeSelectDialogFragment) {
            this.f19751a = pkTypeSelectDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19751a.onViewClicked(view);
        }
    }

    @UiThread
    public PkTypeSelectDialogFragment_ViewBinding(PkTypeSelectDialogFragment pkTypeSelectDialogFragment, View view) {
        this.f19743b = pkTypeSelectDialogFragment;
        pkTypeSelectDialogFragment.tvPkFriendToMatch = (TextView) butterknife.internal.c.d(view, R.id.tv_pk_friend_to_match, "field 'tvPkFriendToMatch'", TextView.class);
        pkTypeSelectDialogFragment.avatarGroupView = (AvatarGroupView) butterknife.internal.c.d(view, R.id.avatar_group_view, "field 'avatarGroupView'", AvatarGroupView.class);
        pkTypeSelectDialogFragment.tvWinNumber = (TextView) butterknife.internal.c.d(view, R.id.tv_win_number, "field 'tvWinNumber'", TextView.class);
        pkTypeSelectDialogFragment.tvFbNumber = (TextView) butterknife.internal.c.d(view, R.id.tv_fb_number, "field 'tvFbNumber'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.ll_pk_record, "field 'llPkRecord' and method 'onViewClicked'");
        pkTypeSelectDialogFragment.llPkRecord = c10;
        this.f19744c = c10;
        c10.setOnClickListener(new a(pkTypeSelectDialogFragment));
        View c11 = butterknife.internal.c.c(view, R.id.rl_friend_match, "method 'onViewClicked'");
        this.f19745d = c11;
        c11.setOnClickListener(new b(pkTypeSelectDialogFragment));
        View c12 = butterknife.internal.c.c(view, R.id.rl_random_match, "method 'onViewClicked'");
        this.f19746e = c12;
        c12.setOnClickListener(new c(pkTypeSelectDialogFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PkTypeSelectDialogFragment pkTypeSelectDialogFragment = this.f19743b;
        if (pkTypeSelectDialogFragment != null) {
            this.f19743b = null;
            pkTypeSelectDialogFragment.tvPkFriendToMatch = null;
            pkTypeSelectDialogFragment.avatarGroupView = null;
            pkTypeSelectDialogFragment.tvWinNumber = null;
            pkTypeSelectDialogFragment.tvFbNumber = null;
            pkTypeSelectDialogFragment.llPkRecord = null;
            this.f19744c.setOnClickListener(null);
            this.f19744c = null;
            this.f19745d.setOnClickListener(null);
            this.f19745d = null;
            this.f19746e.setOnClickListener(null);
            this.f19746e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

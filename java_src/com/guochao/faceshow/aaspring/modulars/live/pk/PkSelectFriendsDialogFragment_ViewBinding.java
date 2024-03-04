package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class PkSelectFriendsDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PkSelectFriendsDialogFragment f19733b;

    /* renamed from: c  reason: collision with root package name */
    private View f19734c;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkSelectFriendsDialogFragment f19735a;

        a(PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment) {
            this.f19735a = pkSelectFriendsDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19735a.onViewClicked(view);
        }
    }

    @UiThread
    public PkSelectFriendsDialogFragment_ViewBinding(PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment, View view) {
        this.f19733b = pkSelectFriendsDialogFragment;
        pkSelectFriendsDialogFragment.tvPkFriendToMatch = (TextView) c.d(view, R.id.tv_pk_friend_to_match, "field 'tvPkFriendToMatch'", TextView.class);
        pkSelectFriendsDialogFragment.etSearch = (EditText) c.d(view, R.id.et_search, "field 'etSearch'", EditText.class);
        View c10 = c.c(view, R.id.delete_edit, "field 'deleteEdit' and method 'onViewClicked'");
        pkSelectFriendsDialogFragment.deleteEdit = (ImageView) c.a(c10, R.id.delete_edit, "field 'deleteEdit'", ImageView.class);
        this.f19734c = c10;
        c10.setOnClickListener(new a(pkSelectFriendsDialogFragment));
        pkSelectFriendsDialogFragment.rcvList = (RecyclerView) c.d(view, R.id.rcv_list, "field 'rcvList'", RecyclerView.class);
        pkSelectFriendsDialogFragment.emptyView = (ImageView) c.d(view, R.id.empty_view, "field 'emptyView'", ImageView.class);
        pkSelectFriendsDialogFragment.loadingAnim = (SVGAImageView) c.d(view, R.id.loading_anim, "field 'loadingAnim'", SVGAImageView.class);
        pkSelectFriendsDialogFragment.content = (LinearLayout) c.d(view, R.id.content, "field 'content'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment = this.f19733b;
        if (pkSelectFriendsDialogFragment != null) {
            this.f19733b = null;
            pkSelectFriendsDialogFragment.tvPkFriendToMatch = null;
            pkSelectFriendsDialogFragment.etSearch = null;
            pkSelectFriendsDialogFragment.deleteEdit = null;
            pkSelectFriendsDialogFragment.rcvList = null;
            pkSelectFriendsDialogFragment.emptyView = null;
            pkSelectFriendsDialogFragment.loadingAnim = null;
            pkSelectFriendsDialogFragment.content = null;
            this.f19734c.setOnClickListener(null);
            this.f19734c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

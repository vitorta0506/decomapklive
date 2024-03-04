package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ApplyConversationListDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ApplyConversationListDialogFragment f19192b;

    /* renamed from: c  reason: collision with root package name */
    private View f19193c;

    /* renamed from: d  reason: collision with root package name */
    private View f19194d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ApplyConversationListDialogFragment f19195a;

        a(ApplyConversationListDialogFragment applyConversationListDialogFragment) {
            this.f19195a = applyConversationListDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19195a.applyLink(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ApplyConversationListDialogFragment f19197a;

        b(ApplyConversationListDialogFragment applyConversationListDialogFragment) {
            this.f19197a = applyConversationListDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19197a.close(view);
        }
    }

    @UiThread
    public ApplyConversationListDialogFragment_ViewBinding(ApplyConversationListDialogFragment applyConversationListDialogFragment, View view) {
        this.f19192b = applyConversationListDialogFragment;
        applyConversationListDialogFragment.rcvApplyList = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'rcvApplyList'", RecyclerView.class);
        applyConversationListDialogFragment.mSwipeRefreshLayout = (SwipeRefreshLayout) butterknife.internal.c.d(view, R.id.swipe_refresh, "field 'mSwipeRefreshLayout'", SwipeRefreshLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.live_btn, "field 'mLiveBtn' and method 'applyLink'");
        applyConversationListDialogFragment.mLiveBtn = c10;
        this.f19193c = c10;
        c10.setOnClickListener(new a(applyConversationListDialogFragment));
        applyConversationListDialogFragment.bottomLine = butterknife.internal.c.c(view, R.id.bottom_line, "field 'bottomLine'");
        applyConversationListDialogFragment.mImageViewStatus = (ImageView) butterknife.internal.c.d(view, R.id.anim_live_status, "field 'mImageViewStatus'", ImageView.class);
        applyConversationListDialogFragment.mTextViewLinkMic = (TextView) butterknife.internal.c.d(view, R.id.live_get_mic_btn, "field 'mTextViewLinkMic'", TextView.class);
        applyConversationListDialogFragment.emptyView = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView'");
        applyConversationListDialogFragment.emptyText = (TextView) butterknife.internal.c.d(view, R.id.empty_text, "field 'emptyText'", TextView.class);
        View findViewById = view.findViewById(R.id.close);
        if (findViewById != null) {
            this.f19194d = findViewById;
            findViewById.setOnClickListener(new b(applyConversationListDialogFragment));
        }
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ApplyConversationListDialogFragment applyConversationListDialogFragment = this.f19192b;
        if (applyConversationListDialogFragment != null) {
            this.f19192b = null;
            applyConversationListDialogFragment.rcvApplyList = null;
            applyConversationListDialogFragment.mSwipeRefreshLayout = null;
            applyConversationListDialogFragment.mLiveBtn = null;
            applyConversationListDialogFragment.bottomLine = null;
            applyConversationListDialogFragment.mImageViewStatus = null;
            applyConversationListDialogFragment.mTextViewLinkMic = null;
            applyConversationListDialogFragment.emptyView = null;
            applyConversationListDialogFragment.emptyText = null;
            this.f19193c.setOnClickListener(null);
            this.f19193c = null;
            View view = this.f19194d;
            if (view != null) {
                view.setOnClickListener(null);
                this.f19194d = null;
                return;
            }
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

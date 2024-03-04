package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment_ViewBinding;
/* loaded from: classes3.dex */
public class CommentsFragment_ViewBinding extends BaseCommentFragment_ViewBinding {

    /* renamed from: f  reason: collision with root package name */
    private CommentsFragment f20725f;

    /* renamed from: g  reason: collision with root package name */
    private View f20726g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentsFragment f20727a;

        a(CommentsFragment commentsFragment) {
            this.f20727a = commentsFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20727a.setDanmuSwitch(view);
        }
    }

    @UiThread
    public CommentsFragment_ViewBinding(CommentsFragment commentsFragment, View view) {
        super(commentsFragment, view);
        this.f20725f = commentsFragment;
        View c10 = butterknife.internal.c.c(view, R.id.danmu_switch, "field 'mDanmuSwitch' and method 'setDanmuSwitch'");
        commentsFragment.mDanmuSwitch = c10;
        this.f20726g = c10;
        c10.setOnClickListener(new a(commentsFragment));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment_ViewBinding, com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        CommentsFragment commentsFragment = this.f20725f;
        if (commentsFragment != null) {
            this.f20725f = null;
            commentsFragment.mDanmuSwitch = null;
            this.f20726g.setOnClickListener(null);
            this.f20726g = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class ChatControllerActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ChatControllerActivity f25555c;

    /* renamed from: d  reason: collision with root package name */
    private View f25556d;

    /* renamed from: e  reason: collision with root package name */
    private View f25557e;

    /* loaded from: classes4.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatControllerActivity f25558a;

        a(ChatControllerActivity chatControllerActivity) {
            this.f25558a = chatControllerActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25558a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatControllerActivity f25560a;

        b(ChatControllerActivity chatControllerActivity) {
            this.f25560a = chatControllerActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25560a.onViewClicked(view);
        }
    }

    @UiThread
    public ChatControllerActivity_ViewBinding(ChatControllerActivity chatControllerActivity, View view) {
        super(chatControllerActivity, view);
        this.f25555c = chatControllerActivity;
        View c10 = c.c(view, R.id.ll_all, "field 'llAll' and method 'onViewClicked'");
        chatControllerActivity.llAll = (LinearLayout) c.a(c10, R.id.ll_all, "field 'llAll'", LinearLayout.class);
        this.f25556d = c10;
        c10.setOnClickListener(new a(chatControllerActivity));
        View c11 = c.c(view, R.id.ll_follow, "field 'llFollow' and method 'onViewClicked'");
        chatControllerActivity.llFollow = (LinearLayout) c.a(c11, R.id.ll_follow, "field 'llFollow'", LinearLayout.class);
        this.f25557e = c11;
        c11.setOnClickListener(new b(chatControllerActivity));
        chatControllerActivity.ivAll = (ImageView) c.d(view, R.id.iv_all, "field 'ivAll'", ImageView.class);
        chatControllerActivity.ivFollow = (ImageView) c.d(view, R.id.iv_follow, "field 'ivFollow'", ImageView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ChatControllerActivity chatControllerActivity = this.f25555c;
        if (chatControllerActivity != null) {
            this.f25555c = null;
            chatControllerActivity.llAll = null;
            chatControllerActivity.llFollow = null;
            chatControllerActivity.ivAll = null;
            chatControllerActivity.ivFollow = null;
            this.f25556d.setOnClickListener(null);
            this.f25556d = null;
            this.f25557e.setOnClickListener(null);
            this.f25557e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

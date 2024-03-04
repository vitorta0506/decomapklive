package com.guochao.faceshow.aaspring.modulars.setting;

import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class NetworkAnalysisActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private NetworkAnalysisActivity f21724c;

    /* renamed from: d  reason: collision with root package name */
    private View f21725d;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NetworkAnalysisActivity f21726a;

        a(NetworkAnalysisActivity networkAnalysisActivity) {
            this.f21726a = networkAnalysisActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21726a.copy(view);
        }
    }

    @UiThread
    public NetworkAnalysisActivity_ViewBinding(NetworkAnalysisActivity networkAnalysisActivity, View view) {
        super(networkAnalysisActivity, view);
        this.f21724c = networkAnalysisActivity;
        networkAnalysisActivity.mTextView = (TextView) c.d(view, R.id.content, "field 'mTextView'", TextView.class);
        networkAnalysisActivity.mScrollView = (ScrollView) c.d(view, R.id.scroll, "field 'mScrollView'", ScrollView.class);
        View c10 = c.c(view, R.id.progress, "field 'mTextViewProgress' and method 'copy'");
        networkAnalysisActivity.mTextViewProgress = (TextView) c.a(c10, R.id.progress, "field 'mTextViewProgress'", TextView.class);
        this.f21725d = c10;
        c10.setOnClickListener(new a(networkAnalysisActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        NetworkAnalysisActivity networkAnalysisActivity = this.f21724c;
        if (networkAnalysisActivity != null) {
            this.f21724c = null;
            networkAnalysisActivity.mTextView = null;
            networkAnalysisActivity.mScrollView = null;
            networkAnalysisActivity.mTextViewProgress = null;
            this.f21725d.setOnClickListener(null);
            this.f21725d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

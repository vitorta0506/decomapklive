package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class LiveClearDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveClearDialog f18466b;

    /* renamed from: c  reason: collision with root package name */
    private View f18467c;

    /* renamed from: d  reason: collision with root package name */
    private View f18468d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveClearDialog f18469a;

        a(LiveClearDialog liveClearDialog) {
            this.f18469a = liveClearDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18469a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveClearDialog f18471a;

        b(LiveClearDialog liveClearDialog) {
            this.f18471a = liveClearDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18471a.onViewClicked(view);
        }
    }

    @UiThread
    public LiveClearDialog_ViewBinding(LiveClearDialog liveClearDialog, View view) {
        this.f18466b = liveClearDialog;
        View c10 = butterknife.internal.c.c(view, R.id.tv_Hightstartclear, "field 'tv_hight' and method 'onViewClicked'");
        liveClearDialog.tv_hight = (TextView) butterknife.internal.c.a(c10, R.id.tv_Hightstartclear, "field 'tv_hight'", TextView.class);
        this.f18467c = c10;
        c10.setOnClickListener(new a(liveClearDialog));
        View c11 = butterknife.internal.c.c(view, R.id.tv_f_Hightstartclear, "field 'tv_f_hight' and method 'onViewClicked'");
        liveClearDialog.tv_f_hight = (TextView) butterknife.internal.c.a(c11, R.id.tv_f_Hightstartclear, "field 'tv_f_hight'", TextView.class);
        this.f18468d = c11;
        c11.setOnClickListener(new b(liveClearDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveClearDialog liveClearDialog = this.f18466b;
        if (liveClearDialog != null) {
            this.f18466b = null;
            liveClearDialog.tv_hight = null;
            liveClearDialog.tv_f_hight = null;
            this.f18467c.setOnClickListener(null);
            this.f18467c = null;
            this.f18468d.setOnClickListener(null);
            this.f18468d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

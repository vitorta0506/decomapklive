package com.guochao.faceshow.aaspring.dialog;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class DeleteImDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private DeleteImDialog f16432b;

    /* renamed from: c  reason: collision with root package name */
    private View f16433c;

    /* renamed from: d  reason: collision with root package name */
    private View f16434d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DeleteImDialog f16435a;

        a(DeleteImDialog deleteImDialog) {
            this.f16435a = deleteImDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16435a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DeleteImDialog f16437a;

        b(DeleteImDialog deleteImDialog) {
            this.f16437a = deleteImDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16437a.onViewClicked(view);
        }
    }

    @UiThread
    public DeleteImDialog_ViewBinding(DeleteImDialog deleteImDialog, View view) {
        this.f16432b = deleteImDialog;
        View c10 = c.c(view, R.id.delete_click, "method 'onViewClicked'");
        this.f16433c = c10;
        c10.setOnClickListener(new a(deleteImDialog));
        View c11 = c.c(view, R.id.root_view, "method 'onViewClicked'");
        this.f16434d = c11;
        c11.setOnClickListener(new b(deleteImDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f16432b != null) {
            this.f16432b = null;
            this.f16433c.setOnClickListener(null);
            this.f16433c = null;
            this.f16434d.setOnClickListener(null);
            this.f16434d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

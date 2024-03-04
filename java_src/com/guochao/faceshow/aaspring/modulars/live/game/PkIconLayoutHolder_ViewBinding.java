package com.guochao.faceshow.aaspring.modulars.live.game;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class PkIconLayoutHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PkIconLayoutHolder f19450b;

    /* renamed from: c  reason: collision with root package name */
    private View f19451c;

    /* renamed from: d  reason: collision with root package name */
    private View f19452d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkIconLayoutHolder f19453a;

        a(PkIconLayoutHolder pkIconLayoutHolder) {
            this.f19453a = pkIconLayoutHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19453a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkIconLayoutHolder f19455a;

        b(PkIconLayoutHolder pkIconLayoutHolder) {
            this.f19455a = pkIconLayoutHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19455a.onViewClicked(view);
        }
    }

    @UiThread
    public PkIconLayoutHolder_ViewBinding(PkIconLayoutHolder pkIconLayoutHolder, View view) {
        this.f19450b = pkIconLayoutHolder;
        View c10 = butterknife.internal.c.c(view, R.id.pk_gift_btn, "method 'onViewClicked'");
        this.f19451c = c10;
        c10.setOnClickListener(new a(pkIconLayoutHolder));
        View c11 = butterknife.internal.c.c(view, R.id.pk_normal_btn, "method 'onViewClicked'");
        this.f19452d = c11;
        c11.setOnClickListener(new b(pkIconLayoutHolder));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f19450b != null) {
            this.f19450b = null;
            this.f19451c.setOnClickListener(null);
            this.f19451c = null;
            this.f19452d.setOnClickListener(null);
            this.f19452d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

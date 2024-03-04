package com.guochao.faceshow.aaspring.modulars.live.game;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class PkIconLayoutGameHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PkIconLayoutGameHolder f19429b;

    /* renamed from: c  reason: collision with root package name */
    private View f19430c;

    /* renamed from: d  reason: collision with root package name */
    private View f19431d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkIconLayoutGameHolder f19432a;

        a(PkIconLayoutGameHolder pkIconLayoutGameHolder) {
            this.f19432a = pkIconLayoutGameHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19432a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkIconLayoutGameHolder f19434a;

        b(PkIconLayoutGameHolder pkIconLayoutGameHolder) {
            this.f19434a = pkIconLayoutGameHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19434a.onViewClicked(view);
        }
    }

    @UiThread
    public PkIconLayoutGameHolder_ViewBinding(PkIconLayoutGameHolder pkIconLayoutGameHolder, View view) {
        this.f19429b = pkIconLayoutGameHolder;
        View c10 = butterknife.internal.c.c(view, R.id.pk_gift_btn, "method 'onViewClicked'");
        this.f19430c = c10;
        c10.setOnClickListener(new a(pkIconLayoutGameHolder));
        View c11 = butterknife.internal.c.c(view, R.id.pk_normal_btn, "method 'onViewClicked'");
        this.f19431d = c11;
        c11.setOnClickListener(new b(pkIconLayoutGameHolder));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f19429b != null) {
            this.f19429b = null;
            this.f19430c.setOnClickListener(null);
            this.f19430c = null;
            this.f19431d.setOnClickListener(null);
            this.f19431d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

package com.guochao.faceshow.aaspring.modulars.vip.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BuyVipFragment_ViewBinding extends BaseBuyVipFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BuyVipFragment f23368c;

    /* renamed from: d  reason: collision with root package name */
    private View f23369d;

    /* renamed from: e  reason: collision with root package name */
    private View f23370e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BuyVipFragment f23371a;

        a(BuyVipFragment buyVipFragment) {
            this.f23371a = buyVipFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23371a.next(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BuyVipFragment f23373a;

        b(BuyVipFragment buyVipFragment) {
            this.f23373a = buyVipFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23373a.onClick(view);
        }
    }

    @UiThread
    public BuyVipFragment_ViewBinding(BuyVipFragment buyVipFragment, View view) {
        super(buyVipFragment, view);
        this.f23368c = buyVipFragment;
        View c10 = c.c(view, R.id.next, "method 'next'");
        this.f23369d = c10;
        c10.setOnClickListener(new a(buyVipFragment));
        View c11 = c.c(view, R.id.level_up_to_vvip, "method 'onClick'");
        this.f23370e = c11;
        c11.setOnClickListener(new b(buyVipFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.vip.fragment.BaseBuyVipFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        if (this.f23368c != null) {
            this.f23368c = null;
            this.f23369d.setOnClickListener(null);
            this.f23369d = null;
            this.f23370e.setOnClickListener(null);
            this.f23370e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

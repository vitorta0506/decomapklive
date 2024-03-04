package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ContactsCircleExploreFragmentDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ContactsCircleExploreFragmentDialog f16928b;

    /* renamed from: c  reason: collision with root package name */
    private View f16929c;

    /* renamed from: d  reason: collision with root package name */
    private View f16930d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ContactsCircleExploreFragmentDialog f16931a;

        a(ContactsCircleExploreFragmentDialog contactsCircleExploreFragmentDialog) {
            this.f16931a = contactsCircleExploreFragmentDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16931a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ContactsCircleExploreFragmentDialog f16933a;

        b(ContactsCircleExploreFragmentDialog contactsCircleExploreFragmentDialog) {
            this.f16933a = contactsCircleExploreFragmentDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16933a.onViewClicked(view);
        }
    }

    @UiThread
    public ContactsCircleExploreFragmentDialog_ViewBinding(ContactsCircleExploreFragmentDialog contactsCircleExploreFragmentDialog, View view) {
        this.f16928b = contactsCircleExploreFragmentDialog;
        View c10 = butterknife.internal.c.c(view, R.id.btn_ok, "field 'btnOk' and method 'onViewClicked'");
        contactsCircleExploreFragmentDialog.btnOk = (TextView) butterknife.internal.c.a(c10, R.id.btn_ok, "field 'btnOk'", TextView.class);
        this.f16929c = c10;
        c10.setOnClickListener(new a(contactsCircleExploreFragmentDialog));
        View c11 = butterknife.internal.c.c(view, R.id.btn_cancel, "field 'btnSearch' and method 'onViewClicked'");
        contactsCircleExploreFragmentDialog.btnSearch = (TextView) butterknife.internal.c.a(c11, R.id.btn_cancel, "field 'btnSearch'", TextView.class);
        this.f16930d = c11;
        c11.setOnClickListener(new b(contactsCircleExploreFragmentDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ContactsCircleExploreFragmentDialog contactsCircleExploreFragmentDialog = this.f16928b;
        if (contactsCircleExploreFragmentDialog != null) {
            this.f16928b = null;
            contactsCircleExploreFragmentDialog.btnOk = null;
            contactsCircleExploreFragmentDialog.btnSearch = null;
            this.f16929c.setOnClickListener(null);
            this.f16929c = null;
            this.f16930d.setOnClickListener(null);
            this.f16930d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

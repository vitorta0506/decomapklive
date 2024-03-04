package com.linecorp.linesdk.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialog;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.linecorp.linesdk.R$id;
import com.linecorp.linesdk.R$layout;
import com.linecorp.linesdk.dialog.SendMessageDialog;
import com.linecorp.linesdk.dialog.internal.SendMessageTargetPagerAdapter;
/* loaded from: classes4.dex */
public class SendMessageDialog extends AppCompatDialog {

    /* renamed from: a  reason: collision with root package name */
    private ViewPager f28114a;

    /* renamed from: b  reason: collision with root package name */
    private TabLayout f28115b;

    /* renamed from: c  reason: collision with root package name */
    private Button f28116c;

    /* renamed from: d  reason: collision with root package name */
    private LinearLayout f28117d;

    /* renamed from: e  reason: collision with root package name */
    private HorizontalScrollView f28118e;

    /* renamed from: f  reason: collision with root package name */
    private SendMessageTargetPagerAdapter f28119f;

    /* renamed from: g  reason: collision with root package name */
    private a f28120g;

    /* renamed from: h  reason: collision with root package name */
    private View.OnClickListener f28121h;

    /* loaded from: classes4.dex */
    public interface a {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        getWindow().clearFlags(131080);
    }

    private void c() {
        this.f28114a.setAdapter(this.f28119f);
        this.f28115b.setupWithViewPager(this.f28114a);
        this.f28116c.setOnClickListener(this.f28121h);
        this.f28114a.post(new Runnable() { // from class: tc.a
            @Override // java.lang.Runnable
            public final void run() {
                SendMessageDialog.this.b();
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(getContext()).inflate(R$layout.dialog_send_message, (ViewGroup) null);
        setContentView(inflate);
        this.f28114a = (ViewPager) inflate.findViewById(R$id.viewPager);
        this.f28115b = (TabLayout) inflate.findViewById(R$id.tabLayout);
        this.f28116c = (Button) inflate.findViewById(R$id.buttonConfirm);
        this.f28117d = (LinearLayout) inflate.findViewById(R$id.linearLayoutTargetUserList);
        this.f28118e = (HorizontalScrollView) inflate.findViewById(R$id.horizontalScrollView);
        c();
    }

    public void setOnSendListener(@Nullable a aVar) {
        if (this.f28120g == null) {
            this.f28120g = aVar;
            return;
        }
        throw new IllegalStateException("OnSendListener is already taken and can not be replaced.");
    }
}

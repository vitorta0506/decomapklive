package com.guochao.faceshow.systemassistant.adapter;

import android.content.ClipboardManager;
import android.content.Intent;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.translate.a;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.ControlClickSpanTextView;
import com.guochao.faceshow.systemassistant.data.AssistantMsgResult;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.web.WebViewActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
class b extends UserBaseMessageHolder implements a.c {

    /* renamed from: m  reason: collision with root package name */
    private ControlClickSpanTextView f26389m;

    /* renamed from: n  reason: collision with root package name */
    private ControlClickSpanTextView f26390n;

    /* renamed from: o  reason: collision with root package name */
    private AssistantMsgResult.MsgData f26391o;

    /* loaded from: classes4.dex */
    class a implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AssistantMsgResult.MsgData f26392a;

        a(AssistantMsgResult.MsgData msgData) {
            this.f26392a = msgData;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ClipboardManager clipboardManager = (ClipboardManager) b.this.f26382k.getSystemService("clipboard");
            if (TextUtils.isEmpty(b.this.f26391o.translate)) {
                clipboardManager.setText(this.f26392a.Text);
            } else {
                clipboardManager.setText(b.this.f26391o.translate);
            }
            Toast.makeText(b.this.f26382k, (int) R.string.copy_success, 0).show();
            return false;
        }
    }

    /* renamed from: com.guochao.faceshow.systemassistant.adapter.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class View$OnClickListenerC0265b implements View.OnClickListener {
        View$OnClickListenerC0265b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.f26389m != null) {
                b bVar = b.this;
                bVar.n(bVar.f26391o);
            }
        }
    }

    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.f26389m != null) {
                b bVar = b.this;
                bVar.n(bVar.f26391o);
            }
        }
    }

    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AssistantMsgResult.MsgData f26396a;

        d(AssistantMsgResult.MsgData msgData) {
            this.f26396a = msgData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.n(this.f26396a);
        }
    }

    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AssistantMsgResult.MsgData f26398a;

        e(AssistantMsgResult.MsgData msgData) {
            this.f26398a = msgData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TextUtils.equals("0", this.f26398a.Status)) {
                WebViewActivity.createBuilder().m(this.f26398a.Url).g(true).k(this.f26398a.Url).a(b.this.f26382k);
                return;
            }
            b.this.f26382k.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.f26398a.Url)));
        }
    }

    /* loaded from: classes4.dex */
    class f implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AssistantMsgResult.MsgData f26400a;

        f(AssistantMsgResult.MsgData msgData) {
            this.f26400a = msgData;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ((ClipboardManager) b.this.f26382k.getSystemService("clipboard")).setText(this.f26400a.Text);
            Toast.makeText(b.this.f26382k, (int) R.string.copy_success, 0).show();
            return false;
        }
    }

    public b(View view) {
        super(view);
    }

    private SpannableStringBuilder k(TextView textView, String str) {
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        return EditTextUtils.getLinkedText(str, true);
    }

    private void m(AssistantMsgResult.MsgData msgData) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f26390n.getText().toString());
        com.guochao.faceshow.aaspring.modulars.translate.a.a().f(arrayList, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(AssistantMsgResult.MsgData msgData) {
        if (this.f26389m.getText().equals(this.f26382k.getString(R.string.translate_language))) {
            if (TextUtils.isEmpty(this.f26391o.translate)) {
                m(msgData);
                return;
            }
            this.f26389m.setText(this.f26382k.getString(R.string.translate_view_original));
            ControlClickSpanTextView controlClickSpanTextView = this.f26390n;
            controlClickSpanTextView.setText(k(controlClickSpanTextView, this.f26391o.translate));
            return;
        }
        this.f26389m.setText(this.f26382k.getString(R.string.translate_language));
        if (TextUtils.isEmpty(msgData.Text)) {
            return;
        }
        ControlClickSpanTextView controlClickSpanTextView2 = this.f26390n;
        controlClickSpanTextView2.setText(k(controlClickSpanTextView2, msgData.Text));
    }

    @Override // com.guochao.faceshow.systemassistant.adapter.UserBaseMessageHolder
    public void f(AssistantMsgResult.MsgData msgData, int i9) {
        super.f(msgData, i9);
        this.f26391o = msgData;
        this.f26390n = new ControlClickSpanTextView(this.f26376e.getContext());
        if (!BaseConfig.isChinese()) {
            if (TextUtils.isEmpty(this.f26391o.translate)) {
                if (!TextUtils.isEmpty(msgData.Text)) {
                    ControlClickSpanTextView controlClickSpanTextView = this.f26390n;
                    controlClickSpanTextView.setText(k(controlClickSpanTextView, msgData.Text));
                }
            } else {
                ControlClickSpanTextView controlClickSpanTextView2 = this.f26390n;
                controlClickSpanTextView2.setText(k(controlClickSpanTextView2, this.f26391o.translate));
            }
        } else if (!TextUtils.isEmpty(msgData.Text)) {
            ControlClickSpanTextView controlClickSpanTextView3 = this.f26390n;
            controlClickSpanTextView3.setText(k(controlClickSpanTextView3, msgData.Text));
        }
        this.f26390n.setTextSize(13.0f);
        this.f26390n.setTextColor(BaseApplication.getInstance().getResources().getColor(R.color.text_black));
        int screenWidth = ScreenTools.getScreenWidth() - ScreenTools.dip2px(148.0f);
        this.f26390n.setMaxWidth(screenWidth);
        this.f26390n.setOnLongClickListener(new a(msgData));
        this.f26377f.addView(this.f26390n);
        if (!msgData.isSelf && !BaseConfig.isChinese()) {
            this.f26389m = new ControlClickSpanTextView(this.f26376e.getContext());
            if (TextUtils.isEmpty(this.f26391o.translate)) {
                this.f26389m.setText(this.f26376e.getContext().getString(R.string.translate_language));
            } else {
                this.f26389m.setText(this.f26376e.getContext().getString(R.string.translate_view_original));
            }
            this.f26389m.setTextSize(12.0f);
            this.f26389m.setTextColor(BaseApplication.getInstance().getResources().getColor(R.color.hostSearchTitle));
            this.f26377f.addView(this.f26389m);
            ((ViewGroup.MarginLayoutParams) this.f26389m.getLayoutParams()).setMargins(0, DensityUtil.dp2px(BaseApplication.getInstance(), 6.0f), 0, 0);
            this.f26377f.setOnClickListener(new View$OnClickListenerC0265b());
            this.f26390n.setOnClickListener(new c());
            this.f26389m.setOnClickListener(new d(msgData));
        }
        int calTextWidth = TextUtils.isEmpty(msgData.Text) ? 0 : TextViewUtils.calTextWidth(this.f26390n.getPaint(), msgData.Text);
        ViewGroup.LayoutParams layoutParams = this.f26390n.getLayoutParams();
        layoutParams.width = Math.min(screenWidth, calTextWidth + DensityUtil.dp2px(this.f26376e.getContext(), 16.0f));
        this.f26390n.setLayoutParams(layoutParams);
    }

    public void l(AssistantMsgResult.MsgData msgData, int i9) {
        super.f(msgData, i9);
        TextView textView = new TextView(this.f26376e.getContext());
        textView.setText(k(textView, msgData.Text));
        textView.setTextSize(13.0f);
        textView.setTextColor(BaseApplication.getInstance().getResources().getColor(R.color.blue_wl));
        textView.setMaxWidth(ScreenTools.getScreenWidth() - ScreenTools.dip2px(148.0f));
        textView.setOnClickListener(new e(msgData));
        textView.setOnLongClickListener(new f(msgData));
        this.f26377f.addView(textView);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.translate.a.c
    public void onResponse(@Nullable List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (String str : list) {
            this.f26391o.translate = str;
            ControlClickSpanTextView controlClickSpanTextView = this.f26390n;
            controlClickSpanTextView.setText(k(controlClickSpanTextView, str));
        }
        this.f26389m.setText(this.f26376e.getContext().getString(R.string.translate_view_original));
    }
}

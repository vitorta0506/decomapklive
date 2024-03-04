package com.guochao.faceshow.gift.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.material.badge.BadgeDrawable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.SystemUtil;
import com.guochao.faceshow.utils.Tool;
import java.util.List;
/* loaded from: classes4.dex */
public class NumCheckSendView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private TextView f25317a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f25318b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f25319c;

    /* renamed from: d  reason: collision with root package name */
    private ViewGroup f25320d;

    /* renamed from: e  reason: collision with root package name */
    private PopupWindow f25321e;

    /* renamed from: f  reason: collision with root package name */
    private LinearLayout f25322f;

    /* renamed from: g  reason: collision with root package name */
    private View f25323g;

    /* renamed from: h  reason: collision with root package name */
    public String f25324h;

    /* renamed from: i  reason: collision with root package name */
    private int f25325i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f25326j;

    /* renamed from: k  reason: collision with root package name */
    private View f25327k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f25328l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f25329m;

    /* renamed from: n  reason: collision with root package name */
    private h f25330n;

    /* renamed from: o  reason: collision with root package name */
    private g f25331o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PushUtils.CHAT_PUSH_TYPE.equals(NumCheckSendView.this.f25324h)) {
                return;
            }
            if (!NumCheckSendView.this.f25328l) {
                ToastUtils.showToast((int) R.string.handy_gift_at_least_ten);
            } else if (NumCheckSendView.this.f25326j) {
                if (!NumCheckSendView.this.f25320d.isSelected()) {
                    NumCheckSendView.this.f25319c.setSelected(true);
                    NumCheckSendView.this.s();
                    NumCheckSendView.this.f25320d.setSelected(true);
                    return;
                }
                NumCheckSendView.this.f25319c.setSelected(false);
                NumCheckSendView.this.o();
                NumCheckSendView.this.f25320d.setSelected(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (NumCheckSendView.this.f25326j && NumCheckSendView.this.f25330n != null) {
                h hVar = NumCheckSendView.this.f25330n;
                NumCheckSendView numCheckSendView = NumCheckSendView.this;
                hVar.a(numCheckSendView.f25324h, numCheckSendView.f25325i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NumCheckSendView.this.f25321e.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements PopupWindow.OnDismissListener {
        d() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            NumCheckSendView.this.f25320d.setSelected(false);
            NumCheckSendView.this.f25319c.setSelected(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f25336a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f25337b;

        e(String str, int i9) {
            this.f25336a = str;
            this.f25337b = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NumCheckSendView.this.o();
            NumCheckSendView.this.f25317a.setText(this.f25336a);
            NumCheckSendView numCheckSendView = NumCheckSendView.this;
            numCheckSendView.f25324h = this.f25336a;
            numCheckSendView.f25325i = this.f25337b;
            if (NumCheckSendView.this.f25331o != null) {
                NumCheckSendView.this.f25331o.a(0, Integer.parseInt(this.f25336a));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f25339a;

        f(h hVar) {
            this.f25339a = hVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h hVar = this.f25339a;
            if (hVar != null) {
                NumCheckSendView numCheckSendView = NumCheckSendView.this;
                hVar.a(numCheckSendView.f25324h, numCheckSendView.f25325i);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface g {
        void a(int i9, int i10);
    }

    /* loaded from: classes4.dex */
    public interface h {
        void a(String str, int i9);
    }

    public NumCheckSendView(Context context) {
        this(context, null);
    }

    private void m() {
        boolean z10 = this.f25329m && this.f25326j;
        setEnabled(z10);
        this.f25318b.setEnabled(z10);
        this.f25318b.setClickable(z10);
        View view = this.f25327k;
        if (view != null) {
            view.setEnabled(z10);
            this.f25327k.setClickable(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        this.f25321e.dismiss();
    }

    private void p() {
        this.f25320d = (ViewGroup) findViewById(R.id.btn_select_ly);
        this.f25319c = (ImageView) findViewById(R.id.show_orientation_angle);
        this.f25317a = (TextView) findViewById(R.id.btn_check);
        TextView textView = (TextView) findViewById(R.id.btn_send);
        this.f25318b = textView;
        textView.setBackgroundResource(Language.ARABIC.equals(q7.a.e().c()) ? R.drawable.shape_send_button_ar : R.drawable.shape_send_button);
        this.f25320d.setOnClickListener(new a());
        this.f25318b.setOnClickListener(new b());
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        this.f25322f = linearLayout2;
        linearLayout2.setBackgroundResource(R.drawable.gift_count_popup);
        this.f25322f.setOrientation(1);
        linearLayout.addView(this.f25322f);
        linearLayout.setPadding(0, 0, 0, 0);
        linearLayout.setOnClickListener(new c());
        PopupWindow createPopWindowInstance = Tool.createPopWindowInstance(linearLayout, ScreenTools.dip2px(60.0f), -2);
        this.f25321e = createPopWindowInstance;
        createPopWindowInstance.setOnDismissListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (this.f25323g == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f25318b.getLayoutParams();
        this.f25321e.showAtLocation(this.f25323g, getResources().getConfiguration().getLayoutDirection() == 1 ? BadgeDrawable.BOTTOM_START : BadgeDrawable.BOTTOM_END, this.f25318b.getWidth() + DensityUtil.dp2px(getContext(), 16.0f), (getHeight() / 2) + (this.f25317a.getHeight() / 2) + DensityUtil.dp2px(34.0f) + ("OPPO R11st".equals(SystemUtil.getSystemModel()) ? this.f25317a.getHeight() : 0));
    }

    public int getCurrentData() {
        return Integer.parseInt(this.f25324h);
    }

    public g getOnCountChangedListener() {
        return this.f25331o;
    }

    public View getTopSend() {
        return this.f25327k;
    }

    public void n(boolean z10) {
        this.f25329m = z10;
        m();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        p();
    }

    public void q() {
        this.f25324h = "1";
        this.f25317a.setText("1");
    }

    public void r(boolean z10) {
        if (z10) {
            setBackgroundResource(R.drawable.shape_num_send_btn);
            this.f25317a.setVisibility(0);
            this.f25318b.setBackgroundResource(Language.ARABIC.equals(q7.a.e().c()) ? R.drawable.shape_send_button_ar : R.drawable.shape_send_button);
            this.f25319c.setVisibility(0);
        } else {
            setBackground(null);
            this.f25318b.setBackgroundResource(R.drawable.shape_send_button_full);
            this.f25317a.setVisibility(8);
            this.f25319c.setVisibility(8);
        }
        this.f25328l = z10;
    }

    public void setCheckPopAnchorView(View view) {
        this.f25323g = view;
    }

    public void setCurrentData(int i9) {
        this.f25324h = String.valueOf(i9);
        TextView textView = this.f25317a;
        textView.setText(x.f19108w + this.f25324h);
    }

    public void setCurrentHandyGiftDrawCount(int i9) {
        this.f25324h = String.valueOf(i9);
        if (i9 < 10) {
            setSendEnable(false);
        } else {
            setSendEnable(true);
        }
    }

    public void setData(List<String> list) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            String str = list.get(i9);
            TextView textView = new TextView(getContext());
            textView.setTextColor(getResources().getColor(R.color.color_text_level_1));
            textView.setLayoutParams(new LinearLayout.LayoutParams(-1, ScreenTools.dip2px(30.0f)));
            textView.setGravity(17);
            textView.setIncludeFontPadding(false);
            textView.setTextSize(13.0f);
            textView.setText(str);
            textView.setOnClickListener(new e(str, i9));
            this.f25322f.addView(textView);
        }
    }

    public void setOnCountChangedListener(g gVar) {
        this.f25331o = gVar;
    }

    public void setOnMultiClickListener(h hVar) {
        this.f25330n = hVar;
        View view = this.f25327k;
        if (view != null) {
            view.setOnClickListener(new f(hVar));
        }
    }

    public void setSendEnable(boolean z10) {
        this.f25326j = z10;
        m();
    }

    public void setTopSend(View view) {
        this.f25327k = view;
    }

    public NumCheckSendView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NumCheckSendView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f25324h = "1";
        this.f25326j = false;
        this.f25328l = true;
        this.f25329m = true;
    }
}

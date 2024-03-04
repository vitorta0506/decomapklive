package com.guochao.faceshow.systemassistant.view;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.FAQTypesData;
import com.guochao.faceshow.aaspring.utils.ChatView;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.systemassistant.view.AssistantFaqPopView;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.ScreenTools;
import java.util.List;
/* loaded from: classes4.dex */
public class AssistantChatInputView extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private KeyEvent f26402a;

    /* renamed from: b  reason: collision with root package name */
    private final int f26403b;

    /* renamed from: c  reason: collision with root package name */
    private InputMode f26404c;

    /* renamed from: d  reason: collision with root package name */
    public EditText f26405d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f26406e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f26407f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f26408g;

    /* renamed from: h  reason: collision with root package name */
    private RelativeLayout f26409h;

    /* renamed from: i  reason: collision with root package name */
    private LinearLayout f26410i;

    /* renamed from: j  reason: collision with root package name */
    private RelativeLayout f26411j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f26412k;

    /* renamed from: l  reason: collision with root package name */
    private View f26413l;

    /* renamed from: m  reason: collision with root package name */
    AssistantFaqPopView f26414m;

    /* renamed from: n  reason: collision with root package name */
    private ChatView f26415n;

    /* renamed from: o  reason: collision with root package name */
    private Activity f26416o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f26417p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f26418q;

    /* loaded from: classes4.dex */
    public enum InputMode {
        TEXT,
        NONE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable != null && editable.length() != 0) {
                AssistantChatInputView.this.f26407f.setVisibility(0);
                AssistantChatInputView.this.f26406e.setVisibility(8);
                return;
            }
            AssistantChatInputView.this.f26407f.setVisibility(8);
            AssistantChatInputView.this.f26406e.setVisibility(0);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            System.out.println("");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (charSequence == null || charSequence.length() <= 0) {
                return;
            }
            AssistantChatInputView.this.f26415n.sending();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z10) {
            AssistantChatInputView.this.f26417p = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26421a;

        static {
            int[] iArr = new int[InputMode.values().length];
            f26421a = iArr;
            try {
                iArr[InputMode.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26421a[InputMode.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public AssistantChatInputView(Context context) {
        this(context, null);
    }

    private boolean e() {
        return Build.VERSION.SDK_INT >= 23;
    }

    private void g(EditText editText) {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
            this.f26418q = false;
        }
    }

    private void h() {
        this.f26406e.setOnClickListener(this);
        this.f26405d.setOnClickListener(this);
        this.f26407f.setOnClickListener(this);
        this.f26408g.setOnClickListener(this);
        this.f26411j.setOnClickListener(this);
        this.f26405d.addTextChangedListener(new a());
        this.f26405d.setOnFocusChangeListener(new b());
    }

    private void i() {
        int i9 = ScreenTools.get375STValue(14.0f);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f26408g.getLayoutParams();
        marginLayoutParams.width = ScreenTools.get375STValue(53.0f);
        marginLayoutParams.height = ScreenTools.get375STValue(53.0f);
        this.f26408g.setPadding(i9, i9, i9, i9);
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f26409h.getLayoutParams();
        marginLayoutParams2.width = ScreenTools.get375STValue(53.0f);
        marginLayoutParams2.height = ScreenTools.get375STValue(53.0f);
        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.f26413l.getLayoutParams();
        marginLayoutParams3.height = ScreenTools.get375STValue(53.0f);
        marginLayoutParams3.width = ScreenTools.get375STValue(100.0f);
        ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) this.f26412k.getLayoutParams();
        if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
            marginLayoutParams4.setMarginStart(ScreenTools.get375STValue(-70.0f));
        } else {
            marginLayoutParams4.setMarginStart(ScreenTools.get375STValue(-60.0f));
        }
        ((ViewGroup.MarginLayoutParams) this.f26405d.getLayoutParams()).height = ScreenTools.get375STValue(35.0f);
        this.f26406e.setPadding(i9, i9, i9, i9);
        this.f26407f.setPadding(ScreenTools.get375STValue(8.0f), ScreenTools.get375STValue(6.0f), ScreenTools.get375STValue(8.0f), ScreenTools.get375STValue(6.0f));
    }

    private void j() {
        LayoutInflater.from(getContext()).inflate(R.layout.assistant_chat_input, this);
        this.f26408g = (ImageView) findViewById(R.id.assistant_icon_model_change);
        this.f26410i = (LinearLayout) findViewById(R.id.assistant_type_input_ly);
        this.f26411j = (RelativeLayout) findViewById(R.id.assistant_type_faq_ly);
        this.f26413l = findViewById(R.id.assistant_type_faq_icon);
        this.f26412k = (TextView) findViewById(R.id.assistant_type_faq_show_text);
        this.f26405d = (EditText) findViewById(R.id.assistant_input_edit_text);
        this.f26406e = (ImageView) findViewById(R.id.assistant_photo_im);
        this.f26407f = (TextView) findViewById(R.id.assistant_btn_send);
        this.f26409h = (RelativeLayout) findViewById(R.id.assistant_change_btn_ly);
        if (BaseConfig.isChinese()) {
            this.f26412k.setText(R.string.faq);
        }
        this.f26407f.setText(getResources().getString(R.string.send));
        this.f26407f.setBackground(FaceImageUtils.createDrawable(getResources().getColor(R.color.app_blue), ScreenTools.dip2px(3.0f)));
        this.f26414m = new AssistantFaqPopView(getContext());
        i();
        h();
    }

    private boolean l(Activity activity) {
        if (!e() || activity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        activity.requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 100);
        return false;
    }

    private void n() {
        LinearLayout linearLayout = this.f26410i;
        linearLayout.setVisibility(linearLayout.getVisibility() == 0 ? 8 : 0);
        RelativeLayout relativeLayout = this.f26411j;
        relativeLayout.setVisibility(relativeLayout.getVisibility() != 0 ? 0 : 8);
        if (this.f26410i.getVisibility() == 0) {
            this.f26408g.setImageResource(R.mipmap.assistant_faq_circle_icon);
            return;
        }
        this.f26408g.setImageResource(R.mipmap.assistant_keybord_icon);
        g(this.f26405d);
    }

    private void o(EditText editText) {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(editText, 0);
            this.f26418q = true;
        }
    }

    private void p(InputMode inputMode) {
        if (inputMode == this.f26404c) {
            return;
        }
        int[] iArr = c.f26421a;
        this.f26404c = inputMode;
        int i9 = iArr[inputMode.ordinal()];
        if (i9 == 1) {
            this.f26416o.getWindow().setSoftInputMode(16);
            if (!this.f26417p) {
                this.f26405d.requestFocus();
            }
            o(this.f26405d);
        } else if (i9 != 2) {
        } else {
            this.f26416o.getWindow().setSoftInputMode(16);
            g(this.f26405d);
            this.f26405d.clearFocus();
        }
    }

    public void f() {
        this.f26405d.setText("");
    }

    public Editable getText() {
        return this.f26405d.getText() == null ? new SpannableStringBuilder() : this.f26405d.getText();
    }

    public String getTextString() {
        return this.f26405d.getText() == null ? "" : this.f26405d.getText().toString();
    }

    public boolean k() {
        InputMode inputMode = this.f26404c;
        InputMode inputMode2 = InputMode.NONE;
        if (inputMode == inputMode2) {
            return false;
        }
        p(inputMode2);
        return true;
    }

    public void m(List<FAQTypesData> list, AssistantFaqPopView.c cVar) {
        this.f26414m.e(list, cVar);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Activity activity = (Activity) getContext();
        switch (view.getId()) {
            case R.id.assistant_btn_send /* 2131361985 */:
                this.f26415n.sendText();
                return;
            case R.id.assistant_icon_model_change /* 2131361991 */:
                n();
                return;
            case R.id.assistant_input_edit_text /* 2131361992 */:
                p(InputMode.TEXT);
                return;
            case R.id.assistant_photo_im /* 2131361996 */:
                p(InputMode.NONE);
                if (activity == null || !l(activity)) {
                    return;
                }
                this.f26415n.sendImage();
                return;
            case R.id.assistant_type_faq_ly /* 2131362016 */:
                if (this.f26414m.d()) {
                    this.f26414m.b();
                    return;
                } else {
                    this.f26414m.f(this);
                    return;
                }
            default:
                return;
        }
    }

    public void setChatView(ChatView chatView) {
        this.f26415n = chatView;
    }

    public void setInputMode(InputMode inputMode) {
        p(inputMode);
    }

    public void setText(String str) {
        this.f26405d.setText(str);
    }

    public AssistantChatInputView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AssistantChatInputView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26402a = new KeyEvent(0, 67);
        this.f26403b = 100;
        InputMode inputMode = InputMode.NONE;
        this.f26404c = inputMode;
        this.f26417p = false;
        this.f26418q = false;
        this.f26416o = (Activity) context;
        j();
        p(inputMode);
    }
}

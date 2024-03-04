package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.BackgroundColorSpan;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.UnsupportedMessage;
import com.guochao.faceshow.aaspring.modulars.translate.a;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.PopupMenu;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TranslateUtils;
import com.guochao.faceshow.web.WebViewActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
/* loaded from: classes3.dex */
public class TextTranslateMessageViewHolder extends BaseMessageViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private View f17306a;

    /* renamed from: b  reason: collision with root package name */
    TextView f17307b;

    /* renamed from: c  reason: collision with root package name */
    TextView f17308c;

    /* renamed from: d  reason: collision with root package name */
    TextView f17309d;

    /* renamed from: e  reason: collision with root package name */
    FrameLayout f17310e;

    /* renamed from: f  reason: collision with root package name */
    View f17311f;

    /* renamed from: g  reason: collision with root package name */
    ImageView f17312g;

    /* renamed from: h  reason: collision with root package name */
    TextMessage f17313h;

    /* renamed from: i  reason: collision with root package name */
    SpannableStringBuilder f17314i;

    /* renamed from: j  reason: collision with root package name */
    String f17315j;

    /* renamed from: k  reason: collision with root package name */
    Runnable f17316k;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f17317a;

        a(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
            this.f17317a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TextTranslateMessageViewHolder.this.f17309d.getVisibility() == 0) {
                TextTranslateMessageViewHolder.this.o(this.f17317a);
                return;
            }
            TextTranslateMessageViewHolder.this.f17309d.setVisibility(0);
            TextTranslateMessageViewHolder.this.f17310e.setVisibility(8);
            this.f17317a.setLook(false);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f17319a;

        b(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
            this.f17319a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextTranslateMessageViewHolder.this.o(this.f17319a);
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f17321a;

        c(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
            this.f17321a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextTranslateMessageViewHolder.this.f17310e.setVisibility(8);
            TextTranslateMessageViewHolder.this.f17309d.setVisibility(0);
            this.f17321a.setLook(false);
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnLongClickListener {

        /* loaded from: classes3.dex */
        class a implements PopupMenu.OnMenuItemClickListener {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
            public void onItemClick(PopupMenuItem popupMenuItem, View view) {
                ((ClipboardManager) TextTranslateMessageViewHolder.this.mContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("message", TextTranslateMessageViewHolder.this.f17308c.getText()));
                ToastUtils.showToast(TextTranslateMessageViewHolder.this.mContext, (int) R.string.copy_success);
            }
        }

        d() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new PopupMenuItem(1, TextTranslateMessageViewHolder.this.mContext.getString(R.string.copy)));
            if (!arrayList.isEmpty()) {
                PopupMenu popupMenu = new PopupMenu(TextTranslateMessageViewHolder.this.mContext);
                popupMenu.setMenus(arrayList);
                popupMenu.setOnMenuItemClickListener(new a());
                popupMenu.show(TextTranslateMessageViewHolder.this.f17310e);
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f17325a;

        /* loaded from: classes3.dex */
        class a implements PopupMenu.OnMenuItemClickListener {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
            public void onItemClick(PopupMenuItem popupMenuItem, View view) {
                int id2 = popupMenuItem.getId();
                if (id2 == 1) {
                    ((ClipboardManager) TextTranslateMessageViewHolder.this.mContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("message", TextTranslateMessageViewHolder.this.f17307b.getText()));
                    ToastUtils.showToast(TextTranslateMessageViewHolder.this.mContext, (int) R.string.copy_success);
                } else if (id2 == 2) {
                    TextTranslateMessageViewHolder.this.revokeCurrentMessage();
                } else if (id2 != 3) {
                } else {
                    TextTranslateMessageViewHolder.this.deleteCurrentMessage();
                }
            }
        }

        e(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
            this.f17325a = aVar;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new PopupMenuItem(1, TextTranslateMessageViewHolder.this.mContext.getString(R.string.copy)));
            if (TextTranslateMessageViewHolder.this.isSelf() && this.f17325a.getStatus() == 2 && !TextTranslateMessageViewHolder.this.isErrorMsg()) {
                arrayList.add(new PopupMenuItem(2, TextTranslateMessageViewHolder.this.mContext.getString(R.string.chat_pullback)));
            }
            arrayList.add(new PopupMenuItem(3, TextTranslateMessageViewHolder.this.mContext.getString(R.string.delete)));
            if (!arrayList.isEmpty()) {
                PopupMenu popupMenu = new PopupMenu(TextTranslateMessageViewHolder.this.mContext);
                popupMenu.setMenus(arrayList);
                popupMenu.setOnMenuItemClickListener(new a());
                popupMenu.show(TextTranslateMessageViewHolder.this.getView(R.id.message_content));
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements ViewTreeObserver.OnGlobalLayoutListener {
        f() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) TextTranslateMessageViewHolder.this.f17308c.getLayoutParams();
            if (TextTranslateMessageViewHolder.this.mMessage.getWith() == 0) {
                if (TextTranslateMessageViewHolder.this.f17307b.getMeasuredWidth() > TextTranslateMessageViewHolder.this.f17308c.getMeasuredWidth()) {
                    layoutParams.width = TextTranslateMessageViewHolder.this.f17307b.getMeasuredWidth();
                    TextTranslateMessageViewHolder textTranslateMessageViewHolder = TextTranslateMessageViewHolder.this;
                    textTranslateMessageViewHolder.mMessage.setWith(textTranslateMessageViewHolder.f17307b.getMeasuredWidth());
                } else {
                    layoutParams.width = -2;
                }
                TextTranslateMessageViewHolder.this.f17308c.setLayoutParams(layoutParams);
            } else {
                layoutParams.width = TextTranslateMessageViewHolder.this.mMessage.getWith();
                TextTranslateMessageViewHolder.this.f17308c.setLayoutParams(layoutParams);
            }
            TextTranslateMessageViewHolder.this.f17311f.setVisibility(0);
            TextTranslateMessageViewHolder.this.f17311f.getLayoutParams().width = Math.max(TextTranslateMessageViewHolder.this.f17307b.getMeasuredWidth(), TextTranslateMessageViewHolder.this.f17308c.getMeasuredWidth());
            TextTranslateMessageViewHolder.this.f17306a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements ViewTreeObserver.OnGlobalLayoutListener {
        g() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) TextTranslateMessageViewHolder.this.f17312g.getLayoutParams();
            if (TextTranslateMessageViewHolder.this.f17307b.getMeasuredWidth() > TextTranslateMessageViewHolder.this.f17309d.getMeasuredWidth()) {
                layoutParams.width = TextTranslateMessageViewHolder.this.f17307b.getMeasuredWidth();
                TextTranslateMessageViewHolder.this.f17312g.setLayoutParams(layoutParams);
            } else {
                layoutParams.width = TextTranslateMessageViewHolder.this.f17309d.getMeasuredWidth();
                TextTranslateMessageViewHolder.this.f17312g.setLayoutParams(layoutParams);
            }
            TextTranslateMessageViewHolder.this.f17306a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            TextTranslateMessageViewHolder.this.f17309d.setVisibility(8);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextTranslateMessageViewHolder textTranslateMessageViewHolder = TextTranslateMessageViewHolder.this;
            textTranslateMessageViewHolder.f17307b.setText(textTranslateMessageViewHolder.f17314i.toString());
            TextTranslateMessageViewHolder.this.mMessage.setHasShowedSearch(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class i extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        String f17331a;

        /* renamed from: b  reason: collision with root package name */
        private int f17332b;

        public i(String str, int i9) {
            this.f17331a = str;
            this.f17332b = i9;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            WebViewActivity.createBuilder().m(this.f17331a).c(true).a(view.getContext());
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            textPaint.setColor(this.f17332b);
            textPaint.setUnderlineText(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements a.c {

        /* renamed from: a  reason: collision with root package name */
        com.guochao.faceshow.aaspring.modulars.chat.models.a f17333a;

        public j(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
            this.f17333a = aVar;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.translate.a.c
        public void onResponse(@Nullable List<String> list) {
            if (list != null) {
                for (String str : list) {
                    String translateFiles = this.f17333a.getTranslateFiles();
                    TranslateUtils.createTranslateFile(translateFiles, TextTranslateMessageViewHolder.this.f17315j + ".txt", str);
                    this.f17333a.setTranslate(str);
                }
                com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = this.f17333a;
                TextTranslateMessageViewHolder textTranslateMessageViewHolder = TextTranslateMessageViewHolder.this;
                if (aVar != textTranslateMessageViewHolder.mMessage) {
                    return;
                }
                textTranslateMessageViewHolder.g();
                TextTranslateMessageViewHolder.this.f17310e.setVisibility(0);
                TextTranslateMessageViewHolder.this.f17312g.setVisibility(8);
                TextTranslateMessageViewHolder.this.f17308c.setVisibility(0);
                String translateFiles2 = this.f17333a.getTranslateFiles();
                if (!TextUtils.isEmpty(TranslateUtils.getTranslateContent(translateFiles2, TextTranslateMessageViewHolder.this.f17315j + ".txt"))) {
                    TextTranslateMessageViewHolder textTranslateMessageViewHolder2 = TextTranslateMessageViewHolder.this;
                    TextView textView = textTranslateMessageViewHolder2.f17308c;
                    if (textView != null) {
                        String translateFiles3 = this.f17333a.getTranslateFiles();
                        textView.setText(textTranslateMessageViewHolder2.e(textView, new SpannableStringBuilder(TranslateUtils.getTranslateContent(translateFiles3, TextTranslateMessageViewHolder.this.f17315j + ".txt"))));
                        this.f17333a.setLook(true);
                        this.f17333a.setOriginal(true);
                    } else {
                        textTranslateMessageViewHolder2.f17310e.setVisibility(8);
                        this.f17333a.setLook(false);
                        this.f17333a.setOriginal(false);
                    }
                } else {
                    TextTranslateMessageViewHolder.this.f17310e.setVisibility(8);
                    this.f17333a.setLook(false);
                    this.f17333a.setOriginal(false);
                }
                TextTranslateMessageViewHolder.this.h();
                return;
            }
            this.f17333a.setLook(false);
            this.f17333a.setOriginal(false);
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2 = this.f17333a;
            TextTranslateMessageViewHolder textTranslateMessageViewHolder3 = TextTranslateMessageViewHolder.this;
            if (aVar2 != textTranslateMessageViewHolder3.mMessage) {
                return;
            }
            textTranslateMessageViewHolder3.f17309d.setVisibility(0);
            TextTranslateMessageViewHolder.this.f17310e.setVisibility(8);
            TextTranslateMessageViewHolder.this.f17308c.setVisibility(8);
            TextTranslateMessageViewHolder.this.f17312g.setVisibility(8);
        }
    }

    public TextTranslateMessageViewHolder(Context context, View view) {
        super(context, view);
        this.f17316k = new h();
        this.f17306a = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SpannableStringBuilder e(TextView textView, SpannableStringBuilder spannableStringBuilder) {
        Matcher matcher = TopicAndAtTextHelper.WEB_URL.matcher(spannableStringBuilder);
        while (matcher.find()) {
            String group = matcher.group();
            int start = matcher.start();
            j(textView, spannableStringBuilder, group, start, start + group.length());
        }
        return spannableStringBuilder;
    }

    private void j(TextView textView, SpannableStringBuilder spannableStringBuilder, String str, int i9, int i10) {
        int parseColor;
        if (isSelf()) {
            if (BaseConfig.isChinese()) {
                parseColor = Color.parseColor("#5FD8FF");
            } else {
                parseColor = Color.parseColor("#0046a1");
            }
        } else if (BaseConfig.isChinese()) {
            parseColor = Color.parseColor("#6365FF");
        } else {
            parseColor = Color.parseColor("#0269d9");
        }
        spannableStringBuilder.setSpan(new i(str, parseColor), i9, i10, 33);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    private void k() {
        SpannableStringBuilder e10 = e(this.f17307b, this.f17314i);
        this.f17314i = e10;
        this.f17307b.setText(e10);
    }

    private void l() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f17308c.getLayoutParams();
        if (this.mMessage.getWith() > 0) {
            layoutParams.width = this.mMessage.getWith();
            this.f17308c.setLayoutParams(layoutParams);
            return;
        }
        layoutParams.width = -2;
        this.f17308c.setLayoutParams(layoutParams);
    }

    public void f() {
        this.f17306a.getViewTreeObserver().addOnGlobalLayoutListener(new g());
    }

    public void g() {
        this.f17306a.getViewTreeObserver().addOnGlobalLayoutListener(new f());
    }

    public void h() {
        if (getAdapterPosition() == this.mAdapter.getData().size() - 1) {
            ((ChatActivity) this.mContext).scrollToEnd(true);
        }
    }

    public void i(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, String str) {
        if (!TextUtils.isEmpty(str) && !aVar.isHasShowedSearch()) {
            int indexOf = this.f17314i.toString().toLowerCase().indexOf(str.toLowerCase());
            if (indexOf >= 0) {
                this.f17314i.setSpan(new BackgroundColorSpan(Color.parseColor("#542173B3")), indexOf, str.length() + indexOf, 33);
                k();
                this.f17307b.removeCallbacks(this.f17316k);
                this.f17307b.postDelayed(this.f17316k, 3000L);
                return;
            }
            k();
            return;
        }
        k();
    }

    public void m() {
        if (this.f17312g != null) {
            f();
            this.f17310e.setVisibility(0);
            this.f17312g.setVisibility(0);
            this.f17308c.setVisibility(8);
            ((AnimationDrawable) this.f17312g.getDrawable()).start();
        }
    }

    public void n(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        m();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f17314i.toString());
        if (aVar.isSelf()) {
            com.guochao.faceshow.aaspring.modulars.translate.a.a().g(arrayList, aVar.getOtherLanguage(), new j(this.mMessage));
        } else {
            com.guochao.faceshow.aaspring.modulars.translate.a.a().f(arrayList, new j(this.mMessage));
        }
    }

    public void o(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (this.f17309d.getText().equals(this.mContext.getString(R.string.translate_view_target))) {
            if (TextUtils.isEmpty(aVar.getTranslate())) {
                String translateFiles = aVar.getTranslateFiles();
                if (!TranslateUtils.getTranslateFile(translateFiles, this.f17315j + ".txt")) {
                    n(aVar);
                    return;
                }
            }
            this.f17309d.setVisibility(8);
            this.f17310e.setVisibility(0);
            this.f17312g.setVisibility(8);
            if (!TextUtils.isEmpty(aVar.getTranslate())) {
                TextView textView = this.f17308c;
                textView.setText(e(textView, new SpannableStringBuilder(aVar.getTranslate())));
            } else {
                TextView textView2 = this.f17308c;
                String translateFiles2 = aVar.getTranslateFiles();
                textView2.setText(e(textView2, new SpannableStringBuilder(TranslateUtils.getTranslateContent(translateFiles2, this.f17315j + ".txt"))));
            }
            aVar.setLook(true);
            aVar.setOriginal(true);
            g();
            this.f17308c.setVisibility(0);
            h();
            return;
        }
        this.f17311f.setVisibility(8);
        this.f17309d.setVisibility(8);
        this.f17310e.setVisibility(0);
        this.f17312g.setVisibility(8);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f17313h.getContent());
        this.f17314i = spannableStringBuilder;
        TextView textView3 = this.f17308c;
        textView3.setText(e(textView3, spannableStringBuilder));
        aVar.setLook(true);
        aVar.setOriginal(false);
        g();
        this.f17308c.setVisibility(0);
        h();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        this.f17313h = (TextMessage) aVar2;
        this.f17315j = aVar2.getMessage().getMsgID();
        this.f17307b = (TextView) getView(R.id.tv_msg_content);
        this.f17308c = (TextView) getView(R.id.tv_translation);
        this.f17309d = (TextView) getView(R.id.tv_translate_target);
        this.f17312g = (ImageView) getView(R.id.loading_anim);
        this.f17310e = (FrameLayout) getView(R.id.fl_translate);
        this.f17311f = getView(R.id.tv_divider);
        this.f17314i = new SpannableStringBuilder(this.f17313h.getContent());
        this.f17307b.setMovementMethod(null);
        String searchKeyword = aVar2.getSearchKeyword();
        if (aVar2.isSelf()) {
            if (aVar2.isLook()) {
                this.f17309d.setVisibility(8);
                this.f17310e.setVisibility(0);
                i(aVar2, searchKeyword);
                if (TextUtils.isEmpty(this.f17313h.getTranslate())) {
                    String translateFiles = this.f17313h.getTranslateFiles();
                    if (TextUtils.isEmpty(TranslateUtils.getTranslateContent(translateFiles, this.f17315j + ".txt"))) {
                        this.f17309d.setVisibility(0);
                        this.f17310e.setVisibility(8);
                        this.f17308c.setVisibility(8);
                        this.f17309d.setText(this.mContext.getString(R.string.translate_view_target));
                        this.f17312g.setVisibility(8);
                        i(aVar2, searchKeyword);
                    } else {
                        TextView textView = this.f17308c;
                        String translateFiles2 = this.f17313h.getTranslateFiles();
                        textView.setText(e(textView, new SpannableStringBuilder(TranslateUtils.getTranslateContent(translateFiles2, this.f17315j + ".txt"))));
                        this.f17308c.setVisibility(0);
                    }
                } else {
                    TextView textView2 = this.f17308c;
                    textView2.setText(e(textView2, new SpannableStringBuilder(this.f17313h.getTranslate())));
                    this.f17308c.setVisibility(0);
                }
            } else {
                this.f17309d.setVisibility(0);
                this.f17310e.setVisibility(8);
                this.f17308c.setVisibility(8);
                this.f17309d.setText(this.mContext.getString(R.string.translate_view_target));
                this.f17312g.setVisibility(8);
                i(aVar2, searchKeyword);
            }
        } else {
            if (aVar2.isNewMessage()) {
                this.f17312g.setVisibility(8);
                if (aVar2.isTranslate()) {
                    if (aVar2.isLook()) {
                        this.f17309d.setVisibility(8);
                        this.f17310e.setVisibility(0);
                        this.f17308c.setText(this.f17314i);
                        this.f17308c.setVisibility(0);
                        if (TextUtils.isEmpty(this.f17313h.getTranslate())) {
                            String translateFiles3 = this.f17313h.getTranslateFiles();
                            this.f17314i = new SpannableStringBuilder(TranslateUtils.getTranslateContent(translateFiles3, this.f17315j + ".txt"));
                        } else {
                            this.f17314i = new SpannableStringBuilder(this.f17313h.getTranslate());
                        }
                    } else {
                        this.f17309d.setVisibility(0);
                        this.f17310e.setVisibility(8);
                        this.f17308c.setVisibility(8);
                        this.f17309d.setText(this.mContext.getString(R.string.translate_view_original));
                        if (TextUtils.isEmpty(this.f17313h.getTranslate())) {
                            String translateFiles4 = this.f17313h.getTranslateFiles();
                            if (!TextUtils.isEmpty(TranslateUtils.getTranslateContent(translateFiles4, this.f17315j + ".txt"))) {
                                String translateFiles5 = this.f17313h.getTranslateFiles();
                                this.f17314i = new SpannableStringBuilder(TranslateUtils.getTranslateContent(translateFiles5, this.f17315j + ".txt"));
                            } else {
                                this.f17314i = new SpannableStringBuilder(this.f17313h.getContent());
                                this.f17309d.setText(this.mContext.getString(R.string.translate_view_target));
                            }
                        } else {
                            this.f17314i = new SpannableStringBuilder(this.f17313h.getTranslate());
                        }
                    }
                } else if (aVar2.isLook()) {
                    this.f17309d.setVisibility(8);
                    this.f17310e.setVisibility(0);
                    this.f17308c.setText(this.f17314i);
                    this.f17308c.setVisibility(0);
                    if (TextUtils.isEmpty(this.f17313h.getTranslate())) {
                        TextView textView3 = this.f17308c;
                        String translateFiles6 = this.f17313h.getTranslateFiles();
                        textView3.setText(e(textView3, new SpannableStringBuilder(TranslateUtils.getTranslateContent(translateFiles6, this.f17315j + ".txt"))));
                    } else {
                        TextView textView4 = this.f17308c;
                        textView4.setText(e(textView4, new SpannableStringBuilder(this.f17313h.getTranslate())));
                    }
                } else {
                    this.f17309d.setVisibility(0);
                    this.f17310e.setVisibility(8);
                    this.f17308c.setVisibility(8);
                    this.f17309d.setText(this.mContext.getString(R.string.translate_view_target));
                }
            } else if (aVar2.isLook()) {
                this.f17309d.setVisibility(8);
                this.f17310e.setVisibility(0);
                if (aVar2.isOriginal()) {
                    if (TextUtils.isEmpty(this.f17313h.getTranslate())) {
                        String translateFiles7 = this.f17313h.getTranslateFiles();
                        if (TextUtils.isEmpty(TranslateUtils.getTranslateContent(translateFiles7, this.f17315j + ".txt"))) {
                            this.mMessage.setLook(false);
                            this.mMessage.setOriginal(false);
                            this.f17309d.setVisibility(0);
                            this.f17310e.setVisibility(8);
                            this.f17308c.setVisibility(8);
                            this.f17312g.setVisibility(8);
                        } else {
                            TextView textView5 = this.f17308c;
                            String translateFiles8 = this.f17313h.getTranslateFiles();
                            textView5.setText(e(textView5, new SpannableStringBuilder(TranslateUtils.getTranslateContent(translateFiles8, this.f17315j + ".txt"))));
                        }
                    } else {
                        TextView textView6 = this.f17308c;
                        textView6.setText(e(textView6, new SpannableStringBuilder(this.f17313h.getTranslate())));
                    }
                } else {
                    TextView textView7 = this.f17308c;
                    textView7.setText(e(textView7, this.f17314i));
                    if (TextUtils.isEmpty(this.f17313h.getTranslate())) {
                        String translateFiles9 = this.f17313h.getTranslateFiles();
                        String translateContent = TranslateUtils.getTranslateContent(translateFiles9, this.f17315j + ".txt");
                        if (TextUtils.isEmpty(translateContent)) {
                            translateContent = "";
                        }
                        this.f17314i = new SpannableStringBuilder(translateContent);
                    } else {
                        this.f17314i = new SpannableStringBuilder(this.f17313h.getTranslate());
                    }
                }
                this.f17308c.setVisibility(0);
            } else {
                this.f17309d.setVisibility(0);
                this.f17310e.setVisibility(8);
                this.f17308c.setVisibility(8);
                String translateFiles10 = this.f17313h.getTranslateFiles();
                if (TranslateUtils.getTranslateFile(translateFiles10, this.f17315j + ".txt")) {
                    this.f17309d.setText(this.mContext.getString(R.string.translate_view_original));
                    if (TextUtils.isEmpty(this.f17313h.getTranslate())) {
                        String translateFiles11 = this.f17313h.getTranslateFiles();
                        this.f17314i = new SpannableStringBuilder(TranslateUtils.getTranslateContent(translateFiles11, this.f17315j + ".txt"));
                    } else {
                        this.f17314i = new SpannableStringBuilder(this.f17313h.getTranslate());
                    }
                } else {
                    this.f17309d.setText(this.mContext.getString(R.string.translate_view_target));
                    this.f17314i = new SpannableStringBuilder(this.f17313h.getContent());
                }
            }
            i(aVar2, searchKeyword);
        }
        this.f17307b.setOnClickListener(new a(aVar2));
        this.f17309d.setOnClickListener(new b(aVar2));
        this.f17308c.setOnClickListener(new c(aVar2));
        this.f17308c.setOnLongClickListener(new d());
        this.f17307b.setOnLongClickListener(new e(aVar2));
        l();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public List<PopupMenuItem> onCreatePopupMenus(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PopupMenuItem(1, this.mContext.getString(R.string.copy)));
        if (isSelf() && aVar.getStatus() == 2 && !isErrorMsg()) {
            arrayList.add(new PopupMenuItem(2, this.mContext.getString(R.string.chat_pullback)));
        }
        arrayList.add(new PopupMenuItem(3, this.mContext.getString(R.string.delete)));
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder, com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
    public void onItemClick(PopupMenuItem popupMenuItem, View view) {
        super.onItemClick(popupMenuItem, view);
        int id2 = popupMenuItem.getId();
        if (id2 == 1) {
            ((ClipboardManager) this.mContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("message", this.f17307b.getText()));
            ToastUtils.showToast(this.mContext, (int) R.string.copy_success);
        } else if (id2 == 2) {
            revokeCurrentMessage();
        } else if (id2 != 3) {
        } else {
            deleteCurrentMessage();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onMessageContentClick(View view, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        super.onMessageContentClick(view, aVar);
        if (aVar instanceof UnsupportedMessage) {
            Context context = this.mContext;
            PackageUtils.goToMarket(context, context.getPackageName());
        } else if (this.f17309d.getVisibility() == 0) {
            o(aVar);
        } else {
            this.f17309d.setVisibility(0);
            this.f17310e.setVisibility(8);
            aVar.setLook(false);
        }
    }
}

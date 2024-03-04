package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.BackgroundColorSpan;
import android.view.View;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.UnsupportedMessage;
import com.guochao.faceshow.aaspring.utils.LinkClickSpan;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.PopupMenu;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
/* loaded from: classes3.dex */
public class TextMessageViewHolder extends BaseMessageViewHolder {

    /* renamed from: a  reason: collision with root package name */
    TextView f17298a;

    /* renamed from: b  reason: collision with root package name */
    TextMessage f17299b;

    /* renamed from: c  reason: collision with root package name */
    SpannableStringBuilder f17300c;

    /* renamed from: d  reason: collision with root package name */
    Runnable f17301d;

    /* loaded from: classes3.dex */
    class a implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f17302a;

        /* renamed from: com.guochao.faceshow.aaspring.modulars.chat.viewholder.TextMessageViewHolder$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0165a implements PopupMenu.OnMenuItemClickListener {
            C0165a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
            public void onItemClick(PopupMenuItem popupMenuItem, View view) {
                int id2 = popupMenuItem.getId();
                if (id2 == 1) {
                    ((ClipboardManager) TextMessageViewHolder.this.mContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("message", TextMessageViewHolder.this.f17299b.getContent()));
                    ToastUtils.showToast(TextMessageViewHolder.this.mContext, (int) R.string.copy_success);
                } else if (id2 == 2) {
                    TextMessageViewHolder.this.revokeCurrentMessage();
                } else if (id2 != 3) {
                } else {
                    TextMessageViewHolder.this.deleteCurrentMessage();
                }
            }
        }

        a(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
            this.f17302a = aVar;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new PopupMenuItem(1, TextMessageViewHolder.this.mContext.getString(R.string.copy)));
            if (TextMessageViewHolder.this.isSelf() && this.f17302a.getStatus() == 2 && !TextMessageViewHolder.this.isErrorMsg()) {
                arrayList.add(new PopupMenuItem(2, TextMessageViewHolder.this.mContext.getString(R.string.chat_pullback)));
            }
            arrayList.add(new PopupMenuItem(3, TextMessageViewHolder.this.mContext.getString(R.string.delete)));
            if (!arrayList.isEmpty()) {
                PopupMenu popupMenu = new PopupMenu(TextMessageViewHolder.this.mContext);
                popupMenu.setMenus(arrayList);
                popupMenu.setOnMenuItemClickListener(new C0165a());
                popupMenu.show(TextMessageViewHolder.this.getView(R.id.message_content));
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextMessageViewHolder textMessageViewHolder = TextMessageViewHolder.this;
            textMessageViewHolder.f17298a.setText(textMessageViewHolder.f17300c.toString());
            TextMessageViewHolder.this.mMessage.setHasShowedSearch(true);
        }
    }

    public TextMessageViewHolder(Context context, View view) {
        super(context, view);
        this.f17301d = new b();
    }

    private SpannableStringBuilder c(SpannableStringBuilder spannableStringBuilder) {
        Matcher matcher = TopicAndAtTextHelper.WEB_URL.matcher(spannableStringBuilder);
        while (matcher.find()) {
            String group = matcher.group();
            int start = matcher.start();
            d(spannableStringBuilder, group, start, group.length() + start);
        }
        return spannableStringBuilder;
    }

    private void d(SpannableStringBuilder spannableStringBuilder, String str, int i9, int i10) {
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
        spannableStringBuilder.setSpan(new LinkClickSpan(str, parseColor), i9, i10, 33);
        this.f17298a.setMovementMethod(LinkMovementMethod.getInstance());
    }

    private void e() {
        SpannableStringBuilder c10 = c(this.f17300c);
        this.f17300c = c10;
        this.f17298a.setText(c10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        this.f17299b = (TextMessage) aVar2;
        this.f17298a = (TextView) getView(R.id.tv_msg_content);
        this.f17300c = new SpannableStringBuilder(this.f17299b.getContent());
        this.f17298a.setMovementMethod(null);
        String searchKeyword = aVar2.getSearchKeyword();
        if (!TextUtils.isEmpty(searchKeyword) && !aVar2.isHasShowedSearch()) {
            int indexOf = this.f17300c.toString().toLowerCase().indexOf(searchKeyword.toLowerCase());
            if (indexOf >= 0) {
                this.f17300c.setSpan(new BackgroundColorSpan(Color.parseColor("#542173B3")), indexOf, searchKeyword.length() + indexOf, 33);
                e();
                this.f17298a.removeCallbacks(this.f17301d);
                this.f17298a.postDelayed(this.f17301d, 3000L);
            } else {
                e();
            }
        } else {
            e();
        }
        this.f17298a.setOnLongClickListener(new a(aVar2));
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
            ((ClipboardManager) this.mContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("message", this.f17299b.getContent()));
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
        }
    }
}

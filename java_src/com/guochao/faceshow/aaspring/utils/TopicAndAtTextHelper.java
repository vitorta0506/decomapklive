package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.TopicHomePageActivity;
import com.guochao.faceshow.aaspring.views.ExpandableImageTextView;
import com.guochao.faceshow.aaspring.views.TopicAndAtTextView;
import com.guochao.faceshow.aaspring.views.h;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.web.WebViewActivity;
import java.lang.ref.WeakReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public class TopicAndAtTextHelper {
    public static final Pattern WEB_URL = PatternsCompat.WEB_URL;
    private boolean mClickable = true;
    private Context mContext;
    private TextView mTextView;
    private OnDoubleTapClickListener onDoubleTapClickListener;

    /* loaded from: classes3.dex */
    public static class CustomMovementMethod extends LinkMovementMethod {
        private static CustomMovementMethod sInstance;

        public static CustomMovementMethod getInstance() {
            if (sInstance == null) {
                synchronized (CustomMovementMethod.class) {
                    if (sInstance == null) {
                        sInstance = new CustomMovementMethod();
                    }
                }
            }
            return sInstance;
        }

        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if ((textView instanceof TopicAndAtTextView) && !((TopicAndAtTextView) textView).c()) {
                    return false;
                }
                if ((textView instanceof ExpandableImageTextView) && !((ExpandableImageTextView) textView).d()) {
                    return false;
                }
            }
            return super.onTouchEvent(textView, spannable, motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class LinkClickSpan extends ClickableSpan {
        private int mColor;
        String mText;

        public LinkClickSpan(String str, int i9) {
            this.mText = str;
            this.mColor = i9;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull final View view) {
            com.guochao.faceshow.aaspring.views.h.c(view, new h.b() { // from class: com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper.LinkClickSpan.1
                @Override // com.guochao.faceshow.aaspring.views.h.b
                public void onClick(View view2) {
                    if (TopicAndAtTextHelper.this.mClickable) {
                        WebViewActivity.createBuilder().m(LinkClickSpan.this.mText).c(true).a(view.getContext());
                    }
                }

                @Override // com.guochao.faceshow.aaspring.views.h.b
                public void onDoubleTabClick(View view2) {
                    if (TopicAndAtTextHelper.this.onDoubleTapClickListener != null) {
                        TopicAndAtTextHelper.this.onDoubleTapClickListener.onDoubleTap();
                    }
                }
            });
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(false);
            textPaint.setColor(this.mColor);
        }
    }

    /* loaded from: classes3.dex */
    public interface OnDoubleTapClickListener {
        void onDoubleTap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class TopicOrAtClickSpan extends ClickableSpan {
        private static final String TAG = "TopicOrAt";
        private int mColor;
        private WeakReference<Context> mContextWeakReference;
        String mText;

        public TopicOrAtClickSpan(Context context, String str, int i9) {
            this.mContextWeakReference = new WeakReference<>(context);
            this.mText = str;
            this.mColor = i9;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            com.guochao.faceshow.aaspring.views.h.c(view, new h.b() { // from class: com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper.TopicOrAtClickSpan.1
                @Override // com.guochao.faceshow.aaspring.views.h.b
                public void onClick(View view2) {
                    Context context;
                    if (TopicAndAtTextHelper.this.mClickable && (context = (Context) TopicOrAtClickSpan.this.mContextWeakReference.get()) != null) {
                        String str = TopicOrAtClickSpan.this.mText;
                        if (str.startsWith("@")) {
                            UserHomePageAct.startByUserName(context, StringUtils.removeInvisibleCharBeforeWhiteSpace(str.substring(1)));
                        } else if (str.startsWith("#")) {
                            UgcTopicBean ugcTopicBean = new UgcTopicBean();
                            ugcTopicBean.setTopicName(StringUtils.removeInvisibleCharBeforeWhiteSpace(str.substring(1)));
                            TopicHomePageActivity.r0(context, ugcTopicBean);
                        }
                    }
                }

                @Override // com.guochao.faceshow.aaspring.views.h.b
                public void onDoubleTabClick(View view2) {
                    if (TopicAndAtTextHelper.this.onDoubleTapClickListener != null) {
                        TopicAndAtTextHelper.this.onDoubleTapClickListener.onDoubleTap();
                    }
                }
            });
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(false);
            textPaint.setColor(this.mColor);
        }
    }

    public TopicAndAtTextHelper(Context context, TextView textView) {
        this.mContext = context;
        this.mTextView = textView;
    }

    private boolean isEnd(String str, char c10) {
        return " ".equals(str) || c10 == '\n';
    }

    private boolean isValid(int i9, int i10) {
        return i10 - i9 > 1;
    }

    private void setLink(SpannableStringBuilder spannableStringBuilder, String str, int i9, int i10) {
        spannableStringBuilder.setSpan(new LinkClickSpan(str, this.mContext.getResources().getColor(R.color.color_ugc_app_primary)), i9, i10, 33);
        this.mTextView.setMovementMethod(CustomMovementMethod.getInstance());
    }

    private void setSpan(SpannableStringBuilder spannableStringBuilder, int i9, int i10) {
        Drawable drawable;
        spannableStringBuilder.setSpan(new TopicOrAtClickSpan(this.mContext, spannableStringBuilder.subSequence(i9, i10).toString(), this.mContext.getResources().getColor(R.color.ugc_topic_color)), i9, i10, 33);
        if (spannableStringBuilder.toString().substring(i9, i10).contains("#") && (drawable = ContextCompat.getDrawable(BaseApplication.getInstance(), R.mipmap.icon_ugc_topic_show)) != null) {
            TextView textView = new TextView(BaseApplication.getInstance());
            textView.setTextSize(2, 14.0f);
            textView.measure(0, 0);
            float measuredHeight = textView.getMeasuredHeight();
            drawable.setBounds(0, -((int) (0.0f * measuredHeight)), (int) (((drawable.getMinimumWidth() * measuredHeight) * 1.0f) / drawable.getMinimumHeight()), (int) measuredHeight);
            spannableStringBuilder.setSpan(new com.guochao.faceshow.views.r(drawable), i9, i9 + 1, 33);
        }
        this.mTextView.setMovementMethod(CustomMovementMethod.getInstance());
    }

    public boolean isClickable() {
        return this.mClickable;
    }

    public Spannable replaceText(CharSequence charSequence) {
        if (charSequence == null) {
            return new SpannableString("");
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        int length = spannableStringBuilder.length();
        int i9 = 0;
        int i10 = 0;
        boolean z10 = false;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        while (i10 < length) {
            char charAt = spannableStringBuilder.charAt(i10);
            if (charAt == 8203) {
                z10 = true;
            } else if (z10) {
                if (i10 == length - 1) {
                    if (i11 >= 0) {
                        if (isValid(i11, i10)) {
                            setSpan(spannableStringBuilder, i11, i10 + 1);
                        }
                        i11 = -1;
                        i14 = -1;
                    }
                    if (i12 >= 0) {
                        if (isValid(i12, i10)) {
                            setSpan(spannableStringBuilder, i12, i10 + 1);
                        }
                        z10 = false;
                        i12 = -1;
                        i13 = -1;
                    }
                }
                z10 = false;
            } else {
                String valueOf = String.valueOf(charAt);
                if ("#".equals(valueOf)) {
                    if (i11 >= 0) {
                        if (isValid(i11, i10)) {
                            setSpan(spannableStringBuilder, i11, i10);
                        }
                        i11 = -1;
                        i14 = -1;
                    }
                    if (i12 >= 0) {
                        if (isValid(i12, i10)) {
                            setSpan(spannableStringBuilder, i12, i10);
                        }
                        i13 = -1;
                    }
                    i12 = i10;
                }
                if ((isEnd(valueOf, charAt) || i10 == length - 1) && i12 >= 0) {
                    i13 = i10 == length + (-1) ? i10 + 1 : i10;
                }
                if ((isEnd(valueOf, charAt) || i10 == length - 1) && i11 >= 0) {
                    i14 = i10 == length + (-1) ? i10 + 1 : i10;
                }
                if ("@".equals(valueOf)) {
                    if (i12 >= 0) {
                        if (isValid(i12, i10)) {
                            setSpan(spannableStringBuilder, i12, i10);
                        }
                        i12 = -1;
                        i13 = -1;
                    }
                    if (i11 >= 0) {
                        if (isValid(i11, i10)) {
                            setSpan(spannableStringBuilder, i11, i10);
                        }
                        i14 = -1;
                    }
                    i11 = i10;
                }
                if (i12 >= 0 && i13 >= 0) {
                    if (isValid(i12, i13)) {
                        setSpan(spannableStringBuilder, i12, i13);
                        i12 = -1;
                        i13 = -1;
                    }
                    i12 = -1;
                    i13 = -1;
                }
                if (i11 >= 0 && i14 >= 0) {
                    if (isValid(i11, i14)) {
                        setSpan(spannableStringBuilder, i11, i14);
                    }
                    i11 = -1;
                    i14 = -1;
                }
            }
            i10++;
        }
        Matcher matcher = WEB_URL.matcher(charSequence);
        String spannableStringBuilder2 = spannableStringBuilder.toString();
        while (matcher.find()) {
            String group = matcher.group();
            int indexOf = spannableStringBuilder2.indexOf(group, i9);
            setLink(spannableStringBuilder, group, indexOf, group.length() + indexOf);
            i9 = indexOf + group.length();
        }
        return spannableStringBuilder;
    }

    public void setClickable(boolean z10) {
        this.mClickable = z10;
    }

    public void setOnDoubleTapClickListener(OnDoubleTapClickListener onDoubleTapClickListener) {
        this.onDoubleTapClickListener = onDoubleTapClickListener;
    }
}

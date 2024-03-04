package com.twitter.sdk.android.tweetcomposer;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.timepicker.TimeModel;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.internal.UserUtils;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.tweetcomposer.a;
import com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView;
import java.util.Locale;
/* loaded from: classes4.dex */
public class ComposerView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    ImageView f35346a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f35347b;

    /* renamed from: c  reason: collision with root package name */
    EditText f35348c;

    /* renamed from: d  reason: collision with root package name */
    TextView f35349d;

    /* renamed from: e  reason: collision with root package name */
    Button f35350e;

    /* renamed from: f  reason: collision with root package name */
    ObservableScrollView f35351f;

    /* renamed from: g  reason: collision with root package name */
    View f35352g;

    /* renamed from: h  reason: collision with root package name */
    ColorDrawable f35353h;

    /* renamed from: i  reason: collision with root package name */
    ImageView f35354i;

    /* renamed from: j  reason: collision with root package name */
    a.b f35355j;

    /* renamed from: k  reason: collision with root package name */
    private Picasso f35356k;

    /* loaded from: classes4.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ComposerView composerView = ComposerView.this;
            composerView.f35355j.a(composerView.getTweetText());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    public ComposerView(Context context) {
        this(context, null);
    }

    private void f(Context context) {
        this.f35356k = Picasso.p(getContext());
        this.f35353h = new ColorDrawable(context.getResources().getColor(R$color.tw__composer_light_gray));
        LinearLayout.inflate(context, R$layout.tw__composer_view, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(View view) {
        this.f35355j.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View view) {
        this.f35355j.b(getTweetText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean i(TextView textView, int i9, KeyEvent keyEvent) {
        this.f35355j.b(getTweetText());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(int i9) {
        if (i9 > 0) {
            this.f35352g.setVisibility(0);
        } else {
            this.f35352g.setVisibility(4);
        }
    }

    void e() {
        this.f35346a = (ImageView) findViewById(R$id.tw__author_avatar);
        this.f35347b = (ImageView) findViewById(R$id.tw__composer_close);
        this.f35348c = (EditText) findViewById(R$id.tw__edit_tweet);
        this.f35349d = (TextView) findViewById(R$id.tw__char_count);
        this.f35350e = (Button) findViewById(R$id.tw__post_tweet);
        this.f35351f = (ObservableScrollView) findViewById(R$id.tw__composer_scroll_view);
        this.f35352g = findViewById(R$id.tw__composer_profile_divider);
        this.f35354i = (ImageView) findViewById(R$id.tw__image_view);
    }

    String getTweetText() {
        return this.f35348c.getText().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(boolean z10) {
        this.f35350e.setEnabled(z10);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        e();
        this.f35347b.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetcomposer.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ComposerView.this.g(view);
            }
        });
        this.f35350e.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetcomposer.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ComposerView.this.h(view);
            }
        });
        this.f35348c.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.twitter.sdk.android.tweetcomposer.d
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
                boolean i10;
                i10 = ComposerView.this.i(textView, i9, keyEvent);
                return i10;
            }
        });
        this.f35348c.addTextChangedListener(new a());
        this.f35351f.setScrollViewListener(new ObservableScrollView.a() { // from class: com.twitter.sdk.android.tweetcomposer.e
            @Override // com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView.a
            public final void a(int i9) {
                ComposerView.this.j(i9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCallbacks(a.b bVar) {
        this.f35355j = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCharCount(int i9) {
        this.f35349d.setText(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i9)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCharCountTextStyle(int i9) {
        this.f35349d.setTextAppearance(getContext(), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setImageView(Uri uri) {
        if (this.f35356k != null) {
            this.f35354i.setVisibility(0);
            this.f35356k.j(uri).f(this.f35354i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setProfilePhotoView(User user) {
        String b10 = UserUtils.b(user, UserUtils.AvatarSize.REASONABLY_SMALL);
        Picasso picasso = this.f35356k;
        if (picasso != null) {
            picasso.k(b10).j(this.f35353h).f(this.f35346a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTweetText(String str) {
        this.f35348c.setText(str);
    }

    public ComposerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f(context);
    }

    public ComposerView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        f(context);
    }
}

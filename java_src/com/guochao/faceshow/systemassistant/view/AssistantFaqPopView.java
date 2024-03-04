package com.guochao.faceshow.systemassistant.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.FAQTypesData;
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.Tool;
import java.util.List;
/* loaded from: classes4.dex */
public class AssistantFaqPopView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private List<FAQTypesData> f26422a;

    /* renamed from: b  reason: collision with root package name */
    private LinearLayout f26423b;

    /* renamed from: c  reason: collision with root package name */
    private PopupWindow f26424c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AssistantFaqPopView.this.f26424c.dismiss();
        }
    }

    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f26426a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FAQTypesData f26427b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f26428c;

        b(c cVar, FAQTypesData fAQTypesData, int i9) {
            this.f26426a = cVar;
            this.f26427b = fAQTypesData;
            this.f26428c = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AssistantFaqPopView.this.f26424c.dismiss();
            c cVar = this.f26426a;
            if (cVar != null) {
                cVar.a(this.f26427b.getTypeUrl(), this.f26428c);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a(String str, int i9);
    }

    public AssistantFaqPopView(@NonNull Context context) {
        this(context, null);
    }

    private void c() {
        setOrientation(1);
        setGravity(1);
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.f26423b = linearLayout;
        linearLayout.setOrientation(1);
        Tool.setViewPadding(this.f26423b, ScreenTools.dip2px(7.0f));
        this.f26423b.setBackgroundDrawable(FaceImageUtils.createDrawable(getResources().getColor(R.color.colorTextWhite), ScreenTools.dip2px(5.0f)));
        addView(this.f26423b);
        ImageView imageView = new ImageView(getContext());
        imageView.setBackgroundResource(R.drawable.im_pop_rectangle_bottom_white);
        addView(imageView, new ViewGroup.LayoutParams(-2, -2));
        setPadding(0, 0, 0, ScreenTools.dip2px(50.0f));
        setOnClickListener(new a());
        this.f26424c = Tool.createPopWindowInstance(this, ScreenTools.get375STValue(150.0f), -2);
    }

    public void b() {
        this.f26424c.dismiss();
    }

    public boolean d() {
        return this.f26424c.isShowing();
    }

    public void e(List<FAQTypesData> list, c cVar) {
        this.f26422a = list;
        this.f26423b.removeAllViews();
        List<FAQTypesData> list2 = this.f26422a;
        if (list2 == null || list2.size() == 0) {
            return;
        }
        for (int i9 = 0; i9 < this.f26422a.size(); i9++) {
            TextView textView = new TextView(getContext());
            textView.setTextColor(getResources().getColor(R.color.dark_blak));
            textView.setLayoutParams(new LinearLayout.LayoutParams(-1, ScreenTools.dip2px(40.0f)));
            textView.setGravity(17);
            textView.setIncludeFontPadding(false);
            textView.setText(this.f26422a.get(i9).getTypeName());
            textView.setOnClickListener(new b(cVar, this.f26422a.get(i9), i9));
            this.f26423b.addView(textView);
            if (i9 != this.f26422a.size() - 1) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 1);
                View view = new View(getContext());
                view.setBackgroundResource(R.color.main_line_gray_color);
                this.f26423b.addView(view, layoutParams);
            }
        }
    }

    public void f(View view) {
        List<FAQTypesData> list = this.f26422a;
        if (list == null || list.size() == 0) {
            return;
        }
        this.f26424c.showAtLocation(view, 80, 0, 0);
    }

    public AssistantFaqPopView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AssistantFaqPopView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        c();
    }
}

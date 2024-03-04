package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.DateUtils;
/* loaded from: classes3.dex */
public class HeadView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private TextView f23750a;

    public HeadView(@NonNull Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        LayoutInflater.from(context).inflate(R.layout.layout_head_like, (ViewGroup) this, true);
        this.f23750a = (TextView) findViewById(R.id.tv_date);
    }

    public void setDate(String str) {
        this.f23750a.setText(DateUtils.getLikeMeDate(str));
    }

    public HeadView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public HeadView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a(context);
    }
}

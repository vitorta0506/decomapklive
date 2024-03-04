package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.guochao.faceshow.R;
/* loaded from: classes4.dex */
public class ComposeRecordBtn extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f26577a;

    /* renamed from: b  reason: collision with root package name */
    private RecordProgressView f26578b;

    public ComposeRecordBtn(Context context) {
        super(context);
        b(context);
    }

    private void b(Context context) {
        LayoutInflater.from(context).inflate(R.layout.compose_record_btn, this);
        this.f26577a = (ImageView) findViewById(R.id.iv_record);
        this.f26578b = (RecordProgressView) findViewById(R.id.record_progress_view);
    }

    public void a() {
        this.f26578b.f();
        this.f26577a.setSelected(false);
        this.f26578b.setVisibility(4);
    }

    public void c() {
    }

    public void d() {
        this.f26577a.setSelected(true);
        this.f26578b.setVisibility(0);
    }

    public RecordProgressView getProgressView() {
        if (this.f26578b == null) {
            this.f26578b = (RecordProgressView) findViewById(R.id.record_progress_view);
        }
        return this.f26578b;
    }

    public ComposeRecordBtn(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(context);
    }

    public ComposeRecordBtn(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        b(context);
    }
}

package com.guochao.faceshow.aaspring.modulars.customerservice.helper;

import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class UploadFeedImageHelper_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private UploadFeedImageHelper f17516b;

    @UiThread
    public UploadFeedImageHelper_ViewBinding(UploadFeedImageHelper uploadFeedImageHelper, View view) {
        this.f17516b = uploadFeedImageHelper;
        uploadFeedImageHelper.mRecyclerView = (RecyclerView) c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        uploadFeedImageHelper.mTextViewCount = (TextView) c.d(view, R.id.count, "field 'mTextViewCount'", TextView.class);
        uploadFeedImageHelper.mEditText = (EditText) c.d(view, R.id.content, "field 'mEditText'", EditText.class);
        uploadFeedImageHelper.mTextViewWordLimit = (TextView) c.d(view, R.id.word_limit, "field 'mTextViewWordLimit'", TextView.class);
        uploadFeedImageHelper.mCheckBox = (CheckBox) c.d(view, R.id.log_check, "field 'mCheckBox'", CheckBox.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UploadFeedImageHelper uploadFeedImageHelper = this.f17516b;
        if (uploadFeedImageHelper != null) {
            this.f17516b = null;
            uploadFeedImageHelper.mRecyclerView = null;
            uploadFeedImageHelper.mTextViewCount = null;
            uploadFeedImageHelper.mEditText = null;
            uploadFeedImageHelper.mTextViewWordLimit = null;
            uploadFeedImageHelper.mCheckBox = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

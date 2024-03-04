package com.guochao.faceshow.dialog;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public class Photo_Dialog_Fragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private Photo_Dialog_Fragment f25223b;

    /* renamed from: c  reason: collision with root package name */
    private View f25224c;

    /* loaded from: classes2.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Photo_Dialog_Fragment f25225a;

        a(Photo_Dialog_Fragment photo_Dialog_Fragment) {
            this.f25225a = photo_Dialog_Fragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25225a.close(view);
        }
    }

    @UiThread
    public Photo_Dialog_Fragment_ViewBinding(Photo_Dialog_Fragment photo_Dialog_Fragment, View view) {
        this.f25223b = photo_Dialog_Fragment;
        photo_Dialog_Fragment.mRecyclerView = (RecyclerView) c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        photo_Dialog_Fragment.mTextViewTips = (TextView) c.d(view, R.id.tips, "field 'mTextViewTips'", TextView.class);
        photo_Dialog_Fragment.mTextViewUploadTitle = (TextView) c.d(view, R.id.upload_title, "field 'mTextViewUploadTitle'", TextView.class);
        View c10 = c.c(view, R.id.close, "method 'close'");
        this.f25224c = c10;
        c10.setOnClickListener(new a(photo_Dialog_Fragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        Photo_Dialog_Fragment photo_Dialog_Fragment = this.f25223b;
        if (photo_Dialog_Fragment != null) {
            this.f25223b = null;
            photo_Dialog_Fragment.mRecyclerView = null;
            photo_Dialog_Fragment.mTextViewTips = null;
            photo_Dialog_Fragment.mTextViewUploadTitle = null;
            this.f25224c.setOnClickListener(null);
            this.f25224c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

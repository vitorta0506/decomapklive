package com.guochao.faceshow.aaspring.modulars.ugc.viewholder;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder_ViewBinding;
/* loaded from: classes3.dex */
public class LiveDynamicViewHolder_ViewBinding extends BaseDynamicViewHolder_ViewBinding {

    /* renamed from: m  reason: collision with root package name */
    private LiveDynamicViewHolder f23049m;

    /* renamed from: n  reason: collision with root package name */
    private View f23050n;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveDynamicViewHolder f23051a;

        a(LiveDynamicViewHolder liveDynamicViewHolder) {
            this.f23051a = liveDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23051a.click(view);
        }
    }

    @UiThread
    public LiveDynamicViewHolder_ViewBinding(LiveDynamicViewHolder liveDynamicViewHolder, View view) {
        super(liveDynamicViewHolder, view);
        this.f23049m = liveDynamicViewHolder;
        liveDynamicViewHolder.mImageViewStatus = (ImageView) c.d(view, R.id.status, "field 'mImageViewStatus'", ImageView.class);
        View c10 = c.c(view, R.id.cover, "field 'mImageViewCover' and method 'click'");
        liveDynamicViewHolder.mImageViewCover = (ImageView) c.a(c10, R.id.cover, "field 'mImageViewCover'", ImageView.class);
        this.f23050n = c10;
        c10.setOnClickListener(new a(liveDynamicViewHolder));
        liveDynamicViewHolder.mMainContent = c.c(view, R.id.main_content, "field 'mMainContent'");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LiveDynamicViewHolder liveDynamicViewHolder = this.f23049m;
        if (liveDynamicViewHolder != null) {
            this.f23049m = null;
            liveDynamicViewHolder.mImageViewStatus = null;
            liveDynamicViewHolder.mImageViewCover = null;
            liveDynamicViewHolder.mMainContent = null;
            this.f23050n.setOnClickListener(null);
            this.f23050n = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

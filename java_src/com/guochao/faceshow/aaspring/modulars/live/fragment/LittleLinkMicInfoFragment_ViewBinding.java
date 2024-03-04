package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding;
/* loaded from: classes3.dex */
public class LittleLinkMicInfoFragment_ViewBinding extends BaseLiveInfoFragment_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private LittleLinkMicInfoFragment f19261d;

    /* renamed from: e  reason: collision with root package name */
    private View f19262e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LittleLinkMicInfoFragment f19263a;

        a(LittleLinkMicInfoFragment littleLinkMicInfoFragment) {
            this.f19263a = littleLinkMicInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19263a.showBottomDialog(view);
        }
    }

    @UiThread
    public LittleLinkMicInfoFragment_ViewBinding(LittleLinkMicInfoFragment littleLinkMicInfoFragment, View view) {
        super(littleLinkMicInfoFragment, view);
        this.f19261d = littleLinkMicInfoFragment;
        littleLinkMicInfoFragment.mTextView = (TextView) butterknife.internal.c.d(view, R.id.user_name, "field 'mTextView'", TextView.class);
        littleLinkMicInfoFragment.mDebugInfo = (TextView) butterknife.internal.c.d(view, R.id.debug_info, "field 'mDebugInfo'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.video_content, "method 'showBottomDialog'");
        this.f19262e = c10;
        c10.setOnClickListener(new a(littleLinkMicInfoFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LittleLinkMicInfoFragment littleLinkMicInfoFragment = this.f19261d;
        if (littleLinkMicInfoFragment != null) {
            this.f19261d = null;
            littleLinkMicInfoFragment.mTextView = null;
            littleLinkMicInfoFragment.mDebugInfo = null;
            this.f19262e.setOnClickListener(null);
            this.f19262e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

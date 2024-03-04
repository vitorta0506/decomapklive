package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import me.gujun.android.taggroup.TagGroup;
/* loaded from: classes4.dex */
public class HobbyActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private HobbyActivity f25608c;

    /* renamed from: d  reason: collision with root package name */
    private View f25609d;

    /* loaded from: classes4.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HobbyActivity f25610a;

        a(HobbyActivity hobbyActivity) {
            this.f25610a = hobbyActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25610a.onViewClicked();
        }
    }

    @UiThread
    public HobbyActivity_ViewBinding(HobbyActivity hobbyActivity, View view) {
        super(hobbyActivity, view);
        this.f25608c = hobbyActivity;
        hobbyActivity.tagSelectedLabel = (TagGroup) c.d(view, R.id.tagSelectedLabel, "field 'tagSelectedLabel'", TagGroup.class);
        hobbyActivity.tagHobby = (TagGroup) c.d(view, R.id.tagHobby, "field 'tagHobby'", TagGroup.class);
        View c10 = c.c(view, R.id.ivAddTag, "field 'ivAddTag' and method 'onViewClicked'");
        hobbyActivity.ivAddTag = (ImageView) c.a(c10, R.id.ivAddTag, "field 'ivAddTag'", ImageView.class);
        this.f25609d = c10;
        c10.setOnClickListener(new a(hobbyActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        HobbyActivity hobbyActivity = this.f25608c;
        if (hobbyActivity != null) {
            this.f25608c = null;
            hobbyActivity.tagSelectedLabel = null;
            hobbyActivity.tagHobby = null;
            hobbyActivity.ivAddTag = null;
            this.f25609d.setOnClickListener(null);
            this.f25609d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class MusicVideoActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private MusicVideoActivity f22285c;

    /* renamed from: d  reason: collision with root package name */
    private View f22286d;

    /* renamed from: e  reason: collision with root package name */
    private View f22287e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MusicVideoActivity f22288a;

        a(MusicVideoActivity musicVideoActivity) {
            this.f22288a = musicVideoActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22288a.useMusic(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MusicVideoActivity f22290a;

        b(MusicVideoActivity musicVideoActivity) {
            this.f22290a = musicVideoActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22290a.join(view);
        }
    }

    @UiThread
    public MusicVideoActivity_ViewBinding(MusicVideoActivity musicVideoActivity, View view) {
        super(musicVideoActivity, view);
        this.f22285c = musicVideoActivity;
        musicVideoActivity.music_img = (ImageView) butterknife.internal.c.d(view, R.id.album_cover, "field 'music_img'", ImageView.class);
        musicVideoActivity.mTextViewCount = (TextView) butterknife.internal.c.d(view, R.id.user_count, "field 'mTextViewCount'", TextView.class);
        musicVideoActivity.play_icon = (ImageView) butterknife.internal.c.d(view, R.id.play_icon, "field 'play_icon'", ImageView.class);
        musicVideoActivity.mViewPager = (ViewPager) butterknife.internal.c.d(view, R.id.viewpager, "field 'mViewPager'", ViewPager.class);
        musicVideoActivity.mTabLayout = (TabLayout) butterknife.internal.c.d(view, R.id.tabs, "field 'mTabLayout'", TabLayout.class);
        musicVideoActivity.mTextViewCreator = (TextView) butterknife.internal.c.d(view, R.id.creater, "field 'mTextViewCreator'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.useMusic, "method 'useMusic'");
        this.f22286d = c10;
        c10.setOnClickListener(new a(musicVideoActivity));
        View c11 = butterknife.internal.c.c(view, R.id.join, "method 'join'");
        this.f22287e = c11;
        c11.setOnClickListener(new b(musicVideoActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        MusicVideoActivity musicVideoActivity = this.f22285c;
        if (musicVideoActivity != null) {
            this.f22285c = null;
            musicVideoActivity.music_img = null;
            musicVideoActivity.mTextViewCount = null;
            musicVideoActivity.play_icon = null;
            musicVideoActivity.mViewPager = null;
            musicVideoActivity.mTabLayout = null;
            musicVideoActivity.mTextViewCreator = null;
            this.f22286d.setOnClickListener(null);
            this.f22286d = null;
            this.f22287e.setOnClickListener(null);
            this.f22287e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class DistancePrivacyActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private DistancePrivacyActivity f25585c;

    /* renamed from: d  reason: collision with root package name */
    private View f25586d;

    /* renamed from: e  reason: collision with root package name */
    private View f25587e;

    /* renamed from: f  reason: collision with root package name */
    private View f25588f;

    /* renamed from: g  reason: collision with root package name */
    private View f25589g;

    /* loaded from: classes4.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DistancePrivacyActivity f25590a;

        a(DistancePrivacyActivity distancePrivacyActivity) {
            this.f25590a = distancePrivacyActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25590a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DistancePrivacyActivity f25592a;

        b(DistancePrivacyActivity distancePrivacyActivity) {
            this.f25592a = distancePrivacyActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25592a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DistancePrivacyActivity f25594a;

        c(DistancePrivacyActivity distancePrivacyActivity) {
            this.f25594a = distancePrivacyActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25594a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DistancePrivacyActivity f25596a;

        d(DistancePrivacyActivity distancePrivacyActivity) {
            this.f25596a = distancePrivacyActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25596a.onViewClicked(view);
        }
    }

    @UiThread
    public DistancePrivacyActivity_ViewBinding(DistancePrivacyActivity distancePrivacyActivity, View view) {
        super(distancePrivacyActivity, view);
        this.f25585c = distancePrivacyActivity;
        distancePrivacyActivity.tvDefault = (TextView) butterknife.internal.c.d(view, R.id.tvDefault, "field 'tvDefault'", TextView.class);
        distancePrivacyActivity.tvDefaultTip = (TextView) butterknife.internal.c.d(view, R.id.tvDefaultTip, "field 'tvDefaultTip'", TextView.class);
        distancePrivacyActivity.rbDefault = (RadioButton) butterknife.internal.c.d(view, R.id.rbDefault, "field 'rbDefault'", RadioButton.class);
        View c10 = butterknife.internal.c.c(view, R.id.rlDefaultLayout, "field 'rlDefaultLayout' and method 'onViewClicked'");
        distancePrivacyActivity.rlDefaultLayout = (RelativeLayout) butterknife.internal.c.a(c10, R.id.rlDefaultLayout, "field 'rlDefaultLayout'", RelativeLayout.class);
        this.f25586d = c10;
        c10.setOnClickListener(new a(distancePrivacyActivity));
        distancePrivacyActivity.tvNotNeighborhood = (TextView) butterknife.internal.c.d(view, R.id.tvNotNeighborhood, "field 'tvNotNeighborhood'", TextView.class);
        distancePrivacyActivity.tvNotNeighborhoodTip = (TextView) butterknife.internal.c.d(view, R.id.tvNotNeighborhoodTip, "field 'tvNotNeighborhoodTip'", TextView.class);
        distancePrivacyActivity.rbNotNeighborhood = (RadioButton) butterknife.internal.c.d(view, R.id.rbNotNeighborhood, "field 'rbNotNeighborhood'", RadioButton.class);
        View c11 = butterknife.internal.c.c(view, R.id.rlNotNeighborhoodLayout, "field 'rlNotNeighborhoodLayout' and method 'onViewClicked'");
        distancePrivacyActivity.rlNotNeighborhoodLayout = (RelativeLayout) butterknife.internal.c.a(c11, R.id.rlNotNeighborhoodLayout, "field 'rlNotNeighborhoodLayout'", RelativeLayout.class);
        this.f25587e = c11;
        c11.setOnClickListener(new b(distancePrivacyActivity));
        distancePrivacyActivity.tvOnlyToFriends = (TextView) butterknife.internal.c.d(view, R.id.tvOnlyToFriends, "field 'tvOnlyToFriends'", TextView.class);
        distancePrivacyActivity.tvOnlyToFriendsTip = (TextView) butterknife.internal.c.d(view, R.id.tvOnlyToFriendsTip, "field 'tvOnlyToFriendsTip'", TextView.class);
        distancePrivacyActivity.rbOnlyToFriends = (RadioButton) butterknife.internal.c.d(view, R.id.rbOnlyToFriends, "field 'rbOnlyToFriends'", RadioButton.class);
        View c12 = butterknife.internal.c.c(view, R.id.rlOnlyToFriendsLayout, "field 'rlOnlyToFriendsLayout' and method 'onViewClicked'");
        distancePrivacyActivity.rlOnlyToFriendsLayout = (RelativeLayout) butterknife.internal.c.a(c12, R.id.rlOnlyToFriendsLayout, "field 'rlOnlyToFriendsLayout'", RelativeLayout.class);
        this.f25588f = c12;
        c12.setOnClickListener(new c(distancePrivacyActivity));
        distancePrivacyActivity.tvClose = (TextView) butterknife.internal.c.d(view, R.id.tvClose, "field 'tvClose'", TextView.class);
        distancePrivacyActivity.tvCloseTip = (TextView) butterknife.internal.c.d(view, R.id.tvCloseTip, "field 'tvCloseTip'", TextView.class);
        distancePrivacyActivity.rbClose = (RadioButton) butterknife.internal.c.d(view, R.id.rbClose, "field 'rbClose'", RadioButton.class);
        View c13 = butterknife.internal.c.c(view, R.id.rlCloseLayout, "field 'rlCloseLayout' and method 'onViewClicked'");
        distancePrivacyActivity.rlCloseLayout = (RelativeLayout) butterknife.internal.c.a(c13, R.id.rlCloseLayout, "field 'rlCloseLayout'", RelativeLayout.class);
        this.f25589g = c13;
        c13.setOnClickListener(new d(distancePrivacyActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        DistancePrivacyActivity distancePrivacyActivity = this.f25585c;
        if (distancePrivacyActivity != null) {
            this.f25585c = null;
            distancePrivacyActivity.tvDefault = null;
            distancePrivacyActivity.tvDefaultTip = null;
            distancePrivacyActivity.rbDefault = null;
            distancePrivacyActivity.rlDefaultLayout = null;
            distancePrivacyActivity.tvNotNeighborhood = null;
            distancePrivacyActivity.tvNotNeighborhoodTip = null;
            distancePrivacyActivity.rbNotNeighborhood = null;
            distancePrivacyActivity.rlNotNeighborhoodLayout = null;
            distancePrivacyActivity.tvOnlyToFriends = null;
            distancePrivacyActivity.tvOnlyToFriendsTip = null;
            distancePrivacyActivity.rbOnlyToFriends = null;
            distancePrivacyActivity.rlOnlyToFriendsLayout = null;
            distancePrivacyActivity.tvClose = null;
            distancePrivacyActivity.tvCloseTip = null;
            distancePrivacyActivity.rbClose = null;
            distancePrivacyActivity.rlCloseLayout = null;
            this.f25586d.setOnClickListener(null);
            this.f25586d = null;
            this.f25587e.setOnClickListener(null);
            this.f25587e = null;
            this.f25588f.setOnClickListener(null);
            this.f25588f = null;
            this.f25589g.setOnClickListener(null);
            this.f25589g = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

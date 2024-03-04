package com.guochao.faceshow.aaspring.modulars.ugc.publish.holder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.VisibleUserBean;
/* loaded from: classes3.dex */
public class VisibleUserHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private boolean f23021a;

    /* renamed from: b  reason: collision with root package name */
    private VisibleUserBean f23022b;

    /* renamed from: c  reason: collision with root package name */
    private int f23023c;

    /* renamed from: d  reason: collision with root package name */
    private a f23024d;
    @BindView
    ImageView primaryArrow;
    @BindView
    TextView primaryContent;
    @BindView
    ImageView primaryRightArrow;
    @BindView
    TextView primaryTitle;
    @BindView
    TextView secondaryContentWarning;
    @BindView
    ImageView secondaryFirstChecker;
    @BindView
    ViewGroup secondaryFirstLay;
    @BindView
    TextView secondaryFirstTitle;
    @BindView
    LinearLayout secondaryLay;
    @BindView
    ImageView secondarySecondChecker;
    @BindView
    TextView secondarySecondTitle;

    /* loaded from: classes3.dex */
    public interface a {
        void a(VisibleUserBean visibleUserBean, int i9);
    }

    public VisibleUserHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_item_visible_user, viewGroup, false));
        ButterKnife.c(this, this.itemView);
    }

    private void c() {
        if (this.f23021a) {
            this.primaryRightArrow.setImageResource(R.mipmap.icon_ugc_arrow_down);
            this.secondaryLay.setVisibility(8);
        } else {
            this.primaryRightArrow.setImageResource(R.mipmap.icon_ugc_arrow_up);
            this.secondaryLay.setVisibility(0);
        }
        this.f23021a = !this.f23021a;
    }

    public void d(int i9, VisibleUserBean visibleUserBean) {
        this.f23023c = i9;
        this.f23022b = visibleUserBean;
        this.primaryArrow.setVisibility(visibleUserBean.isSelected() ? 0 : 8);
        this.secondaryContentWarning.setText(R.string.ugc_visible_no_users);
        this.secondaryContentWarning.setTextColor(ContextCompat.getColor(this.itemView.getContext(), R.color.color_ugc_text_level_2));
        this.secondaryContentWarning.setVisibility(8);
        if (i9 == 4) {
            this.primaryRightArrow.setVisibility(0);
            this.primaryArrow.setVisibility(8);
            this.itemView.setClickable(false);
            this.primaryRightArrow.setImageResource(this.f23021a ? R.mipmap.icon_ugc_arrow_up : R.mipmap.icon_ugc_arrow_down);
            this.primaryRightArrow.setVisibility(0);
            if (this.f23021a) {
                this.primaryRightArrow.setImageResource(R.mipmap.icon_ugc_arrow_up);
                this.secondaryLay.setVisibility(0);
            } else {
                this.primaryRightArrow.setImageResource(R.mipmap.icon_ugc_arrow_down);
                this.secondaryLay.setVisibility(8);
            }
        } else {
            this.primaryRightArrow.setVisibility(8);
            this.itemView.setClickable(true);
            this.primaryArrow.setImageResource(R.mipmap.selector_selected);
        }
        this.secondarySecondChecker.setVisibility(4);
        if (i9 == 0) {
            this.primaryTitle.setText(R.string.ugc_fans_only);
            this.primaryContent.setText(R.string.ugc_visible_my_subs);
        } else if (i9 == 1) {
            this.primaryTitle.setText(R.string.ugc_friend_only);
            this.primaryContent.setText(R.string.ugc_visible_my_friend);
        } else if (i9 == 2) {
            this.primaryTitle.setText(R.string.open_video);
            this.primaryContent.setText(R.string.ugc_visible_all);
        } else if (i9 == 3) {
            this.primaryTitle.setText(R.string.private_video);
            this.primaryContent.setText(R.string.ugc_visible_me);
        } else if (i9 != 4) {
        } else {
            this.primaryTitle.setText(R.string.not_allow);
            this.primaryContent.setText(R.string.ugc_visible_no_users);
            this.secondaryFirstTitle.setText(R.string.ugc_no_visible_all_fans);
            if (visibleUserBean.isAllSelected()) {
                this.secondaryFirstChecker.setVisibility(0);
                return;
            }
            this.secondaryFirstChecker.setVisibility(4);
            if (visibleUserBean.getSelectInvisibleUsers() == null || visibleUserBean.getSelectInvisibleUsers().isEmpty()) {
                return;
            }
            this.secondaryContentWarning.setText(visibleUserBean.getSelectInvisibleName());
            this.secondaryContentWarning.setTextColor(ContextCompat.getColor(this.itemView.getContext(), R.color.color_app_tips));
            this.secondaryContentWarning.setVisibility(0);
            this.secondarySecondChecker.setVisibility(0);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.content_lay /* 2131362395 */:
                if (this.f23023c != 4) {
                    this.itemView.callOnClick();
                    return;
                } else {
                    c();
                    return;
                }
            case R.id.primary_arrow_right /* 2131364030 */:
                c();
                return;
            case R.id.secondary_first_lay /* 2131364413 */:
                a aVar = this.f23024d;
                if (aVar != null) {
                    aVar.a(this.f23022b, 1);
                    return;
                }
                return;
            case R.id.secondary_second_lay /* 2131364418 */:
                a aVar2 = this.f23024d;
                if (aVar2 != null) {
                    aVar2.a(this.f23022b, 2);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void setOnInvisibleUserClickListener(a aVar) {
        this.f23024d = aVar;
    }
}

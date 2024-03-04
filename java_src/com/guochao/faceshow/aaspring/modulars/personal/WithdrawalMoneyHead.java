package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
/* loaded from: classes3.dex */
public class WithdrawalMoneyHead {

    /* renamed from: a  reason: collision with root package name */
    private View f21372a;
    @BindView
    View spaceWeight;
    @BindView
    TextView tvFCount;
    @BindView
    TextView tvFtip;

    public WithdrawalMoneyHead(View view) {
        this.f21372a = view;
        ButterKnife.c(this, view);
        FontUtils.setFont(this.tvFCount, 3);
        this.spaceWeight.getLayoutParams().height = (int) (view.getContext().getResources().getDimension(R.dimen.abc_action_bar_default_height_material) + StatusBarHelper.getStatusbarHeight(view.getContext()));
        this.tvFCount.setText(String.valueOf(p9.a.g().e().getAvailableBalance()));
    }

    public View a() {
        return this.f21372a;
    }

    public void b(int i9) {
        TextView textView = this.tvFCount;
        if (textView != null) {
            if (i9 < 0) {
                textView.setText("0");
            } else {
                textView.setText(String.valueOf(i9));
            }
        }
    }

    public void c(boolean z10) {
        if (z10) {
            this.tvFtip.setText(R.string.f_available_balance);
        } else {
            this.tvFtip.setText(R.string.f_balance);
        }
    }
}

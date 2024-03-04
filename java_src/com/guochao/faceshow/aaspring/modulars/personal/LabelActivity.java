package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.personal.d;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
import com.guochao.faceshow.mine.model.HobbyBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TimeUtil;
import java.math.BigDecimal;
import java.text.MessageFormat;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class LabelActivity extends BaseRecyclerViewActivity<d.b, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private HobbyBean f21214a;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<d> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21215a;

        a(int i9) {
            this.f21215a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable @org.jetbrains.annotations.Nullable d dVar, @NonNull @NotNull FaceCastBaseResponse<d> faceCastBaseResponse) {
            if (dVar != null && dVar.a() != null && dVar.a().size() != 0) {
                if (this.f21215a == 1) {
                    LabelActivity.this.setDatas(dVar.a());
                } else {
                    LabelActivity.this.addDatas(dVar.a());
                }
                LabelActivity.this.notifyDataLoaded(dVar.a().size() > 0);
            } else if (this.f21215a == 1) {
                LabelActivity.this.showEmptyView();
            } else {
                LabelActivity.this.notifyDataLoaded(false);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<d> aVar) {
            if (this.f21215a == 1) {
                LabelActivity.this.showEmptyView();
            } else {
                LabelActivity.this.notifyDataLoaded(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d.a f21217a;

        b(d.a aVar) {
            this.f21217a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HobbyBean hobbyBean = new HobbyBean();
            hobbyBean.setHobbyId(this.f21217a.a());
            hobbyBean.setTags(this.f21217a.b());
            hobbyBean.setType(this.f21217a.c());
            LabelActivity.e0(LabelActivity.this.getActivity(), hobbyBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d.b f21219a;

        c(d.b bVar) {
            this.f21219a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserHomePageAct.start(LabelActivity.this.getActivity(), this.f21219a.f());
        }
    }

    public static void e0(Context context, HobbyBean hobbyBean) {
        Intent intent = new Intent(context, LabelActivity.class);
        intent.putExtra("data", hobbyBean);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: b0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, d.b bVar) {
        baseViewHolder.setIsRecyclable(false);
        NewCircleImageView newCircleImageView = (NewCircleImageView) baseViewHolder.getView(R.id.avatar);
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_distance);
        ChipGroup chipGroup = (ChipGroup) baseViewHolder.getView(R.id.f16047cg);
        hc.a.h(newCircleImageView, bVar.g(), R.mipmap.default_head_space);
        ((TextView) baseViewHolder.getView(R.id.tv_user_name)).setText("@" + bVar.d());
        ((TextView) baseViewHolder.getView(R.id.tv_time)).setText(TimeUtil.getLableTime(getActivity(), (i.u().s().getServerTimeDiff() + System.currentTimeMillis()) - Long.parseLong(bVar.c())));
        ((TextView) baseViewHolder.getView(R.id.tv_user_signature)).setText(bVar.e());
        if (TextUtils.isEmpty(bVar.b())) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(MessageFormat.format("{0}km", Double.valueOf(new BigDecimal(bVar.b()).setScale(2, 4).doubleValue())));
        }
        for (int i10 = 0; i10 < bVar.a().size(); i10++) {
            if (bVar.a().get(i10).a() == this.f21214a.getHobbyId()) {
                bVar.a().set(0, bVar.a().get(i10));
                bVar.a().set(i10, bVar.a().get(0));
            }
        }
        for (d.a aVar : bVar.a()) {
            Chip chip = new Chip(getActivity());
            chip.setTextSize(12.0f);
            chip.setText(aVar.b());
            if (bVar.a().indexOf(aVar) == 0) {
                chip.setChipBackgroundColor(ColorStateList.valueOf(ContextCompat.getColor(getActivity(), R.color.color_common_dialog_confirm)));
            } else {
                chip.setChipBackgroundColor(ColorStateList.valueOf(ContextCompat.getColor(getActivity(), R.color.color_window_background_light)));
            }
            chip.setChipCornerRadius(DensityUtil.dp2px(5.0f));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            ((ViewGroup.LayoutParams) layoutParams).height = DensityUtil.dp2px(38.0f);
            chipGroup.addView(chip, layoutParams);
            chip.setOnClickListener(new b(aVar));
        }
        newCircleImageView.setOnClickListener(new c(bVar));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: d0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, d.b bVar) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        HobbyBean hobbyBean = (HobbyBean) getIntent().getParcelableExtra("data");
        this.f21214a = hobbyBean;
        setTitle(hobbyBean.getTags());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("tokens/hobby/findHobbyDetail").B("hobbyId", this.f21214a.getHobbyId()).B("limit", 20).B("page", i9).M(new a(i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NonNull @NotNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.atcivity_label, viewGroup, false));
    }
}

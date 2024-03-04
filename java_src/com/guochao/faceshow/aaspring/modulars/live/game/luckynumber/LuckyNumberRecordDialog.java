package com.guochao.faceshow.aaspring.modulars.live.game.luckynumber;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameRecord;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.LuckyNumberRecordDialog;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.r;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes3.dex */
public class LuckyNumberRecordDialog extends BaseRecyclerViewDialogFragment<LiveGameRecord.LiveGameRecordBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private View f19597a;

    /* renamed from: b  reason: collision with root package name */
    private View f19598b;

    /* renamed from: c  reason: collision with root package name */
    private LiveGameBean f19599c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f19600d;

    /* loaded from: classes3.dex */
    class a extends c<LiveGameRecord> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveGameRecord liveGameRecord, @NonNull FaceCastBaseResponse<LiveGameRecord> faceCastBaseResponse) {
            if (liveGameRecord != null && liveGameRecord.getList() != null) {
                LuckyNumberRecordDialog.this.addDatas(liveGameRecord.getList());
            } else {
                onFailure(new g7.a<>(new Exception(""), -1));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            LuckyNumberRecordDialog.this.notifyDataLoaded(true);
            LuckyNumberRecordDialog.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveGameRecord> aVar) {
        }
    }

    private void R1() {
        if (!isAdded() || isDetached() || getActivity() == null || getActivity().isDestroyed() || getActivity().isFinishing()) {
            return;
        }
        dismissAllowingStateLoss();
    }

    private CharSequence S1(Context context, int i9) {
        int i10;
        Drawable drawable = ContextCompat.getDrawable(context, this.f19599c.getFlag() == 1 ? R.mipmap.icon_game_shuijing : R.mipmap.icon_game_diamond);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(String.format("{diamond} %s", Integer.valueOf(i9)));
        if (drawable == null) {
            return spannableStringBuilder;
        }
        int minimumWidth = drawable.getMinimumWidth();
        int minimumHeight = drawable.getMinimumHeight();
        TextView textView = new TextView(context);
        textView.setTextSize(2, 12.0f);
        textView.measure(0, 0);
        float measuredHeight = textView.getMeasuredHeight();
        drawable.setBounds(0, (int) (0.0f * measuredHeight), (int) (((minimumWidth * measuredHeight) * 1.0f) / minimumHeight), (int) (measuredHeight * 1.0f));
        r rVar = new r(drawable);
        int indexOf = spannableStringBuilder.toString().indexOf("{diamond}");
        if (indexOf >= 0 && (i10 = indexOf + 9) <= spannableStringBuilder.length()) {
            spannableStringBuilder.setSpan(rVar, indexOf, i10, 17);
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T1(View view) {
        R1();
    }

    public static void V1(FragmentManager fragmentManager, LiveGameBean liveGameBean) {
        LuckyNumberRecordDialog luckyNumberRecordDialog = new LuckyNumberRecordDialog();
        Bundle bundle = new Bundle();
        bundle.putParcelable("liveGameBean", liveGameBean);
        luckyNumberRecordDialog.setArguments(bundle);
        luckyNumberRecordDialog.show(fragmentManager, LuckyNumberRecordDialog.class.getSimpleName());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.a
    /* renamed from: Q1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, LiveGameRecord.LiveGameRecordBean liveGameRecordBean) {
        TextView textView = (TextView) baseViewHolder.getView(R.id.reward);
        ((TextView) baseViewHolder.getView(R.id.record_time)).setText(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.US).format(new Date(liveGameRecordBean.getCreateTime())));
        ((TextView) baseViewHolder.getView(R.id.join_fee)).setText(S1(getContext(), liveGameRecordBean.getDiamondOut()));
        if (liveGameRecordBean.getDiamondIn() > 0) {
            textView.setText(S1(getContext(), liveGameRecordBean.getDiamondIn()));
        } else {
            textView.setText("0");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment
    /* renamed from: U1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, LiveGameRecord.LiveGameRecordBean liveGameRecordBean) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_lucky_number_record;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        hideFooterView();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f19599c = (LiveGameBean) arguments.getParcelable("liveGameBean");
        }
        this.f19597a = view.findViewById(R.id.empty_layout);
        this.f19598b = view.findViewById(R.id.layout_tabs);
        TextView textView = (TextView) view.findViewById(R.id.join_fee);
        this.f19600d = textView;
        textView.setSelected(true);
        ((TextView) view.findViewById(R.id.reward)).setSelected(true);
        view.findViewById(R.id.left_back).setOnClickListener(new View.OnClickListener() { // from class: a9.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LuckyNumberRecordDialog.this.T1(view2);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.c
    public void loadData(int i9) {
        if (this.f19599c == null) {
            notifyDataLoaded(true);
            showEmptyView();
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(0);
        arrayList.add(1);
        post("tokens/game/v2/record/list").y("currPage", Integer.valueOf(i9)).y("pageSize", ThirdPushHelper.TYPE_HUAWEI).y("typeList", arrayList).y("gameInfoId", Long.valueOf(this.f19599c.getGameInfoId())).M(new a());
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog);
        createBottomDialog.setCanceledOnTouchOutside(true);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        return createBottomDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.a
    public void showEmptyView() {
        if (getList().isEmpty()) {
            this.f19598b.setVisibility(8);
            this.f19597a.setVisibility(0);
            return;
        }
        this.f19598b.setVisibility(0);
        this.f19597a.setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_lucky_number_record, viewGroup, false));
        ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.findViewById(R.id.join_fee).getLayoutParams()).setMarginStart((int) (ScreenTools.getScreenWidth() / 9.0f));
        return baseViewHolder;
    }
}

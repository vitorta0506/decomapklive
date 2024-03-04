package com.guochao.faceshow.mine.view.fragment;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.webkit.ProxyConfig;
import butterknife.BindView;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.material.timepicker.TimeModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import com.guochao.faceshow.mine.adapter.RecordTitleAdapter;
import com.guochao.faceshow.mine.model.RecordBean;
import com.guochao.faceshow.mine.model.TransactionType;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.views.c;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.header.progresslayout.ProgressLayout;
import com.yanzhenjie.recyclerview.swipe.widget.DefaultItemDecoration;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
/* loaded from: classes4.dex */
public abstract class BaseRecordFragment extends BaseFragment {

    /* renamed from: c  reason: collision with root package name */
    com.guochao.faceshow.views.c f25966c;

    /* renamed from: d  reason: collision with root package name */
    ArrayList<TransactionType> f25967d;

    /* renamed from: e  reason: collision with root package name */
    RecordTitleAdapter f25968e;

    /* renamed from: g  reason: collision with root package name */
    private int f25970g;

    /* renamed from: h  reason: collision with root package name */
    ZZ_RecycleAdapter f25971h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f25972i;
    @BindView
    ImageView ivDateImg;
    @BindView
    ImageView ivEmptyImg;
    @BindView
    LinearLayout llRootLayout;
    @BindView
    RecyclerView lvTransactionRecord;
    @BindView
    RecyclerView recyclerView;
    @BindView
    TwinklingRefreshLayout refreshLayout;
    @BindView
    RelativeLayout rlEmptyViewLayout;
    @BindView
    View spaceWeight;
    @BindView
    TextView tvIncome;
    @BindView
    TextView tvSpending;
    @BindView
    TextView tvTime;

    /* renamed from: a  reason: collision with root package name */
    private String f25964a = "0";

    /* renamed from: b  reason: collision with root package name */
    private String f25965b = "";

    /* renamed from: f  reason: collision with root package name */
    private int f25969f = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {

        /* renamed from: com.guochao.faceshow.mine.view.fragment.BaseRecordFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0260a implements c.f {
            C0260a() {
            }

            @Override // com.guochao.faceshow.views.c.f
            public void a(String str, String str2) {
                if (Integer.parseInt(str2) < 10) {
                    BaseRecordFragment baseRecordFragment = BaseRecordFragment.this;
                    baseRecordFragment.f25965b = str + "-0" + str2;
                } else {
                    BaseRecordFragment baseRecordFragment2 = BaseRecordFragment.this;
                    baseRecordFragment2.f25965b = str + "-" + str2;
                }
                BaseRecordFragment.this.Z1();
            }
        }

        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Calendar calendar = Calendar.getInstance();
            int i9 = calendar.get(1);
            calendar.get(2);
            BaseRecordFragment.this.f25966c = new com.guochao.faceshow.views.c(BaseRecordFragment.this.getActivity());
            BaseRecordFragment.this.f25966c.r(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i9)), String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, 1));
            BaseRecordFragment baseRecordFragment = BaseRecordFragment.this;
            baseRecordFragment.f25966c.showAtLocation(baseRecordFragment.llRootLayout, 80, 0, 0);
            BaseRecordFragment.this.f25966c.setBirthdayListener(new C0260a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements RecordTitleAdapter.b {
        b() {
        }

        @Override // com.guochao.faceshow.mine.adapter.RecordTitleAdapter.b
        public void a(View view, int i9, int i10) {
            BaseRecordFragment.this.f25964a = String.valueOf(i10);
            BaseRecordFragment.this.f25969f = 1;
            BaseRecordFragment.this.Z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends ZZ_RecycleAdapter<RecordBean.PageBean.RecordDetails> {
        c(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, RecordBean.PageBean.RecordDetails recordDetails) {
            String string;
            int i9;
            ImageView c10 = viewHolder.c(R.id.ivTypeImg);
            TextView e10 = viewHolder.e(R.id.tvTips);
            TextView e11 = viewHolder.e(R.id.tvCreatedTime);
            TextView e12 = viewHolder.e(R.id.tvMoney);
            TextView e13 = viewHolder.e(R.id.tvStatus);
            viewHolder.getPosition();
            String str = "";
            e13.setText("");
            int i10 = recordDetails.isType;
            if (i10 == 0) {
                e10.setText(BaseRecordFragment.this.getText(R.string.record_advertising));
                e11.setText(recordDetails.createTime);
                e12.setText("+" + recordDetails.price + ProxyConfig.MATCH_ALL_SCHEMES + recordDetails.numbers);
                c10.setImageDrawable(ContextCompat.getDrawable(BaseRecordFragment.this.getContext(), R.mipmap.icon_record_advertising));
                e12.setTextColor(Color.parseColor("#1AA930"));
            } else if (i10 != 14) {
                switch (i10) {
                    case 8:
                        e10.setText("");
                        c10.setImageDrawable(BaseRecordFragment.this.getResources().getDrawable(R.mipmap.ic_record_recharge));
                        e11.setText(EditTextUtils.convertNormalNumberToArabicNumber(recordDetails.createTime));
                        e12.setText("+" + recordDetails.price);
                        e12.setTextColor(Color.parseColor("#22ac38"));
                        int i11 = recordDetails.payState;
                        if (i11 == 0) {
                            e13.setText(BaseRecordFragment.this.getResources().getString(R.string.recharde_failed));
                            e13.setTextColor(Color.parseColor("#bb0462"));
                            return;
                        } else if (i11 == 2) {
                            e13.setText(BaseRecordFragment.this.getResources().getString(R.string.pay_refund));
                            e13.setTextColor(Color.parseColor("#bb0462"));
                            return;
                        } else if (i11 == 3) {
                            e13.setText(BaseRecordFragment.this.getResources().getString(R.string.pay_payments));
                            e13.setTextColor(Color.parseColor("#bb0462"));
                            return;
                        } else {
                            e13.setText("");
                            return;
                        }
                    case 9:
                        int i12 = recordDetails.types;
                        if (i12 == 1) {
                            string = BaseRecordFragment.this.getResources().getString(R.string.withdrawal_to_alipay);
                        } else if (i12 == 2) {
                            string = BaseRecordFragment.this.getResources().getString(R.string.withdrawal_to_wechat);
                        } else if (i12 == 4) {
                            string = BaseRecordFragment.this.getResources().getString(R.string.withdrawal_to_bank);
                        } else if (i12 == 5) {
                            string = BaseRecordFragment.this.getResources().getString(R.string.withdrawal_to_paypal);
                        } else {
                            string = BaseRecordFragment.this.getResources().getString(R.string.withdrawal_to_else);
                        }
                        e10.setText(string);
                        c10.setImageDrawable(BaseRecordFragment.this.getResources().getDrawable(R.mipmap.ic_record_withdrawal));
                        e11.setText(recordDetails.createTime);
                        if ("9".equals(BaseRecordFragment.this.f25964a)) {
                            e12.setText("+" + recordDetails.price);
                        } else {
                            e12.setText("-" + recordDetails.price);
                        }
                        e12.setTextColor(Color.parseColor("#bb0462"));
                        int i13 = recordDetails.applyState;
                        if (i13 == 0) {
                            e13.setText(BaseRecordFragment.this.getResources().getString(R.string.withdrawal_faile));
                            e13.setTextColor(Color.parseColor("#bb0462"));
                            return;
                        } else if (i13 == 1) {
                            e13.setText(BaseRecordFragment.this.getResources().getString(R.string.withdrawal_success));
                            e13.setTextColor(Color.parseColor("#22ac38"));
                            return;
                        } else if (i13 == 2) {
                            e13.setText(BaseRecordFragment.this.getResources().getString(R.string.withdrawal_review));
                            e13.setTextColor(Color.parseColor("#22ac38"));
                            return;
                        } else {
                            e13.setText("");
                            return;
                        }
                    case 10:
                        c10.setImageDrawable(BaseRecordFragment.this.getResources().getDrawable(R.mipmap.ic_record_recharge));
                        e10.setText(BaseRecordFragment.this.getResources().getString(R.string.live_withdrawal_diamond));
                        e11.setText(recordDetails.createTime);
                        e12.setText("+" + recordDetails.price + ProxyConfig.MATCH_ALL_SCHEMES + recordDetails.numbers);
                        e12.setTextColor(Color.parseColor("#22ac38"));
                        return;
                    case 11:
                        c10.setImageDrawable(BaseRecordFragment.this.getResources().getDrawable(R.mipmap.ic_record_recharge));
                        e10.setText(BaseRecordFragment.this.getResources().getString(R.string.earn_diamonds));
                        e11.setText(recordDetails.createTime);
                        e12.setText("+" + recordDetails.price + ProxyConfig.MATCH_ALL_SCHEMES + recordDetails.numbers);
                        e12.setTextColor(Color.parseColor("#22ac38"));
                        return;
                    default:
                        switch (i10) {
                            case 16:
                                e10.setText(BaseRecordFragment.this.getText(R.string.record_treasure_chest));
                                e11.setText(recordDetails.createTime);
                                e12.setText("+" + recordDetails.price + ProxyConfig.MATCH_ALL_SCHEMES + recordDetails.numbers);
                                c10.setImageDrawable(ContextCompat.getDrawable(BaseRecordFragment.this.getContext(), R.mipmap.icon_record_treasure_chest));
                                e12.setTextColor(Color.parseColor("#1AA930"));
                                return;
                            case 17:
                                BaseRecordFragment baseRecordFragment = BaseRecordFragment.this;
                                baseRecordFragment.d2(c10, e10, e11, e12, recordDetails, R.string.one_v_one_profile, "-", "#bb0462", baseRecordFragment.getResources().getDrawable(R.mipmap.record_data));
                                return;
                            case 18:
                            case 19:
                                BaseRecordFragment baseRecordFragment2 = BaseRecordFragment.this;
                                baseRecordFragment2.d2(c10, e10, e11, e12, recordDetails, R.string.get_free_diamonds, "+", "#22ac38", baseRecordFragment2.getResources().getDrawable(R.mipmap.ic_record_withdrawal));
                                return;
                            default:
                                switch (i10) {
                                    case 22:
                                        if (b8.e.g().getUserId().equals(String.valueOf(recordDetails.userId))) {
                                            str = BaseRecordFragment.this.getString(R.string.trtc_call_record_start_meeting, recordDetails.accountUserName);
                                            e12.setText("-");
                                        } else if (b8.e.g().getUserId().equals(String.valueOf(recordDetails.account))) {
                                            str = BaseRecordFragment.this.getString(R.string.trtc_call_record_receive_meeting, recordDetails.userName);
                                            e12.setText("+");
                                        }
                                        e10.setText(str);
                                        e11.setText(recordDetails.createTime);
                                        e12.append(String.valueOf(recordDetails.price));
                                        e12.append(ProxyConfig.MATCH_ALL_SCHEMES);
                                        e12.append(String.valueOf(recordDetails.numbers));
                                        e12.setTextColor(Color.parseColor("#22ac38"));
                                        c10.setImageDrawable(BaseRecordFragment.this.getResources().getDrawable(R.mipmap.ic_record_love));
                                        return;
                                    case 23:
                                        BaseRecordFragment baseRecordFragment3 = BaseRecordFragment.this;
                                        baseRecordFragment3.d2(c10, e10, e11, e12, recordDetails, R.string.minigame_lucky_rotate_join, "-", "#22ac38", ContextCompat.getDrawable(baseRecordFragment3.getContext(), R.mipmap.ic_record_lucky_remote));
                                        return;
                                    case 24:
                                        BaseRecordFragment baseRecordFragment4 = BaseRecordFragment.this;
                                        baseRecordFragment4.d2(c10, e10, e11, e12, recordDetails, R.string.minigame_lucky_rotate_back, "+", "#22ac38", ContextCompat.getDrawable(baseRecordFragment4.getContext(), R.mipmap.ic_record_lucky_remote));
                                        return;
                                    case 25:
                                        BaseRecordFragment baseRecordFragment5 = BaseRecordFragment.this;
                                        baseRecordFragment5.d2(c10, e10, e11, e12, recordDetails, R.string.minigame_lucky_rotate_win, "+", "#22ac38", ContextCompat.getDrawable(baseRecordFragment5.getContext(), R.mipmap.ic_record_lucky_remote));
                                        return;
                                    case 26:
                                        BaseRecordFragment baseRecordFragment6 = BaseRecordFragment.this;
                                        baseRecordFragment6.d2(c10, e10, e11, e12, recordDetails, R.string.minigame_lucky_rotate_divide, "+", "#22ac38", ContextCompat.getDrawable(baseRecordFragment6.getContext(), R.mipmap.ic_record_lucky_remote));
                                        return;
                                    case 27:
                                        BaseRecordFragment baseRecordFragment7 = BaseRecordFragment.this;
                                        baseRecordFragment7.d2(c10, e10, e11, e12, recordDetails, R.string.live_game_lucky_number_join, "-", "#22ac38", ContextCompat.getDrawable(baseRecordFragment7.getContext(), R.mipmap.ic_record_lucky_remote));
                                        return;
                                    case 28:
                                        BaseRecordFragment baseRecordFragment8 = BaseRecordFragment.this;
                                        baseRecordFragment8.d2(c10, e10, e11, e12, recordDetails, R.string.live_game_lucky_number_back, "+", "#22ac38", ContextCompat.getDrawable(baseRecordFragment8.getContext(), R.mipmap.ic_record_lucky_remote));
                                        return;
                                    case 29:
                                        BaseRecordFragment baseRecordFragment9 = BaseRecordFragment.this;
                                        baseRecordFragment9.d2(c10, e10, e11, e12, recordDetails, R.string.live_game_lucky_number_reward, "+", "#22ac38", ContextCompat.getDrawable(baseRecordFragment9.getContext(), R.mipmap.ic_record_lucky_remote));
                                        return;
                                    case 30:
                                        BaseRecordFragment baseRecordFragment10 = BaseRecordFragment.this;
                                        baseRecordFragment10.d2(c10, e10, e11, e12, recordDetails, R.string.live_game_lucky_number_divide, "+", "#22ac38", ContextCompat.getDrawable(baseRecordFragment10.getContext(), R.mipmap.ic_record_lucky_remote));
                                        return;
                                    case 31:
                                        BaseRecordFragment baseRecordFragment11 = BaseRecordFragment.this;
                                        baseRecordFragment11.d2(c10, e10, e11, e12, recordDetails, R.string.live_game_lucky_roulette_join, "-", "#22ac38", ContextCompat.getDrawable(baseRecordFragment11.getContext(), R.mipmap.ic_record_lucky_remote));
                                        return;
                                    case 32:
                                        BaseRecordFragment baseRecordFragment12 = BaseRecordFragment.this;
                                        baseRecordFragment12.d2(c10, e10, e11, e12, recordDetails, R.string.live_game_lucky_roulette_reward, "+", "#22ac38", ContextCompat.getDrawable(baseRecordFragment12.getContext(), R.mipmap.ic_record_lucky_remote));
                                        return;
                                    case 33:
                                    case 34:
                                    case 35:
                                    case 36:
                                    case 37:
                                    case 38:
                                        BaseRecordFragment.this.e2(c10, e10, e11, e12, recordDetails);
                                        return;
                                    default:
                                        if (BaseRecordFragment.this.c2(viewHolder, recordDetails)) {
                                            return;
                                        }
                                        if (String.valueOf(recordDetails.userId).equals(SpUtils.getStr(BaseRecordFragment.this.getContext(), Contants.USER_ID))) {
                                            String format = String.format(BaseRecordFragment.this.getResources().getString(R.string.record_send_to), recordDetails.accountUserName);
                                            int indexOf = format.indexOf("@" + recordDetails.accountUserName);
                                            i9 = indexOf >= 0 ? indexOf : 0;
                                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
                                            spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#1793fb")), i9, ("@" + recordDetails.accountUserName).length() + i9, 34);
                                            e10.setText(spannableStringBuilder);
                                            c10.setImageDrawable(BaseRecordFragment.this.getResources().getDrawable(R.mipmap.ic_record_gift_send));
                                            e11.setText(recordDetails.createTime);
                                            e12.setText("-" + recordDetails.price + ProxyConfig.MATCH_ALL_SCHEMES + recordDetails.numbers);
                                            e12.setTextColor(Color.parseColor("#bb0462"));
                                            e13.setText("");
                                            return;
                                        }
                                        String format2 = String.format(BaseRecordFragment.this.getResources().getString(R.string.record_received_to), recordDetails.userName);
                                        int indexOf2 = format2.indexOf("@" + recordDetails.userName);
                                        i9 = indexOf2 >= 0 ? indexOf2 : 0;
                                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(format2);
                                        spannableStringBuilder2.setSpan(new ForegroundColorSpan(Color.parseColor("#1793fb")), i9, ("@" + recordDetails.userName).length() + i9, 34);
                                        e10.setText(spannableStringBuilder2);
                                        c10.setImageDrawable(BaseRecordFragment.this.getResources().getDrawable(R.mipmap.ic_record_gift_income));
                                        e11.setText(recordDetails.createTime);
                                        e12.setText("+" + recordDetails.price + ProxyConfig.MATCH_ALL_SCHEMES + recordDetails.numbers);
                                        e12.setTextColor(Color.parseColor("#22ac38"));
                                        e13.setText("");
                                        return;
                                }
                        }
                }
            } else {
                BaseRecordFragment baseRecordFragment13 = BaseRecordFragment.this;
                baseRecordFragment13.d2(c10, e10, e11, e12, recordDetails, R.string.one_v_one_continued, "-", "#bb0462", baseRecordFragment13.getResources().getDrawable(R.mipmap.record_time));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d extends kc.f {
        d() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            BaseRecordFragment.this.f25969f = 1;
            BaseRecordFragment.this.Z1();
        }

        @Override // kc.f, kc.e
        public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
            if (BaseRecordFragment.this.f25969f < BaseRecordFragment.this.f25970g) {
                BaseRecordFragment.V1(BaseRecordFragment.this);
                BaseRecordFragment.this.Z1();
                return;
            }
            twinklingRefreshLayout.B(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            TwinklingRefreshLayout twinklingRefreshLayout = BaseRecordFragment.this.refreshLayout;
            if (twinklingRefreshLayout == null) {
                return;
            }
            twinklingRefreshLayout.D();
            BaseRecordFragment.this.refreshLayout.C();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            RecordBean.PageBean pageBean;
            List<RecordBean.PageBean.RecordDetails> list;
            if (BaseRecordFragment.this.refreshLayout == null) {
                return;
            }
            RecordBean recordBean = null;
            try {
                recordBean = (RecordBean) GsonGetter.getGson().fromJson(str, (Class<Object>) RecordBean.class);
            } catch (Exception e10) {
                LogUtils.e("Record", "onResponse: ", e10);
            }
            if (recordBean != null && (pageBean = recordBean.page) != null && (list = pageBean.list) != null) {
                ArrayList arrayList = new ArrayList();
                for (RecordBean.PageBean.RecordDetails recordDetails : list) {
                    if (recordDetails.isType != 9) {
                        arrayList.add(recordDetails);
                    }
                }
                BaseRecordFragment.this.f25970g = recordBean.page.totalPage;
                if (BaseRecordFragment.this.f25969f == 1) {
                    if (arrayList.size() > 0) {
                        BaseRecordFragment.this.rlEmptyViewLayout.setVisibility(8);
                        BaseRecordFragment.this.lvTransactionRecord.setVisibility(0);
                        BaseRecordFragment.this.f25971h.resetData(arrayList);
                    } else {
                        BaseRecordFragment.this.rlEmptyViewLayout.setVisibility(0);
                        BaseRecordFragment.this.lvTransactionRecord.setVisibility(8);
                    }
                } else if (arrayList.size() > 0) {
                    BaseRecordFragment.this.f25971h.addData(arrayList);
                }
                BaseRecordFragment.this.refreshLayout.D();
                BaseRecordFragment.this.refreshLayout.C();
                BaseRecordFragment.this.tvTime.setText(EditTextUtils.convertNormalNumberToArabicNumber(recordBean.result.time));
                TextView textView = BaseRecordFragment.this.tvIncome;
                textView.setText(BaseRecordFragment.this.getResources().getString(R.string.transaction_record_income) + CertificateUtil.DELIMITER + recordBean.result.Income);
                TextView textView2 = BaseRecordFragment.this.tvSpending;
                textView2.setText(BaseRecordFragment.this.getResources().getString(R.string.transaction_record_spending) + CertificateUtil.DELIMITER + recordBean.result.payPrice);
            } else if (BaseRecordFragment.this.f25969f == 1) {
                BaseRecordFragment.this.rlEmptyViewLayout.setVisibility(0);
                BaseRecordFragment.this.lvTransactionRecord.setVisibility(8);
                BaseRecordFragment.this.f25971h.resetData(new ArrayList());
                BaseRecordFragment.this.refreshLayout.D();
                BaseRecordFragment.this.refreshLayout.C();
            } else {
                onFailure(new g7.a<>(new Exception(""), -1));
            }
        }
    }

    static /* synthetic */ int V1(BaseRecordFragment baseRecordFragment) {
        int i9 = baseRecordFragment.f25969f;
        baseRecordFragment.f25969f = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1() {
        this.f25972i = true;
        PostRequest D = post(Contants.TRANSACTION_RECORD_LIST).D(Contants.USER_ID, SpUtils.getStr(getActivity(), Contants.USER_ID)).D("type", this.f25964a);
        String str = this.f25965b;
        if (str == null) {
            str = "";
        }
        D.D(CrashHianalyticsData.TIME, StringUtils.convertNumberToNormalNumber(str)).D("limit", ThirdPushHelper.TYPE_HUAWEI).D("page", this.f25969f + "").M(new e());
    }

    private void a2() {
        this.f25967d = new ArrayList<>();
        this.f25967d.add(new TransactionType(0, getResources().getString(R.string.transaction_type_all_month)));
        if (com.guochao.faceshow.aaspring.manager.i.u().s().getGameSwitch() == 1) {
            this.f25967d.add(new TransactionType(1004, getResources().getString(R.string.minigame_record_game)));
        }
        this.f25967d.add(new TransactionType(1, getResources().getString(R.string.video)));
        this.f25967d.add(new TransactionType(2, getResources().getString(R.string.transaction_type_live)));
        this.f25967d.add(new TransactionType(1001, getResources().getString(R.string.one2one)));
        this.f25967d.add(new TransactionType(4, getResources().getString(R.string.my_send_gifts)));
        this.f25967d.add(new TransactionType(5, getResources().getString(R.string.my_receive_gifts)));
        this.f25967d.add(new TransactionType(8, getResources().getString(R.string.charge)));
        this.f25967d.add(new TransactionType(1002, getResources().getString(R.string.chat)));
        this.f25967d.add(new TransactionType(1003, getResources().getString(R.string.trtc_call_meeting)));
        this.f25967d.add(new TransactionType(1005, getResources().getString(R.string.f_dress_up_market)));
        this.f25968e = new RecordTitleAdapter(getActivity(), new b());
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.recyclerView.setAdapter(this.f25968e);
        this.recyclerView.getItemAnimator().setChangeDuration(0L);
        this.f25968e.notifyDataSetChanged(this.f25967d);
        this.lvTransactionRecord.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.lvTransactionRecord.addItemDecoration(new DefaultItemDecoration(ContextCompat.getColor(getActivity(), R.color.light_new_gray), 10, 10, new int[0]));
        c cVar = new c(getActivity(), R.layout.transaction_record_list_item);
        this.f25971h = cVar;
        this.lvTransactionRecord.setAdapter(cVar);
        this.refreshLayout.setHeaderView(new ProgressLayout(getActivity()));
        this.refreshLayout.setFloatRefresh(true);
        this.refreshLayout.setEnableOverScroll(true);
        this.refreshLayout.setHeaderHeight(120.0f);
        this.refreshLayout.setMaxHeadHeight(200.0f);
        this.refreshLayout.setAutoLoadMore(true);
        this.refreshLayout.setOnRefreshListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2(ImageView imageView, TextView textView, TextView textView2, TextView textView3, RecordBean.PageBean.RecordDetails recordDetails) {
        switch (recordDetails.isType) {
            case 33:
                textView.setText(getString(R.string.f_dress_record_buy_car));
                break;
            case 34:
                textView.setText(getString(R.string.f_dress_record_buy_pendant));
                break;
            case 35:
                textView.setText(getString(R.string.f_dress_record_buy_shading));
                break;
            case 36:
                textView.setText(getString(R.string.f_dress_record_send_car, recordDetails.accountUserName));
                break;
            case 37:
                textView.setText(getString(R.string.f_dress_record_send_pendant, recordDetails.accountUserName));
                break;
            case 38:
                textView.setText(getString(R.string.f_dress_record_send_shading, recordDetails.accountUserName));
                break;
        }
        textView2.setText(recordDetails.createTime);
        textView3.setText("-" + recordDetails.price + ProxyConfig.MATCH_ALL_SCHEMES + recordDetails.numbers);
        imageView.setImageDrawable(ContextCompat.getDrawable(getContext(), R.mipmap.user_dressup_market));
        textView3.setTextColor(Color.parseColor("#22ac38"));
    }

    private void initListener() {
        this.ivDateImg.setOnClickListener(new a());
    }

    public void b2() {
        FragmentActivity activity = getActivity();
        if (activity instanceof MyWalletActivity) {
            ((ImageView) activity.findViewById(R.id.iv_title_bar)).setAlpha(1.0f);
            this.spaceWeight.getLayoutParams().height = (int) (getResources().getDimension(R.dimen.abc_action_bar_default_height_material) + StatusBarHelper.getStatusbarHeight(getContext()));
        }
    }

    public boolean c2(ZZ_RecycleAdapter.ViewHolder viewHolder, RecordBean.PageBean.RecordDetails recordDetails) {
        return false;
    }

    public void d2(ImageView imageView, TextView textView, TextView textView2, TextView textView3, RecordBean.PageBean.RecordDetails recordDetails, int i9, String str, String str2, Drawable drawable) {
        textView.setText(getString(i9));
        textView2.setText(recordDetails.createTime);
        textView3.setText(str + recordDetails.price + ProxyConfig.MATCH_ALL_SCHEMES + recordDetails.numbers);
        textView3.setTextColor(Color.parseColor(str2));
        imageView.setImageDrawable(drawable);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_record;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        b2();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Calendar calendar = Calendar.getInstance();
        int i9 = calendar.get(1);
        int i10 = calendar.get(2) + 1;
        if (i10 < 10) {
            this.f25965b = i9 + "-0" + i10;
        } else {
            this.f25965b = i9 + "-" + i10;
        }
        LogUtils.e("tagday", this.f25965b);
        a2();
        initListener();
    }
}

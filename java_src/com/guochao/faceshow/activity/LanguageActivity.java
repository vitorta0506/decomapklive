package com.guochao.faceshow.activity;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.MultiLanguageBean;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.adapters.MyLanguageRecycleAdapter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class LanguageActivity extends BaseDialogFragment {

    /* renamed from: b  reason: collision with root package name */
    private MyLanguageRecycleAdapter f24540b;

    /* renamed from: c  reason: collision with root package name */
    private String f24541c;

    /* renamed from: e  reason: collision with root package name */
    e f24543e;
    @BindView
    RecyclerView lvCountry;
    @BindView
    ImageView mClose;
    @BindView
    TextView mTitle;
    @BindView
    TextView saveTV;

    /* renamed from: a  reason: collision with root package name */
    List<MultiLanguageBean> f24539a = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private List<MultiLanguageBean> f24542d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    String f24544f = "";

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LanguageActivity.this.dismissAllowingStateLoss();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (LanguageActivity.this.f24540b.c().size() < 1) {
                ToastUtils.showToast(LanguageActivity.this.getContext(), LanguageActivity.this.getString(R.string.chooce_mastery_language));
            } else {
                LanguageActivity.this.T1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<List<MultiLanguageBean>> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<MultiLanguageBean>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<MultiLanguageBean> list, @NonNull FaceCastBaseResponse<List<MultiLanguageBean>> faceCastBaseResponse) {
            LanguageActivity languageActivity = LanguageActivity.this;
            languageActivity.f24539a = list;
            languageActivity.f24540b.resetData(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f24548a;

        d(String str) {
            this.f24548a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            LanguageActivity.this.f24543e.a(this.f24548a);
            LanguageActivity.this.dismissAllowingStateLoss();
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void a(String str);
    }

    private void Q1() {
        post("api/Country/findLanguageByTrans").M(new c());
    }

    public static LanguageActivity R1(String str, e eVar) {
        LanguageActivity languageActivity = new LanguageActivity();
        Bundle bundle = new Bundle();
        bundle.putString("language", str);
        languageActivity.setArguments(bundle);
        languageActivity.f24543e = eVar;
        return languageActivity;
    }

    private void S1() {
        Q1();
    }

    public void T1() {
        String str;
        String str2 = "";
        for (MultiLanguageBean multiLanguageBean : this.f24540b.c()) {
            this.f24544f += multiLanguageBean.getId() + ",";
            str2 = str2 + multiLanguageBean.getLanguage() + ",";
        }
        this.f24544f = this.f24544f.substring(0, str.length() - 1);
        post("tokens/language/can/saveLangById").D("languageIds", this.f24544f).M(new d(str2.substring(0, str2.length() - 1)));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.activity_maray_lanuage;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        String[] split;
        this.mClose.setOnClickListener(new a());
        this.saveTV.setOnClickListener(new b());
        this.mTitle.setText(R.string.mastery_of_language);
        S1();
        String string = getArguments().getString("language");
        this.f24541c = string;
        if (!TextUtils.isEmpty(string)) {
            for (String str : this.f24541c.split(",")) {
                MultiLanguageBean multiLanguageBean = new MultiLanguageBean();
                multiLanguageBean.setLanguage(str);
                this.f24542d.add(multiLanguageBean);
            }
        }
        this.lvCountry.setLayoutManager(new LinearLayoutManager(getActivity()));
        MyLanguageRecycleAdapter myLanguageRecycleAdapter = new MyLanguageRecycleAdapter(getActivity(), R.layout.country_list_curr_item, this.f24539a, this.f24542d);
        this.f24540b = myLanguageRecycleAdapter;
        this.lvCountry.setAdapter(myLanguageRecycleAdapter);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        Dialog dialog = new Dialog(getActivity(), R.style.BottomDialog);
        dialog.requestWindowFeature(1);
        dialog.setCanceledOnTouchOutside(true);
        Window window = dialog.getWindow();
        if (window == null) {
            return null;
        }
        window.setBackgroundDrawable(new ColorDrawable(0));
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 80;
        attributes.width = -1;
        window.setAttributes(attributes);
        return dialog;
    }
}

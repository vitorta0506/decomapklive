package com.guochao.faceshow.aaspring.modulars.cancelaccount;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CancelAccountRequestBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelReasonActivity;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class CancelReasonActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f16612a;

    /* renamed from: b  reason: collision with root package name */
    private EditText f16613b;

    /* renamed from: c  reason: collision with root package name */
    private CancelAccountRequestBean f16614c;

    /* renamed from: d  reason: collision with root package name */
    private final List<e> f16615d = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.Adapter<BaseViewHolder> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(View view) {
            CancelReasonActivity.this.n0(((Integer) view.getTag()).intValue());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return CancelReasonActivity.this.f16615d.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            baseViewHolder.itemView.setTag(Integer.valueOf(i9));
            ((TextView) baseViewHolder.getView(R.id.text_view)).setText(((e) CancelReasonActivity.this.f16615d.get(i9)).f16629a);
            ((ImageView) baseViewHolder.getView(R.id.image_view)).setSelected(((e) CancelReasonActivity.this.f16615d.get(i9)).f16630b);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_cancel_account_reason, viewGroup, false));
            baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.cancelaccount.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CancelReasonActivity.a.this.b(view);
                }
            });
            return baseViewHolder;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f16617a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f16618b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f16619c;

        b(Map map, ImageView imageView, TextView textView) {
            this.f16617a = map;
            this.f16618b = imageView;
            this.f16619c = textView;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            this.f16617a.put(0, Boolean.FALSE);
            CancelReasonActivity.this.l0(this.f16618b, this.f16619c, this.f16617a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                this.f16617a.put(0, Boolean.TRUE);
                CancelReasonActivity.this.l0(this.f16618b, this.f16619c, this.f16617a);
                return;
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f16621a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f16622b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f16623c;

        c(Map map, ImageView imageView, TextView textView) {
            this.f16621a = map;
            this.f16622b = imageView;
            this.f16623c = textView;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            this.f16621a.put(1, Boolean.FALSE);
            CancelReasonActivity.this.l0(this.f16622b, this.f16623c, this.f16621a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            if ((obj instanceof String) && TextUtils.isEmpty(obj.toString())) {
                this.f16621a.put(1, Boolean.TRUE);
                CancelReasonActivity.this.l0(this.f16622b, this.f16623c, this.f16621a);
                return;
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<Long> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f16625a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f16626b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f16627c;

        d(Map map, ImageView imageView, TextView textView) {
            this.f16625a = map;
            this.f16626b = imageView;
            this.f16627c = textView;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Long l10, @NonNull FaceCastBaseResponse<Long> faceCastBaseResponse) {
            if (l10 != null && l10.longValue() > System.currentTimeMillis() + i.u().s().getServerTimeDiff()) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            this.f16625a.put(2, Boolean.TRUE);
            CancelReasonActivity.this.l0(this.f16626b, this.f16627c, this.f16625a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Long> aVar) {
            this.f16625a.put(2, Boolean.FALSE);
            CancelReasonActivity.this.l0(this.f16626b, this.f16627c, this.f16625a);
        }
    }

    /* loaded from: classes3.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        public String f16629a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f16630b;

        public e(String str, boolean z10) {
            this.f16629a = str;
            this.f16630b = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(ImageView imageView, TextView textView, View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            imageView.setVisibility(0);
            textView.setText("");
            ((AnimationDrawable) imageView.getDrawable()).start();
            m0(imageView, textView);
        }
    }

    private void initData() {
        this.f16615d.add(new e(getString(R.string.cancel_account_reason1), false));
        this.f16615d.add(new e(getString(R.string.cancel_account_reason2), false));
        this.f16615d.add(new e(getString(R.string.cancel_account_reason3), false));
        this.f16615d.add(new e(getString(R.string.cancel_account_reason4), false));
        this.f16615d.add(new e(getString(R.string.cancel_account_reason5), false));
        this.f16615d.add(new e(getString(R.string.cancel_account_reason6), false));
        this.f16615d.add(new e(getString(R.string.cancel_account_reason7), false));
        this.f16615d.add(new e(getString(R.string.cancel_account_reason8), false));
        this.f16615d.add(new e(getString(R.string.cancel_account_reason9), false));
        this.f16615d.add(new e(getString(R.string.cancel_account_reason10), false));
    }

    public static void k0(Context context, CancelAccountRequestBean cancelAccountRequestBean) {
        Intent intent = new Intent(context, CancelReasonActivity.class);
        intent.putExtra("requestData", cancelAccountRequestBean);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(ImageView imageView, TextView textView, Map<Integer, Boolean> map) {
        if (map.keySet().size() < 3) {
            return;
        }
        ((AnimationDrawable) imageView.getDrawable()).stop();
        imageView.setVisibility(8);
        textView.setText(R.string.Next_step);
        if (this.f16614c != null) {
            int i9 = 0;
            int i10 = 0;
            while (true) {
                if (i10 >= this.f16615d.size()) {
                    break;
                } else if (this.f16615d.get(i10).f16630b) {
                    i9 = i10;
                    break;
                } else {
                    i10++;
                }
            }
            this.f16614c.setReasonType(i9);
            if (i9 == this.f16615d.size() - 1) {
                this.f16614c.setReasonRemark(this.f16613b.getText().toString().trim());
            }
        }
        CancelConditionActivity.A0(this, map, this.f16614c);
    }

    private void m0(ImageView imageView, TextView textView) {
        HashMap hashMap = new HashMap();
        get("tokens/userout/checkUserAccountSecurity").M(new b(hashMap, imageView, textView));
        get("tokens/userout/checkUserAccountBalance").M(new c(hashMap, imageView, textView));
        get("tokens/userout/checkUserVipExpire").M(new d(hashMap, imageView, textView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0(int i9) {
        int i10 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 >= this.f16615d.size()) {
                break;
            }
            e eVar = this.f16615d.get(i10);
            if (i9 != i10) {
                z10 = false;
            }
            eVar.f16630b = z10;
            i10++;
        }
        if (this.f16612a.getAdapter() != null) {
            this.f16612a.getAdapter().notifyDataSetChanged();
        }
        if (i9 == this.f16615d.size() - 1) {
            this.f16613b.setVisibility(0);
        } else {
            this.f16613b.setVisibility(8);
        }
        findViewById(R.id.next_step).setEnabled(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_cancel_reason;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        CancelAccountRequestBean cancelAccountRequestBean = (CancelAccountRequestBean) getIntent().getParcelableExtra("requestData");
        this.f16614c = cancelAccountRequestBean;
        if (cancelAccountRequestBean == null) {
            finish();
            return;
        }
        setTitle(R.string.cancel_account_reason);
        initData();
        final TextView textView = (TextView) findViewById(R.id.next_step);
        final ImageView imageView = (ImageView) findViewById(R.id.bg_config);
        textView.setEnabled(false);
        textView.setOnClickListener(new View.OnClickListener() { // from class: d8.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelReasonActivity.this.i0(imageView, textView, view);
            }
        });
        this.f16613b = (EditText) findViewById(R.id.eidt_text);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.content_data);
        this.f16612a = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.f16612a.setAdapter(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}

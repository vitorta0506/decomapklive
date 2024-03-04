package com.guochao.faceshow.adapters;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.bean.MyPrizeBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Tools;
import java.util.List;
/* loaded from: classes3.dex */
public class GiftRecycleAdapter extends RecyclerView.Adapter<d> {

    /* renamed from: a  reason: collision with root package name */
    private int f25034a;

    /* renamed from: b  reason: collision with root package name */
    private View f25035b;

    /* renamed from: c  reason: collision with root package name */
    private List<MyPrizeBean> f25036c;

    /* renamed from: d  reason: collision with root package name */
    private Activity f25037d;

    /* renamed from: e  reason: collision with root package name */
    private f f25038e;

    /* renamed from: f  reason: collision with root package name */
    private e f25039f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MyPrizeBean f25040a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f25041b;

        a(MyPrizeBean myPrizeBean, int i9) {
            this.f25040a = myPrizeBean;
            this.f25041b = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TextUtils.equals("0", this.f25040a.isUseAccessory)) {
                GiftRecycleAdapter giftRecycleAdapter = GiftRecycleAdapter.this;
                int i9 = this.f25041b;
                MyPrizeBean myPrizeBean = this.f25040a;
                giftRecycleAdapter.i(i9, myPrizeBean.accessoryId, myPrizeBean.lotteryId);
                return;
            }
            GiftRecycleAdapter giftRecycleAdapter2 = GiftRecycleAdapter.this;
            int i10 = this.f25041b;
            MyPrizeBean myPrizeBean2 = this.f25040a;
            giftRecycleAdapter2.h(i10, myPrizeBean2.accessoryId, myPrizeBean2.lotteryId);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f25043a;

        b(int i9) {
            this.f25043a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (aVar.a() == 21003) {
                Toast.makeText(GiftRecycleAdapter.this.f25037d, (int) R.string.my_prize_use_error, 0).show();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (GiftRecycleAdapter.this.f25036c == null || GiftRecycleAdapter.this.f25036c.size() <= 0) {
                return;
            }
            ((MyPrizeBean) GiftRecycleAdapter.this.f25036c.get(this.f25043a)).isUseAccessory = "1";
            GiftRecycleAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f25045a;

        c(int i9) {
            this.f25045a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (aVar.a() == 21003) {
                Toast.makeText(GiftRecycleAdapter.this.f25037d, (int) R.string.my_prize_use_error, 0).show();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (GiftRecycleAdapter.this.f25036c == null || GiftRecycleAdapter.this.f25036c.size() <= 0) {
                return;
            }
            ((MyPrizeBean) GiftRecycleAdapter.this.f25036c.get(this.f25045a)).isUseAccessory = "0";
            GiftRecycleAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public ImageView f25047a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f25048b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f25049c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f25050d;

        d(View view) {
            super(view);
            this.f25048b = (TextView) GiftRecycleAdapter.this.f25035b.findViewById(R.id.tv_name);
            this.f25047a = (ImageView) GiftRecycleAdapter.this.f25035b.findViewById(R.id.img_topics);
            this.f25049c = (TextView) GiftRecycleAdapter.this.f25035b.findViewById(R.id.create_time);
            this.f25050d = (TextView) GiftRecycleAdapter.this.f25035b.findViewById(R.id.use_prize);
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
    }

    /* loaded from: classes3.dex */
    public interface f {
    }

    public GiftRecycleAdapter(Activity activity, int i9, List<MyPrizeBean> list, f fVar, e eVar) {
        this.f25036c = list;
        this.f25034a = i9;
        this.f25037d = activity;
        this.f25038e = fVar;
        this.f25039f = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i9, String str, String str2) {
        new PostRequest().O(this.f25037d).Q(Contants.UNUSE_PRIZE).D("accessoryId", str).D("lotteryId", str2).M(new c(i9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(int i9, String str, String str2) {
        new PostRequest().O(this.f25037d).Q(Contants.USE_PRIZE).D("accessoryId", str).D("lotteryId", str2).M(new b(i9));
    }

    public void addData(List<MyPrizeBean> list) {
        this.f25036c.addAll(list);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public void onBindViewHolder(d dVar, int i9) {
        MyPrizeBean myPrizeBean = this.f25036c.get(i9);
        hc.a.l(myPrizeBean.url, dVar.f25047a, R.mipmap.default_head, this.f25037d);
        dVar.f25049c.setText(Tools.timeString(myPrizeBean.createTime + "000", this.f25037d));
        dVar.f25048b.setText(myPrizeBean.name);
        if (TextUtils.equals("3", myPrizeBean.type)) {
            dVar.f25050d.setVisibility(0);
            if (TextUtils.equals("0", myPrizeBean.isUseAccessory)) {
                dVar.f25050d.setText(R.string.my_prize_use);
                dVar.f25050d.setBackgroundResource(R.drawable.shape_prize_use_bg);
            } else {
                dVar.f25050d.setText(R.string.str_no);
                dVar.f25050d.setBackgroundResource(R.drawable.shape_prize_nuse_bg);
            }
        } else {
            dVar.f25050d.setVisibility(4);
        }
        dVar.f25050d.setOnClickListener(new a(myPrizeBean, i9));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public d onCreateViewHolder(ViewGroup viewGroup, int i9) {
        this.f25035b = LayoutInflater.from(this.f25037d).inflate(this.f25034a, (ViewGroup) null);
        return new d(this.f25035b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f25036c.size();
    }

    public void resetData(List<MyPrizeBean> list) {
        this.f25036c.clear();
        this.f25036c.addAll(list);
        notifyDataSetChanged();
    }
}

package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.AudienceInformation;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
/* loaded from: classes3.dex */
public class UserInfoAdapter extends RecyclerView.Adapter<a> implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private List<AudienceInformation> f18246a;

    /* renamed from: b  reason: collision with root package name */
    private Context f18247b;

    /* renamed from: c  reason: collision with root package name */
    private String f18248c;

    /* renamed from: d  reason: collision with root package name */
    private z9.a f18249d = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends BaseViewHolder {

        /* renamed from: a  reason: collision with root package name */
        HeadPortraitView f18250a;

        public a(View view) {
            super(view);
            HeadPortraitView headPortraitView = (HeadPortraitView) view.findViewById(R.id.avatar_view);
            this.f18250a = headPortraitView;
            headPortraitView.setOnClickListener(UserInfoAdapter.this);
        }
    }

    public UserInfoAdapter(Context context, List<AudienceInformation> list, String str) {
        this.f18247b = context;
        this.f18248c = str;
        this.f18246a = list;
    }

    private boolean b(String str) {
        if (!TextUtils.isEmpty(str) && Integer.parseInt(str) > 1) {
            str = "1";
        }
        return "1".equals(str);
    }

    public AudienceInformation a(int i9) {
        List<AudienceInformation> list = this.f18246a;
        if (list == null || list.size() <= i9) {
            return null;
        }
        return this.f18246a.get(i9);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: c */
    public void onBindViewHolder(@NonNull a aVar, int i9) {
        aVar.f18250a.setTag(Integer.valueOf(i9));
        this.f18246a.get(i9).getCurrentUserId();
        if (i9 == 0) {
            if (b(this.f18246a.get(i9).getType())) {
                if (TextUtils.isEmpty(this.f18246a.get(i9).getImg())) {
                    aVar.f18250a.o(28.0f, 1.3666667f, 8);
                } else {
                    aVar.f18250a.o(28.0f, 1.4333333f, 8);
                }
                aVar.f18250a.e(this.f18246a.get(i9), R.mipmap.icon_zb_jin);
                return;
            }
            aVar.f18250a.setAvatarSize(28.0f);
            aVar.f18250a.d(this.f18246a.get(i9));
        } else if (i9 == 1) {
            if (b(this.f18246a.get(i9).getType())) {
                if (TextUtils.isEmpty(this.f18246a.get(i9).getImg())) {
                    aVar.f18250a.o(28.0f, 1.3666667f, 8);
                } else {
                    aVar.f18250a.o(28.0f, 1.4333333f, 8);
                }
                aVar.f18250a.e(this.f18246a.get(i9), R.mipmap.icon_zb_yin);
                return;
            }
            aVar.f18250a.setAvatarSize(28.0f);
            aVar.f18250a.d(this.f18246a.get(i9));
        } else if (i9 != 2) {
            aVar.f18250a.setAvatarSize(28.0f);
            aVar.f18250a.d(this.f18246a.get(i9));
        } else if (b(this.f18246a.get(i9).getType())) {
            if (TextUtils.isEmpty(this.f18246a.get(i9).getImg())) {
                aVar.f18250a.o(28.0f, 1.3666667f, 8);
            } else {
                aVar.f18250a.o(28.0f, 1.4333333f, 8);
            }
            aVar.f18250a.e(this.f18246a.get(i9), R.mipmap.icon_zb_tong);
        } else {
            aVar.f18250a.setAvatarSize(28.0f);
            aVar.f18250a.d(this.f18246a.get(i9));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: d */
    public a onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new a(LayoutInflater.from(this.f18247b).inflate(R.layout.list_item_live_user_info, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<AudienceInformation> list = this.f18246a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f18249d.b(view, BaseConfig.ITEM, ((Integer) view.getTag()).intValue());
    }

    public void setOnItemClickListener(z9.a aVar) {
        this.f18249d = aVar;
    }
}

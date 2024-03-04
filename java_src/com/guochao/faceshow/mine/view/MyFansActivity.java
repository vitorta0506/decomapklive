package com.guochao.faceshow.mine.view;

import android.content.Context;
import android.content.Intent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.FollowBean;
import com.guochao.faceshow.bean.FollowBeanLsit;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class MyFansActivity extends MyFollowActivity {

    /* loaded from: classes4.dex */
    class a extends c<FollowBeanLsit.Result> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable FollowBeanLsit.Result result, @NonNull FaceCastBaseResponse<FollowBeanLsit.Result> faceCastBaseResponse) {
            if (result == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            if (result.list == null) {
                result.list = new ArrayList();
            }
            MyFansActivity.this.addDatas(result.list);
            MyFansActivity.this.notifyDataLoaded(result.list.size() >= 20);
            MyFansActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<FollowBeanLsit.Result> aVar) {
            MyFansActivity.this.notifyDataLoaded(false);
            MyFansActivity.this.showEmptyView();
        }
    }

    public static void start(Context context, String str) {
        Intent intent = new Intent(context, MyFansActivity.class);
        intent.putExtra(Contants.USER_ID, str);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.mine.view.MyFollowActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: b0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, FollowBean followBean) {
        super.convertItem(baseViewHolder, i9, followBean);
        ((LinearLayout) baseViewHolder.getView(R.id.living)).setVisibility(8);
    }

    @Override // com.guochao.faceshow.mine.view.MyFollowActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(getString(R.string.fans));
    }

    @Override // com.guochao.faceshow.mine.view.MyFollowActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        HashMap hashMap = new HashMap();
        hashMap.put(Contants.USER_ID, this.f25626a);
        hashMap.put("currPage", i9 + "");
        hashMap.put("types", "1");
        hashMap.put("pageSize", ThirdPushHelper.TYPE_HUAWEI);
        post(Contants.listAttention + "?userId=" + this.f25626a + "&currPage=" + i9 + "&types=1&pageSize=20&systoken=" + SpUtils.getStr(getActivity(), Contants.USER_TOKEN)).E(hashMap).M(new a());
    }

    @Override // com.guochao.faceshow.mine.view.MyFollowActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    public void showEmptyView() {
        TextView textView;
        super.showEmptyView();
        if (!BaseConfig.isChinese() || (textView = (TextView) findViewById(R.id.empty_text)) == null) {
            return;
        }
        textView.setVisibility(8);
    }
}

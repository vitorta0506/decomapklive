package com.guochao.faceshow.aaspring.modulars.live.activity;

import android.content.Context;
import android.content.Intent;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LivePermissionsFragment;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import d9.c;
/* loaded from: classes3.dex */
public class LiveRoomSetActivity extends BaseActivity {
    public static void b0(Context context, String str, c cVar) {
        Intent intent = new Intent(context, LiveRoomSetActivity.class);
        intent.putExtra("liveId", str);
        MemoryCache.getInstance().put("manager", cVar);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.layout_activity_with_fragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.live_admin);
        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, LivePermissionsFragment.T1(getIntent().getStringExtra("liveId"), (c) MemoryCache.getInstance().remove("manager"))).commit();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}

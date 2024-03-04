package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Context;
import android.content.Intent;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.VoiceRoomFragment;
/* loaded from: classes3.dex */
public class VoiceRoomMoreActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private VoiceRoomFragment f22478a;

    public static void b0(Context context, String str) {
        Intent intent = new Intent(context, VoiceRoomMoreActivity.class);
        intent.putExtra(VoiceRoomFragment.f22864i, str);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_voice_room_more;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.ugc_related_voice_room_more);
        this.f22478a = VoiceRoomFragment.f2(getIntent().getStringExtra(VoiceRoomFragment.f22864i));
        getSupportFragmentManager().beginTransaction().replace(R.id.content, this.f22478a).commit();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}

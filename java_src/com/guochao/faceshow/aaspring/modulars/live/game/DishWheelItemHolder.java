package com.guochao.faceshow.aaspring.modulars.live.game;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.game.g;
import java.util.List;
/* loaded from: classes3.dex */
public class DishWheelItemHolder {

    /* renamed from: a  reason: collision with root package name */
    public View f19377a;

    /* renamed from: b  reason: collision with root package name */
    private p7.h f19378b;

    /* renamed from: c  reason: collision with root package name */
    private a f19379c;
    @BindView
    ImageView imageWheel;

    /* loaded from: classes3.dex */
    public interface a {
        void a(p7.h hVar);

        void b();
    }

    public DishWheelItemHolder(View view) {
        this.f19377a = view;
        ButterKnife.c(this, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        a aVar;
        p7.h hVar = this.f19378b;
        if (hVar != null && "0".equals(hVar.getCurrentUserId())) {
            a aVar2 = this.f19379c;
            if (aVar2 != null) {
                aVar2.b();
                return;
            }
            return;
        }
        p7.h hVar2 = this.f19378b;
        if (hVar2 == null || TextUtils.isEmpty(hVar2.getCurrentUserId()) || (aVar = this.f19379c) == null) {
            return;
        }
        aVar.a(this.f19378b);
    }

    public void c(p7.h hVar, List<g.h> list) {
        this.f19378b = hVar;
        if (hVar != null && !"0".equals(hVar.getCurrentUserId())) {
            hc.a.d(this.imageWheel, hVar.getAvatarUrl());
            this.f19377a.setTag(hVar.getCurrentUserId());
        } else {
            this.imageWheel.setImageResource(R.mipmap.icon_minigame_join);
        }
        if (list != null) {
            list.add(new g.h(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DishWheelItemHolder.this.b(view);
                }
            }, this.imageWheel));
        }
    }

    public void setOnJoinListener(a aVar) {
        this.f19379c = aVar;
    }
}

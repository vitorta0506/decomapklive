package com.guochao.faceshow.userhomepage.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.UserPageVideoFriendGroupData;
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.NormalCircleImageView;
import java.util.List;
/* loaded from: classes4.dex */
public class UserInfoGroupView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private LinearLayout f26484a;

    /* renamed from: b  reason: collision with root package name */
    private UserInfoHorizonTitleView f26485b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f26486c;

    /* renamed from: d  reason: collision with root package name */
    private int f26487d;

    /* renamed from: e  reason: collision with root package name */
    private b f26488e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserPageVideoFriendGroupData.GroupInfoItemData f26489a;

        a(UserPageVideoFriendGroupData.GroupInfoItemData groupInfoItemData) {
            this.f26489a = groupInfoItemData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (UserInfoGroupView.this.f26488e != null) {
                UserInfoGroupView.this.f26488e.a(this.f26489a.IM_ID);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(String str);
    }

    public UserInfoGroupView(Context context) {
        this(context, null);
    }

    private void b(UserPageVideoFriendGroupData.GroupInfoItemData groupInfoItemData, int i9) {
        if (groupInfoItemData == null) {
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) this.f26486c.inflate(R.layout.user_page_group_info_item, (ViewGroup) null);
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) relativeLayout.findViewById(R.id.user_page_group_item_img);
        LinearLayout linearLayout = (LinearLayout) relativeLayout.findViewById(R.id.user_page_group_item_text_ly);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) normalCircleImageView.getLayoutParams();
        layoutParams.height = ScreenTools.get375STValue(40.0f);
        layoutParams.width = ScreenTools.get375STValue(40.0f);
        layoutParams.leftMargin = ScreenTools.get375STValue(7.0f);
        layoutParams.topMargin = ScreenTools.get375STValue(6.0f);
        layoutParams.bottomMargin = ScreenTools.get375STValue(6.0f);
        normalCircleImageView.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
        layoutParams2.leftMargin = ScreenTools.get375STValue(6.0f);
        linearLayout.setLayoutParams(layoutParams2);
        ((ImageView) relativeLayout.findViewById(R.id.user_page_group_arrow_image)).setPadding(ScreenTools.get375STValue(20.0f), ScreenTools.get375STValue(7.0f), ScreenTools.get375STValue(10.0f), ScreenTools.get375STValue(7.0f));
        relativeLayout.setBackground(FaceImageUtils.createDrawable(getResources().getColor(R.color.color_f4f4f4), ScreenTools.dip2px(8.0f)));
        this.f26484a.addView(relativeLayout);
        ((TextView) relativeLayout.findViewById(R.id.user_page_group_item_name)).setText(groupInfoItemData.group_name);
        ((TextView) relativeLayout.findViewById(R.id.user_page_group_item_desc)).setText(groupInfoItemData.introduction);
        hc.a.j(normalCircleImageView, groupInfoItemData.img);
        if (i9 > 0) {
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams3.topMargin = ScreenTools.get375STValue(8.0f);
            relativeLayout.setLayoutParams(layoutParams3);
        }
        relativeLayout.setOnClickListener(new a(groupInfoItemData));
    }

    private void c() {
        LayoutInflater from = LayoutInflater.from(getContext());
        this.f26486c = from;
        from.inflate(R.layout.user_page_group_info_view, (ViewGroup) this, true);
        this.f26485b = (UserInfoHorizonTitleView) findViewById(R.id.group_info_title_view);
        this.f26484a = (LinearLayout) findViewById(R.id.group_view_show_ly);
        this.f26485b.setTypeText(getResources().getString(R.string.group_management));
        this.f26485b.setTypeIcon(R.mipmap.user_group_info_icon);
    }

    public void setData(List<UserPageVideoFriendGroupData.GroupInfoItemData> list) {
        this.f26484a.removeAllViews();
        if (list == null || list.size() == 0) {
            return;
        }
        this.f26484a.setPadding(ScreenTools.get375STValue(20.0f), 0, ScreenTools.get375STValue(20.0f), ScreenTools.get375STValue(14.0f));
        this.f26487d = list.size() < 3 ? list.size() : 3;
        for (int i9 = 0; i9 < this.f26487d; i9++) {
            b(list.get(i9), i9);
        }
    }

    public void setOnGroupItemClickListener(b bVar) {
        this.f26488e = bVar;
    }

    public void setOnMoreClickListener(View.OnClickListener onClickListener) {
        this.f26485b.setMoreClickListener(onClickListener);
    }

    public UserInfoGroupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserInfoGroupView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        c();
    }
}

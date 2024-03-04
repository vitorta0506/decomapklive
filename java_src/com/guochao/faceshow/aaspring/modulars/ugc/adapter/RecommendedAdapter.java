package com.guochao.faceshow.aaspring.modulars.ugc.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.bumptech.glide.load.resource.bitmap.j;
import com.bumptech.glide.load.resource.bitmap.y;
import com.bumptech.glide.request.h;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.UgcSearchComprehensiveBean;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import java.util.List;
import z9.a;
/* loaded from: classes3.dex */
public class RecommendedAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements View.OnClickListener {

    /* renamed from: g  reason: collision with root package name */
    public static int f22516g = 2001;

    /* renamed from: h  reason: collision with root package name */
    public static int f22517h = 2002;

    /* renamed from: a  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22518a;

    /* renamed from: b  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean.Topic> f22519b;

    /* renamed from: c  reason: collision with root package name */
    private Context f22520c;

    /* renamed from: d  reason: collision with root package name */
    private LayoutInflater f22521d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22522e;

    /* renamed from: f  reason: collision with root package name */
    private a f22523f = null;
    @BindView
    ImageView ivImage;
    @BindView
    TextView tvHeadName;

    /* loaded from: classes3.dex */
    public class HistoryListViewHolder extends RecyclerView.ViewHolder {
        @BindView
        ImageView ivImage;
        @BindView
        ImageView ivItemRight;
        @BindView
        TextView tvItemName;
        @BindView
        View viewLine;

        HistoryListViewHolder(View view) {
            super(view);
            ButterKnife.c(this, view);
            view.setOnClickListener(RecommendedAdapter.this);
            this.ivItemRight.setOnClickListener(RecommendedAdapter.this);
        }
    }

    /* loaded from: classes3.dex */
    public class HistoryListViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private HistoryListViewHolder f22525b;

        @UiThread
        public HistoryListViewHolder_ViewBinding(HistoryListViewHolder historyListViewHolder, View view) {
            this.f22525b = historyListViewHolder;
            historyListViewHolder.ivImage = (ImageView) c.d(view, R.id.iv_image, "field 'ivImage'", ImageView.class);
            historyListViewHolder.tvItemName = (TextView) c.d(view, R.id.tv_item__name, "field 'tvItemName'", TextView.class);
            historyListViewHolder.ivItemRight = (ImageView) c.d(view, R.id.iv_item_right, "field 'ivItemRight'", ImageView.class);
            historyListViewHolder.viewLine = c.c(view, R.id.view_line, "field 'viewLine'");
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            HistoryListViewHolder historyListViewHolder = this.f22525b;
            if (historyListViewHolder != null) {
                this.f22525b = null;
                historyListViewHolder.ivImage = null;
                historyListViewHolder.tvItemName = null;
                historyListViewHolder.ivItemRight = null;
                historyListViewHolder.viewLine = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* loaded from: classes3.dex */
    public class HistoryViewHolder extends RecyclerView.ViewHolder {
        @BindView
        ImageView ivImage;
        @BindView
        TextView tvHeadName;

        HistoryViewHolder(View view) {
            super(view);
            ButterKnife.c(this, view);
        }
    }

    /* loaded from: classes3.dex */
    public class HistoryViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private HistoryViewHolder f22527b;

        @UiThread
        public HistoryViewHolder_ViewBinding(HistoryViewHolder historyViewHolder, View view) {
            this.f22527b = historyViewHolder;
            historyViewHolder.ivImage = (ImageView) c.d(view, R.id.iv_image, "field 'ivImage'", ImageView.class);
            historyViewHolder.tvHeadName = (TextView) c.d(view, R.id.tv_head_name, "field 'tvHeadName'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            HistoryViewHolder historyViewHolder = this.f22527b;
            if (historyViewHolder != null) {
                this.f22527b = null;
                historyViewHolder.ivImage = null;
                historyViewHolder.tvHeadName = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* loaded from: classes3.dex */
    public class RecommendedListViewHolder extends RecyclerView.ViewHolder {
        @BindView
        View bgRL;
        @BindView
        ImageView ivImage;
        @BindView
        LinearLayout llRecommendedItem;
        @BindView
        TextView tvItemName;
        @BindView
        TextView tvItemRight;
        @BindView
        View viewBg;
        @BindView
        View viewLine;

        RecommendedListViewHolder(View view) {
            super(view);
            ButterKnife.c(this, view);
            this.llRecommendedItem.setOnClickListener(RecommendedAdapter.this);
        }
    }

    /* loaded from: classes3.dex */
    public class RecommendedListViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private RecommendedListViewHolder f22529b;

        @UiThread
        public RecommendedListViewHolder_ViewBinding(RecommendedListViewHolder recommendedListViewHolder, View view) {
            this.f22529b = recommendedListViewHolder;
            recommendedListViewHolder.viewBg = c.c(view, R.id.view_bg, "field 'viewBg'");
            recommendedListViewHolder.bgRL = c.c(view, R.id.bgRL, "field 'bgRL'");
            recommendedListViewHolder.ivImage = (ImageView) c.d(view, R.id.iv_image, "field 'ivImage'", ImageView.class);
            recommendedListViewHolder.tvItemName = (TextView) c.d(view, R.id.tv_item__name, "field 'tvItemName'", TextView.class);
            recommendedListViewHolder.tvItemRight = (TextView) c.d(view, R.id.tv_item_right, "field 'tvItemRight'", TextView.class);
            recommendedListViewHolder.llRecommendedItem = (LinearLayout) c.d(view, R.id.ll_recommended_item, "field 'llRecommendedItem'", LinearLayout.class);
            recommendedListViewHolder.viewLine = c.c(view, R.id.view_line, "field 'viewLine'");
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            RecommendedListViewHolder recommendedListViewHolder = this.f22529b;
            if (recommendedListViewHolder != null) {
                this.f22529b = null;
                recommendedListViewHolder.viewBg = null;
                recommendedListViewHolder.bgRL = null;
                recommendedListViewHolder.ivImage = null;
                recommendedListViewHolder.tvItemName = null;
                recommendedListViewHolder.tvItemRight = null;
                recommendedListViewHolder.llRecommendedItem = null;
                recommendedListViewHolder.viewLine = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* loaded from: classes3.dex */
    public class RecommendedViewHolder extends RecyclerView.ViewHolder {
        @BindView
        ImageView ivImage;
        @BindView
        View lineView;
        @BindView
        TextView tvHeadName;

        RecommendedViewHolder(View view) {
            super(view);
            ButterKnife.c(this, view);
        }
    }

    /* loaded from: classes3.dex */
    public class RecommendedViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private RecommendedViewHolder f22531b;

        @UiThread
        public RecommendedViewHolder_ViewBinding(RecommendedViewHolder recommendedViewHolder, View view) {
            this.f22531b = recommendedViewHolder;
            recommendedViewHolder.ivImage = (ImageView) c.d(view, R.id.iv_image, "field 'ivImage'", ImageView.class);
            recommendedViewHolder.tvHeadName = (TextView) c.d(view, R.id.tv_head_name, "field 'tvHeadName'", TextView.class);
            recommendedViewHolder.lineView = c.c(view, R.id.lineView, "field 'lineView'");
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            RecommendedViewHolder recommendedViewHolder = this.f22531b;
            if (recommendedViewHolder != null) {
                this.f22531b = null;
                recommendedViewHolder.ivImage = null;
                recommendedViewHolder.tvHeadName = null;
                recommendedViewHolder.lineView = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* loaded from: classes3.dex */
    public class UserListViewHolder extends RecyclerView.ViewHolder {
        @BindView
        HeadPortraitView avatarBg;
        @BindView
        LinearLayout llPeopleNearby;
        @BindView
        TextView tvDistance;
        @BindView
        TextView tvNickName;
        @BindView
        TextView tvSignature;
        @BindView
        TextView tvTime;
        @BindView
        TextView tvUserId;
        @BindView
        View viewBg;
        @BindView
        View viewLine;
        @BindView
        VipIndicatorView vipIndicatorView;

        UserListViewHolder(View view) {
            super(view);
            ButterKnife.c(this, view);
            this.llPeopleNearby.setOnClickListener(RecommendedAdapter.this);
        }
    }

    /* loaded from: classes3.dex */
    public class UserListViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private UserListViewHolder f22533b;

        @UiThread
        public UserListViewHolder_ViewBinding(UserListViewHolder userListViewHolder, View view) {
            this.f22533b = userListViewHolder;
            userListViewHolder.avatarBg = (HeadPortraitView) c.d(view, R.id.avatar_view, "field 'avatarBg'", HeadPortraitView.class);
            userListViewHolder.tvNickName = (TextView) c.d(view, R.id.tv_nick_name, "field 'tvNickName'", TextView.class);
            userListViewHolder.tvUserId = (TextView) c.d(view, R.id.tv_userid, "field 'tvUserId'", TextView.class);
            userListViewHolder.tvDistance = (TextView) c.d(view, R.id.tv_distance, "field 'tvDistance'", TextView.class);
            userListViewHolder.tvTime = (TextView) c.d(view, R.id.tv_time, "field 'tvTime'", TextView.class);
            userListViewHolder.tvSignature = (TextView) c.d(view, R.id.tv_signature, "field 'tvSignature'", TextView.class);
            userListViewHolder.llPeopleNearby = (LinearLayout) c.d(view, R.id.ll_people_nearby, "field 'llPeopleNearby'", LinearLayout.class);
            userListViewHolder.viewBg = c.c(view, R.id.view_bg, "field 'viewBg'");
            userListViewHolder.viewLine = c.c(view, R.id.view_line, "field 'viewLine'");
            userListViewHolder.vipIndicatorView = (VipIndicatorView) c.d(view, R.id.vip_indicator, "field 'vipIndicatorView'", VipIndicatorView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            UserListViewHolder userListViewHolder = this.f22533b;
            if (userListViewHolder != null) {
                this.f22533b = null;
                userListViewHolder.avatarBg = null;
                userListViewHolder.tvNickName = null;
                userListViewHolder.tvUserId = null;
                userListViewHolder.tvDistance = null;
                userListViewHolder.tvTime = null;
                userListViewHolder.tvSignature = null;
                userListViewHolder.llPeopleNearby = null;
                userListViewHolder.viewBg = null;
                userListViewHolder.viewLine = null;
                userListViewHolder.vipIndicatorView = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* loaded from: classes3.dex */
    public class VoiceRoomListViewHolder extends RecyclerView.ViewHolder {
        @BindView
        ImageView countryLogoIV;
        @BindView
        ImageView coverIV;
        @BindView
        TextView memberCountTV;
        @BindView
        TextView roomIdTV;
        @BindView
        TextView roomTitleTV;

        VoiceRoomListViewHolder(View view) {
            super(view);
            ButterKnife.c(this, view);
            view.setOnClickListener(RecommendedAdapter.this);
        }
    }

    /* loaded from: classes3.dex */
    public class VoiceRoomListViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private VoiceRoomListViewHolder f22535b;

        @UiThread
        public VoiceRoomListViewHolder_ViewBinding(VoiceRoomListViewHolder voiceRoomListViewHolder, View view) {
            this.f22535b = voiceRoomListViewHolder;
            voiceRoomListViewHolder.coverIV = (ImageView) c.d(view, R.id.cover, "field 'coverIV'", ImageView.class);
            voiceRoomListViewHolder.roomTitleTV = (TextView) c.d(view, R.id.room_title, "field 'roomTitleTV'", TextView.class);
            voiceRoomListViewHolder.memberCountTV = (TextView) c.d(view, R.id.member_count, "field 'memberCountTV'", TextView.class);
            voiceRoomListViewHolder.roomIdTV = (TextView) c.d(view, R.id.room_id, "field 'roomIdTV'", TextView.class);
            voiceRoomListViewHolder.countryLogoIV = (ImageView) c.d(view, R.id.country_logo, "field 'countryLogoIV'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            VoiceRoomListViewHolder voiceRoomListViewHolder = this.f22535b;
            if (voiceRoomListViewHolder != null) {
                this.f22535b = null;
                voiceRoomListViewHolder.coverIV = null;
                voiceRoomListViewHolder.roomTitleTV = null;
                voiceRoomListViewHolder.memberCountTV = null;
                voiceRoomListViewHolder.roomIdTV = null;
                voiceRoomListViewHolder.countryLogoIV = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    public RecommendedAdapter(Context context, List<UgcSearchComprehensiveBean> list) {
        this.f22518a = list;
        this.f22520c = context;
        this.f22521d = LayoutInflater.from(context);
    }

    private boolean a() {
        List<UgcSearchComprehensiveBean> list = this.f22518a;
        if (list != null && list.size() > 0) {
            for (int i9 = 0; i9 < this.f22518a.size(); i9++) {
                if (this.f22518a.get(i9).getType() == 5 || this.f22518a.get(i9).getType() == 6) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.f22522e) {
            return this.f22519b.size();
        }
        return this.f22518a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = this.f22518a.get(i9);
        if (ugcSearchComprehensiveBean.getType() == 0 || ugcSearchComprehensiveBean.getType() == 5 || ugcSearchComprehensiveBean.getType() == 6 || ugcSearchComprehensiveBean.getType() == f22516g) {
            return TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND;
        }
        if (ugcSearchComprehensiveBean.getType() == 1 || ugcSearchComprehensiveBean.getType() == 8) {
            return TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND;
        }
        if (ugcSearchComprehensiveBean.getType() == 2) {
            return 100003;
        }
        if (ugcSearchComprehensiveBean.getType() == 3 || ugcSearchComprehensiveBean.getType() == 7) {
            return 100004;
        }
        int type = ugcSearchComprehensiveBean.getType();
        int i10 = f22517h;
        if (type == i10) {
            return i10;
        }
        return 100005;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
        if (viewHolder instanceof RecommendedViewHolder) {
            RecommendedViewHolder recommendedViewHolder = (RecommendedViewHolder) viewHolder;
            recommendedViewHolder.lineView.setVisibility(8);
            if (this.f22518a.get(i9).getType() == 5) {
                recommendedViewHolder.tvHeadName.setText(R.string.hot_topic);
                recommendedViewHolder.ivImage.setImageResource(R.mipmap.icon_hot_music);
            } else if (this.f22518a.get(i9).getType() == 6) {
                recommendedViewHolder.tvHeadName.setText(R.string.ugc_hot_music);
                recommendedViewHolder.ivImage.setImageResource(R.mipmap.icon_hot_music);
            } else if (this.f22518a.get(i9).getType() == f22516g) {
                recommendedViewHolder.tvHeadName.setText(R.string.ugc_hot_voice_room_search);
                recommendedViewHolder.lineView.setVisibility(4);
            } else if (this.f22518a.get(i9).getImageModel() == 5) {
                recommendedViewHolder.tvHeadName.setText(R.string.Recommend_to_you);
                recommendedViewHolder.ivImage.setImageResource(R.mipmap.icon_ugc_tuijian);
            } else {
                recommendedViewHolder.tvHeadName.setText(R.string.Recommend_to_you);
                recommendedViewHolder.ivImage.setImageResource(R.mipmap.icon_ugc_tuijian);
            }
        } else if (viewHolder instanceof RecommendedListViewHolder) {
            if (!a() || i9 >= 4) {
                ((RecommendedListViewHolder) viewHolder).bgRL.setBackgroundResource(R.drawable.bg_ugc_topic_def);
            } else if (i9 == 1) {
                ((RecommendedListViewHolder) viewHolder).bgRL.setBackgroundResource(R.drawable.bg_ugc_topic_1);
            } else if (i9 == 2) {
                ((RecommendedListViewHolder) viewHolder).bgRL.setBackgroundResource(R.drawable.bg_ugc_topic_2);
            } else if (i9 == 3) {
                ((RecommendedListViewHolder) viewHolder).bgRL.setBackgroundResource(R.drawable.bg_ugc_topic_3);
            } else {
                ((RecommendedListViewHolder) viewHolder).bgRL.setBackgroundResource(R.drawable.bg_ugc_topic_def);
            }
            RecommendedListViewHolder recommendedListViewHolder = (RecommendedListViewHolder) viewHolder;
            recommendedListViewHolder.llRecommendedItem.setTag(Integer.valueOf(i9));
            if (i9 == 0) {
                recommendedListViewHolder.viewBg.setVisibility(0);
            } else {
                recommendedListViewHolder.viewBg.setVisibility(8);
            }
            if (this.f22518a.size() - 1 == i9) {
                recommendedListViewHolder.viewLine.setVisibility(8);
            } else {
                recommendedListViewHolder.viewLine.setVisibility(8);
            }
            if (this.f22518a.get(i9).getType() == 8) {
                recommendedListViewHolder.ivImage.setVisibility(8);
                recommendedListViewHolder.tvItemRight.setVisibility(8);
                recommendedListViewHolder.tvItemName.setText(this.f22518a.get(i9).getContent());
            } else if (this.f22518a.get(i9).getImageModel() == 1) {
                recommendedListViewHolder.ivImage.setImageResource(R.mipmap.ic_ugc_topic_small);
                recommendedListViewHolder.tvItemName.setText(this.f22518a.get(i9).getTopicName());
                recommendedListViewHolder.tvItemRight.setText(String.format("%s  %s", this.f22518a.get(i9).getPartakeTimes(), this.f22520c.getString(R.string.cy_topic_count)));
            } else if (this.f22518a.get(i9).getImageModel() == 2) {
                recommendedListViewHolder.ivImage.setImageResource(R.mipmap.icon_ugc_music);
                recommendedListViewHolder.tvItemName.setText(this.f22518a.get(i9).getTopicName());
                recommendedListViewHolder.tvItemRight.setText(String.format("%s  %s", this.f22518a.get(i9).getPartakeTimes(), this.f22520c.getString(R.string.cy_topic_count)));
            } else if (this.f22518a.get(i9).getImageModel() == 3) {
                recommendedListViewHolder.ivImage.setImageResource(R.mipmap.icon_ugc_list_place_big);
                recommendedListViewHolder.tvItemName.setText(this.f22518a.get(i9).getPlaceName());
                recommendedListViewHolder.tvItemRight.setText(this.f22520c.getString(R.string.ugc_people_come, String.valueOf(this.f22518a.get(i9).getPartakeTimes())));
            } else if (this.f22518a.get(i9).getImageModel() == 4) {
                recommendedListViewHolder.ivImage.setImageResource(R.mipmap.icon_ugc_music);
                recommendedListViewHolder.tvItemName.setText(this.f22518a.get(i9).getMname());
                recommendedListViewHolder.tvItemRight.setText(String.format("%s  %s", this.f22518a.get(i9).getNumbers(), this.f22520c.getString(R.string.cy_topic_count)));
            } else {
                recommendedListViewHolder.tvItemName.setText(this.f22518a.get(i9).getPlaceName());
                recommendedListViewHolder.tvItemRight.setText(String.format("%s  %s", this.f22518a.get(i9).getPartakeTimes(), this.f22520c.getString(R.string.cy_topic_count)));
            }
        } else if (viewHolder instanceof HistoryListViewHolder) {
            HistoryListViewHolder historyListViewHolder = (HistoryListViewHolder) viewHolder;
            historyListViewHolder.itemView.setTag(Integer.valueOf(i9));
            historyListViewHolder.ivItemRight.setTag(Integer.valueOf(i9));
            if (this.f22518a.size() - 1 == i9) {
                historyListViewHolder.viewLine.setVisibility(8);
            } else {
                historyListViewHolder.viewLine.setVisibility(8);
            }
            if (this.f22518a.get(i9).getType() == 7) {
                historyListViewHolder.tvItemName.setText(this.f22518a.get(i9).getMname());
            } else {
                historyListViewHolder.tvItemName.setText(this.f22518a.get(i9).getTopicName());
            }
        } else if (viewHolder instanceof HistoryViewHolder) {
            ((HistoryViewHolder) viewHolder).tvHeadName.setText(R.string.ugc_history_search);
        } else if (viewHolder instanceof VoiceRoomListViewHolder) {
            VoiceRoomListViewHolder voiceRoomListViewHolder = (VoiceRoomListViewHolder) viewHolder;
            voiceRoomListViewHolder.itemView.setTag(Integer.valueOf(i9));
            VoiceRoomInfoModel voiceRoomInfoModel = this.f22518a.get(i9).voiceRoomInfoModel;
            if (voiceRoomInfoModel != null) {
                ic.a.c(voiceRoomListViewHolder.coverIV).r(voiceRoomInfoModel.getCoverImgUrl()).y0(new h().u0(new j(), new y(DensityUtil.dp2px(10.0f)))).Q0(voiceRoomListViewHolder.coverIV);
                ic.a.c(voiceRoomListViewHolder.countryLogoIV).r(voiceRoomInfoModel.getCountryImg()).y0(new h().u0(new j(), new y(DensityUtil.dp2px(4.0f)))).Q0(voiceRoomListViewHolder.countryLogoIV);
                TextView textView = voiceRoomListViewHolder.roomIdTV;
                textView.setText("ID: " + voiceRoomInfoModel.getRoomId());
                voiceRoomListViewHolder.roomTitleTV.setText(voiceRoomInfoModel.getTitle());
                TextView textView2 = voiceRoomListViewHolder.memberCountTV;
                textView2.setText("" + voiceRoomInfoModel.getVisitorCount());
            }
        } else {
            UserListViewHolder userListViewHolder = (UserListViewHolder) viewHolder;
            userListViewHolder.llPeopleNearby.setTag(Integer.valueOf(i9));
            if (i9 == 0) {
                userListViewHolder.viewBg.setVisibility(0);
            } else {
                userListViewHolder.viewBg.setVisibility(8);
            }
            int i10 = 0;
            int i11 = 0;
            for (UgcSearchComprehensiveBean ugcSearchComprehensiveBean : this.f22518a) {
                if (ugcSearchComprehensiveBean.getType() == 4 || ugcSearchComprehensiveBean.getType() == 10) {
                    i10++;
                    i11++;
                }
                if (ugcSearchComprehensiveBean.getType() == 7) {
                    i11++;
                }
            }
            if (i9 != i10 && i11 != i9) {
                userListViewHolder.viewLine.setVisibility(8);
            } else {
                userListViewHolder.viewLine.setVisibility(8);
            }
            if (this.f22518a.get(i9).getImageModel() == 5) {
                IM_User iM_User = new IM_User();
                iM_User.setImg(this.f22518a.get(i9).getImg());
                iM_User.setCountryLogo(this.f22518a.get(i9).getIntroduce());
                iM_User.setSex(TextUtils.isEmpty(this.f22518a.get(i9).getTopicName()) ? 18 : Integer.parseInt(this.f22518a.get(i9).getTopicName()));
                iM_User.setAvatar(this.f22518a.get(i9).getContent());
                iM_User.setUserVipMsg(this.f22518a.get(i9).getUserVipMsg());
                userListViewHolder.avatarBg.f(iM_User, true);
                userListViewHolder.tvNickName.setText(this.f22518a.get(i9).getMname());
                userListViewHolder.tvDistance.setVisibility(8);
                userListViewHolder.tvTime.setVisibility(8);
                if (TextUtils.isEmpty(this.f22518a.get(i9).getCountry())) {
                    userListViewHolder.tvSignature.setText(R.string.user_info_default_signature);
                } else {
                    userListViewHolder.tvSignature.setText(this.f22518a.get(i9).getCountry());
                }
                if (this.f22518a.get(i9).getType() == 10) {
                    userListViewHolder.tvUserId.setVisibility(0);
                    TextView textView3 = userListViewHolder.tvUserId;
                    textView3.setText("ID:" + this.f22518a.get(i9).getUserId());
                } else {
                    userListViewHolder.tvUserId.setVisibility(8);
                }
                if (this.f22518a.get(i9).getUserVipMsg() != null && this.f22518a.get(i9).getUserVipMsg().getIsVip() != 0) {
                    userListViewHolder.vipIndicatorView.setVisibility(0);
                    userListViewHolder.vipIndicatorView.setVipLevel(this.f22518a.get(i9).getUserVipMsg().getIsVip());
                    return;
                }
                userListViewHolder.vipIndicatorView.setVisibility(8);
                return;
            }
            IM_User iM_User2 = new IM_User();
            iM_User2.setImg(this.f22518a.get(i9).getImg());
            iM_User2.setSex(TextUtils.isEmpty(this.f22518a.get(i9).getIntroduce()) ? 18 : Integer.parseInt(this.f22518a.get(i9).getIntroduce()));
            iM_User2.setCountryLogo(this.f22518a.get(i9).getTopicName());
            iM_User2.setAvatar(this.f22518a.get(i9).getContent());
            iM_User2.setUserVipMsg(this.f22518a.get(i9).getUserVipMsg());
            userListViewHolder.avatarBg.f(iM_User2, true);
            userListViewHolder.tvNickName.setText(this.f22518a.get(i9).getMname());
            userListViewHolder.tvDistance.setVisibility(8);
            userListViewHolder.tvTime.setVisibility(8);
            userListViewHolder.tvSignature.setText(this.f22518a.get(i9).getCountry());
            userListViewHolder.tvUserId.setVisibility(8);
            if (this.f22518a.get(i9).getUserVipMsg() != null) {
                userListViewHolder.vipIndicatorView.setVisibility(0);
                userListViewHolder.vipIndicatorView.setVipLevel(this.f22518a.get(i9).getUserVipMsg().getIsVip());
                return;
            }
            userListViewHolder.vipIndicatorView.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (this.f22523f != null) {
            int id2 = view.getId();
            if (id2 == R.id.iv_item_right) {
                this.f22523f.b(view, BaseConfig.ITEM_RIGHT, intValue);
            } else if (id2 == R.id.ll_people_nearby) {
                this.f22523f.b(view, BaseConfig.PEOPLE_NEARBY_ITEM, intValue);
            } else if (id2 != R.id.ll_recommended_item) {
                this.f22523f.b(view, BaseConfig.ITEM, intValue);
            } else {
                this.f22523f.b(view, BaseConfig.RECOMMENDED_ITEM, intValue);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        if (i9 == 100001) {
            return new RecommendedViewHolder(this.f22521d.inflate(R.layout.item_music_recommended, viewGroup, false));
        }
        if (i9 == 100002) {
            return new RecommendedListViewHolder(this.f22521d.inflate(R.layout.item_music_recommended_list, viewGroup, false));
        }
        if (i9 == 100004) {
            return new HistoryListViewHolder(this.f22521d.inflate(R.layout.item_music_history_list, viewGroup, false));
        }
        if (i9 == 100003) {
            return new HistoryViewHolder(this.f22521d.inflate(R.layout.item_music_history, viewGroup, false));
        }
        if (i9 == f22517h) {
            return new VoiceRoomListViewHolder(this.f22521d.inflate(R.layout.list_item_voice_room_search, viewGroup, false));
        }
        return new UserListViewHolder(this.f22521d.inflate(R.layout.item_user_recommended, viewGroup, false));
    }

    public void setOnItemClickListener(a aVar) {
        this.f22523f = aVar;
    }
}

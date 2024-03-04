package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.LuckyGiftRunwayHolder;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyRunwayMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.databinding.ListItemLuckyGiftRunwayHolderBinding;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.r;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import java.util.List;
/* loaded from: classes3.dex */
public class BigGiftRecycleViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private Context f18168a;

    /* renamed from: b  reason: collision with root package name */
    private List<BaseLiveMessage> f18169b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f18170c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f18171d = Language.ARABIC.equalsIgnoreCase(q7.a.e().c());

    /* renamed from: e  reason: collision with root package name */
    SparseArray<BitmapDrawable> f18172e;

    /* loaded from: classes3.dex */
    public class HappyRunwayViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public TextView f18173a;

        public HappyRunwayViewHolder(@NonNull View view) {
            super(view);
            this.f18173a = (TextView) view.findViewById(R.id.text_view);
        }
    }

    /* loaded from: classes3.dex */
    public class LuckyRunwayViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public TextView f18175a;

        public LuckyRunwayViewHolder(@NonNull View view) {
            super(view);
            this.f18175a = (TextView) view.findViewById(R.id.text_view);
        }
    }

    /* loaded from: classes3.dex */
    public class MyNameViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public TextView f18177a;

        public MyNameViewHolder(@NonNull View view) {
            super(view);
            this.f18177a = (TextView) view.findViewById(R.id.tv_gift_content);
        }
    }

    /* loaded from: classes3.dex */
    public class MyRightViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public ImageView f18179a;

        public MyRightViewHolder(@NonNull View view) {
            super(view);
            this.f18179a = (ImageView) view.findViewById(R.id.iv_right);
        }
    }

    public BigGiftRecycleViewAdapter(Context context, List<BaseLiveMessage> list) {
        this.f18168a = context;
        this.f18169b = list;
        this.f18170c = LayoutInflater.from(context);
    }

    private CharSequence a(TextView textView, BaseLiveMessage baseLiveMessage) {
        if (baseLiveMessage instanceof RunwayMessage.BigGiftBean) {
            RunwayMessage.BigGiftBean bigGiftBean = (RunwayMessage.BigGiftBean) baseLiveMessage;
            if (bigGiftBean.getTrackType() != 1 && bigGiftBean.getTrackType() != 3) {
                CharSequence d10 = d(textView, baseLiveMessage);
                textView.setText(d10);
                return d10;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f18168a.getString(R.string.live_happy_runway_tip, bigGiftBean.getLiveName()));
            textView.setText(spannableStringBuilder);
            return spannableStringBuilder;
        }
        return "";
    }

    private CharSequence b(TextView textView, BaseLiveMessage baseLiveMessage) {
        int i9;
        if (baseLiveMessage instanceof LiveLuckyRunwayMessage) {
            baseLiveMessage.getFromUserId();
            String fromUserNickName = baseLiveMessage.getFromUserNickName();
            String str = fromUserNickName != null ? fromUserNickName : "";
            LiveLuckyRunwayMessage liveLuckyRunwayMessage = (LiveLuckyRunwayMessage) baseLiveMessage;
            int diamondIn = liveLuckyRunwayMessage.getDiamondIn();
            Drawable drawable = ContextCompat.getDrawable(this.f18168a, liveLuckyRunwayMessage.getFlag() == 1 ? R.mipmap.icon_game_shuijing : R.mipmap.icon_game_diamond);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f18168a.getString(R.string.minigame_lucky_runway_win, str, "{diamond}", String.valueOf(diamondIn)));
            if (drawable == null) {
                return spannableStringBuilder;
            }
            int minimumWidth = drawable.getMinimumWidth();
            int minimumHeight = drawable.getMinimumHeight();
            TextView textView2 = new TextView(textView.getContext());
            textView2.setTextSize(2, 12.0f);
            textView2.measure(0, 0);
            float measuredHeight = textView2.getMeasuredHeight();
            drawable.setBounds(0, -((int) ((0.818f * measuredHeight) - 2.0f)), (int) (((minimumWidth * 1.818f) * measuredHeight) / minimumHeight), ((int) measuredHeight) + 2);
            r rVar = new r(drawable);
            int indexOf = spannableStringBuilder.toString().indexOf(str);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ContextCompat.getColor(this.f18168a, R.color.live_gift_give));
            if (indexOf >= 0 && indexOf <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(foregroundColorSpan, 0, indexOf, 17);
            }
            ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(ContextCompat.getColor(this.f18168a, R.color.live_gift_giving_user));
            if (indexOf >= 0 && str.length() + indexOf <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(foregroundColorSpan2, indexOf, str.length() + indexOf, 17);
            }
            if (str.length() + indexOf >= 0) {
                spannableStringBuilder.setSpan(foregroundColorSpan, indexOf + str.length(), spannableStringBuilder.length(), 17);
            }
            int indexOf2 = spannableStringBuilder.toString().indexOf("{diamond}");
            if (indexOf2 >= 0 && (i9 = indexOf2 + 9) <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(rVar, indexOf2, i9, 17);
            }
            return spannableStringBuilder;
        }
        return "";
    }

    private Resources c() {
        return this.f18168a.getResources();
    }

    private CharSequence d(TextView textView, BaseLiveMessage baseLiveMessage) {
        String str;
        String str2;
        String str3;
        String str4;
        String string;
        StringBuilder sb2;
        int i9;
        int indexOf;
        int indexOf2;
        String str5 = "";
        if (baseLiveMessage instanceof RunwayMessage.BigGiftBean) {
            String fromUserNickName = baseLiveMessage.getFromUserNickName();
            RunwayMessage.BigGiftBean bigGiftBean = (RunwayMessage.BigGiftBean) baseLiveMessage;
            String toUserNickName = bigGiftBean.getToUserNickName();
            textView.setTextColor(this.f18168a.getResources().getColor(R.color.live_gift_give));
            if (bigGiftBean.getUserVipMsg() == null || bigGiftBean.getUserVipMsg().getIsVip() <= 0) {
                str = fromUserNickName;
                str2 = "";
            } else {
                str2 = "{mvip}";
                str = fromUserNickName + "{mvip}";
            }
            if (bigGiftBean.getToUserVipMsg() == null || bigGiftBean.getToUserVipMsg().getIsVip() <= 0) {
                str3 = toUserNickName;
            } else {
                str5 = "{ovip}";
                str3 = toUserNickName + "{ovip}";
            }
            if (bigGiftBean.getGiftNumbers() != null) {
                if (this.f18171d) {
                    str4 = bigGiftBean.getGiftNumbers() + "x {gift} ";
                } else {
                    str4 = " {gift} x" + bigGiftBean.getGiftNumbers();
                }
            } else {
                str4 = this.f18171d ? "1x {gift} " : " {gift} x1";
            }
            if (TextUtils.isEmpty(bigGiftBean.getTreasureId())) {
                string = this.f18168a.getString(R.string.live_look_living);
            } else {
                string = this.f18168a.getString(R.string.live_watch_get_diamond);
            }
            StringBuilder sb3 = new StringBuilder();
            String string2 = this.f18168a.getString(R.string.live_big_start_text);
            Object[] objArr = new Object[2];
            objArr[0] = str;
            if (this.f18171d) {
                sb2 = new StringBuilder();
                sb2.append(str4);
                sb2.append(str3);
            } else {
                sb2 = new StringBuilder();
                sb2.append(str3);
                sb2.append(str4);
            }
            objArr[1] = sb2.toString();
            sb3.append(String.format(string2, objArr));
            sb3.append(string);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(sb3.toString());
            Drawable resource = bigGiftBean.getResource();
            if (resource == null) {
                return spannableStringBuilder;
            }
            int minimumWidth = resource.getMinimumWidth();
            int minimumHeight = resource.getMinimumHeight();
            TextView textView2 = new TextView(textView.getContext());
            textView2.setTextSize(2, 12.0f);
            textView2.measure(0, 0);
            float measuredHeight = textView2.getMeasuredHeight();
            resource.setBounds(0, -((int) ((0.818f * measuredHeight) - 2.0f)), (int) (((minimumWidth * 1.818f) * measuredHeight) / minimumHeight), ((int) measuredHeight) + 2);
            r rVar = new r(resource);
            int indexOf3 = spannableStringBuilder.toString().indexOf(fromUserNickName);
            int indexOf4 = spannableStringBuilder.toString().indexOf(toUserNickName);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(this.f18168a.getResources().getColor(R.color.live_gift_giving_user));
            ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(this.f18168a.getResources().getColor(R.color.live_gift_giving_user));
            if (indexOf3 >= 0 && indexOf3 <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(foregroundColorSpan, indexOf3, fromUserNickName.length() + indexOf3, 33);
            }
            if (indexOf4 >= 0 && indexOf4 <= spannableStringBuilder.length()) {
                try {
                    spannableStringBuilder.setSpan(foregroundColorSpan2, indexOf4, toUserNickName.length() + indexOf4, 33);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (!TextUtils.isEmpty(str2) && (indexOf2 = spannableStringBuilder.toString().indexOf(str2)) >= 0 && str2.length() + indexOf2 <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(new r(e(bigGiftBean, 0)), indexOf2, str2.length() + indexOf2, 17);
            }
            if (!TextUtils.isEmpty(str5) && (indexOf = spannableStringBuilder.toString().indexOf(str5)) >= 0 && str5.length() + indexOf <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(new r(e(bigGiftBean, 1)), indexOf, str5.length() + indexOf, 17);
            }
            int indexOf5 = spannableStringBuilder.toString().indexOf("{gift}");
            if (indexOf5 >= 0 && (i9 = indexOf5 + 6) <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(rVar, indexOf5, i9, 17);
            }
            return spannableStringBuilder;
        }
        return "";
    }

    private Drawable e(RunwayMessage.BigGiftBean bigGiftBean, int i9) {
        if (this.f18172e == null) {
            this.f18172e = new SparseArray<>();
        }
        BitmapDrawable bitmapDrawable = this.f18172e.get(i9);
        if (bitmapDrawable != null) {
            return bitmapDrawable;
        }
        LinearLayout linearLayout = new LinearLayout(BaseApplication.getInstance());
        VipIndicatorView vipIndicatorView = new VipIndicatorView(BaseApplication.getInstance());
        if (i9 == 0) {
            vipIndicatorView.setVipLevel(bigGiftBean.getUserVipMsg().getIsVip());
        } else {
            vipIndicatorView.setVipLevel(bigGiftBean.getToUserVipMsg().getIsVip());
        }
        linearLayout.setPaddingRelative(0, 0, DensityUtil.dp2px(4.0f), 0);
        linearLayout.addView(vipIndicatorView, new LinearLayout.LayoutParams(-2, -2));
        linearLayout.setLayoutDirection(this.f18171d ? 1 : 0);
        linearLayout.setDrawingCacheEnabled(true);
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        linearLayout.layout(0, 0, vipIndicatorView.getMeasuredWidth() + DensityUtil.dp2px(4.0f), vipIndicatorView.getMeasuredHeight());
        Bitmap createBitmap = Bitmap.createBitmap(linearLayout.getDrawingCache());
        BitmapDrawable bitmapDrawable2 = new BitmapDrawable(c(), Bitmap.createScaledBitmap(createBitmap, (int) (createBitmap.getWidth() * 0.8d), (int) (createBitmap.getHeight() * 0.8d), false));
        bitmapDrawable2.setBounds(0, 0, bitmapDrawable2.getIntrinsicWidth(), bitmapDrawable2.getIntrinsicHeight());
        linearLayout.destroyDrawingCache();
        return bitmapDrawable2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f18169b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        int trackType;
        BaseLiveMessage baseLiveMessage = this.f18169b.get(i9);
        if (baseLiveMessage instanceof RunwayMessage.LuckyGiftRunwayMessage) {
            return 100012;
        }
        if (baseLiveMessage instanceof LiveLuckyRunwayMessage) {
            return 100010;
        }
        if ((baseLiveMessage instanceof RunwayMessage.BigGiftBean) && ((trackType = ((RunwayMessage.BigGiftBean) baseLiveMessage).getTrackType()) == 1 || trackType == 3)) {
            return 100011;
        }
        if ("0".equals(baseLiveMessage.getType())) {
            return TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND;
        }
        return 100006;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
        viewHolder.itemView.setTag(this.f18169b.get(i9));
        if (viewHolder instanceof LuckyGiftRunwayHolder) {
            ((LuckyGiftRunwayHolder) viewHolder).bindToMessage((RunwayMessage.LuckyGiftRunwayMessage) this.f18169b.get(i9));
        } else if (viewHolder instanceof LuckyRunwayViewHolder) {
            TextView textView = ((LuckyRunwayViewHolder) viewHolder).f18175a;
            textView.setText(b(textView, this.f18169b.get(i9)));
        } else if (viewHolder instanceof HappyRunwayViewHolder) {
            TextView textView2 = ((HappyRunwayViewHolder) viewHolder).f18173a;
            textView2.setText(a(textView2, this.f18169b.get(i9)));
        } else if (viewHolder instanceof MyNameViewHolder) {
            TextView textView3 = ((MyNameViewHolder) viewHolder).f18177a;
            textView3.setText(d(textView3, this.f18169b.get(i9)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        if (i9 == 100012) {
            return new LuckyGiftRunwayHolder(ListItemLuckyGiftRunwayHolderBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false));
        }
        if (i9 == 100010) {
            return new LuckyRunwayViewHolder(this.f18170c.inflate(R.layout.item_lucky_runway, viewGroup, false));
        }
        if (i9 == 100011) {
            return new HappyRunwayViewHolder(this.f18170c.inflate(R.layout.item_happy_runway, viewGroup, false));
        }
        if (i9 == 100001) {
            return new MyNameViewHolder(this.f18170c.inflate(R.layout.item_send_name, viewGroup, false));
        }
        View inflate = this.f18170c.inflate(R.layout.item_right, viewGroup, false);
        if (!this.f18169b.isEmpty() && (this.f18169b.get(0) instanceof LiveLuckyRunwayMessage)) {
            ((ViewGroup.MarginLayoutParams) inflate.findViewById(R.id.iv_right).getLayoutParams()).bottomMargin -= DensityUtil.dp2px(2.0f);
        }
        return new MyRightViewHolder(inflate);
    }
}

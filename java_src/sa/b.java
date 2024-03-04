package sa;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.gift.data.AnimFlag;
import com.guochao.faceshow.gift.view.GiftComboView;
import com.guochao.faceshow.gift.view.NumberIconTextView;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.views.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.text.StringsKt___StringsKt;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: j  reason: collision with root package name */
    private static int f57760j = 2131363474;

    /* renamed from: k  reason: collision with root package name */
    private static int f57761k = 2131365371;

    /* renamed from: l  reason: collision with root package name */
    private static int f57762l = 2131365381;

    /* renamed from: m  reason: collision with root package name */
    private static final ArrayMap<Character, Integer> f57763m;

    /* renamed from: b  reason: collision with root package name */
    private final Context f57765b;

    /* renamed from: g  reason: collision with root package name */
    private final ViewGroup f57770g;

    /* renamed from: i  reason: collision with root package name */
    private boolean f57772i;

    /* renamed from: h  reason: collision with root package name */
    final Handler f57771h = new Handler();

    /* renamed from: c  reason: collision with root package name */
    private final List<View> f57766c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final List<View> f57767d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final List<AnimFlag> f57768e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final HashMap<String, AnimFlag> f57769f = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private final sa.d f57764a = new sa.d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f57773a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f57774b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AnimFlag f57775c;

        a(View view, boolean z10, AnimFlag animFlag) {
            this.f57773a = view;
            this.f57774b = z10;
            this.f57775c = animFlag;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f57764a != null) {
                b.this.f57764a.a(this.f57773a, this.f57774b);
            }
            b.this.f57771h.postDelayed(this.f57775c.f25301k, 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: sa.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class RunnableC0640b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f57777a;

        RunnableC0640b(View view) {
            this.f57777a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            bVar.t(bVar.f57770g, this.f57777a, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f57779a;

        c(View view) {
            this.f57779a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            bVar.t(bVar.f57770g, this.f57779a, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.g(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        ImageView f57782a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        TextView f57783b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        ImageView f57784c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        TextView f57785d;

        /* renamed from: e  reason: collision with root package name */
        TextView f57786e;

        /* renamed from: f  reason: collision with root package name */
        ImageView f57787f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        View f57788g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        ImageView f57789h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        NumberIconTextView f57790i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        ImageView f57791j;
        @NonNull

        /* renamed from: k  reason: collision with root package name */
        ImageView f57792k;

        private e() {
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    static {
        ArrayMap<Character, Integer> arrayMap = new ArrayMap<>();
        f57763m = arrayMap;
        arrayMap.put('x', Integer.valueOf((int) R.mipmap.number_x));
        arrayMap.put('0', Integer.valueOf((int) R.mipmap.number_0));
        arrayMap.put('1', Integer.valueOf((int) R.mipmap.number_1));
        arrayMap.put('2', Integer.valueOf((int) R.mipmap.number_2));
        arrayMap.put('3', Integer.valueOf((int) R.mipmap.number_3));
        arrayMap.put('4', Integer.valueOf((int) R.mipmap.number_4));
        arrayMap.put('5', Integer.valueOf((int) R.mipmap.number_5));
        arrayMap.put('6', Integer.valueOf((int) R.mipmap.number_6));
        arrayMap.put('7', Integer.valueOf((int) R.mipmap.number_7));
        arrayMap.put('8', Integer.valueOf((int) R.mipmap.number_8));
        arrayMap.put('9', Integer.valueOf((int) R.mipmap.number_9));
    }

    public b(Context context, ViewGroup viewGroup) {
        this.f57765b = context;
        this.f57770g = viewGroup;
    }

    private void e(AnimFlag animFlag) {
        AnimFlag animFlag2;
        String str = animFlag.f25294d + animFlag.f25296f + animFlag.f25298h + animFlag.f25311u + animFlag.f25313w;
        if (this.f57769f.containsKey(str)) {
            animFlag2 = this.f57769f.get(str);
        } else {
            animFlag2 = (AnimFlag) GsonGetter.getGson().fromJson(GsonGetter.getGson().toJson(animFlag), (Class<Object>) AnimFlag.class);
            animFlag2.f25314x = 0;
            this.f57769f.put(str, animFlag2);
        }
        if (animFlag2 == null) {
            return;
        }
        animFlag2.f25306p = System.currentTimeMillis();
        View findViewWithTag = this.f57770g.findViewWithTag(l(animFlag2, true));
        LogUtils.i("LiveGiftTipsShowController:giftViewNoReward：" + findViewWithTag);
        if (findViewWithTag != null) {
            n(false, animFlag2, findViewWithTag);
            return;
        }
        if (!this.f57768e.contains(animFlag2)) {
            this.f57768e.add(animFlag2);
        } else {
            animFlag2.f25302l += animFlag2.f25303m;
        }
        g(false);
    }

    private void f(AnimFlag animFlag) {
        View findViewWithTag = this.f57770g.findViewWithTag(k(animFlag));
        LogUtils.i("LiveGiftTipsShowController:giftView：" + findViewWithTag);
        if (findViewWithTag != null) {
            n(false, animFlag, findViewWithTag);
            return;
        }
        if (!this.f57768e.contains(animFlag)) {
            this.f57768e.add(0, animFlag);
        } else {
            LogUtils.i("LiveGiftTipsShowController:mPipeAnimList队列里已经有了：sendCount+1");
            animFlag.f25302l += animFlag.f25303m;
        }
        g(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(boolean z10) {
        List<AnimFlag> list;
        if (!this.f57770g.isAttachedToWindow() || (list = this.f57768e) == null || list.size() == 0) {
            return;
        }
        if ((this.f57770g.findViewWithTag(k(this.f57768e.get(0))) != null || this.f57770g.getChildCount() < 2) && this.f57770g.getChildCount() < 2) {
            AnimFlag h10 = h();
            LogUtils.i(getClass().getSimpleName() + ":找到普通礼物:" + h10);
            if (h10 == null) {
                h10 = this.f57768e.remove(0);
            }
            if (h10 == null) {
                g(false);
                return;
            }
            View findViewWithTag = this.f57770g.findViewWithTag(k(h10));
            LogUtils.i(getClass().getSimpleName() + ":查找是否在原有的基础上累加:" + findViewWithTag);
            if (findViewWithTag == null) {
                LogUtils.i(getClass().getSimpleName() + ":giftAddNewAction:isLuckyGiftRewardMessage:" + h10.a());
                n(true, h10, m(h10));
            } else if (!z10) {
                n(false, (AnimFlag) findViewWithTag.getTag(f57760j), findViewWithTag);
            }
            if (this.f57770g.getChildCount() < 2) {
                this.f57771h.postDelayed(i(), 500L);
            }
        }
    }

    private AnimFlag h() {
        for (int i9 = 0; i9 < this.f57768e.size(); i9++) {
            if (!this.f57768e.get(i9).a()) {
                return this.f57768e.remove(i9);
            }
        }
        return null;
    }

    private Runnable i() {
        return new d();
    }

    private Runnable j(View view, boolean z10) {
        if (z10) {
            Runnable runnable = (Runnable) view.getTag(R.id.remove);
            if (runnable == null) {
                RunnableC0640b runnableC0640b = new RunnableC0640b(view);
                view.setTag(R.id.remove, runnableC0640b);
                return runnableC0640b;
            }
            return runnable;
        }
        return new c(view);
    }

    private String k(AnimFlag animFlag) {
        return l(animFlag, false);
    }

    private String l(AnimFlag animFlag, boolean z10) {
        if (animFlag == null) {
            return "";
        }
        String str = animFlag.f25294d + "_" + animFlag.f25296f + "_" + animFlag.f25298h + "_" + animFlag.f25311u + "_" + animFlag.f25313w;
        if (z10) {
            return str + "_0";
        }
        return str + "_" + animFlag.f25314x;
    }

    private View m(AnimFlag animFlag) {
        int i9 = animFlag.f25298h;
        if (animFlag.a()) {
            View inflate = LayoutInflater.from(this.f57765b).inflate(R.layout.live_gift_show_lucky_gift, this.f57770g, false);
            e eVar = new e(null);
            eVar.f57782a = (ImageView) inflate.findViewById(R.id.live_gift_tips_headimage);
            eVar.f57786e = (TextView) inflate.findViewById(R.id.live_gift_tips_nick_name);
            eVar.f57787f = (ImageView) inflate.findViewById(R.id.live_gift_tips_gift_img);
            eVar.f57790i = (NumberIconTextView) inflate.findViewById(R.id.reward_times);
            eVar.f57791j = (ImageView) inflate.findViewById(R.id.win_type);
            eVar.f57792k = (ImageView) inflate.findViewById(R.id.background);
            eVar.f57784c = (ImageView) inflate.findViewById(R.id.avatar);
            inflate.setTag(f57762l, eVar);
            return inflate;
        }
        View inflate2 = LayoutInflater.from(this.f57765b).inflate(R.layout.live_gift_show_multi, this.f57770g, false);
        e eVar2 = new e(null);
        eVar2.f57783b = (TextView) inflate2.findViewById(R.id.live_gift_tips_gift_name);
        eVar2.f57785d = (TextView) inflate2.findViewById(R.id.ll_anim);
        eVar2.f57782a = (ImageView) inflate2.findViewById(R.id.live_gift_tips_headimage);
        eVar2.f57786e = (TextView) inflate2.findViewById(R.id.live_gift_tips_nick_name);
        eVar2.f57787f = (ImageView) inflate2.findViewById(R.id.live_gift_tips_gift_img);
        eVar2.f57788g = inflate2.findViewById(R.id.scale_anim);
        eVar2.f57789h = (ImageView) inflate2.findViewById(R.id.ripple);
        eVar2.f57792k = (ImageView) inflate2.findViewById(R.id.background);
        eVar2.f57784c = (ImageView) inflate2.findViewById(R.id.avatar);
        inflate2.setTag(f57761k, eVar2);
        return inflate2;
    }

    private void n(boolean z10, AnimFlag animFlag, View view) {
        e eVar;
        CharSequence reversed;
        LogUtils.i("LiveGiftTipsShowController,fristLayout:" + z10);
        if (this.f57768e != null) {
            LogUtils.i("LiveGiftTipsShowController,mPipeAnimList:" + this.f57768e.size());
        }
        if (!animFlag.a()) {
            List<AnimFlag> p10 = p(this.f57768e, animFlag);
            LogUtils.i("LiveGiftTipsShowController,hasList:" + p10.size());
            if (p10.size() > 0) {
                for (AnimFlag animFlag2 : p10) {
                    animFlag.f25302l += animFlag2.f25303m;
                }
            }
        }
        animFlag.f25300j = System.currentTimeMillis();
        view.setTag(k(animFlag));
        view.setTag(f57760j, animFlag);
        if (animFlag.a()) {
            eVar = (e) view.getTag(f57762l);
        } else {
            eVar = (e) view.getTag(f57761k);
        }
        ImageView imageView = eVar.f57782a;
        TextView textView = eVar.f57785d;
        TextView textView2 = eVar.f57786e;
        ImageView imageView2 = eVar.f57787f;
        NumberIconTextView numberIconTextView = eVar.f57790i;
        ImageView imageView3 = eVar.f57792k;
        ImageView imageView4 = eVar.f57784c;
        if (eVar.f57783b != null) {
            GiftLiveMessage giftLiveMessage = animFlag.A;
            if (giftLiveMessage != null && giftLiveMessage.isHandyGiftMessage()) {
                eVar.f57783b.setText(R.string.handy_gift_sent);
            } else {
                eVar.f57783b.setText(R.string.sent);
            }
        }
        UserVipData userVipData = animFlag.f25307q;
        if (userVipData != null && !TextUtils.isEmpty(userVipData.getDressHead())) {
            imageView4.setVisibility(0);
            hc.a.j(imageView4, animFlag.f25307q.getDressHead());
        } else {
            imageView4.setVisibility(4);
        }
        if (animFlag.a()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) eVar.f57782a.getLayoutParams();
            int i9 = animFlag.f25315y;
            if (i9 == 0) {
                marginLayoutParams.setMarginStart(0);
                ImageView imageView5 = eVar.f57791j;
                if (imageView5 != null) {
                    imageView5.setImageResource(R.mipmap.lucky_gift_runway_win);
                }
                imageView3.setImageResource(R.drawable.gift_bg_win);
            } else if (i9 == 1) {
                marginLayoutParams.setMarginStart(DensityUtil.dp2px(1.5f));
                ImageView imageView6 = eVar.f57791j;
                if (imageView6 != null) {
                    imageView6.setImageResource(R.mipmap.lucky_gift_runway_big_win);
                }
                imageView3.setImageResource(R.drawable.gift_bg_bigwin);
            } else if (i9 == 2) {
                marginLayoutParams.setMarginStart(DensityUtil.dp2px(1.5f));
                ImageView imageView7 = eVar.f57791j;
                if (imageView7 != null) {
                    imageView7.setImageResource(R.mipmap.lucky_gift_runway_super_win);
                }
                imageView3.setImageResource(R.drawable.gift_bg_superwin);
            }
        } else if (animFlag.f25298h == 1) {
            if (animFlag.f25302l >= 10) {
                view.setBackgroundResource(R.drawable.shape_rect_gradient_yellow_bg);
            } else {
                view.setBackgroundResource(R.drawable.shape_rect_gradient_green_blue_bg);
            }
        }
        hc.a.h(imageView, animFlag.f25299i, R.mipmap.default_head);
        hc.a.j(imageView2, animFlag.f25297g);
        String str = "x  " + (animFlag.f25302l * animFlag.f25298h);
        if (!animFlag.a()) {
            LogUtils.i(getClass().getSimpleName() + ":giftItemFlag.addCountOri:" + animFlag.f25303m);
            animFlag.f25302l = animFlag.f25302l + animFlag.f25303m;
        }
        if (animFlag.f25302l * animFlag.f25298h == 0) {
            LogUtils.i(getClass().getSimpleName() + ":giftItemFlag.sendCount:" + animFlag.f25302l);
        }
        if (textView != null) {
            u(textView, str);
        }
        boolean z11 = animFlag.f25298h > 1;
        boolean a10 = animFlag.a();
        if (a10 && numberIconTextView != null) {
            if (q7.a.e().j()) {
                Resources resources = numberIconTextView.getResources();
                reversed = StringsKt___StringsKt.reversed((CharSequence) (x.f19108w + animFlag.f25314x));
                numberIconTextView.setSpanText(resources.getString(R.string.lucky_gift_times, reversed));
            } else {
                numberIconTextView.setSpanText(numberIconTextView.getResources().getString(R.string.lucky_gift_times, x.f19108w + animFlag.f25314x));
            }
        }
        animFlag.f25300j = System.currentTimeMillis();
        TextViewUtils.setMaxEcplise(textView2, 8, animFlag.f25294d);
        if (!z10) {
            if (a10) {
                return;
            }
            this.f57771h.removeCallbacks(animFlag.f25301k);
            sa.d dVar = this.f57764a;
            if (dVar != null) {
                dVar.a(view, z11);
            }
            Runnable j10 = j(view, a10);
            animFlag.f25301k = j10;
            this.f57771h.postDelayed(j10, 3000L);
            return;
        }
        if (animFlag.f25291a == null) {
            animFlag.f25291a = r();
        }
        animFlag.f25301k = j(view, a10);
        animFlag.f25291a.reset();
        this.f57771h.postDelayed(new a(view, z11, animFlag), animFlag.f25291a.getDuration());
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
            LogUtils.i("LiveGiftTipsShowController.removeView");
        }
        this.f57770g.addView(view);
        Context context = this.f57765b;
        if ((context instanceof WatchLiveRoomActivity) && ((WatchLiveRoomActivity) context).f18073j) {
            view.clearAnimation();
            view.startAnimation(animFlag.f25291a);
        }
    }

    private GiftLiveMessage o(GiftLiveMessage giftLiveMessage) {
        boolean z10 = giftLiveMessage.getCurrentReward() > 0;
        boolean isSelfSend = giftLiveMessage.isSelfSend();
        if (z10) {
            this.f57770g.getChildCount();
            this.f57768e.addAll(x(giftLiveMessage));
            g(true);
            if (isSelfSend) {
                return null;
            }
            if (isSelfSend) {
                return giftLiveMessage;
            }
            GiftLiveMessage giftLiveMessage2 = (GiftLiveMessage) GsonGetter.getGson().fromJson(GsonGetter.getGson().toJson(giftLiveMessage), (Class<Object>) GiftLiveMessage.class);
            giftLiveMessage2.setLuckyGiftResults(null);
            return giftLiveMessage2;
        }
        return giftLiveMessage;
    }

    private List<AnimFlag> p(List<AnimFlag> list, AnimFlag animFlag) {
        ArrayList arrayList = new ArrayList();
        if (list != null && animFlag != null) {
            for (int size = list.size() - 1; size > 0; size--) {
                AnimFlag animFlag2 = list.get(size);
                if (!animFlag2.a() && animFlag2.f25294d.equals(animFlag.f25294d) && animFlag.f25296f.equals(animFlag2.f25296f) && animFlag.f25298h == animFlag2.f25298h && Objects.equals(animFlag.f25311u, animFlag2.f25311u) && animFlag.f25313w == animFlag2.f25313w) {
                    arrayList.add(list.remove(size));
                }
            }
        }
        return arrayList;
    }

    private Animation r() {
        if (q()) {
            return new AlphaAnimation(0.0f, 1.0f);
        }
        return AnimationUtils.loadAnimation(this.f57765b, R.anim.left_x_in_anim);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(ViewGroup viewGroup, View view, boolean z10) {
        if (!viewGroup.isAttachedToWindow() || viewGroup.getChildCount() == 0 || view == null) {
            return;
        }
        AnimFlag animFlag = (AnimFlag) view.getTag(f57760j);
        if (animFlag.f25292b == null) {
            animFlag.f25292b = AnimationUtils.loadAnimation(this.f57765b, R.anim.top_y_out_anim);
        }
        animFlag.f25292b.reset();
        if (z10) {
            viewGroup.removeView(view);
            return;
        }
        this.f57771h.postDelayed(i(), animFlag.f25292b.getDuration());
        view.clearAnimation();
        view.startAnimation(animFlag.f25292b);
        viewGroup.removeView(view);
        AnimFlag animFlag2 = (AnimFlag) view.getTag(f57760j);
        if (animFlag2 == null) {
            return;
        }
        if (animFlag2.a()) {
            if (this.f57767d.size() < 20) {
                this.f57767d.add(view);
            }
        } else if (this.f57766c.size() < 20) {
            this.f57766c.add(view);
        }
    }

    private void u(TextView textView, String str) {
        try {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            char[] charArray = str.toCharArray();
            for (int i9 = 0; i9 < charArray.length; i9++) {
                Integer num = f57763m.get(Character.valueOf(charArray[i9]));
                if (num != null) {
                    Drawable drawable = this.f57765b.getDrawable(num.intValue());
                    drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
                    spannableStringBuilder.setSpan(new r(drawable), i9, i9 + 1, 33);
                }
            }
            textView.setText(spannableStringBuilder);
        } catch (Exception unused) {
        }
    }

    private List<AnimFlag> x(GiftLiveMessage giftLiveMessage) {
        ArrayList arrayList = new ArrayList();
        List<SendGiftResponseModel.LuckyGiftResult> luckyGiftResults = giftLiveMessage.getLuckyGiftResults();
        if (luckyGiftResults != null && luckyGiftResults.size() > 0) {
            for (int i9 = 0; i9 < luckyGiftResults.size(); i9++) {
                AnimFlag animFlag = new AnimFlag();
                animFlag.f25294d = giftLiveMessage.getFromUserNickName();
                animFlag.f25295e = giftLiveMessage.getGiftTypeId();
                animFlag.f25296f = giftLiveMessage.getGiftId();
                animFlag.f25298h = Integer.parseInt(giftLiveMessage.getGiftNum());
                animFlag.f25297g = giftLiveMessage.giftImg;
                animFlag.f25299i = giftLiveMessage.getFromUserAvatar();
                animFlag.f25311u = luckyGiftResults.get(i9).getAccountId();
                if (giftLiveMessage.getIsGiftAllSend() == 1) {
                    animFlag.f25302l = giftLiveMessage.getGiftSendList().size();
                } else {
                    animFlag.f25302l = 1;
                }
                animFlag.f25303m = animFlag.f25302l;
                animFlag.f25313w = giftLiveMessage.getIsGiftAllSend();
                animFlag.f25314x = luckyGiftResults.get(i9).getAwardMultiple();
                animFlag.f25315y = giftLiveMessage.getCurrentRewardType();
                animFlag.f25316z = giftLiveMessage.isSelfSend();
                if (Objects.equals(giftLiveMessage.getFromUserId(), b8.e.g().getUserId())) {
                    animFlag.f25307q = b8.e.g().c().getUserVipMsg();
                } else {
                    animFlag.f25307q = giftLiveMessage.getUserVipMsg();
                }
                if (animFlag.f25314x > 0) {
                    arrayList.add(animFlag);
                }
            }
        }
        return arrayList;
    }

    public boolean q() {
        return this.f57772i;
    }

    public void s() {
        this.f57766c.clear();
        this.f57767d.clear();
        this.f57768e.clear();
        ViewGroup viewGroup = this.f57770g;
        if (viewGroup != null) {
            viewGroup.setVisibility(4);
            sa.c.r(this.f57770g);
        }
        this.f57771h.removeMessages(0);
        this.f57769f.clear();
    }

    public void v(boolean z10) {
        this.f57772i = z10;
    }

    public void w(GiftLiveMessage giftLiveMessage, String str, String str2, String str3, String str4, String str5, int i9) {
        if (ta.a.a(str5)) {
            this.f57770g.setVisibility(0);
            if (o(giftLiveMessage) == null) {
                return;
            }
            int size = this.f57769f.size();
            String str6 = giftLiveMessage.toUserId;
            int isGiftAllSend = giftLiveMessage.getIsGiftAllSend();
            LogUtils.i(getClass().getSimpleName() + ":mPendingToRemove.size:" + size);
            Iterator<Map.Entry<String, AnimFlag>> it = this.f57769f.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, AnimFlag> next = it.next();
                LogUtils.i(getClass().getSimpleName() + ":entry.getKey():" + next.getKey());
                if (System.currentTimeMillis() - next.getValue().f25306p > GiftComboView.DURATION_CACHE) {
                    it.remove();
                }
            }
            LogUtils.i(getClass().getSimpleName() + ":mPendingToRemove.size:" + size);
            String str7 = str4 + str + i9 + str6 + isGiftAllSend;
            LogUtils.i(getClass().getSimpleName() + ":key:" + str7);
            AnimFlag animFlag = this.f57769f.containsKey(str7) ? this.f57769f.get(str7) : null;
            if (animFlag == null) {
                LogUtils.i(getClass().getSimpleName() + "newAnimFlag新创建");
                animFlag = new AnimFlag();
                animFlag.f25294d = str4;
                animFlag.f25295e = str5;
                animFlag.f25296f = str;
                animFlag.f25298h = i9;
                animFlag.f25297g = str2;
                animFlag.f25299i = str3;
                animFlag.f25311u = str6;
                if (giftLiveMessage.getIsGiftAllSend() == 1) {
                    animFlag.f25302l = giftLiveMessage.getGiftSendList().size();
                } else {
                    animFlag.f25302l = 1;
                }
                animFlag.f25303m = animFlag.f25302l;
                animFlag.f25313w = giftLiveMessage.getIsGiftAllSend();
                animFlag.f25314x = giftLiveMessage.getCurrentReward();
                animFlag.f25315y = giftLiveMessage.getCurrentRewardType();
                animFlag.f25316z = giftLiveMessage.isSelfSend();
                if (Objects.equals(giftLiveMessage.getFromUserId(), b8.e.g().getUserId())) {
                    animFlag.f25307q = b8.e.g().c().getUserVipMsg();
                } else {
                    animFlag.f25307q = giftLiveMessage.getUserVipMsg();
                }
            } else {
                LogUtils.i(getClass().getSimpleName() + "newAnimFlag从回收站中获取");
                LogUtils.i(getClass().getSimpleName() + "上次回收的anim的累计次数：" + animFlag.f25302l);
            }
            animFlag.A = giftLiveMessage;
            animFlag.f25306p = System.currentTimeMillis();
            if (animFlag.a()) {
                if (giftLiveMessage.isSelfSend()) {
                    return;
                }
                e(animFlag);
                return;
            }
            LogUtils.i(getClass().getSimpleName() + ":checkMessageNormal次数");
            this.f57769f.put(str7, animFlag);
            f(animFlag);
        }
    }
}

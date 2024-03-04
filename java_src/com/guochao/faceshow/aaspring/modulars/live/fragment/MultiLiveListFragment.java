package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.animation.ObjectAnimator;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.widget.Key;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.common.t;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.views.ParallaxImageView;
import com.guochao.faceshow.databinding.FragmentMultiLiveListBinding;
import com.guochao.faceshow.utils.DensityUtil;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001/B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0012\u0010\u001f\u001a\u00020\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001d\u0010 \u001a\u00020\u001b2\b\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\"¢\u0006\u0002\u0010$J\b\u0010%\u001a\u00020\u001bH\u0016J\u0012\u0010&\u001a\u00020\u001b2\b\u0010'\u001a\u0004\u0018\u00010(H\u0014J\u0019\u0010)\u001a\u00020\u001b2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0002\u0010+J\u0010\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\u0004H\u0017J\b\u0010.\u001a\u00020\u001bH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0013\u001a\u00020\u00148\u0016@\u0016X\u0097.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0015\u0010\u0002\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u00060"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;", "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;", "()V", "cancelPost", "", "getCancelPost", "()Z", "setCancelPost", "(Z)V", "headerView", "Landroid/view/View;", "getHeaderView", "()Landroid/view/View;", "setHeaderView", "(Landroid/view/View;)V", "isMatching", "setMatching", "matchPost", "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;)V", "initView", "", "root", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onOffsetChanged", "totalScrollRange", "", TypedValues.CycleType.S_WAVE_OFFSET, "(Ljava/lang/Integer;I)V", "onPause", "refreshAfterData", "data", "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;", "setMatchNum", AnimatedPasterJsonConfig.CONFIG_COUNT, "(Ljava/lang/Integer;)V", "setUserVisibleHint", "isVisibleToUser", "startMatch", "TypefaceSpan", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MultiLiveListFragment extends LiveListFragment {
    private boolean cancelPost;
    public View headerView;
    private boolean isMatching;
    @Nullable
    private PostRequest matchPost;
    public FragmentMultiLiveListBinding viewBinding;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u000b\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;", "Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;", "type", "Landroid/graphics/Typeface;", "(Landroid/graphics/Typeface;)V", "getType", "()Landroid/graphics/Typeface;", "applyToTypeface", "", "tp", "Landroid/text/TextPaint;", "updateDrawState", "updateMeasureState", "textPaint", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class TypefaceSpan extends SpanColorUtils.VerticalTextSpan {
        @NotNull
        private final Typeface type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TypefaceSpan(@NotNull Typeface type) {
            super(type, DensityUtil.dp2px(16.0f));
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
        }

        private final void applyToTypeface(TextPaint textPaint) {
            if (textPaint != null) {
                textPaint.setTypeface(this.type);
                textPaint.setTextSize(DensityUtil.dp2px(16.0f));
            }
        }

        @NotNull
        public final Typeface getType() {
            return this.type;
        }

        @Override // android.text.style.ReplacementSpan, android.text.style.CharacterStyle
        public void updateDrawState(@Nullable TextPaint textPaint) {
            applyToTypeface(textPaint);
        }

        @Override // android.text.style.ReplacementSpan, android.text.style.MetricAffectingSpan
        public void updateMeasureState(@NotNull TextPaint textPaint) {
            Intrinsics.checkNotNullParameter(textPaint, "textPaint");
            applyToTypeface(textPaint);
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m484initView$lambda0(MultiLiveListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startMatch();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setMatchNum(Integer num) {
        int indexOf$default;
        TextView textView = (TextView) getHeaderView().findViewById(R.id.count);
        if (num == null) {
            textView.setText("");
            return;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        String string = getString(R.string.live_people_matched);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.live_people_matched)");
        String format = String.format(locale, string, Arrays.copyOf(new Object[]{num}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        String num2 = num.toString();
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) format, num2, 0, false, 6, (Object) null);
        if (indexOf$default < 0) {
            textView.setText(format);
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
        Typeface typeface = FontUtils.getTypeface(2);
        Intrinsics.checkNotNullExpressionValue(typeface, "getTypeface(FontUtils.TYPE_UGC_NUMBER_DIN)");
        spannableStringBuilder.setSpan(new TypefaceSpan(typeface), indexOf$default, num2.length() + indexOf$default, 33);
        spannableStringBuilder.setSpan(new SpanColorUtils.VerticalTextSpan(DensityUtil.dp2px(12.0f)), indexOf$default + num2.length() + 1, format.length(), 33);
        textView.setText(spannableStringBuilder);
    }

    static /* synthetic */ void setMatchNum$default(MultiLiveListFragment multiLiveListFragment, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        multiLiveListFragment.setMatchNum(num);
    }

    private final void startMatch() {
        if (this.isMatching) {
            return;
        }
        this.isMatching = true;
        final ImageView imageView = (ImageView) getHeaderView().findViewById(R.id.icon);
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat(imageView, Key.ROTATION, 0.0f, 360.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.start();
        this.cancelPost = false;
        this.matchPost = post("tokens/live/newLive/mathLive").u(new Object()).M(new com.guochao.faceshow.aaspring.base.http.callback.c<LiveRoomPageData>() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.MultiLiveListFragment$startMatch$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onCompleted() {
                super.onCompleted();
                MultiLiveListFragment.this.setMatching(false);
                ofFloat.cancel();
                imageView.setRotation(0.0f);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<LiveRoomPageData> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable LiveRoomPageData liveRoomPageData, @NotNull FaceCastBaseResponse<LiveRoomPageData> baseResponse) {
                Integer num;
                int coerceAtMost;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (MultiLiveListFragment.this.getActivity() == null) {
                    return;
                }
                if (MultiLiveListFragment.this.getCancelPost()) {
                    MultiLiveListFragment.this.setCancelPost(false);
                } else if (liveRoomPageData != null) {
                    MultiLiveListFragment multiLiveListFragment = MultiLiveListFragment.this;
                    String matchNum = liveRoomPageData.getMatchNum();
                    if (matchNum != null) {
                        Intrinsics.checkNotNullExpressionValue(matchNum, "matchNum");
                        num = StringsKt__StringNumberConversionsKt.toIntOrNull(matchNum);
                    } else {
                        num = null;
                    }
                    multiLiveListFragment.setMatchNum(num);
                    List<RoomItemData> roomList = liveRoomPageData.getRoomList();
                    if (roomList != null) {
                        Intrinsics.checkNotNullExpressionValue(roomList, "roomList");
                        if (roomList.isEmpty()) {
                            return;
                        }
                        coerceAtMost = RangesKt___RangesKt.coerceAtMost(4, roomList.size());
                        int nextInt = new Random().nextInt(coerceAtMost);
                        liveRoomPageData.setCurrentPage("0");
                        t.c().f(multiLiveListFragment.getActivity(), liveRoomPageData, nextInt, 0);
                    }
                }
            }
        });
    }

    public final boolean getCancelPost() {
        return this.cancelPost;
    }

    @NotNull
    public final View getHeaderView() {
        View view = this.headerView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("headerView");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment
    @NotNull
    public FragmentMultiLiveListBinding getViewBinding() {
        FragmentMultiLiveListBinding fragmentMultiLiveListBinding = this.viewBinding;
        if (fragmentMultiLiveListBinding != null) {
            return fragmentMultiLiveListBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        View findViewById = root.findViewById(R.id.live_header);
        Intrinsics.checkNotNull(findViewById);
        setHeaderView(findViewById);
        setMatchNum$default(this, null, 1, null);
        getHeaderView().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiLiveListFragment.m484initView$lambda0(MultiLiveListFragment.this, view);
            }
        });
        getViewBinding().recyclerContentArea.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.MultiLiveListFragment$initView$2
            private int offsetY;

            public final int getOffsetY() {
                return this.offsetY;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NotNull RecyclerView recyclerView, int i9, int i10) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                int i11 = (int) ((((int) ((recyclerView.getContext().getResources().getDisplayMetrics().widthPixels * 780.0f) / 1080)) * 381.0f) / 780);
                this.offsetY += i10;
                MultiLiveListFragment.this.onOffsetChanged(Integer.valueOf(i11), -Math.min(this.offsetY, i11));
            }

            public final void setOffsetY(int i9) {
                this.offsetY = i9;
            }
        });
    }

    public final boolean isMatching() {
        return this.isMatching;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setMCurrSelectTypeId(2);
    }

    public final void onOffsetChanged(@Nullable Integer num, int i9) {
        View view;
        ParallaxImageView parallaxImageView;
        if (this.viewBinding == null) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getViewBinding().recyclerContentArea.recyclerView.getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
        GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
        int findFirstVisibleItemPosition = gridLayoutManager.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = gridLayoutManager.findLastVisibleItemPosition();
        if (findFirstVisibleItemPosition >= 0 || findLastVisibleItemPosition >= 0) {
            while (findFirstVisibleItemPosition < findLastVisibleItemPosition && getAdapter().getList().size() > findFirstVisibleItemPosition) {
                if (getAdapter().getList().get(findFirstVisibleItemPosition).getItemType() == 1) {
                    RecyclerView.ViewHolder findViewHolderForAdapterPosition = getViewBinding().recyclerContentArea.recyclerView.findViewHolderForAdapterPosition(findFirstVisibleItemPosition);
                    if (num != null) {
                        num.intValue();
                        if (findViewHolderForAdapterPosition != null && (view = findViewHolderForAdapterPosition.itemView) != null && (parallaxImageView = (ParallaxImageView) view.findViewById(R.id.image)) != null) {
                            parallaxImageView.onOffsetChanged(num.intValue(), i9);
                        }
                    }
                }
                findFirstVisibleItemPosition++;
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.cancelPost = true;
        PostRequest postRequest = this.matchPost;
        if (postRequest != null) {
            postRequest.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment
    public void refreshAfterData(@Nullable LiveRoomPageData liveRoomPageData) {
        String matchNum;
        super.refreshAfterData(liveRoomPageData);
        setMatchNum((liveRoomPageData == null || (matchNum = liveRoomPageData.getMatchNum()) == null) ? null : StringsKt__StringNumberConversionsKt.toIntOrNull(matchNum));
    }

    public final void setCancelPost(boolean z10) {
        this.cancelPost = z10;
    }

    public final void setHeaderView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.headerView = view;
    }

    public final void setMatching(boolean z10) {
        this.isMatching = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment, androidx.fragment.app.Fragment
    @Deprecated(message = "Deprecated in Java")
    public void setUserVisibleHint(boolean z10) {
        super.setUserVisibleHint(z10);
        if (z10) {
            return;
        }
        this.cancelPost = true;
        PostRequest postRequest = this.matchPost;
        if (postRequest != null) {
            postRequest.cancel();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment
    public void setViewBinding(@NotNull FragmentMultiLiveListBinding fragmentMultiLiveListBinding) {
        Intrinsics.checkNotNullParameter(fragmentMultiLiveListBinding, "<set-?>");
        this.viewBinding = fragmentMultiLiveListBinding;
    }
}

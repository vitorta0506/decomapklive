package com.guochao.faceshow.aaspring.modulars.live.viewholder;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAVideoEntity;
import ja.a;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0006H\u0016J\u0018\u0010\u001d\u001a\u00020\u00162\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "checkTips", "", "getCheckTips", "()Z", "setCheckTips", "(Z)V", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "userGuideView", "Landroid/widget/FrameLayout;", "getUserGuideView", "()Landroid/widget/FrameLayout;", "setUserGuideView", "(Landroid/widget/FrameLayout;)V", "bindValue", "", "roomItemData", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "position", "", "setCheckTip", "tip", "setLabel", AnnotatedPrivateKey.LABEL, "", "pkIcon", "Landroid/widget/ImageView;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class BaseLiveItemViewHolder extends BaseViewHolder {
    private boolean checkTips;
    @NotNull
    private final Context context;
    @Nullable
    private FrameLayout userGuideView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseLiveItemViewHolder(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Context context = itemView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "itemView.context");
        this.context = context;
    }

    public void bindValue(@Nullable RoomItemData roomItemData, int i9) {
        String country;
        String str;
        SVGAVideoEntity mVideoItem;
        TextView textView = (TextView) getView(R.id.tvInfo);
        TextView textView2 = (TextView) getView(R.id.tvOnlineCount);
        ImageView imageView = (ImageView) getView(R.id.img_gif);
        imageView.setImageResource(R.drawable.living_status);
        getView(R.id.ll_address);
        if (BaseConfig.isChinese()) {
            if (TextUtils.isEmpty(roomItemData != null ? roomItemData.getCity() : null)) {
                country = this.context.getString(R.string.On_The_Mars);
            } else {
                if (roomItemData != null) {
                    country = roomItemData.getCity();
                }
                country = null;
            }
        } else {
            if (roomItemData != null) {
                country = roomItemData.getCountry();
            }
            country = null;
        }
        setText(R.id.address, country);
        Drawable drawable = imageView.getDrawable();
        Intrinsics.checkNotNull(drawable, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        ((AnimationDrawable) drawable).start();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Object[] objArr = new Object[1];
        objArr[0] = roomItemData != null ? Integer.valueOf(roomItemData.getOnlineNum()).toString() : null;
        String format = String.format("%s", Arrays.copyOf(objArr, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        textView2.setText(format);
        String str2 = "";
        if ((roomItemData != null ? roomItemData.getInfoName() : null) != null) {
            String infoName = roomItemData.getInfoName();
            Intrinsics.checkNotNullExpressionValue(infoName, "roomItemData.infoName");
            int length = infoName.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = Intrinsics.compare((int) infoName.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            str = infoName.subSequence(i10, length + 1).toString();
        } else {
            str = "";
        }
        if (StringUtils.containsEmoji(str)) {
            int screenWidth = PackageUtils.getScreenWidth(this.context);
            String infoName2 = roomItemData != null ? roomItemData.getInfoName() : null;
            TextPaint paint = textView.getPaint();
            Intrinsics.checkNotNull(paint, "null cannot be cast to non-null type android.text.TextPaint");
            CharSequence ellipsize = TextUtils.ellipsize(infoName2, paint, (screenWidth / 2) - DensityUtil.dp2px(40.0f), TextUtils.TruncateAt.END);
            Intrinsics.checkNotNull(ellipsize, "null cannot be cast to non-null type kotlin.String");
            textView.setText((String) ellipsize);
        } else {
            if ((roomItemData != null ? roomItemData.getInfoName() : null) != null) {
                String infoName3 = roomItemData.getInfoName();
                Intrinsics.checkNotNullExpressionValue(infoName3, "roomItemData.infoName");
                int length2 = infoName3.length() - 1;
                int i11 = 0;
                boolean z12 = false;
                while (i11 <= length2) {
                    boolean z13 = Intrinsics.compare((int) infoName3.charAt(!z12 ? i11 : length2), 32) <= 0;
                    if (z12) {
                        if (!z13) {
                            break;
                        }
                        length2--;
                    } else if (z13) {
                        i11++;
                    } else {
                        z12 = true;
                    }
                }
                str2 = infoName3.subSequence(i11, length2 + 1).toString();
            }
            textView.setText(str2);
        }
        if (i9 == 1 && this.checkTips) {
            View view = this.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) view;
            if (a.b().f("KEY_LIVE_CLICK_TIPS")) {
                if (this.userGuideView == null) {
                    this.userGuideView = new FrameLayout(this.context);
                    LiveListFragment.Companion companion = LiveListFragment.Companion;
                    LiveListFragment.sShowedLiveTips = true;
                    SvgaImageViewV2 svgaImageViewV2 = new SvgaImageViewV2(this.context, null, 2, null);
                    svgaImageViewV2.getId();
                    LinearLayout linearLayout = new LinearLayout(this.context);
                    linearLayout.setGravity(1);
                    linearLayout.setOrientation(1);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 17;
                    Unit unit = Unit.INSTANCE;
                    linearLayout.addView(svgaImageViewV2, layoutParams);
                    svgaImageViewV2.playRaw(R.raw.user_guide_live_room_click);
                    TextView textView3 = new TextView(this.context);
                    textView3.setText(R.string.user_guide_click_live);
                    textView3.setTextSize(2, 15.0f);
                    textView3.setTextColor(-1);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 17;
                    layoutParams2.topMargin = DensityUtil.dp2px(10.0f);
                    linearLayout.addView(textView3, layoutParams2);
                    FrameLayout frameLayout = this.userGuideView;
                    if (frameLayout != null) {
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams3.gravity = 17;
                        frameLayout.addView(linearLayout, layoutParams3);
                    }
                    FrameLayout frameLayout2 = this.userGuideView;
                    if (frameLayout2 != null) {
                        frameLayout2.setBackgroundColor(Color.parseColor("#80000000"));
                    }
                    viewGroup.addView(this.userGuideView, new ViewGroup.LayoutParams(-1, -1));
                    FrameLayout frameLayout3 = this.userGuideView;
                    if (frameLayout3 == null) {
                        return;
                    }
                    frameLayout3.setVisibility(0);
                }
            } else if (this.userGuideView != null) {
                View view2 = this.itemView;
                Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) view2).removeView(this.userGuideView);
                FrameLayout frameLayout4 = this.userGuideView;
                if (frameLayout4 == null) {
                    return;
                }
                frameLayout4.setVisibility(8);
            }
        } else if (this.userGuideView != null) {
            View view3 = this.itemView;
            Intrinsics.checkNotNull(view3, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) view3).removeView(this.userGuideView);
            FrameLayout frameLayout5 = this.userGuideView;
            SVGAImageView sVGAImageView = frameLayout5 != null ? (SVGAImageView) frameLayout5.findViewById(R.id.svga) : null;
            if (sVGAImageView != null) {
                sVGAImageView.stopAnimation();
            }
            if (sVGAImageView != null && (mVideoItem = sVGAImageView.getMVideoItem()) != null) {
                mVideoItem.release();
            }
            FrameLayout frameLayout6 = this.userGuideView;
            if (frameLayout6 == null) {
                return;
            }
            frameLayout6.setVisibility(8);
        }
    }

    public final boolean getCheckTips() {
        return this.checkTips;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Nullable
    public final FrameLayout getUserGuideView() {
        return this.userGuideView;
    }

    @NotNull
    public BaseLiveItemViewHolder setCheckTip(boolean z10) {
        this.checkTips = z10;
        return this;
    }

    public final void setCheckTips(boolean z10) {
        this.checkTips = z10;
    }

    public final void setLabel(@Nullable String str, @NotNull ImageView pkIcon) {
        boolean startsWith$default;
        boolean startsWith$default2;
        String replace$default;
        Intrinsics.checkNotNullParameter(pkIcon, "pkIcon");
        if (str != null) {
            if (Intrinsics.areEqual(str, PushConstants.URI_PACKAGE_NAME)) {
                pkIcon.setImageResource(R.mipmap.pk_mark);
                pkIcon.setVisibility(0);
                return;
            }
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "hour", false, 2, null);
            if (startsWith$default) {
                pkIcon.setVisibility(0);
                try {
                    replace$default = StringsKt__StringsJVMKt.replace$default(str, "hour", "", false, 4, (Object) null);
                    int parseInt = Integer.parseInt(replace$default);
                    if (parseInt == 1) {
                        pkIcon.setImageResource(R.mipmap.global_hour_no_1);
                    } else if (parseInt == 2) {
                        pkIcon.setImageResource(R.mipmap.global_no_2);
                    } else if (parseInt != 3) {
                        pkIcon.setImageResource(R.mipmap.global_hour_no_10);
                    } else {
                        pkIcon.setImageResource(R.mipmap.global_hour_no_3);
                    }
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(str, "countryHour", false, 2, null);
            if (startsWith$default2) {
                pkIcon.setVisibility(0);
                try {
                    pkIcon.setImageResource(R.mipmap.hour_no_1);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            } else if (Intrinsics.areEqual(str, "hello")) {
                pkIcon.setImageResource(R.mipmap.icon_hello_satr);
                pkIcon.setVisibility(0);
            } else if (Intrinsics.areEqual(str, "friend")) {
                pkIcon.setVisibility(0);
                pkIcon.setImageResource(R.mipmap.icon_zb_mark);
            } else if (this instanceof MultiLiveNormalViewHolder) {
                pkIcon.setImageResource(R.mipmap.icon_zb_mark);
            }
        }
    }

    public final void setUserGuideView(@Nullable FrameLayout frameLayout) {
        this.userGuideView = frameLayout;
    }
}

package com.guochao.faceshow.aaspring.modulars.live.hello.adapter;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.HelloStarSummon;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\"\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\bH\u0016J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J \u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0019H\u0002J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0019H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;", "mContext", "Landroid/content/Context;", "data", "", "layoutId", "", "(Landroid/content/Context;Ljava/util/List;I)V", "getMContext", "()Landroid/content/Context;", "setMContext", "(Landroid/content/Context;)V", "convert", "", "holder", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "eventTracking", "status", "desc", "", "inviteHelloUser", "Landroid/widget/TextView;", "setTextView", "selected", "", "textView", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HelloGiftNewUserAdapter extends CommonRecyclerAdapter<HelloStarSummon> {
    @Nullable
    private Context mContext;

    public HelloGiftNewUserAdapter(@Nullable Context context, @Nullable List<HelloStarSummon> list, int i9) {
        super(context, list, i9);
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-2  reason: not valid java name */
    public static final void m492convert$lambda2(HelloStarSummon item, HelloGiftNewUserAdapter this$0, int i9, TextView textView, View view) {
        Intrinsics.checkNotNullParameter(item, "$item");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (item.isInvite() == 1 || item.getLiveFlag()) {
            return;
        }
        this$0.inviteHelloUser(item, i9, textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void eventTracking(int i9, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("status", 0);
        if (i9 == 1) {
            bundle.putString("desc", str);
        }
        EventTrackingUtils.getInstance().track(EventTrackingUtils.CLICK_HELLO_LIST_HELLO, bundle);
    }

    private final void inviteHelloUser(final HelloStarSummon helloStarSummon, int i9, final TextView textView) {
        setTextView(true, textView);
        GCRequest addQuery = new GCRequest("api/token/live/helloLog/hello").method(GCRequest.Method.GET).addQuery("helloUserId", helloStarSummon.getUserId());
        addQuery.getCallbackHolder().setSuccessClz(Integer.class);
        addQuery.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.adapter.HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                Integer num = (Integer) _response.getData();
                if (num != null && num.intValue() == 0) {
                    GCApplication app = GCApplication.app();
                    String string = GCApplication.app().getString(R.string.hello_star_invite_tip);
                    Intrinsics.checkNotNullExpressionValue(string, "app().getString(R.string.hello_star_invite_tip)");
                    ToastUtils.showToast$default(app, string, 0, 0, 12, null);
                    return;
                }
                HelloGiftNewUserAdapter.this.eventTracking(0, "");
                HelloGiftNewUserAdapter.this.setTextView(true, textView);
                helloStarSummon.setInvite(1);
            }
        });
        addQuery.getCallbackHolder().setFailClz(Integer.class);
        addQuery.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.adapter.HelloGiftNewUserAdapter$inviteHelloUser$$inlined$fail$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                HelloGiftNewUserAdapter.this.setTextView(false, textView);
                String msg = response.getMsg();
                if (msg != null) {
                    HelloGiftNewUserAdapter.this.eventTracking(1, msg);
                }
            }
        });
        addQuery.request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTextView(boolean z10, TextView textView) {
        Context context = textView.getContext();
        if (z10) {
            if (context != null) {
                textView.setText(context.getString(R.string.live_invited));
                textView.setTextColor(ContextCompat.getColor(context, R.color.white));
            }
            textView.setBackgroundResource(R.drawable.bg_hello_start_un_btn);
            return;
        }
        if (context != null) {
            Context context2 = this.mContext;
            textView.setText(context2 != null ? context2.getString(R.string.live_invite) : null);
            textView.setTextColor(ContextCompat.getColor(context, R.color.white));
        }
        textView.setBackgroundResource(R.drawable.bg_hello_start_btn);
    }

    @Nullable
    public final Context getMContext() {
        return this.mContext;
    }

    public final void setMContext(@Nullable Context context) {
        this.mContext = context;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter
    public void convert(@Nullable BaseViewHolder baseViewHolder, @NotNull final HelloStarSummon item, final int i9) {
        Intrinsics.checkNotNullParameter(item, "item");
        HeadPortraitView headPortraitView = baseViewHolder != null ? (HeadPortraitView) baseViewHolder.getView(R.id.user_avatar) : null;
        TextView textView = baseViewHolder != null ? (TextView) baseViewHolder.getView(R.id.tv_user_name) : null;
        final TextView textView2 = baseViewHolder != null ? (TextView) baseViewHolder.getView(R.id.tv_invite) : null;
        if (headPortraitView != null) {
            headPortraitView.d(item);
        }
        if (textView != null) {
            textView.setText(item.getNickName());
        }
        if (textView2 != null) {
            if (item.getLiveFlag()) {
                Context context = this.mContext;
                if (context != null) {
                    textView2.setText(context.getString(R.string.live_hello_in_live));
                    textView2.setTextColor(ContextCompat.getColor(context, R.color.text_hello_color_tip));
                }
                textView2.setPadding(0, 0, 0, 0);
                textView2.setBackground(null);
            } else {
                setTextView(item.isInvite() == 1, textView2);
            }
        }
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.adapter.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HelloGiftNewUserAdapter.m492convert$lambda2(HelloStarSummon.this, this, i9, textView2, view);
                }
            });
        }
    }
}

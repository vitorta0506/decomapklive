package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.beans.EventMessageModel;
import com.guochao.faceshow.aaspring.modulars.chat.models.SystemNotifyMessage;
import com.guochao.faceshow.databinding.ActivityEventNotifyBinding;
import com.guochao.faceshow.systemassistant.adapter.AssistantChatAdapter;
import com.guochao.faceshow.systemassistant.data.AssistantMsgResult;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMMessageListGetOption;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J \u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00062\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002J\u0012\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016R(\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u000f\u0010\u0010\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "msg", "", "loadMsg", "", "Lcom/tencent/imsdk/v2/V2TIMMessage;", "p0", "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;", "convertMessages", "Landroid/os/Bundle;", "savedInstanceSate", "initView", "Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/ActivityEventNotifyBinding;)V", "getViewBinding$annotations", "()V", "Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;", "adapter$delegate", "Lkotlin/Lazy;", "getAdapter", "()Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;", "adapter", "<init>", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class EventNotifyActivity extends GCCoreActivity {
    @NotNull
    private final Lazy adapter$delegate;
    public ActivityEventNotifyBinding viewBinding;

    public EventNotifyActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AssistantChatAdapter>() { // from class: com.guochao.faceshow.aaspring.modulars.chat.activity.EventNotifyActivity$adapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AssistantChatAdapter invoke() {
                return new AssistantChatAdapter(EventNotifyActivity.this);
            }
        });
        this.adapter$delegate = lazy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<AssistantMsgResult.AssistantMessage> convertMessages(List<V2TIMMessage> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (V2TIMMessage v2TIMMessage : list) {
            o7.a m10 = com.guochao.faceshow.aaspring.modulars.chat.models.b.m(v2TIMMessage);
            if (m10 instanceof SystemNotifyMessage) {
                AssistantMsgResult.AssistantMessage assistantMessage = new AssistantMsgResult.AssistantMessage();
                assistantMessage.FromAccount = v2TIMMessage.getSender();
                assistantMessage.ToAccount = v2TIMMessage.getUserID();
                ArrayList arrayList2 = new ArrayList();
                EventMessageModel eventMessageModel = ((SystemNotifyMessage) m10).getEventMessageModel();
                if (eventMessageModel != null) {
                    AssistantMsgResult.MsgBodyItem msgBodyItem = new AssistantMsgResult.MsgBodyItem();
                    AssistantMsgResult.MsgContent msgContent = new AssistantMsgResult.MsgContent();
                    AssistantMsgResult.MsgData msgData = new AssistantMsgResult.MsgData();
                    msgData.mMessage = (com.guochao.faceshow.aaspring.modulars.chat.models.a) m10;
                    msgData.Id = eventMessageModel.getId();
                    msgData.Name = eventMessageModel.getName();
                    msgData.MsgId = eventMessageModel.getMsgId();
                    msgData.Text = eventMessageModel.getText();
                    msgData.Image = eventMessageModel.getImage();
                    Integer imageWidth = eventMessageModel.getImageWidth();
                    msgData.ImageWidth = imageWidth != null ? imageWidth.intValue() : 0;
                    Integer imageHeight = eventMessageModel.getImageHeight();
                    msgData.ImageHeight = imageHeight != null ? imageHeight.intValue() : 0;
                    msgData.Url = eventMessageModel.getUrl();
                    msgData.URL = eventMessageModel.getUrl();
                    msgData.Type = eventMessageModel.getType();
                    msgData.MsgTimestamp = String.valueOf(v2TIMMessage.getTimestamp());
                    Boolean shareable = eventMessageModel.getShareable();
                    msgData.shareable = shareable != null ? shareable.booleanValue() : true;
                    msgContent.Data = msgData;
                    msgBodyItem.MsgContent = msgContent;
                    arrayList2.add(msgBodyItem);
                }
                assistantMessage.MsgBody = arrayList2;
                arrayList.add(assistantMessage);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AssistantChatAdapter getAdapter() {
        return (AssistantChatAdapter) this.adapter$delegate.getValue();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadMsg(final com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        V2TIMMessageListGetOption v2TIMMessageListGetOption = new V2TIMMessageListGetOption();
        v2TIMMessageListGetOption.setGetType(1);
        v2TIMMessageListGetOption.setCount(10);
        v2TIMMessageListGetOption.setUserID("-10000");
        v2TIMMessageListGetOption.setLastMsg(aVar != null ? aVar.message : null);
        V2TIMManager.getMessageManager().getHistoryMessageList(v2TIMMessageListGetOption, new V2TIMValueCallback<List<V2TIMMessage>>() { // from class: com.guochao.faceshow.aaspring.modulars.chat.activity.EventNotifyActivity$loadMsg$1
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, @Nullable String str) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(@Nullable List<V2TIMMessage> list) {
                List<AssistantMsgResult.AssistantMessage> convertMessages;
                AssistantChatAdapter adapter;
                AssistantChatAdapter adapter2;
                convertMessages = EventNotifyActivity.this.convertMessages(list);
                if (convertMessages != null) {
                    CollectionsKt___CollectionsJvmKt.reverse(convertMessages);
                }
                if (aVar == null) {
                    adapter2 = EventNotifyActivity.this.getAdapter();
                    adapter2.setData(convertMessages);
                    boolean z10 = false;
                    if (convertMessages != null && (!convertMessages.isEmpty())) {
                        z10 = true;
                    }
                    if (z10) {
                        EventNotifyActivity.this.getViewBinding().recyclerView.scrollToPosition(convertMessages.size() - 1);
                        return;
                    }
                    return;
                }
                adapter = EventNotifyActivity.this.getAdapter();
                adapter.addData(convertMessages);
            }
        });
    }

    @NotNull
    public final ActivityEventNotifyBinding getViewBinding() {
        ActivityEventNotifyBinding activityEventNotifyBinding = this.viewBinding;
        if (activityEventNotifyBinding != null) {
            return activityEventNotifyBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(R.string.Activity_reminders);
        getViewBinding().recyclerView.setAdapter(getAdapter());
        loadMsg(null);
        getViewBinding().recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.guochao.faceshow.aaspring.modulars.chat.activity.EventNotifyActivity$initView$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int i9) {
                AssistantChatAdapter adapter;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, i9);
                if (i9 != 0 || recyclerView.findViewHolderForAdapterPosition(0) == null) {
                    return;
                }
                EventNotifyActivity eventNotifyActivity = EventNotifyActivity.this;
                adapter = eventNotifyActivity.getAdapter();
                eventNotifyActivity.loadMsg(adapter.f().mMessage);
            }
        });
        V2TIMManager.getMessageManager().markC2CMessageAsRead("-10000", new V2TIMCallback() { // from class: com.guochao.faceshow.aaspring.modulars.chat.activity.EventNotifyActivity$initView$2
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, @Nullable String str) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
            }
        });
    }

    public final void setViewBinding(@NotNull ActivityEventNotifyBinding activityEventNotifyBinding) {
        Intrinsics.checkNotNullParameter(activityEventNotifyBinding, "<set-?>");
        this.viewBinding = activityEventNotifyBinding;
    }
}

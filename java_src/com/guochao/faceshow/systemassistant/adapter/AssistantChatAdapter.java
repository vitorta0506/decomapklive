package com.guochao.faceshow.systemassistant.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.systemassistant.adapter.UserBaseMessageHolder;
import com.guochao.faceshow.systemassistant.data.AssistantMsgResult;
import com.guochao.faceshow.systemassistant.data.AssistantUserInfo;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class AssistantChatAdapter extends RecyclerView.Adapter {

    /* renamed from: a  reason: collision with root package name */
    private AssistantUserInfo.OfficialUserData f26347a;

    /* renamed from: b  reason: collision with root package name */
    private String f26348b;

    /* renamed from: c  reason: collision with root package name */
    private List<AssistantMsgResult.MsgData> f26349c;

    /* renamed from: d  reason: collision with root package name */
    private Context f26350d;

    /* renamed from: e  reason: collision with root package name */
    private UserBaseMessageHolder.b f26351e;

    public AssistantChatAdapter(Context context) {
        this(context, null);
    }

    private AssistantMsgResult.MsgBodyItem d(AssistantMsgResult.AssistantMessage assistantMessage) {
        List<AssistantMsgResult.MsgBodyItem> list;
        AssistantMsgResult.MsgBodyItem msgBodyItem;
        AssistantMsgResult.MsgContent msgContent;
        AssistantMsgResult.MsgData msgData;
        if (assistantMessage == null || (list = assistantMessage.MsgBody) == null || list.size() == 0 || (msgBodyItem = assistantMessage.MsgBody.get(0)) == null || (msgContent = msgBodyItem.MsgContent) == null || (msgData = msgContent.Data) == null) {
            return null;
        }
        msgData.FromAccount = assistantMessage.FromAccount;
        msgData.ToAccount = assistantMessage.ToAccount;
        msgData.assistantOfficialUser = this.f26347a;
        int i9 = msgData.Type;
        if (i9 == 205) {
            msgData.titleIconResId = R.mipmap.dog;
        } else if (i9 == 204) {
            msgData.titleIconResId = R.mipmap.yellow_jing;
        }
        if (TextUtils.isEmpty(this.f26348b)) {
            return null;
        }
        if (this.f26348b.equals(assistantMessage.FromAccount)) {
            msgBodyItem.MsgContent.Data.isSelf = true;
        } else {
            msgBodyItem.MsgContent.Data.isSelf = false;
        }
        return msgBodyItem;
    }

    private int e(List<AssistantMsgResult.AssistantMessage> list, boolean z10) {
        if (list == null || list.size() == 0) {
            return 0;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            AssistantMsgResult.MsgBodyItem d10 = d(list.get(i10));
            if (d10 != null) {
                i9++;
                if (z10) {
                    this.f26349c.add(i10, d10.MsgContent.Data);
                } else {
                    this.f26349c.add(d10.MsgContent.Data);
                }
            }
        }
        return i9;
    }

    public void a(AssistantMsgResult.AssistantMessage assistantMessage) {
        AssistantMsgResult.MsgBodyItem d10;
        if (assistantMessage == null || (d10 = d(assistantMessage)) == null) {
            return;
        }
        this.f26349c.add(d10.MsgContent.Data);
        notifyDataSetChanged();
    }

    public void addData(List<AssistantMsgResult.AssistantMessage> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        int e10 = e(list, true);
        if (this.f26349c.size() <= 0 || e10 == 0) {
            return;
        }
        notifyItemRangeInserted(0, e10);
    }

    public void b(AssistantMsgResult.MsgData msgData) {
        if (msgData == null) {
            return;
        }
        this.f26349c.add(msgData);
        notifyItemInserted(this.f26349c.size() == 0 ? 0 : this.f26349c.size() - 1);
        notifyItemChanged(this.f26349c.size() != 0 ? this.f26349c.size() - 1 : 0);
    }

    public void c(int i9, int i10, boolean z10) {
        if (i9 == -1) {
            i9 = this.f26349c.size() - 1;
        }
        this.f26349c.get(i9).sendStatus = i10;
        if (z10) {
            notifyItemChanged(i9);
        }
    }

    public AssistantMsgResult.MsgData f() {
        List<AssistantMsgResult.MsgData> list = this.f26349c;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.f26349c.get(0);
    }

    public AssistantMsgResult.MsgData g(int i9) {
        List<AssistantMsgResult.MsgData> list = this.f26349c;
        if (list == null || i9 >= list.size()) {
            return null;
        }
        return this.f26349c.get(i9);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<AssistantMsgResult.MsgData> list = this.f26349c;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        AssistantMsgResult.MsgData g10 = g(i9);
        if (g10 == null) {
            return -1;
        }
        return g10.Type;
    }

    public void h(AssistantUserInfo.OfficialUserData officialUserData) {
        this.f26347a = officialUserData;
    }

    public void i(UserBaseMessageHolder.b bVar) {
        this.f26351e = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9) {
        AssistantMsgResult.MsgData g10 = g(i9);
        if (g10 == null) {
            return;
        }
        int itemViewType = getItemViewType(i9);
        if (itemViewType != 201) {
            if (itemViewType != 323 && itemViewType != 324) {
                switch (itemViewType) {
                    case 203:
                        break;
                    case 204:
                    case 205:
                    case 207:
                        ((TopicMultiMessageHolder) viewHolder).e(g10, i9);
                        return;
                    case 206:
                        break;
                    case 208:
                        ((b) viewHolder).l(g10, i9);
                        return;
                    default:
                        ((UserBaseMessageHolder) viewHolder).f(g10, i9);
                        return;
                }
            }
            ((BigPicMessageHolder) viewHolder).d(g10, i9);
            return;
        }
        UserBaseMessageHolder userBaseMessageHolder = (UserBaseMessageHolder) viewHolder;
        userBaseMessageHolder.f(g10, i9);
        userBaseMessageHolder.g(this.f26351e);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        View inflate;
        RecyclerView.ViewHolder bVar;
        if (i9 != 201) {
            if (i9 != 323 && i9 != 324) {
                switch (i9) {
                    case 203:
                        inflate = LayoutInflater.from(this.f26350d).inflate(R.layout.assistant_chat_text_message, viewGroup, false);
                        bVar = new a(inflate);
                        break;
                    case 204:
                    case 205:
                    case 207:
                        inflate = LayoutInflater.from(this.f26350d).inflate(R.layout.assistant_chat_item_topic_multi_message, viewGroup, false);
                        bVar = new TopicMultiMessageHolder(inflate);
                        break;
                    case 206:
                        break;
                    case 208:
                        inflate = LayoutInflater.from(this.f26350d).inflate(R.layout.assistant_chat_text_message, viewGroup, false);
                        bVar = new b(inflate);
                        break;
                    default:
                        inflate = LayoutInflater.from(this.f26350d).inflate(R.layout.assistant_chat_text_message, viewGroup, false);
                        bVar = new b(inflate);
                        break;
                }
            }
            inflate = LayoutInflater.from(this.f26350d).inflate(R.layout.assistant_chat_item_big_pic_message, viewGroup, false);
            bVar = new BigPicMessageHolder(inflate);
        } else {
            inflate = LayoutInflater.from(this.f26350d).inflate(R.layout.assistant_chat_text_message, viewGroup, false);
            bVar = new b(inflate);
        }
        if (inflate != null) {
            inflate.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        }
        return bVar;
    }

    public void setData(List<AssistantMsgResult.AssistantMessage> list) {
        this.f26349c.clear();
        e(list, false);
        if (this.f26349c.size() > 0) {
            notifyDataSetChanged();
        }
    }

    public AssistantChatAdapter(Context context, List<AssistantMsgResult.AssistantMessage> list) {
        this.f26350d = context;
        this.f26348b = SpUtils.getStr(context, Contants.USER_ID);
        this.f26349c = new ArrayList();
        e(list, false);
    }
}

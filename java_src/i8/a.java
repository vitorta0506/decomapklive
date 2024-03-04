package i8;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.DressPresentViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.FaceMessageViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.GiftMessageViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.ImageMessageHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.LiveGameInviteViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.LiveHelloStartInviteViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.LiveShareViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.MvpMessageViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.TextMessageViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.TextTranslateMessageViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.TipsMessageViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.VideoMessageHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.VoiceMessageViewHolder;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCMessageHolder;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class a {
    private static void a(ViewGroup viewGroup) {
        viewGroup.setBackground(null);
        viewGroup.setPadding(0, 0, 0, 0);
    }

    private static View b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.list_item_message_text_other, viewGroup, false);
    }

    private static View c(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.list_item_message_text_self, viewGroup, false);
    }

    public static View d(Context context, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View b10 = b(layoutInflater, viewGroup);
        layoutInflater.inflate(R.layout.layout_inputting, (ViewGroup) b10.findViewById(R.id.message_content), true);
        return b10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v30, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v32, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v33, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v35, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v36, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v38, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v39, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v41, types: [android.view.View] */
    public static BaseViewHolder e(Context context, LayoutInflater layoutInflater, ViewGroup viewGroup, int i9) {
        int dp2px = DensityUtil.dp2px(10.0f);
        switch (i9) {
            case 1:
                View c10 = c(layoutInflater, viewGroup);
                ViewGroup viewGroup2 = (ViewGroup) c10.findViewById(R.id.message_content);
                viewGroup2.setPadding(dp2px, dp2px, dp2px, dp2px);
                viewGroup2.addView(layoutInflater.inflate(R.layout.layout_chat_tv_right, (ViewGroup) c10, false));
                return new TextMessageViewHolder(context, c10);
            case 2:
                View b10 = b(layoutInflater, viewGroup);
                ViewGroup viewGroup3 = (ViewGroup) b10.findViewById(R.id.message_content);
                viewGroup3.setPadding(dp2px, dp2px, dp2px, dp2px);
                viewGroup3.addView(layoutInflater.inflate(R.layout.layout_chat_tv_left, (ViewGroup) b10, false));
                return new TextMessageViewHolder(context, b10);
            case 3:
                View c11 = c(layoutInflater, viewGroup);
                ViewGroup viewGroup4 = (ViewGroup) c11.findViewById(R.id.message_content);
                viewGroup4.addView(layoutInflater.inflate(R.layout.list_item_message_imageview, viewGroup4, false));
                return new ImageMessageHolder(context, c11);
            case 4:
                View b11 = b(layoutInflater, viewGroup);
                ViewGroup viewGroup5 = (ViewGroup) b11.findViewById(R.id.message_content);
                viewGroup5.addView(layoutInflater.inflate(R.layout.list_item_message_imageview, viewGroup5, false));
                return new ImageMessageHolder(context, b11);
            case 5:
                View b12 = b(layoutInflater, viewGroup);
                ViewGroup viewGroup6 = (ViewGroup) b12.findViewById(R.id.message_content);
                viewGroup6.removeAllViews();
                viewGroup6.addView(LayoutInflater.from(context).inflate(R.layout.layout_gift_info_left_panel, viewGroup6, false));
                a(viewGroup6);
                return new GiftMessageViewHolder(context, b12);
            case 6:
                View c12 = c(layoutInflater, viewGroup);
                ViewGroup viewGroup7 = (ViewGroup) c12.findViewById(R.id.message_content);
                viewGroup7.removeAllViews();
                viewGroup7.addView(LayoutInflater.from(context).inflate(R.layout.layout_gift_info_left_panel, viewGroup7, false));
                a(viewGroup7);
                return new GiftMessageViewHolder(context, c12);
            case 7:
            case 8:
                return new TipsMessageViewHolder(context, layoutInflater.inflate(R.layout.list_item_system_message, viewGroup, false));
            case 9:
            case 10:
            default:
                return new BaseViewHolder(layoutInflater.inflate(R.layout.list_item_system_message, viewGroup, false));
            case 11:
                View c13 = c(layoutInflater, viewGroup);
                ViewGroup viewGroup8 = (ViewGroup) c13.findViewById(R.id.message_content);
                viewGroup8.setPadding(0, 0, 0, 0);
                f(context, viewGroup8, true);
                return new VoiceMessageViewHolder(context, c13);
            case 12:
                View b13 = b(layoutInflater, viewGroup);
                ViewGroup viewGroup9 = (ViewGroup) b13.findViewById(R.id.message_content);
                viewGroup9.setPadding(0, 0, 0, 0);
                f(context, viewGroup9, false);
                return new VoiceMessageViewHolder(context, b13);
            case 13:
                View c14 = c(layoutInflater, viewGroup);
                ViewGroup viewGroup10 = (ViewGroup) c14.findViewById(R.id.message_content);
                viewGroup10.setBackground(null);
                layoutInflater.inflate(R.layout.layout_video_message_self, viewGroup10, true);
                a(viewGroup10);
                return new VideoMessageHolder(context, c14);
            case 14:
                View b14 = b(layoutInflater, viewGroup);
                ViewGroup viewGroup11 = (ViewGroup) b14.findViewById(R.id.message_content);
                viewGroup11.setBackground(null);
                a(viewGroup11);
                layoutInflater.inflate(R.layout.layout_video_message_self, viewGroup11, true);
                return new VideoMessageHolder(context, b14);
            case 15:
                View c15 = c(layoutInflater, viewGroup);
                ViewGroup viewGroup12 = (ViewGroup) c15.findViewById(R.id.message_content);
                ImageView imageView = new ImageView(context);
                imageView.setId(R.id.img);
                viewGroup12.addView(imageView);
                a(viewGroup12);
                return new FaceMessageViewHolder(context, c15);
            case 16:
                View b15 = b(layoutInflater, viewGroup);
                ViewGroup viewGroup13 = (ViewGroup) b15.findViewById(R.id.message_content);
                ImageView imageView2 = new ImageView(context);
                imageView2.setId(R.id.img);
                viewGroup13.addView(imageView2);
                a(viewGroup13);
                return new FaceMessageViewHolder(context, b15);
            case 17:
                View c16 = c(layoutInflater, viewGroup);
                ViewGroup viewGroup14 = (ViewGroup) c16.findViewById(R.id.message_content);
                viewGroup14.setBackgroundResource(R.drawable.chat_bg_right_blue_translate);
                viewGroup14.setPadding(dp2px, dp2px, dp2px, dp2px);
                viewGroup14.setBackgroundTintList(context.getResources().getColorStateList(R.color.color_ugc_app_primary));
                viewGroup14.addView(layoutInflater.inflate(R.layout.layout_chat_tv_right_tranlsate, (ViewGroup) c16, false));
                return new TextTranslateMessageViewHolder(context, c16);
            case 18:
                View b16 = b(layoutInflater, viewGroup);
                ViewGroup viewGroup15 = (ViewGroup) b16.findViewById(R.id.message_content);
                viewGroup15.setBackgroundResource(R.drawable.chat_bg_left_gray_translate);
                viewGroup15.setPadding(dp2px, dp2px, dp2px, dp2px);
                viewGroup15.addView(layoutInflater.inflate(R.layout.layout_chat_tv_left_tranlsate, (ViewGroup) b16, false));
                return new TextTranslateMessageViewHolder(context, b16);
            case 19:
            case 21:
                View c17 = c(layoutInflater, viewGroup);
                ViewGroup viewGroup16 = (ViewGroup) c17.findViewById(R.id.message_content);
                TextView textView = (TextView) layoutInflater.inflate(R.layout.layout_chat_tv_right, (ViewGroup) c17, false);
                textView.setMinHeight(0);
                viewGroup16.setPadding(dp2px, dp2px, dp2px, dp2px);
                viewGroup16.addView(textView);
                ((FrameLayout.LayoutParams) textView.getLayoutParams()).gravity = 16;
                return new TRTCMessageHolder(context, c17);
            case 20:
            case 22:
                View b17 = b(layoutInflater, viewGroup);
                ViewGroup viewGroup17 = (ViewGroup) b17.findViewById(R.id.message_content);
                TextView textView2 = (TextView) layoutInflater.inflate(R.layout.layout_chat_tv_left, (ViewGroup) b17, false);
                textView2.setMinHeight(0);
                viewGroup17.setPadding(dp2px, dp2px, dp2px, dp2px);
                viewGroup17.addView(textView2);
                ((FrameLayout.LayoutParams) textView2.getLayoutParams()).gravity = 16;
                return new TRTCMessageHolder(context, b17);
            case 23:
            case 24:
                ViewGroup b18 = 24 == i9 ? b(layoutInflater, viewGroup) : c(layoutInflater, viewGroup);
                ViewGroup viewGroup18 = (ViewGroup) b18.findViewById(R.id.message_content);
                viewGroup18.setBackground(null);
                viewGroup18.setBackgroundTintList(null);
                viewGroup18.setPadding(0, 0, 0, 0);
                viewGroup18.addView(layoutInflater.inflate(24 == i9 ? R.layout.layout_chat_game_invite_other : R.layout.layout_chat_game_invite_self, b18, false));
                return new LiveGameInviteViewHolder(context, b18);
            case 25:
            case 26:
                ViewGroup b19 = 26 == i9 ? b(layoutInflater, viewGroup) : c(layoutInflater, viewGroup);
                ViewGroup viewGroup19 = (ViewGroup) b19.findViewById(R.id.message_content);
                viewGroup19.setBackground(null);
                viewGroup19.setBackgroundTintList(null);
                viewGroup19.setPadding(0, 0, 0, 0);
                viewGroup19.addView(layoutInflater.inflate(R.layout.layout_chat_live_share_self, b19, false));
                return new LiveShareViewHolder(context, b19);
            case 27:
            case 28:
                ViewGroup b20 = 28 == i9 ? b(layoutInflater, viewGroup) : c(layoutInflater, viewGroup);
                ViewGroup viewGroup20 = (ViewGroup) b20.findViewById(R.id.message_content);
                a(viewGroup20);
                viewGroup20.addView(layoutInflater.inflate(28 == i9 ? R.layout.layout_chat_dress_present_other : R.layout.layout_chat_dress_present_self, b20, false));
                return new DressPresentViewHolder(context, b20);
            case 29:
            case 30:
                ViewGroup b21 = 30 == i9 ? b(layoutInflater, viewGroup) : c(layoutInflater, viewGroup);
                ViewGroup viewGroup21 = (ViewGroup) b21.findViewById(R.id.message_content);
                viewGroup21.setPadding(0, 0, 0, 0);
                viewGroup21.addView(layoutInflater.inflate(R.layout.layout_hello_star_live_invite_self, b21, false));
                return new LiveHelloStartInviteViewHolder(context, b21);
            case 31:
                View b22 = b(layoutInflater, viewGroup);
                ((LinearLayout) b22.findViewById(R.id.paddingLL)).setPadding(0, 0, DensityUtil.dp2px(20.0f), 0);
                View inflate = layoutInflater.inflate(R.layout.list_mvp_chat_level, (ViewGroup) b22, false);
                ViewGroup viewGroup22 = (ViewGroup) b22.findViewById(R.id.message_content);
                viewGroup22.addView(inflate);
                a(viewGroup22);
                return new MvpMessageViewHolder(context, b22);
        }
    }

    private static View f(Context context, ViewGroup viewGroup, boolean z10) {
        if (z10) {
            viewGroup.addView(LayoutInflater.from(context).inflate(R.layout.list_item_message_voice, viewGroup, false));
        } else {
            viewGroup.addView(LayoutInflater.from(context).inflate(R.layout.list_item_message_voice_other, viewGroup, false));
        }
        return viewGroup;
    }
}

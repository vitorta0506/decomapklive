package com.guochao.faceshow.aaspring.modulars.live.game;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class JoinGameDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private a f19413a;

    /* renamed from: b  reason: collision with root package name */
    private View f19414b;

    /* loaded from: classes3.dex */
    public interface a {
        void onConfirm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S1(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T1(View view) {
        dismiss();
        if (this.f19414b.isSelected()) {
            Context context = view.getContext();
            SpUtils.setBool(context, "NoMoreShowGamePay" + getCurrentUser().getUserId(), true);
        }
        a aVar = this.f19413a;
        if (aVar != null) {
            aVar.onConfirm();
        }
    }

    public static CharSequence U1(int i9, Context context, int i10, float f10) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) context.getString(R.string.minigame_join_alert, "{diamond}", String.valueOf(i10)));
        Drawable drawable = ContextCompat.getDrawable(context, i9 == 0 ? R.mipmap.icon_game_diamond : R.mipmap.icon_game_shuijing);
        if (drawable == null) {
            return "";
        }
        int minimumWidth = drawable.getMinimumWidth();
        int minimumHeight = drawable.getMinimumHeight();
        TextView textView = new TextView(context);
        textView.setTextSize(2, f10);
        textView.measure(View.MeasureSpec.getMode(0), View.MeasureSpec.getMode(0));
        float measuredHeight = ((textView.getMeasuredHeight() - textView.getCompoundPaddingTop()) - textView.getCompoundPaddingBottom()) * 1.1f;
        drawable.setBounds(0, -((int) (0.05f * measuredHeight)), (int) ((minimumWidth * measuredHeight) / minimumHeight), (int) measuredHeight);
        com.guochao.faceshow.views.r rVar = new com.guochao.faceshow.views.r(drawable);
        int indexOf = spannableStringBuilder.toString().indexOf("{diamond}");
        spannableStringBuilder.setSpan(rVar, indexOf, indexOf + 9, 17);
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1(View view) {
        view.setSelected(!view.isSelected());
    }

    public static JoinGameDialog W1(FragmentManager fragmentManager, int i9, a aVar, int i10) {
        BaseApplication baseApplication = BaseApplication.getInstance();
        if (SpUtils.getBool(baseApplication, "NoMoreShowGamePay" + b8.e.g().getUserId(), false)) {
            if (aVar != null) {
                aVar.onConfirm();
                return null;
            }
            return null;
        }
        JoinGameDialog joinGameDialog = new JoinGameDialog();
        MemoryCache.getInstance().put("JoinGameDialog_OnConfirmClickListener", aVar);
        Bundle bundle = new Bundle();
        bundle.putInt("diamondCount", i9);
        bundle.putInt(Contants.CURRENT_COUNTRY_FLAG, i10);
        joinGameDialog.setArguments(bundle);
        joinGameDialog.show(fragmentManager, JoinGameDialog.class.getSimpleName());
        return joinGameDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_join_game;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getContext() == null) {
            return;
        }
        TextView textView = (TextView) view.findViewById(R.id.title);
        view.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                JoinGameDialog.this.T1(view2);
            }
        });
        view.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                JoinGameDialog.this.S1(view2);
            }
        });
        View findViewById = view.findViewById(R.id.no_more_show);
        this.f19414b = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                JoinGameDialog.this.V1(view2);
            }
        });
        this.f19414b.callOnClick();
        textView.setText("");
        this.f19413a = (a) MemoryCache.getInstance().remove("JoinGameDialog_OnConfirmClickListener");
        Bundle arguments = getArguments();
        if (arguments != null) {
            int i9 = arguments.getInt("diamondCount", -1);
            int i10 = arguments.getInt(Contants.CURRENT_COUNTRY_FLAG, 0);
            if (i9 > 0) {
                textView.setText(U1(i10, getContext(), i9, 16.0f));
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog);
        createBottomDialog.setCanceledOnTouchOutside(false);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        return createBottomDialog;
    }
}

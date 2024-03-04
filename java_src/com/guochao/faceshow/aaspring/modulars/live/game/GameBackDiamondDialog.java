package com.guochao.faceshow.aaspring.modulars.live.game;

import android.app.Dialog;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class GameBackDiamondDialog extends BaseDialogFragment {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R1(View view) {
        dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S1(View view) {
        dismiss();
    }

    public static boolean T1(FragmentManager fragmentManager, int i9, int i10) {
        GameBackDiamondDialog gameBackDiamondDialog = new GameBackDiamondDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("diamondCount", i9);
        bundle.putInt(Contants.CURRENT_COUNTRY_FLAG, i10);
        gameBackDiamondDialog.setArguments(bundle);
        gameBackDiamondDialog.show(fragmentManager, GameBackDiamondDialog.class.getSimpleName());
        return true;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_game_back_diamond;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        TextView textView = (TextView) view.findViewById(R.id.fee_back);
        if (getContext() == null) {
            return;
        }
        view.findViewById(R.id.bg_view).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GameBackDiamondDialog.this.R1(view2);
            }
        });
        Bundle arguments = getArguments();
        if (arguments != null) {
            int i9 = arguments.getInt("diamondCount", -1);
            int i10 = arguments.getInt(Contants.CURRENT_COUNTRY_FLAG, 0);
            if (i9 > 0) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) getString(R.string.minigame_fee_back, "{diamond}", String.valueOf(i9)));
                Drawable drawable = ContextCompat.getDrawable(getContext(), i10 == 0 ? R.mipmap.icon_game_diamond : R.mipmap.icon_game_shuijing);
                if (drawable == null) {
                    return;
                }
                int minimumWidth = drawable.getMinimumWidth();
                int minimumHeight = drawable.getMinimumHeight();
                textView.measure(0, 0);
                float measuredHeight = ((textView.getMeasuredHeight() - textView.getCompoundPaddingTop()) - textView.getCompoundPaddingBottom()) * 1.1f;
                drawable.setBounds(0, -((int) (0.05f * measuredHeight)), (int) ((minimumWidth * measuredHeight) / minimumHeight), (int) measuredHeight);
                com.guochao.faceshow.views.r rVar = new com.guochao.faceshow.views.r(drawable);
                int indexOf = spannableStringBuilder.toString().indexOf("{diamond}");
                spannableStringBuilder.setSpan(rVar, indexOf, indexOf + 9, 17);
                textView.setText(spannableStringBuilder);
                view.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.l
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        GameBackDiamondDialog.this.S1(view2);
                    }
                });
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.setCanceledOnTouchOutside(false);
        createBottomDialog.getWindow().setDimAmount(0.0f);
        return createBottomDialog;
    }
}

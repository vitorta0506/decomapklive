package androidx.databinding.adapters;

import androidx.annotation.RestrictTo;
import androidx.cardview.widget.CardView;
import androidx.databinding.BindingAdapter;
import androidx.databinding.BindingMethod;
import androidx.databinding.BindingMethods;
@BindingMethods({@BindingMethod(attribute = "cardCornerRadius", method = "setRadius", type = CardView.class), @BindingMethod(attribute = "cardMaxElevation", method = "setMaxCardElevation", type = CardView.class), @BindingMethod(attribute = "cardPreventCornerOverlap", method = "setPreventCornerOverlap", type = CardView.class), @BindingMethod(attribute = "cardUseCompatPadding", method = "setUseCompatPadding", type = CardView.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class CardViewBindingAdapter {
    @BindingAdapter({"contentPadding"})
    public static void setContentPadding(CardView cardView, int i9) {
        cardView.setContentPadding(i9, i9, i9, i9);
    }

    @BindingAdapter({"contentPaddingBottom"})
    public static void setContentPaddingBottom(CardView cardView, int i9) {
        cardView.setContentPadding(cardView.getContentPaddingLeft(), cardView.getContentPaddingTop(), cardView.getContentPaddingRight(), i9);
    }

    @BindingAdapter({"contentPaddingLeft"})
    public static void setContentPaddingLeft(CardView cardView, int i9) {
        cardView.setContentPadding(i9, cardView.getContentPaddingTop(), cardView.getContentPaddingRight(), cardView.getContentPaddingBottom());
    }

    @BindingAdapter({"contentPaddingRight"})
    public static void setContentPaddingRight(CardView cardView, int i9) {
        cardView.setContentPadding(cardView.getContentPaddingLeft(), cardView.getContentPaddingTop(), i9, cardView.getContentPaddingBottom());
    }

    @BindingAdapter({"contentPaddingTop"})
    public static void setContentPaddingTop(CardView cardView, int i9) {
        cardView.setContentPadding(cardView.getContentPaddingLeft(), i9, cardView.getContentPaddingRight(), cardView.getContentPaddingBottom());
    }
}

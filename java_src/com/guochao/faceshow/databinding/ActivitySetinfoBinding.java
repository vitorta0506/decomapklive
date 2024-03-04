package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.mine.picdrag.view.PictureEditView;
/* loaded from: classes2.dex */
public final class ActivitySetinfoBinding implements ViewBinding {
    @NonNull
    public final LinearLayout animal;
    @NonNull
    public final TextView autograph;
    @NonNull
    public final TextView birthday;
    @NonNull
    public final LinearLayout checkHeadTips;
    @NonNull
    public final TextView city;
    @NonNull
    public final ImageView closeTips;
    @NonNull
    public final LinearLayout constellation;
    @NonNull
    public final LinearLayout editAddress;
    @NonNull
    public final LinearLayout editAutograph;
    @NonNull
    public final LinearLayout editBirthday;
    @NonNull
    public final LinearLayout editEmotionalState;
    @NonNull
    public final LinearLayout editFriendshipIntention;
    @NonNull
    public final LinearLayout editGender;
    @NonNull
    public final LinearLayout editHeight;
    @NonNull
    public final LinearLayout editHobby;
    @NonNull
    public final LinearLayout editLanguage;
    @NonNull
    public final LinearLayout editNickNme;
    @NonNull
    public final LinearLayout editOccupation;
    @NonNull
    public final LinearLayout editWeight;
    @NonNull
    public final TextView emotionalState;
    @NonNull
    public final TextView friendshipIntention;
    @NonNull
    public final TextView gender;
    @NonNull
    public final TextView height;
    @NonNull
    public final TextView hobby;
    @NonNull
    public final LinearLayout mainLayout;
    @NonNull
    public final TextView masteryOfLanguage;
    @NonNull
    public final TextView nickname;
    @NonNull
    public final TextView occupation;
    @NonNull
    public final PictureEditView pictureEditView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvAnimal;
    @NonNull
    public final TextView tvAnimalName;
    @NonNull
    public final TextView tvConstellation;
    @NonNull
    public final TextView tvConstellationName;
    @NonNull
    public final View viewAddress;
    @NonNull
    public final View viewAnimal;
    @NonNull
    public final View viewConstellation;
    @NonNull
    public final View viewLanguage;
    @NonNull
    public final TextView weight;

    private ActivitySetinfoBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull LinearLayout linearLayout8, @NonNull LinearLayout linearLayout9, @NonNull LinearLayout linearLayout10, @NonNull LinearLayout linearLayout11, @NonNull LinearLayout linearLayout12, @NonNull LinearLayout linearLayout13, @NonNull LinearLayout linearLayout14, @NonNull LinearLayout linearLayout15, @NonNull LinearLayout linearLayout16, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull LinearLayout linearLayout17, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull PictureEditView pictureEditView, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull TextView textView14, @NonNull TextView textView15, @NonNull View view, @NonNull View view2, @NonNull View view3, @NonNull View view4, @NonNull TextView textView16) {
        this.rootView = linearLayout;
        this.animal = linearLayout2;
        this.autograph = textView;
        this.birthday = textView2;
        this.checkHeadTips = linearLayout3;
        this.city = textView3;
        this.closeTips = imageView;
        this.constellation = linearLayout4;
        this.editAddress = linearLayout5;
        this.editAutograph = linearLayout6;
        this.editBirthday = linearLayout7;
        this.editEmotionalState = linearLayout8;
        this.editFriendshipIntention = linearLayout9;
        this.editGender = linearLayout10;
        this.editHeight = linearLayout11;
        this.editHobby = linearLayout12;
        this.editLanguage = linearLayout13;
        this.editNickNme = linearLayout14;
        this.editOccupation = linearLayout15;
        this.editWeight = linearLayout16;
        this.emotionalState = textView4;
        this.friendshipIntention = textView5;
        this.gender = textView6;
        this.height = textView7;
        this.hobby = textView8;
        this.mainLayout = linearLayout17;
        this.masteryOfLanguage = textView9;
        this.nickname = textView10;
        this.occupation = textView11;
        this.pictureEditView = pictureEditView;
        this.tvAnimal = textView12;
        this.tvAnimalName = textView13;
        this.tvConstellation = textView14;
        this.tvConstellationName = textView15;
        this.viewAddress = view;
        this.viewAnimal = view2;
        this.viewConstellation = view3;
        this.viewLanguage = view4;
        this.weight = textView16;
    }

    @NonNull
    public static ActivitySetinfoBinding bind(@NonNull View view) {
        int i9 = R.id.animal;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.animal);
        if (linearLayout != null) {
            i9 = R.id.autograph;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.autograph);
            if (textView != null) {
                i9 = R.id.birthday;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.birthday);
                if (textView2 != null) {
                    i9 = R.id.check_head_tips;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.check_head_tips);
                    if (linearLayout2 != null) {
                        i9 = R.id.city;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.city);
                        if (textView3 != null) {
                            i9 = R.id.close_tips;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close_tips);
                            if (imageView != null) {
                                i9 = R.id.constellation;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.constellation);
                                if (linearLayout3 != null) {
                                    i9 = R.id.editAddress;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editAddress);
                                    if (linearLayout4 != null) {
                                        i9 = R.id.editAutograph;
                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editAutograph);
                                        if (linearLayout5 != null) {
                                            i9 = R.id.editBirthday;
                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editBirthday);
                                            if (linearLayout6 != null) {
                                                i9 = R.id.editEmotionalState;
                                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editEmotionalState);
                                                if (linearLayout7 != null) {
                                                    i9 = R.id.editFriendshipIntention;
                                                    LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editFriendshipIntention);
                                                    if (linearLayout8 != null) {
                                                        i9 = R.id.editGender;
                                                        LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editGender);
                                                        if (linearLayout9 != null) {
                                                            i9 = R.id.editHeight;
                                                            LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editHeight);
                                                            if (linearLayout10 != null) {
                                                                i9 = R.id.editHobby;
                                                                LinearLayout linearLayout11 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editHobby);
                                                                if (linearLayout11 != null) {
                                                                    i9 = R.id.editLanguage;
                                                                    LinearLayout linearLayout12 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editLanguage);
                                                                    if (linearLayout12 != null) {
                                                                        i9 = R.id.editNickNme;
                                                                        LinearLayout linearLayout13 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editNickNme);
                                                                        if (linearLayout13 != null) {
                                                                            i9 = R.id.editOccupation;
                                                                            LinearLayout linearLayout14 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editOccupation);
                                                                            if (linearLayout14 != null) {
                                                                                i9 = R.id.editWeight;
                                                                                LinearLayout linearLayout15 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editWeight);
                                                                                if (linearLayout15 != null) {
                                                                                    i9 = R.id.emotional_state;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.emotional_state);
                                                                                    if (textView4 != null) {
                                                                                        i9 = R.id.friendship_intention;
                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.friendship_intention);
                                                                                        if (textView5 != null) {
                                                                                            i9 = R.id.gender;
                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.gender);
                                                                                            if (textView6 != null) {
                                                                                                i9 = R.id.height;
                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.height);
                                                                                                if (textView7 != null) {
                                                                                                    i9 = R.id.hobby;
                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.hobby);
                                                                                                    if (textView8 != null) {
                                                                                                        LinearLayout linearLayout16 = (LinearLayout) view;
                                                                                                        i9 = R.id.mastery_of_language;
                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.mastery_of_language);
                                                                                                        if (textView9 != null) {
                                                                                                            i9 = R.id.nickname;
                                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
                                                                                                            if (textView10 != null) {
                                                                                                                i9 = R.id.occupation;
                                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.occupation);
                                                                                                                if (textView11 != null) {
                                                                                                                    i9 = R.id.picture_edit_view;
                                                                                                                    PictureEditView pictureEditView = (PictureEditView) ViewBindings.findChildViewById(view, R.id.picture_edit_view);
                                                                                                                    if (pictureEditView != null) {
                                                                                                                        i9 = R.id.tv_animal;
                                                                                                                        TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_animal);
                                                                                                                        if (textView12 != null) {
                                                                                                                            i9 = R.id.tv_animal_name;
                                                                                                                            TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_animal_name);
                                                                                                                            if (textView13 != null) {
                                                                                                                                i9 = R.id.tv_constellation;
                                                                                                                                TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_constellation);
                                                                                                                                if (textView14 != null) {
                                                                                                                                    i9 = R.id.tv_constellation_name;
                                                                                                                                    TextView textView15 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_constellation_name);
                                                                                                                                    if (textView15 != null) {
                                                                                                                                        i9 = R.id.view_address;
                                                                                                                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_address);
                                                                                                                                        if (findChildViewById != null) {
                                                                                                                                            i9 = R.id.view_animal;
                                                                                                                                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_animal);
                                                                                                                                            if (findChildViewById2 != null) {
                                                                                                                                                i9 = R.id.view_constellation;
                                                                                                                                                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.view_constellation);
                                                                                                                                                if (findChildViewById3 != null) {
                                                                                                                                                    i9 = R.id.view_language;
                                                                                                                                                    View findChildViewById4 = ViewBindings.findChildViewById(view, R.id.view_language);
                                                                                                                                                    if (findChildViewById4 != null) {
                                                                                                                                                        i9 = R.id.weight;
                                                                                                                                                        TextView textView16 = (TextView) ViewBindings.findChildViewById(view, R.id.weight);
                                                                                                                                                        if (textView16 != null) {
                                                                                                                                                            return new ActivitySetinfoBinding(linearLayout16, linearLayout, textView, textView2, linearLayout2, textView3, imageView, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, linearLayout11, linearLayout12, linearLayout13, linearLayout14, linearLayout15, textView4, textView5, textView6, textView7, textView8, linearLayout16, textView9, textView10, textView11, pictureEditView, textView12, textView13, textView14, textView15, findChildViewById, findChildViewById2, findChildViewById3, findChildViewById4, textView16);
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivitySetinfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySetinfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_setinfo, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}

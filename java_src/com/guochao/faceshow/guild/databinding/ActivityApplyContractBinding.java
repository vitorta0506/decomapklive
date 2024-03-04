package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.faceshow.guild.view.ObservableScrollView;
import com.guochao.faceshow.guild.view.RequiredTextView;
import com.guochao.lib_core.databinding.GcBaseTitleBarBinding;
/* loaded from: classes4.dex */
public final class ActivityApplyContractBinding implements ViewBinding {
    @NonNull
    public final LinearLayoutCompat addMasteryOfLanguage;
    @NonNull
    public final TextView agreementTip;
    @NonNull
    public final Button applySign;
    @NonNull
    public final EditText emailNumber;
    @NonNull
    public final EditText etPhone;
    @NonNull
    public final EditText facebookNumber;
    @NonNull
    public final EditText fansNumber;
    @NonNull
    public final EditText instagramNumber;
    @NonNull
    public final EditText invitationCode;
    @NonNull
    public final ImageView ivAgreement;
    @NonNull
    public final ImageView ivNext;
    @NonNull
    public final RecyclerView liveRecordScreen;
    @NonNull
    public final LinearLayout llCountryHide;
    @NonNull
    public final LinearLayoutCompat llMasteryOfLanguage;
    @NonNull
    public final LinearLayout llPhone;
    @NonNull
    public final LinearLayout llWhatsApp;
    @NonNull
    public final TextView masteryOfLanguage;
    @NonNull
    public final EditText monthFlow;
    @NonNull
    public final RecyclerView otherVideoList;
    @NonNull
    public final EditText outSide;
    @NonNull
    public final RecyclerView pictureList;
    @NonNull
    public final RequiredTextView requiredTextView;
    @NonNull
    public final RequiredTextView requiredTextView2;
    @NonNull
    public final AppCompatTextView requiredTextView3;
    @NonNull
    public final TextView requiredTextView4;
    @NonNull
    public final TextView requiredTextView5;
    @NonNull
    public final TextView requiredTextView7;
    @NonNull
    public final TextView requiredTextView8;
    @NonNull
    private final LinearLayoutCompat rootView;
    @NonNull
    public final ImageView rvCountry;
    @NonNull
    public final ObservableScrollView scrollVeiw;
    @NonNull
    public final TextView textView11;
    @NonNull
    public final TextView textView12;
    @NonNull
    public final TextView textView13;
    @NonNull
    public final TextView textView14;
    @NonNull
    public final TextView textView15;
    @NonNull
    public final TextView textView16;
    @NonNull
    public final RequiredTextView textView17;
    @NonNull
    public final GcBaseTitleBarBinding titleBar;
    @NonNull
    public final TextView tvCountry;
    @NonNull
    public final TextView tvPhone;
    @NonNull
    public final TextView tvWhatsAppTip;
    @NonNull
    public final TextView uploadLiveRecordScreen;
    @NonNull
    public final TextView uploadOtherVideo;
    @NonNull
    public final EditText whatsappNumber;

    private ActivityApplyContractBinding(@NonNull LinearLayoutCompat linearLayoutCompat, @NonNull LinearLayoutCompat linearLayoutCompat2, @NonNull TextView textView, @NonNull Button button, @NonNull EditText editText, @NonNull EditText editText2, @NonNull EditText editText3, @NonNull EditText editText4, @NonNull EditText editText5, @NonNull EditText editText6, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout, @NonNull LinearLayoutCompat linearLayoutCompat3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull EditText editText7, @NonNull RecyclerView recyclerView2, @NonNull EditText editText8, @NonNull RecyclerView recyclerView3, @NonNull RequiredTextView requiredTextView, @NonNull RequiredTextView requiredTextView2, @NonNull AppCompatTextView appCompatTextView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ImageView imageView3, @NonNull ObservableScrollView observableScrollView, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull RequiredTextView requiredTextView3, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding, @NonNull TextView textView13, @NonNull TextView textView14, @NonNull TextView textView15, @NonNull TextView textView16, @NonNull TextView textView17, @NonNull EditText editText9) {
        this.rootView = linearLayoutCompat;
        this.addMasteryOfLanguage = linearLayoutCompat2;
        this.agreementTip = textView;
        this.applySign = button;
        this.emailNumber = editText;
        this.etPhone = editText2;
        this.facebookNumber = editText3;
        this.fansNumber = editText4;
        this.instagramNumber = editText5;
        this.invitationCode = editText6;
        this.ivAgreement = imageView;
        this.ivNext = imageView2;
        this.liveRecordScreen = recyclerView;
        this.llCountryHide = linearLayout;
        this.llMasteryOfLanguage = linearLayoutCompat3;
        this.llPhone = linearLayout2;
        this.llWhatsApp = linearLayout3;
        this.masteryOfLanguage = textView2;
        this.monthFlow = editText7;
        this.otherVideoList = recyclerView2;
        this.outSide = editText8;
        this.pictureList = recyclerView3;
        this.requiredTextView = requiredTextView;
        this.requiredTextView2 = requiredTextView2;
        this.requiredTextView3 = appCompatTextView;
        this.requiredTextView4 = textView3;
        this.requiredTextView5 = textView4;
        this.requiredTextView7 = textView5;
        this.requiredTextView8 = textView6;
        this.rvCountry = imageView3;
        this.scrollVeiw = observableScrollView;
        this.textView11 = textView7;
        this.textView12 = textView8;
        this.textView13 = textView9;
        this.textView14 = textView10;
        this.textView15 = textView11;
        this.textView16 = textView12;
        this.textView17 = requiredTextView3;
        this.titleBar = gcBaseTitleBarBinding;
        this.tvCountry = textView13;
        this.tvPhone = textView14;
        this.tvWhatsAppTip = textView15;
        this.uploadLiveRecordScreen = textView16;
        this.uploadOtherVideo = textView17;
        this.whatsappNumber = editText9;
    }

    @NonNull
    public static ActivityApplyContractBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.add_mastery_of_language;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i9);
        if (linearLayoutCompat != null) {
            i9 = R$id.agreement_tip;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.apply_sign;
                Button button = (Button) ViewBindings.findChildViewById(view, i9);
                if (button != null) {
                    i9 = R$id.email_number;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, i9);
                    if (editText != null) {
                        i9 = R$id.et_phone;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i9);
                        if (editText2 != null) {
                            i9 = R$id.facebook_number;
                            EditText editText3 = (EditText) ViewBindings.findChildViewById(view, i9);
                            if (editText3 != null) {
                                i9 = R$id.fansNumber;
                                EditText editText4 = (EditText) ViewBindings.findChildViewById(view, i9);
                                if (editText4 != null) {
                                    i9 = R$id.instagram_number;
                                    EditText editText5 = (EditText) ViewBindings.findChildViewById(view, i9);
                                    if (editText5 != null) {
                                        i9 = R$id.invitation_code;
                                        EditText editText6 = (EditText) ViewBindings.findChildViewById(view, i9);
                                        if (editText6 != null) {
                                            i9 = R$id.iv_agreement;
                                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
                                            if (imageView != null) {
                                                i9 = R$id.iv_next;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                                if (imageView2 != null) {
                                                    i9 = R$id.live_record_screen;
                                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                                                    if (recyclerView != null) {
                                                        i9 = R$id.ll_country_hide;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                                        if (linearLayout != null) {
                                                            i9 = R$id.ll_mastery_of_language;
                                                            LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i9);
                                                            if (linearLayoutCompat2 != null) {
                                                                i9 = R$id.ll_phone;
                                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                                                if (linearLayout2 != null) {
                                                                    i9 = R$id.ll_WhatsApp;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                                                    if (linearLayout3 != null) {
                                                                        i9 = R$id.mastery_of_language;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                        if (textView2 != null) {
                                                                            i9 = R$id.monthFlow;
                                                                            EditText editText7 = (EditText) ViewBindings.findChildViewById(view, i9);
                                                                            if (editText7 != null) {
                                                                                i9 = R$id.other_video_list;
                                                                                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                                                                                if (recyclerView2 != null) {
                                                                                    i9 = R$id.outSide;
                                                                                    EditText editText8 = (EditText) ViewBindings.findChildViewById(view, i9);
                                                                                    if (editText8 != null) {
                                                                                        i9 = R$id.picture_list;
                                                                                        RecyclerView recyclerView3 = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                                                                                        if (recyclerView3 != null) {
                                                                                            i9 = R$id.requiredTextView;
                                                                                            RequiredTextView requiredTextView = (RequiredTextView) ViewBindings.findChildViewById(view, i9);
                                                                                            if (requiredTextView != null) {
                                                                                                i9 = R$id.requiredTextView2;
                                                                                                RequiredTextView requiredTextView2 = (RequiredTextView) ViewBindings.findChildViewById(view, i9);
                                                                                                if (requiredTextView2 != null) {
                                                                                                    i9 = R$id.requiredTextView3;
                                                                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i9);
                                                                                                    if (appCompatTextView != null) {
                                                                                                        i9 = R$id.requiredTextView4;
                                                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                        if (textView3 != null) {
                                                                                                            i9 = R$id.requiredTextView5;
                                                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                            if (textView4 != null) {
                                                                                                                i9 = R$id.requiredTextView7;
                                                                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                if (textView5 != null) {
                                                                                                                    i9 = R$id.requiredTextView8;
                                                                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                    if (textView6 != null) {
                                                                                                                        i9 = R$id.rv_country;
                                                                                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                                                                                                        if (imageView3 != null) {
                                                                                                                            i9 = R$id.scroll_veiw;
                                                                                                                            ObservableScrollView observableScrollView = (ObservableScrollView) ViewBindings.findChildViewById(view, i9);
                                                                                                                            if (observableScrollView != null) {
                                                                                                                                i9 = R$id.textView11;
                                                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                if (textView7 != null) {
                                                                                                                                    i9 = R$id.textView12;
                                                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                    if (textView8 != null) {
                                                                                                                                        i9 = R$id.textView13;
                                                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                        if (textView9 != null) {
                                                                                                                                            i9 = R$id.textView14;
                                                                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                            if (textView10 != null) {
                                                                                                                                                i9 = R$id.textView15;
                                                                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                                if (textView11 != null) {
                                                                                                                                                    i9 = R$id.textView16;
                                                                                                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                                    if (textView12 != null) {
                                                                                                                                                        i9 = R$id.textView17;
                                                                                                                                                        RequiredTextView requiredTextView3 = (RequiredTextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                                        if (requiredTextView3 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.title_bar))) != null) {
                                                                                                                                                            GcBaseTitleBarBinding bind = GcBaseTitleBarBinding.bind(findChildViewById);
                                                                                                                                                            i9 = R$id.tv_country;
                                                                                                                                                            TextView textView13 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                                            if (textView13 != null) {
                                                                                                                                                                i9 = R$id.tv_phone;
                                                                                                                                                                TextView textView14 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                                                if (textView14 != null) {
                                                                                                                                                                    i9 = R$id.tv_whats_app_tip;
                                                                                                                                                                    TextView textView15 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                                                    if (textView15 != null) {
                                                                                                                                                                        i9 = R$id.upload_live_record_screen;
                                                                                                                                                                        TextView textView16 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                                                        if (textView16 != null) {
                                                                                                                                                                            i9 = R$id.upload_other_video;
                                                                                                                                                                            TextView textView17 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                                                                                                                            if (textView17 != null) {
                                                                                                                                                                                i9 = R$id.whatsapp_number;
                                                                                                                                                                                EditText editText9 = (EditText) ViewBindings.findChildViewById(view, i9);
                                                                                                                                                                                if (editText9 != null) {
                                                                                                                                                                                    return new ActivityApplyContractBinding((LinearLayoutCompat) view, linearLayoutCompat, textView, button, editText, editText2, editText3, editText4, editText5, editText6, imageView, imageView2, recyclerView, linearLayout, linearLayoutCompat2, linearLayout2, linearLayout3, textView2, editText7, recyclerView2, editText8, recyclerView3, requiredTextView, requiredTextView2, appCompatTextView, textView3, textView4, textView5, textView6, imageView3, observableScrollView, textView7, textView8, textView9, textView10, textView11, textView12, requiredTextView3, bind, textView13, textView14, textView15, textView16, textView17, editText9);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityApplyContractBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityApplyContractBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.activity_apply_contract, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }
}

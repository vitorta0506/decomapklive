package com.guochao.faceshow.guild.activity;

import android.content.Intent;
import android.text.TextPaint;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.carbs.android.expandabletextview.library.ExpandableTextView;
import com.guochao.faceshow.adapter.BaseViewHolder;
import com.guochao.faceshow.adapter.MultiItemCommonAdapter;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.faceshow.guild.R$mipmap;
import com.guochao.faceshow.guild.R$string;
import com.guochao.faceshow.guild.bean.ContractHistoryBean;
import com.guochao.faceshow.guild.bean.ImagePreviewBean;
import com.guochao.faceshow.guild.bean.RecordVo;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.lib_base.R$color;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"com/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1", "Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;", "Lcom/guochao/faceshow/guild/bean/RecordVo;", "convert", "", "holder", "Lcom/guochao/faceshow/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ContractResultActivity$initProcessAdapter$adapter$1 extends MultiItemCommonAdapter<RecordVo> {
    final /* synthetic */ List<RecordVo> $list;
    final /* synthetic */ ContractResultActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContractResultActivity$initProcessAdapter$adapter$1(ContractResultActivity contractResultActivity, List<RecordVo> list, ContractResultActivity$initProcessAdapter$adapter$2 contractResultActivity$initProcessAdapter$adapter$2) {
        super(contractResultActivity, list, 1, contractResultActivity$initProcessAdapter$adapter$2);
        this.this$0 = contractResultActivity;
        this.$list = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-1  reason: not valid java name */
    public static final void m716convert$lambda1(int i9, List list, ContractResultActivity this$0, RecordVo item, View view) {
        ActivityResultLauncher activityResultLauncher;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        if (i9 == (list != null ? list.size() : 0) - 1) {
            Intent intent = new Intent(this$0, ComplaintActivity.class);
            ContractHistoryBean value = this$0.getViewModel().getContractHistoryLiveData().getValue();
            if (value != null) {
                value.setRecordId(item.getId());
            }
            intent.putExtra("obj", value);
            activityResultLauncher = this$0.startActivityLauncher;
            activityResultLauncher.launch(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-3  reason: not valid java name */
    public static final void m717convert$lambda3(ContractResultActivity this$0, RecordVo item, View view) {
        ActivityResultLauncher activityResultLauncher;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        Intent intent = new Intent(this$0, ComplaintActivity.class);
        ContractHistoryBean value = this$0.getViewModel().getContractHistoryLiveData().getValue();
        if (value != null) {
            value.setRecordId(item.getId());
        }
        intent.putExtra("obj", value);
        activityResultLauncher = this$0.startActivityLauncher;
        activityResultLauncher.launch(intent);
    }

    @Override // com.guochao.faceshow.adapter.CommonRecyclerAdapter
    public void convert(@Nullable BaseViewHolder baseViewHolder, @NotNull final RecordVo item, final int i9) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (baseViewHolder == null) {
            return;
        }
        int i10 = R$id.compaint_tv;
        TextView textView = (TextView) baseViewHolder.getView(i10);
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i11 = R$id.compaint_tv2;
        TextView textView2 = (TextView) baseViewHolder.getView(i11);
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        int i12 = R$id.process_line;
        View view = baseViewHolder.getView(i12);
        if (view != null) {
            view.setBackgroundColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.colorPrimary));
            Unit unit = Unit.INSTANCE;
        }
        int i13 = R$id.node_icon;
        int i14 = R$mipmap.node_1;
        baseViewHolder.setImageResource(i13, i14);
        int i15 = R$id.creater;
        TextView textView3 = (TextView) baseViewHolder.getView(i15);
        if (textView3 != null) {
            textView3.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.color_ugc_text_level_3));
            Unit unit2 = Unit.INSTANCE;
        }
        int i16 = R$id.reason_layout;
        LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(i16);
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        boolean z10 = true;
        switch (item.getStatus()) {
            case 0:
            case 3:
            case 13:
            case 16:
                int i17 = R$id.state_tv;
                baseViewHolder.setText(i17, this.this$0.getString(R$string.signed_successfully));
                TextView textView4 = (TextView) baseViewHolder.getView(i17);
                if (textView4 != null) {
                    textView4.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.color_ugc_text_level_3));
                    Unit unit3 = Unit.INSTANCE;
                }
                LinearLayout linearLayout2 = (LinearLayout) baseViewHolder.getView(i16);
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                    break;
                }
                break;
            case 5:
                if (item.getMoreSeven() == 0) {
                    LinearLayout linearLayout3 = (LinearLayout) baseViewHolder.getView(i16);
                    if (linearLayout3 != null) {
                        linearLayout3.setVisibility(0);
                    }
                    int i18 = R$id.state_tv;
                    baseViewHolder.setText(i18, this.this$0.getString(R$string.initiate_dissmissed));
                    ExpandableTextView expandableTextView = (ExpandableTextView) baseViewHolder.getView(R$id.reason);
                    if (expandableTextView != null) {
                        expandableTextView.setText(this.this$0.getString(R$string.dismissed_reason, new Object[]{item.getReason()}));
                    }
                    TextView textView5 = (TextView) baseViewHolder.getView(i18);
                    if (textView5 != null) {
                        textView5.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.color_ugc_text_level_3));
                        Unit unit4 = Unit.INSTANCE;
                        break;
                    }
                } else {
                    List<RecordVo> list = this.$list;
                    if (i9 == (list != null ? list.size() : 0) - 1) {
                        View view2 = baseViewHolder.getView(i12);
                        if (view2 != null) {
                            view2.setVisibility(8);
                        }
                        AppCompatImageView appCompatImageView = (AppCompatImageView) baseViewHolder.getView(R$id.end_node_icon);
                        if (appCompatImageView != null) {
                            appCompatImageView.setVisibility(8);
                        }
                        TextView textView6 = (TextView) baseViewHolder.getView(R$id.end_status);
                        if (textView6 != null) {
                            textView6.setVisibility(8);
                        }
                        baseViewHolder.setImageResource(i13, R$mipmap.node_3);
                        View view3 = baseViewHolder.getView(i12);
                        if (view3 != null) {
                            view3.setBackgroundColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.colorPrimary));
                            Unit unit5 = Unit.INSTANCE;
                        }
                        TextView textView7 = (TextView) baseViewHolder.getView(R$id.state_tv);
                        if (textView7 != null) {
                            textView7.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.colorPrimary));
                            Unit unit6 = Unit.INSTANCE;
                        }
                        TextView textView8 = (TextView) baseViewHolder.getView(i10);
                        if (textView8 != null) {
                            textView8.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), com.guochao.faceshow.guild.R$color.guild_tips_red));
                            Unit unit7 = Unit.INSTANCE;
                        }
                    } else {
                        View view4 = baseViewHolder.getView(i12);
                        if (view4 != null) {
                            view4.setVisibility(0);
                        }
                        baseViewHolder.setImageResource(i13, i14);
                        View view5 = baseViewHolder.getView(i12);
                        if (view5 != null) {
                            view5.setBackgroundColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.colorPrimary));
                            Unit unit8 = Unit.INSTANCE;
                        }
                        TextView textView9 = (TextView) baseViewHolder.getView(R$id.state_tv);
                        if (textView9 != null) {
                            textView9.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.color_ugc_text_level_3));
                            Unit unit9 = Unit.INSTANCE;
                        }
                        TextView textView10 = (TextView) baseViewHolder.getView(i10);
                        if (textView10 != null) {
                            textView10.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.color_ugc_text_level_3));
                            Unit unit10 = Unit.INSTANCE;
                        }
                    }
                    TextView textView11 = (TextView) baseViewHolder.getView(R$id.date);
                    if (textView11 != null) {
                        textView11.setVisibility(8);
                    }
                    LinearLayout linearLayout4 = (LinearLayout) baseViewHolder.getView(i16);
                    if (linearLayout4 != null) {
                        linearLayout4.setVisibility(8);
                    }
                    TextView textView12 = (TextView) baseViewHolder.getView(i10);
                    if (textView12 != null) {
                        textView12.setVisibility(0);
                    }
                    baseViewHolder.setText(R$id.state_tv, this.this$0.getString(R$string.wait_guild_audit));
                    baseViewHolder.setText(i10, this.this$0.getString(R$string.agency_platform_tip));
                    TextView textView13 = (TextView) baseViewHolder.getView(i10);
                    if (textView13 != null) {
                        textView13.setPaintFlags(8);
                    }
                    TextView textView14 = (TextView) baseViewHolder.getView(i10);
                    TextPaint paint = textView14 != null ? textView14.getPaint() : null;
                    if (paint != null) {
                        paint.setAntiAlias(true);
                    }
                    View view6 = baseViewHolder.getView(i15);
                    if (view6 != null) {
                        view6.setVisibility(8);
                    }
                    TextView textView15 = (TextView) baseViewHolder.getView(i10);
                    if (textView15 != null) {
                        final List<RecordVo> list2 = this.$list;
                        final ContractResultActivity contractResultActivity = this.this$0;
                        textView15.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.i0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view7) {
                                ContractResultActivity$initProcessAdapter$adapter$1.m716convert$lambda1(i9, list2, contractResultActivity, item, view7);
                            }
                        });
                        Unit unit11 = Unit.INSTANCE;
                        break;
                    }
                }
                break;
            case 6:
            case 8:
            case 14:
                LinearLayout linearLayout5 = (LinearLayout) baseViewHolder.getView(i16);
                if (linearLayout5 != null) {
                    linearLayout5.setVisibility(8);
                }
                baseViewHolder.setImageResource(i13, i14);
                View view7 = baseViewHolder.getView(i12);
                if (view7 != null) {
                    view7.setBackgroundColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.colorPrimary));
                    Unit unit12 = Unit.INSTANCE;
                }
                if (item.getOperationType() == 1) {
                    ContractHistoryBean value = this.this$0.getViewModel().getContractHistoryLiveData().getValue();
                    if (value != null && value.getSignType() == 0) {
                        baseViewHolder.setText(R$id.state_tv, this.this$0.getString(R$string.termination_contract_success));
                        baseViewHolder.setText(i15, this.this$0.getString(R$string.platform));
                        LinearLayout linearLayout6 = (LinearLayout) baseViewHolder.getView(i16);
                        if (linearLayout6 != null) {
                            linearLayout6.setVisibility(0);
                        }
                        ExpandableTextView expandableTextView2 = (ExpandableTextView) baseViewHolder.getView(R$id.reason);
                        if (expandableTextView2 != null) {
                            expandableTextView2.setText(this.this$0.getString(item.getStatus() == 14 ? R$string.dismissed_reason : R$string.reject_reason, new Object[]{item.getReason()}));
                            break;
                        }
                    }
                }
                if (item.getOperationType() == 1) {
                    ContractHistoryBean value2 = this.this$0.getViewModel().getContractHistoryLiveData().getValue();
                    if (value2 != null && value2.getSignType() == 1) {
                        baseViewHolder.setText(R$id.state_tv, this.this$0.getString(R$string.termination_contract_success));
                        baseViewHolder.setText(i15, this.this$0.getString(R$string.platform_terminate_contract));
                        break;
                    }
                }
                baseViewHolder.setText(R$id.state_tv, this.this$0.getString(R$string.cancellation_approved));
                ContractHistoryBean value3 = this.this$0.getViewModel().getContractHistoryLiveData().getValue();
                if (value3 != null && value3.getSignType() == 1) {
                    baseViewHolder.setText(i15, this.this$0.getString(R$string.platform_agreed));
                    break;
                } else if (item.getComplain() == 1) {
                    baseViewHolder.setText(i15, this.this$0.getString(R$string.platform_agreed));
                    break;
                } else {
                    baseViewHolder.setText(i15, this.this$0.getString(R$string.guild_agreed));
                    break;
                }
                break;
            case 7:
                TextView textView16 = (TextView) baseViewHolder.getView(R$id.date);
                if (textView16 != null) {
                    textView16.setVisibility(8);
                }
                LinearLayout linearLayout7 = (LinearLayout) baseViewHolder.getView(i16);
                if (linearLayout7 != null) {
                    linearLayout7.setVisibility(0);
                }
                int i19 = R$id.state_tv;
                baseViewHolder.setText(i19, this.this$0.getString(R$string.dismissed_review));
                baseViewHolder.setText(i15, this.this$0.getString(R$string.guild_rejected));
                ExpandableTextView expandableTextView3 = (ExpandableTextView) baseViewHolder.getView(R$id.reason);
                if (expandableTextView3 != null) {
                    expandableTextView3.setText(this.this$0.getString(R$string.reject_reason, new Object[]{item.getReason()}));
                }
                TextView textView17 = (TextView) baseViewHolder.getView(i19);
                if (textView17 != null) {
                    textView17.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), com.guochao.faceshow.guild.R$color.guild_tips_red));
                    Unit unit13 = Unit.INSTANCE;
                }
                TextView textView18 = (TextView) baseViewHolder.getView(i15);
                if (textView18 != null) {
                    textView18.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.color_ugc_text_level_3));
                    Unit unit14 = Unit.INSTANCE;
                }
                baseViewHolder.setImageResource(i13, R$mipmap.node_2);
                View view8 = baseViewHolder.getView(i12);
                if (view8 != null) {
                    view8.setBackgroundColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), com.guochao.faceshow.guild.R$color.guild_tips_red));
                    Unit unit15 = Unit.INSTANCE;
                }
                if (item.getCanComplain() == 1) {
                    TextView textView19 = (TextView) baseViewHolder.getView(i10);
                    if (textView19 != null) {
                        textView19.setPaintFlags(8);
                    }
                    TextView textView20 = (TextView) baseViewHolder.getView(i10);
                    TextPaint paint2 = textView20 != null ? textView20.getPaint() : null;
                    if (paint2 != null) {
                        paint2.setAntiAlias(true);
                    }
                    TextView textView21 = (TextView) baseViewHolder.getView(i10);
                    if (textView21 != null) {
                        textView21.setVisibility(0);
                    }
                    TextView textView22 = (TextView) baseViewHolder.getView(i10);
                    if (textView22 != null) {
                        final ContractResultActivity contractResultActivity2 = this.this$0;
                        textView22.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.j0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view9) {
                                ContractResultActivity$initProcessAdapter$adapter$1.m717convert$lambda3(ContractResultActivity.this, item, view9);
                            }
                        });
                        Unit unit16 = Unit.INSTANCE;
                        break;
                    }
                } else {
                    TextView textView23 = (TextView) baseViewHolder.getView(i11);
                    if (textView23 != null) {
                        textView23.setVisibility(0);
                        break;
                    }
                }
                break;
            case 9:
                TextView textView24 = (TextView) baseViewHolder.getView(R$id.date);
                if (textView24 != null) {
                    textView24.setVisibility(8);
                }
                LinearLayout linearLayout8 = (LinearLayout) baseViewHolder.getView(i16);
                if (linearLayout8 != null) {
                    linearLayout8.setVisibility(0);
                }
                int i20 = R$id.state_tv;
                baseViewHolder.setText(i20, this.this$0.getString(R$string.dismissed_review));
                baseViewHolder.setText(i15, this.this$0.getString(R$string.platform_rejected));
                ExpandableTextView expandableTextView4 = (ExpandableTextView) baseViewHolder.getView(R$id.reason);
                if (expandableTextView4 != null) {
                    expandableTextView4.setText(this.this$0.getString(R$string.reject_reason, new Object[]{item.getReason()}));
                }
                baseViewHolder.setImageResource(i13, R$mipmap.node_2);
                TextView textView25 = (TextView) baseViewHolder.getView(i20);
                if (textView25 != null) {
                    textView25.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), com.guochao.faceshow.guild.R$color.guild_tips_red));
                    Unit unit17 = Unit.INSTANCE;
                }
                View view9 = baseViewHolder.getView(i12);
                if (view9 != null) {
                    view9.setBackgroundColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), com.guochao.faceshow.guild.R$color.guild_tips_red));
                    Unit unit18 = Unit.INSTANCE;
                }
                TextView textView26 = (TextView) baseViewHolder.getView(i15);
                if (textView26 != null) {
                    textView26.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.color_ugc_text_level_2));
                    Unit unit19 = Unit.INSTANCE;
                    break;
                }
                break;
            case 10:
                LinearLayout linearLayout9 = (LinearLayout) baseViewHolder.getView(i16);
                if (linearLayout9 != null) {
                    linearLayout9.setVisibility(0);
                }
                baseViewHolder.setText(R$id.state_tv, this.this$0.getString(R$string.termination_contract_success));
                baseViewHolder.setText(i15, this.this$0.getString(R$string.platform));
                ExpandableTextView expandableTextView5 = (ExpandableTextView) baseViewHolder.getView(R$id.reason);
                if (expandableTextView5 != null) {
                    expandableTextView5.setText(this.this$0.getString(R$string.dismissed_reason, new Object[]{item.getReason()}));
                    break;
                }
                break;
            case 12:
                LinearLayout linearLayout10 = (LinearLayout) baseViewHolder.getView(i16);
                if (linearLayout10 != null) {
                    linearLayout10.setVisibility(0);
                }
                int i21 = R$id.state_tv;
                baseViewHolder.setText(i21, this.this$0.getString(R$string.file_appeal));
                ExpandableTextView expandableTextView6 = (ExpandableTextView) baseViewHolder.getView(R$id.reason);
                if (expandableTextView6 != null) {
                    expandableTextView6.setText(this.this$0.getString(R$string.appeal_reason, new Object[]{item.getReason()}));
                }
                TextView textView27 = (TextView) baseViewHolder.getView(i21);
                if (textView27 != null) {
                    textView27.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.color_ugc_text_level_2));
                    Unit unit20 = Unit.INSTANCE;
                    break;
                }
                break;
            case 15:
                int i22 = R$id.state_tv;
                baseViewHolder.setText(i22, this.this$0.getString(R$string.revoked));
                TextView textView28 = (TextView) baseViewHolder.getView(i22);
                if (textView28 != null) {
                    textView28.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R$color.color_ugc_text_level_2));
                    Unit unit21 = Unit.INSTANCE;
                    break;
                }
                break;
        }
        List<String> imgList = item.getImgList();
        if (!(imgList == null || imgList.isEmpty())) {
            ArrayList arrayList = new ArrayList();
            List<String> imgList2 = item.getImgList();
            if (imgList2 != null) {
                for (String str : imgList2) {
                    arrayList.add(new ImagePreviewBean("", str));
                }
                Unit unit22 = Unit.INSTANCE;
            }
            ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1 contractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1 = new ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1(this.this$0, arrayList, baseViewHolder.itemView.getContext(), item.getImgList(), R$layout.process_image_item);
            int i23 = R$id.image_recyclerview;
            RecyclerView recyclerView = (RecyclerView) baseViewHolder.getView(i23);
            if (recyclerView != null) {
                recyclerView.setVisibility(0);
            }
            RecyclerView recyclerView2 = (RecyclerView) baseViewHolder.getView(i23);
            if (recyclerView2 != null) {
                View view10 = baseViewHolder.itemView;
                recyclerView2.setLayoutManager(new GridLayoutManager(view10 != null ? view10.getContext() : null, 3));
            }
            RecyclerView recyclerView3 = (RecyclerView) baseViewHolder.getView(i23);
            if (recyclerView3 != null) {
                recyclerView3.setAdapter(contractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1);
            }
        } else {
            RecyclerView recyclerView4 = (RecyclerView) baseViewHolder.getView(R$id.image_recyclerview);
            if (recyclerView4 != null) {
                recyclerView4.setVisibility(8);
            }
        }
        List<RecordVo> list3 = this.$list;
        if (i9 == (list3 != null ? list3.size() : 0) - 1) {
            if ((item.getStatus() == 5 && item.getMoreSeven() == 0) || item.getStatus() == 12) {
                ImageView imageView = (ImageView) baseViewHolder.getView(R$id.end_node_icon);
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
                View view11 = baseViewHolder.getView(R$id.process_line);
                if (view11 != null) {
                    view11.setVisibility(0);
                }
                int i24 = R$id.end_status;
                View view12 = baseViewHolder.getView(i24);
                if (view12 != null) {
                    view12.setVisibility(0);
                }
                ContractHistoryBean value4 = this.this$0.getViewModel().getContractHistoryLiveData().getValue();
                if (!((value4 == null || value4.getSignType() != 1) ? false : false) && item.getStatus() != 12) {
                    baseViewHolder.setText(i24, this.this$0.getString(R$string.wait_guild_audit));
                } else {
                    baseViewHolder.setText(i24, this.this$0.getString(R$string.wait_platform_audit));
                }
            } else {
                ImageView imageView2 = (ImageView) baseViewHolder.getView(R$id.end_node_icon);
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                }
                View view13 = baseViewHolder.getView(R$id.process_line);
                if (view13 != null) {
                    view13.setVisibility(8);
                }
                View view14 = baseViewHolder.getView(R$id.end_status);
                if (view14 != null) {
                    view14.setVisibility(8);
                }
            }
        } else {
            ImageView imageView3 = (ImageView) baseViewHolder.getView(R$id.end_node_icon);
            if (imageView3 != null) {
                imageView3.setVisibility(8);
            }
            View view15 = baseViewHolder.getView(R$id.process_line);
            if (view15 != null) {
                view15.setVisibility(0);
            }
            View view16 = baseViewHolder.getView(R$id.end_status);
            if (view16 != null) {
                view16.setVisibility(8);
            }
        }
        baseViewHolder.setText(R$id.date, new SimpleDateFormat(this.this$0.getString(R$string.format_time), Locale.getDefault()).format(Long.valueOf(item.getCreateTime())));
    }
}

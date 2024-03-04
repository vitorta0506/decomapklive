package com.linecorp.linesdk.dialog.internal;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.linecorp.linesdk.R$color;
import com.linecorp.linesdk.R$drawable;
import com.linecorp.linesdk.R$id;
import com.linecorp.linesdk.R$layout;
import com.linecorp.linesdk.dialog.internal.TargetListAdapter;
import com.linecorp.linesdk.dialog.internal.TargetUser;
import com.squareup.picasso.Picasso;
import java.util.List;
/* loaded from: classes4.dex */
public class TargetListAdapter extends RecyclerView.Adapter<TargetViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<TargetUser> f28125a;

    /* renamed from: b  reason: collision with root package name */
    private List<TargetUser> f28126b;

    /* renamed from: c  reason: collision with root package name */
    private String f28127c;

    /* renamed from: d  reason: collision with root package name */
    private a f28128d;

    /* loaded from: classes4.dex */
    public class TargetViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private ViewGroup f28129a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f28130b;

        /* renamed from: c  reason: collision with root package name */
        private CheckBox f28131c;

        /* renamed from: d  reason: collision with root package name */
        private ImageView f28132d;

        /* renamed from: e  reason: collision with root package name */
        private int f28133e;

        public TargetViewHolder(ViewGroup viewGroup) {
            super(viewGroup);
            this.f28129a = viewGroup;
            this.f28130b = (TextView) viewGroup.findViewById(R$id.textView);
            this.f28132d = (ImageView) viewGroup.findViewById(R$id.imageView);
            this.f28131c = (CheckBox) viewGroup.findViewById(R$id.checkBox);
            this.f28133e = viewGroup.getResources().getColor(R$color.text_highlight);
        }

        private SpannableString e(String str, String str2) {
            int indexOf;
            SpannableString spannableString = new SpannableString(str);
            if (!str2.isEmpty() && (indexOf = str.toLowerCase().indexOf(str2.toLowerCase())) != -1) {
                spannableString.setSpan(new ForegroundColorSpan(this.f28133e), indexOf, str2.length() + indexOf, 0);
            }
            return spannableString;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(TargetUser targetUser, a aVar, View view) {
            boolean z10 = !targetUser.c().booleanValue();
            this.f28129a.setSelected(z10);
            targetUser.f(Boolean.valueOf(z10));
            this.f28131c.setChecked(z10);
            aVar.a(targetUser, z10);
        }

        public void d(final TargetUser targetUser, final a aVar) {
            this.f28129a.setSelected(targetUser.c().booleanValue());
            this.f28131c.setChecked(targetUser.c().booleanValue());
            this.f28130b.setText(e(targetUser.a(), TargetListAdapter.this.f28127c));
            this.f28129a.setOnClickListener(new View.OnClickListener() { // from class: uc.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TargetListAdapter.TargetViewHolder.this.f(targetUser, aVar, view);
                }
            });
            Picasso.get().j(targetUser.b()).i(targetUser.e() == TargetUser.Type.FRIEND ? R$drawable.friend_thumbnail : R$drawable.group_thumbnail).f(this.f28132d);
        }
    }

    /* loaded from: classes4.dex */
    public interface a {
        void a(TargetUser targetUser, boolean z10);
    }

    public int b(String str) {
        this.f28127c = str;
        this.f28126b.clear();
        if (str.isEmpty()) {
            this.f28126b.addAll(this.f28125a);
        } else {
            String lowerCase = str.toLowerCase();
            for (TargetUser targetUser : this.f28125a) {
                if (targetUser.a().toLowerCase().contains(lowerCase)) {
                    this.f28126b.add(targetUser);
                }
            }
        }
        notifyDataSetChanged();
        return this.f28126b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: c */
    public void onBindViewHolder(TargetViewHolder targetViewHolder, int i9) {
        targetViewHolder.d(this.f28126b.get(i9), this.f28128d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public TargetViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new TargetViewHolder((ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.layout_target_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f28126b.size();
    }
}

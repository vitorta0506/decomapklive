package com.linecorp.linesdk.dialog.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.StringRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.SearchView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.linecorp.linesdk.R$id;
import com.linecorp.linesdk.R$layout;
import com.linecorp.linesdk.R$string;
import com.linecorp.linesdk.dialog.internal.TargetListAdapter;
/* loaded from: classes4.dex */
public class TargetListWithSearchView extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private TargetListAdapter.a f28135a;

    /* renamed from: b  reason: collision with root package name */
    private RecyclerView f28136b;

    /* renamed from: c  reason: collision with root package name */
    private SearchView f28137c;

    /* renamed from: d  reason: collision with root package name */
    private AppCompatTextView f28138d;

    /* renamed from: e  reason: collision with root package name */
    private int f28139e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements SearchView.OnQueryTextListener {
        a() {
        }

        private void a(String str) {
            TargetListAdapter targetListAdapter = (TargetListAdapter) TargetListWithSearchView.this.f28136b.getAdapter();
            if (targetListAdapter != null) {
                if (targetListAdapter.b(str) == 0) {
                    TargetListWithSearchView.this.f28138d.setVisibility(0);
                    if (!str.isEmpty()) {
                        TargetListWithSearchView.this.f28138d.setText(R$string.search_no_results);
                        return;
                    } else {
                        TargetListWithSearchView.this.f28138d.setText(TargetListWithSearchView.this.f28139e);
                        return;
                    }
                }
                TargetListWithSearchView.this.f28138d.setVisibility(4);
            }
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            a(str);
            return true;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            a(str);
            TargetListWithSearchView.this.f28137c.clearFocus();
            return true;
        }
    }

    public TargetListWithSearchView(Context context, @StringRes int i9, TargetListAdapter.a aVar) {
        super(context);
        this.f28139e = i9;
        this.f28135a = aVar;
        e();
    }

    private void e() {
        View inflate = ViewGroup.inflate(getContext(), R$layout.layout_select_target, this);
        this.f28136b = (RecyclerView) inflate.findViewById(R$id.recyclerView);
        this.f28137c = (SearchView) inflate.findViewById(R$id.searchView);
        this.f28138d = (AppCompatTextView) inflate.findViewById(R$id.emptyView);
        this.f28137c.setOnQueryTextListener(new a());
    }

    public TargetListWithSearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        e();
    }

    public TargetListWithSearchView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        e();
    }
}

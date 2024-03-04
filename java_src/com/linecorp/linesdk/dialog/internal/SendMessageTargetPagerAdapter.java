package com.linecorp.linesdk.dialog.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.PagerAdapter;
import com.linecorp.linesdk.R$string;
import com.linecorp.linesdk.dialog.internal.TargetListAdapter;
import com.linecorp.linesdk.dialog.internal.TargetUser;
/* loaded from: classes4.dex */
public class SendMessageTargetPagerAdapter extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f28122a;

    /* renamed from: b  reason: collision with root package name */
    private TargetListAdapter.a f28123b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f28124a;

        static {
            int[] iArr = new int[TargetUser.Type.values().length];
            f28124a = iArr;
            try {
                iArr[TargetUser.Type.FRIEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28124a[TargetUser.Type.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @NonNull
    /* renamed from: a */
    public View instantiateItem(@NonNull ViewGroup viewGroup, int i9) {
        int i10 = a.f28124a[TargetUser.Type.values()[i9].ordinal()];
        if (i10 == 1) {
            final TargetListWithSearchView targetListWithSearchView = new TargetListWithSearchView(this.f28122a, R$string.search_no_fiend, this.f28123b);
            new Object() { // from class: uc.a
            };
            throw null;
        } else if (i10 != 2) {
            return null;
        } else {
            final TargetListWithSearchView targetListWithSearchView2 = new TargetListWithSearchView(this.f28122a, R$string.search_no_group, this.f28123b);
            new Object() { // from class: uc.a
            };
            throw null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return TargetUser.d();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Nullable
    public CharSequence getPageTitle(int i9) {
        int i10 = a.f28124a[TargetUser.Type.values()[i9].ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? "" : this.f28122a.getString(R$string.select_tab_groups);
        }
        return this.f28122a.getString(R$string.select_tab_friends);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return view == obj;
    }
}

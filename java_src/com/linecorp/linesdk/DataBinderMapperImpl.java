package com.linecorp.linesdk;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.linecorp.linesdk.databinding.OpenChatInfoFragmentBindingImpl;
import com.linecorp.linesdk.databinding.ProfileInfoFragmentBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes4.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseIntArray f28031a;

    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        static final SparseArray<String> f28032a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(2);
            f28032a = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "viewModel");
        }
    }

    /* loaded from: classes4.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        static final HashMap<String, Integer> f28033a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(2);
            f28033a = hashMap;
            hashMap.put("layout/open_chat_info_fragment_0", Integer.valueOf(R$layout.open_chat_info_fragment));
            hashMap.put("layout/profile_info_fragment_0", Integer.valueOf(R$layout.profile_info_fragment));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(2);
        f28031a = sparseIntArray;
        sparseIntArray.put(R$layout.open_chat_info_fragment, 1);
        sparseIntArray.put(R$layout.profile_info_fragment, 2);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i9) {
        return a.f28032a.get(i9);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i9) {
        int i10 = f28031a.get(i9);
        if (i10 > 0) {
            Object tag = view.getTag();
            if (tag != null) {
                if (i10 == 1) {
                    if ("layout/open_chat_info_fragment_0".equals(tag)) {
                        return new OpenChatInfoFragmentBindingImpl(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for open_chat_info_fragment is invalid. Received: " + tag);
                } else if (i10 != 2) {
                    return null;
                } else {
                    if ("layout/profile_info_fragment_0".equals(tag)) {
                        return new ProfileInfoFragmentBindingImpl(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for profile_info_fragment is invalid. Received: " + tag);
                }
            }
            throw new RuntimeException("view must have a tag");
        }
        return null;
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = b.f28033a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i9) {
        if (viewArr == null || viewArr.length == 0 || f28031a.get(i9) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}

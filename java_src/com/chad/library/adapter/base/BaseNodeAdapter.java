package com.chad.library.adapter.base;

import androidx.annotation.IntRange;
import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseExpandNode;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.entity.node.NodeFooterImp;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fH\u0016J\u0016\u0010\n\u001a\u00020\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fH\u0016J\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0014\u001a\u00020\u000b2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J2\u0010\u0017\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J<\u0010\u0017\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u001d\u001a\u00020\u00192\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J2\u0010\u001e\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J2\u0010\u001f\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J<\u0010\u001f\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010 \u001a\u00020\u00192\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J2\u0010!\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007JR\u0010\"\u001a\u00020\u000b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010#\u001a\u00020\u00192\b\b\u0002\u0010$\u001a\u00020\u00192\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u001cH\u0007J2\u0010'\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u000e\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\u0002J\u0010\u0010(\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\bJ-\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0002\u0010-J\u0010\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u00020\bH\u0014J\u0016\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002J\u001e\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0002J$\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fJ\u0016\u00103\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u0002J\u0016\u00103\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\bJ\u001c\u00105\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fJ\u001e\u00106\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0002J\u0010\u00107\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\bH\u0016J\u0010\u00108\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\bH\u0002J\u0010\u00109\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\bH\u0002J\u0018\u0010:\u001a\u00020\u000b2\u0006\u0010;\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u001e\u0010<\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020>2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\"\u0010<\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00042\b\u0010?\u001a\u0004\u0018\u00010@H\u0016J\u0018\u0010A\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000fH\u0016J\u0018\u0010B\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004H\u0016R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"Lcom/chad/library/adapter/base/BaseNodeAdapter;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/chad/library/adapter/base/entity/node/BaseNode;", "nodeList", "", "(Ljava/util/List;)V", "fullSpanNodeTypeSet", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "addData", "", "data", "position", "newData", "", "addFooterNodeProvider", "provider", "Lcom/chad/library/adapter/base/provider/BaseNodeProvider;", "addFullSpanNodeProvider", "addItemProvider", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "addNodeProvider", "collapse", "animate", "", "notify", "parentPayload", "", "isChangeChildCollapse", "collapseAndChild", "expand", "isChangeChildExpand", "expandAndChild", "expandAndCollapseOther", "isExpandedChild", "isCollapseChild", "expandPayload", "collapsePayload", "expandOrCollapse", "findParentNode", "node", "flatData", "list", "isExpanded", "(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;", "isFixedViewType", "type", "nodeAddData", "parentNode", "childIndex", "nodeRemoveData", "childNode", "nodeReplaceChildData", "nodeSetData", "removeAt", "removeChildAt", "removeNodesAt", "setData", "index", "setDiffNewData", "diffResult", "Landroidx/recyclerview/widget/DiffUtil$DiffResult;", "commitCallback", "Ljava/lang/Runnable;", "setList", "setNewInstance", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public abstract class BaseNodeAdapter extends BaseProviderMultiAdapter<BaseNode> {
    @NotNull
    private final HashSet<Integer> fullSpanNodeTypeSet;

    public BaseNodeAdapter() {
        this(null, 1, null);
    }

    public /* synthetic */ BaseNodeAdapter(List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list);
    }

    private final int collapse(@IntRange(from = 0) int i9, boolean z10, boolean z11, boolean z12, Object obj) {
        BaseNode baseNode = getData().get(i9);
        if (baseNode instanceof BaseExpandNode) {
            BaseExpandNode baseExpandNode = (BaseExpandNode) baseNode;
            if (baseExpandNode.isExpanded()) {
                int headerLayoutCount = i9 + getHeaderLayoutCount();
                baseExpandNode.setExpanded(false);
                List<BaseNode> childNode = baseNode.getChildNode();
                if (childNode == null || childNode.isEmpty()) {
                    notifyItemChanged(headerLayoutCount, obj);
                    return 0;
                }
                List<BaseNode> childNode2 = baseNode.getChildNode();
                Intrinsics.checkNotNull(childNode2);
                List<BaseNode> flatData = flatData(childNode2, z10 ? Boolean.FALSE : null);
                int size = flatData.size();
                getData().removeAll(flatData);
                if (z12) {
                    if (z11) {
                        notifyItemChanged(headerLayoutCount, obj);
                        notifyItemRangeRemoved(headerLayoutCount + 1, size);
                    } else {
                        notifyDataSetChanged();
                    }
                }
                return size;
            }
        }
        return 0;
    }

    static /* synthetic */ int collapse$default(BaseNodeAdapter baseNodeAdapter, int i9, boolean z10, boolean z11, boolean z12, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            boolean z13 = (i10 & 2) != 0 ? false : z10;
            boolean z14 = (i10 & 4) != 0 ? true : z11;
            boolean z15 = (i10 & 8) != 0 ? true : z12;
            if ((i10 & 16) != 0) {
                obj = null;
            }
            return baseNodeAdapter.collapse(i9, z13, z14, z15, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapse");
    }

    public static /* synthetic */ int collapseAndChild$default(BaseNodeAdapter baseNodeAdapter, int i9, boolean z10, boolean z11, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            if ((i10 & 4) != 0) {
                z11 = true;
            }
            if ((i10 & 8) != 0) {
                obj = null;
            }
            return baseNodeAdapter.collapseAndChild(i9, z10, z11, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapseAndChild");
    }

    private final int expand(@IntRange(from = 0) int i9, boolean z10, boolean z11, boolean z12, Object obj) {
        BaseNode baseNode = getData().get(i9);
        if (baseNode instanceof BaseExpandNode) {
            BaseExpandNode baseExpandNode = (BaseExpandNode) baseNode;
            if (!baseExpandNode.isExpanded()) {
                int headerLayoutCount = getHeaderLayoutCount() + i9;
                baseExpandNode.setExpanded(true);
                List<BaseNode> childNode = baseNode.getChildNode();
                if (childNode == null || childNode.isEmpty()) {
                    notifyItemChanged(headerLayoutCount, obj);
                    return 0;
                }
                List<BaseNode> childNode2 = baseNode.getChildNode();
                Intrinsics.checkNotNull(childNode2);
                List<BaseNode> flatData = flatData(childNode2, z10 ? Boolean.TRUE : null);
                int size = flatData.size();
                getData().addAll(i9 + 1, flatData);
                if (z12) {
                    if (z11) {
                        notifyItemChanged(headerLayoutCount, obj);
                        notifyItemRangeInserted(headerLayoutCount + 1, size);
                    } else {
                        notifyDataSetChanged();
                    }
                }
                return size;
            }
        }
        return 0;
    }

    static /* synthetic */ int expand$default(BaseNodeAdapter baseNodeAdapter, int i9, boolean z10, boolean z11, boolean z12, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            boolean z13 = (i10 & 2) != 0 ? false : z10;
            boolean z14 = (i10 & 4) != 0 ? true : z11;
            boolean z15 = (i10 & 8) != 0 ? true : z12;
            if ((i10 & 16) != 0) {
                obj = null;
            }
            return baseNodeAdapter.expand(i9, z13, z14, z15, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expand");
    }

    public static /* synthetic */ int expandAndChild$default(BaseNodeAdapter baseNodeAdapter, int i9, boolean z10, boolean z11, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            if ((i10 & 4) != 0) {
                z11 = true;
            }
            if ((i10 & 8) != 0) {
                obj = null;
            }
            return baseNodeAdapter.expandAndChild(i9, z10, z11, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandAndChild");
    }

    public static /* synthetic */ void expandAndCollapseOther$default(BaseNodeAdapter baseNodeAdapter, int i9, boolean z10, boolean z11, boolean z12, boolean z13, Object obj, Object obj2, int i10, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandAndCollapseOther");
        }
        baseNodeAdapter.expandAndCollapseOther(i9, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? true : z11, (i10 & 8) != 0 ? true : z12, (i10 & 16) == 0 ? z13 : true, (i10 & 32) != 0 ? null : obj, (i10 & 64) == 0 ? obj2 : null);
    }

    public static /* synthetic */ int expandOrCollapse$default(BaseNodeAdapter baseNodeAdapter, int i9, boolean z10, boolean z11, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            if ((i10 & 4) != 0) {
                z11 = true;
            }
            if ((i10 & 8) != 0) {
                obj = null;
            }
            return baseNodeAdapter.expandOrCollapse(i9, z10, z11, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandOrCollapse");
    }

    private final List<BaseNode> flatData(Collection<? extends BaseNode> collection, Boolean bool) {
        BaseNode footerNode;
        ArrayList arrayList = new ArrayList();
        for (BaseNode baseNode : collection) {
            arrayList.add(baseNode);
            boolean z10 = false;
            if (baseNode instanceof BaseExpandNode) {
                if (Intrinsics.areEqual(bool, Boolean.TRUE) || ((BaseExpandNode) baseNode).isExpanded()) {
                    List<BaseNode> childNode = baseNode.getChildNode();
                    if (!((childNode == null || childNode.isEmpty()) ? true : true)) {
                        arrayList.addAll(flatData(childNode, bool));
                    }
                }
                if (bool != null) {
                    ((BaseExpandNode) baseNode).setExpanded(bool.booleanValue());
                }
            } else {
                List<BaseNode> childNode2 = baseNode.getChildNode();
                if (!((childNode2 == null || childNode2.isEmpty()) ? true : true)) {
                    arrayList.addAll(flatData(childNode2, bool));
                }
            }
            if ((baseNode instanceof NodeFooterImp) && (footerNode = ((NodeFooterImp) baseNode).getFooterNode()) != null) {
                arrayList.add(footerNode);
            }
        }
        return arrayList;
    }

    static /* synthetic */ List flatData$default(BaseNodeAdapter baseNodeAdapter, Collection collection, Boolean bool, int i9, Object obj) {
        if (obj == null) {
            if ((i9 & 2) != 0) {
                bool = null;
            }
            return baseNodeAdapter.flatData(collection, bool);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: flatData");
    }

    private final int removeChildAt(int i9) {
        if (i9 >= getData().size()) {
            return 0;
        }
        BaseNode baseNode = getData().get(i9);
        List<BaseNode> childNode = baseNode.getChildNode();
        if (childNode == null || childNode.isEmpty()) {
            return 0;
        }
        if (baseNode instanceof BaseExpandNode) {
            if (((BaseExpandNode) baseNode).isExpanded()) {
                List<BaseNode> childNode2 = baseNode.getChildNode();
                Intrinsics.checkNotNull(childNode2);
                List flatData$default = flatData$default(this, childNode2, null, 2, null);
                getData().removeAll(flatData$default);
                return flatData$default.size();
            }
            return 0;
        }
        List<BaseNode> childNode3 = baseNode.getChildNode();
        Intrinsics.checkNotNull(childNode3);
        List flatData$default2 = flatData$default(this, childNode3, null, 2, null);
        getData().removeAll(flatData$default2);
        return flatData$default2.size();
    }

    private final int removeNodesAt(int i9) {
        if (i9 >= getData().size()) {
            return 0;
        }
        int removeChildAt = removeChildAt(i9);
        getData().remove(i9);
        int i10 = removeChildAt + 1;
        BaseNode baseNode = getData().get(i9);
        if (!(baseNode instanceof NodeFooterImp) || ((NodeFooterImp) baseNode).getFooterNode() == null) {
            return i10;
        }
        getData().remove(i9);
        return i10 + 1;
    }

    public final void addFooterNodeProvider(@NotNull BaseNodeProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        addFullSpanNodeProvider(provider);
    }

    public final void addFullSpanNodeProvider(@NotNull BaseNodeProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.fullSpanNodeTypeSet.add(Integer.valueOf(provider.getItemViewType()));
        addItemProvider(provider);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    public void addItemProvider(@NotNull BaseItemProvider<BaseNode> provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        if (provider instanceof BaseNodeProvider) {
            super.addItemProvider(provider);
            return;
        }
        throw new IllegalStateException("Please add BaseNodeProvider, no BaseItemProvider!");
    }

    public final void addNodeProvider(@NotNull BaseNodeProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        addItemProvider(provider);
    }

    @JvmOverloads
    public final int collapse(@IntRange(from = 0) int i9) {
        return collapse$default(this, i9, false, false, null, 14, null);
    }

    @JvmOverloads
    public final int collapse(@IntRange(from = 0) int i9, boolean z10) {
        return collapse$default(this, i9, z10, false, null, 12, null);
    }

    @JvmOverloads
    public final int collapse(@IntRange(from = 0) int i9, boolean z10, boolean z11) {
        return collapse$default(this, i9, z10, z11, null, 8, null);
    }

    @JvmOverloads
    public final int collapseAndChild(@IntRange(from = 0) int i9) {
        return collapseAndChild$default(this, i9, false, false, null, 14, null);
    }

    @JvmOverloads
    public final int collapseAndChild(@IntRange(from = 0) int i9, boolean z10) {
        return collapseAndChild$default(this, i9, z10, false, null, 12, null);
    }

    @JvmOverloads
    public final int collapseAndChild(@IntRange(from = 0) int i9, boolean z10, boolean z11) {
        return collapseAndChild$default(this, i9, z10, z11, null, 8, null);
    }

    @JvmOverloads
    public final int collapseAndChild(@IntRange(from = 0) int i9, boolean z10, boolean z11, @Nullable Object obj) {
        return collapse(i9, true, z10, z11, obj);
    }

    @JvmOverloads
    public final int expand(@IntRange(from = 0) int i9) {
        return expand$default(this, i9, false, false, null, 14, null);
    }

    @JvmOverloads
    public final int expand(@IntRange(from = 0) int i9, boolean z10) {
        return expand$default(this, i9, z10, false, null, 12, null);
    }

    @JvmOverloads
    public final int expand(@IntRange(from = 0) int i9, boolean z10, boolean z11) {
        return expand$default(this, i9, z10, z11, null, 8, null);
    }

    @JvmOverloads
    public final int expandAndChild(@IntRange(from = 0) int i9) {
        return expandAndChild$default(this, i9, false, false, null, 14, null);
    }

    @JvmOverloads
    public final int expandAndChild(@IntRange(from = 0) int i9, boolean z10) {
        return expandAndChild$default(this, i9, z10, false, null, 12, null);
    }

    @JvmOverloads
    public final int expandAndChild(@IntRange(from = 0) int i9, boolean z10, boolean z11) {
        return expandAndChild$default(this, i9, z10, z11, null, 8, null);
    }

    @JvmOverloads
    public final int expandAndChild(@IntRange(from = 0) int i9, boolean z10, boolean z11, @Nullable Object obj) {
        return expand(i9, true, z10, z11, obj);
    }

    @JvmOverloads
    public final void expandAndCollapseOther(@IntRange(from = 0) int i9) {
        expandAndCollapseOther$default(this, i9, false, false, false, false, null, null, 126, null);
    }

    @JvmOverloads
    public final void expandAndCollapseOther(@IntRange(from = 0) int i9, boolean z10) {
        expandAndCollapseOther$default(this, i9, z10, false, false, false, null, null, 124, null);
    }

    @JvmOverloads
    public final void expandAndCollapseOther(@IntRange(from = 0) int i9, boolean z10, boolean z11) {
        expandAndCollapseOther$default(this, i9, z10, z11, false, false, null, null, 120, null);
    }

    @JvmOverloads
    public final void expandAndCollapseOther(@IntRange(from = 0) int i9, boolean z10, boolean z11, boolean z12) {
        expandAndCollapseOther$default(this, i9, z10, z11, z12, false, null, null, 112, null);
    }

    @JvmOverloads
    public final void expandAndCollapseOther(@IntRange(from = 0) int i9, boolean z10, boolean z11, boolean z12, boolean z13) {
        expandAndCollapseOther$default(this, i9, z10, z11, z12, z13, null, null, 96, null);
    }

    @JvmOverloads
    public final void expandAndCollapseOther(@IntRange(from = 0) int i9, boolean z10, boolean z11, boolean z12, boolean z13, @Nullable Object obj) {
        expandAndCollapseOther$default(this, i9, z10, z11, z12, z13, obj, null, 64, null);
    }

    @JvmOverloads
    public final void expandAndCollapseOther(@IntRange(from = 0) int i9, boolean z10, boolean z11, boolean z12, boolean z13, @Nullable Object obj, @Nullable Object obj2) {
        int i10;
        int size;
        int expand = expand(i9, z10, z12, z13, obj);
        if (expand == 0) {
            return;
        }
        int findParentNode = findParentNode(i9);
        int i11 = findParentNode == -1 ? 0 : findParentNode + 1;
        if (i9 - i11 > 0) {
            int i12 = i11;
            i10 = i9;
            do {
                i12++;
                i10 -= collapse(i12, z11, z12, z13, obj2);
            } while (i12 < i10);
        } else {
            i10 = i9;
        }
        if (findParentNode == -1) {
            size = getData().size() - 1;
        } else {
            List<BaseNode> childNode = getData().get(findParentNode).getChildNode();
            size = findParentNode + (childNode != null ? childNode.size() : 0) + expand;
        }
        int i13 = i10 + expand;
        if (i13 < size) {
            int i14 = i13 + 1;
            while (i14 <= size) {
                i14++;
                size -= collapse(i14, z11, z12, z13, obj2);
            }
        }
    }

    @JvmOverloads
    public final int expandOrCollapse(@IntRange(from = 0) int i9) {
        return expandOrCollapse$default(this, i9, false, false, null, 14, null);
    }

    @JvmOverloads
    public final int expandOrCollapse(@IntRange(from = 0) int i9, boolean z10) {
        return expandOrCollapse$default(this, i9, z10, false, null, 12, null);
    }

    @JvmOverloads
    public final int expandOrCollapse(@IntRange(from = 0) int i9, boolean z10, boolean z11) {
        return expandOrCollapse$default(this, i9, z10, z11, null, 8, null);
    }

    @JvmOverloads
    public final int expandOrCollapse(@IntRange(from = 0) int i9, boolean z10, boolean z11, @Nullable Object obj) {
        BaseNode baseNode = getData().get(i9);
        if (baseNode instanceof BaseExpandNode) {
            if (((BaseExpandNode) baseNode).isExpanded()) {
                return collapse(i9, false, z10, z11, obj);
            }
            return expand(i9, false, z10, z11, obj);
        }
        return 0;
    }

    public final int findParentNode(@NotNull BaseNode node) {
        int i9;
        Intrinsics.checkNotNullParameter(node, "node");
        int indexOf = getData().indexOf(node);
        if (indexOf != -1 && indexOf != 0 && (i9 = indexOf - 1) >= 0) {
            while (true) {
                int i10 = i9 - 1;
                List<BaseNode> childNode = getData().get(i9).getChildNode();
                boolean z10 = false;
                if (childNode != null && childNode.contains(node)) {
                    z10 = true;
                }
                if (z10) {
                    return i9;
                }
                if (i10 < 0) {
                    break;
                }
                i9 = i10;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public boolean isFixedViewType(int i9) {
        return super.isFixedViewType(i9) || this.fullSpanNodeTypeSet.contains(Integer.valueOf(i9));
    }

    public final void nodeAddData(@NotNull BaseNode parentNode, @NotNull BaseNode data) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(data, "data");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode == null) {
            return;
        }
        childNode.add(data);
        if (!(parentNode instanceof BaseExpandNode) || ((BaseExpandNode) parentNode).isExpanded()) {
            addData(getData().indexOf(parentNode) + childNode.size(), data);
        }
    }

    public final void nodeRemoveData(@NotNull BaseNode parentNode, int i9) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode != null && i9 < childNode.size()) {
            if ((parentNode instanceof BaseExpandNode) && !((BaseExpandNode) parentNode).isExpanded()) {
                childNode.remove(i9);
                return;
            }
            remove(getData().indexOf(parentNode) + 1 + i9);
            childNode.remove(i9);
        }
    }

    public final void nodeReplaceChildData(@NotNull BaseNode parentNode, @NotNull Collection<? extends BaseNode> newData) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(newData, "newData");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode == null) {
            return;
        }
        if ((parentNode instanceof BaseExpandNode) && !((BaseExpandNode) parentNode).isExpanded()) {
            childNode.clear();
            childNode.addAll(newData);
            return;
        }
        int indexOf = getData().indexOf(parentNode);
        int removeChildAt = removeChildAt(indexOf);
        childNode.clear();
        childNode.addAll(newData);
        List flatData$default = flatData$default(this, newData, null, 2, null);
        int i9 = indexOf + 1;
        getData().addAll(i9, flatData$default);
        int headerLayoutCount = i9 + getHeaderLayoutCount();
        if (removeChildAt == flatData$default.size()) {
            notifyItemRangeChanged(headerLayoutCount, removeChildAt);
            return;
        }
        notifyItemRangeRemoved(headerLayoutCount, removeChildAt);
        notifyItemRangeInserted(headerLayoutCount, flatData$default.size());
    }

    public final void nodeSetData(@NotNull BaseNode parentNode, int i9, @NotNull BaseNode data) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(data, "data");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode != null && i9 < childNode.size()) {
            if ((parentNode instanceof BaseExpandNode) && !((BaseExpandNode) parentNode).isExpanded()) {
                childNode.set(i9, data);
                return;
            }
            setData(getData().indexOf(parentNode) + 1 + i9, data);
            childNode.set(i9, data);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void removeAt(int i9) {
        notifyItemRangeRemoved(i9 + getHeaderLayoutCount(), removeNodesAt(i9));
        compatibilityDataSizeChanged(0);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setDiffNewData(@Nullable List<BaseNode> list, @Nullable Runnable runnable) {
        if (hasEmptyView()) {
            setNewInstance(list);
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        super.setDiffNewData(flatData$default(this, list, null, 2, null), runnable);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setList(@Nullable Collection<? extends BaseNode> collection) {
        if (collection == null) {
            collection = new ArrayList<>();
        }
        super.setList(flatData$default(this, collection, null, 2, null));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setNewInstance(@Nullable List<BaseNode> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        super.setNewInstance(flatData$default(this, list, null, 2, null));
    }

    public BaseNodeAdapter(@Nullable List<BaseNode> list) {
        super(null);
        this.fullSpanNodeTypeSet = new HashSet<>();
        if (list == null || list.isEmpty()) {
            return;
        }
        getData().addAll(flatData$default(this, list, null, 2, null));
    }

    public static /* synthetic */ int collapse$default(BaseNodeAdapter baseNodeAdapter, int i9, boolean z10, boolean z11, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            if ((i10 & 4) != 0) {
                z11 = true;
            }
            if ((i10 & 8) != 0) {
                obj = null;
            }
            return baseNodeAdapter.collapse(i9, z10, z11, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapse");
    }

    public static /* synthetic */ int expand$default(BaseNodeAdapter baseNodeAdapter, int i9, boolean z10, boolean z11, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            if ((i10 & 4) != 0) {
                z11 = true;
            }
            if ((i10 & 8) != 0) {
                obj = null;
            }
            return baseNodeAdapter.expand(i9, z10, z11, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expand");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setData(int i9, @NotNull BaseNode data) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(data, "data");
        int removeNodesAt = removeNodesAt(i9);
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(data);
        List flatData$default = flatData$default(this, arrayListOf, null, 2, null);
        getData().addAll(i9, flatData$default);
        if (removeNodesAt == flatData$default.size()) {
            notifyItemRangeChanged(i9 + getHeaderLayoutCount(), removeNodesAt);
            return;
        }
        notifyItemRangeRemoved(getHeaderLayoutCount() + i9, removeNodesAt);
        notifyItemRangeInserted(i9 + getHeaderLayoutCount(), flatData$default.size());
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addData(int i9, @NotNull BaseNode data) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(data, "data");
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(data);
        addData(i9, (Collection<? extends BaseNode>) arrayListOf);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addData(@NotNull BaseNode data) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(data, "data");
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(data);
        addData((Collection<? extends BaseNode>) arrayListOf);
    }

    public final int findParentNode(@IntRange(from = 0) int i9) {
        if (i9 == 0) {
            return -1;
        }
        BaseNode baseNode = getData().get(i9);
        int i10 = i9 - 1;
        if (i10 >= 0) {
            while (true) {
                int i11 = i10 - 1;
                List<BaseNode> childNode = getData().get(i10).getChildNode();
                boolean z10 = false;
                if (childNode != null && childNode.contains(baseNode)) {
                    z10 = true;
                }
                if (z10) {
                    return i10;
                }
                if (i11 < 0) {
                    break;
                }
                i10 = i11;
            }
        }
        return -1;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setDiffNewData(@NotNull DiffUtil.DiffResult diffResult, @NotNull List<BaseNode> list) {
        Intrinsics.checkNotNullParameter(diffResult, "diffResult");
        Intrinsics.checkNotNullParameter(list, "list");
        if (hasEmptyView()) {
            setNewInstance(list);
        } else {
            super.setDiffNewData(diffResult, flatData$default(this, list, null, 2, null));
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addData(int i9, @NotNull Collection<? extends BaseNode> newData) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        super.addData(i9, (Collection) flatData$default(this, newData, null, 2, null));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addData(@NotNull Collection<? extends BaseNode> newData) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        super.addData((Collection) flatData$default(this, newData, null, 2, null));
    }

    public final void nodeAddData(@NotNull BaseNode parentNode, int i9, @NotNull BaseNode data) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(data, "data");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode == null) {
            return;
        }
        childNode.add(i9, data);
        if (!(parentNode instanceof BaseExpandNode) || ((BaseExpandNode) parentNode).isExpanded()) {
            addData(getData().indexOf(parentNode) + 1 + i9, data);
        }
    }

    public final void nodeRemoveData(@NotNull BaseNode parentNode, @NotNull BaseNode childNode) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(childNode, "childNode");
        List<BaseNode> childNode2 = parentNode.getChildNode();
        if (childNode2 == null) {
            return;
        }
        if ((parentNode instanceof BaseExpandNode) && !((BaseExpandNode) parentNode).isExpanded()) {
            childNode2.remove(childNode);
            return;
        }
        remove((BaseNodeAdapter) childNode);
        childNode2.remove(childNode);
    }

    public final void nodeAddData(@NotNull BaseNode parentNode, int i9, @NotNull Collection<? extends BaseNode> newData) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(newData, "newData");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode == null) {
            return;
        }
        childNode.addAll(i9, newData);
        if (!(parentNode instanceof BaseExpandNode) || ((BaseExpandNode) parentNode).isExpanded()) {
            addData(getData().indexOf(parentNode) + 1 + i9, newData);
        }
    }

    @JvmOverloads
    public final int collapse(@IntRange(from = 0) int i9, boolean z10, boolean z11, @Nullable Object obj) {
        return collapse(i9, false, z10, z11, obj);
    }

    @JvmOverloads
    public final int expand(@IntRange(from = 0) int i9, boolean z10, boolean z11, @Nullable Object obj) {
        return expand(i9, false, z10, z11, obj);
    }
}

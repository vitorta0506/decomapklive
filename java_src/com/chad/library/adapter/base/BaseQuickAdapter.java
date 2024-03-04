package com.chad.library.adapter.base;

import android.animation.Animator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.animation.AlphaInAnimation;
import com.chad.library.adapter.base.animation.BaseAnimation;
import com.chad.library.adapter.base.animation.ScaleInAnimation;
import com.chad.library.adapter.base.animation.SlideInBottomAnimation;
import com.chad.library.adapter.base.animation.SlideInLeftAnimation;
import com.chad.library.adapter.base.animation.SlideInRightAnimation;
import com.chad.library.adapter.base.diff.BrvahAsyncDiffer;
import com.chad.library.adapter.base.diff.BrvahAsyncDifferConfig;
import com.chad.library.adapter.base.diff.BrvahListUpdateCallback;
import com.chad.library.adapter.base.module.BaseDraggableModule;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.BaseUpFetchModule;
import com.chad.library.adapter.base.module.DraggableModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.module.UpFetchModule;
import com.chad.library.adapter.base.util.AdapterUtilsKt;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.utils.BaseConfig;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericSignatureFormatError;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.MalformedParameterizedTypeException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010!\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0019\b&\u0018\u0000 ö\u0001*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\b\u0012\u0004\u0012\u00028\u00010\u0004:\u0004÷\u0001ö\u0001B'\b\u0007\u0012\b\b\u0001\u0010G\u001a\u00020\u001a\u0012\u0010\b\u0002\u0010e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010#¢\u0006\u0006\bô\u0001\u0010õ\u0001J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u001a\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00072\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0002J%\u0010\f\u001a\u0004\u0018\u00018\u00012\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u001f\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u0000H$¢\u0006\u0004\b\u0012\u0010\u0013J-\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0014¢\u0006\u0004\b\u0012\u0010\u0017J\u001f\u0010\u001c\u001a\u00028\u00012\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u001aH\u0016J\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001aH\u0016J\u001f\u0010!\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00020\u001aH\u0016¢\u0006\u0004\b!\u0010\"J-\u0010!\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00020\u001a2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150#H\u0016¢\u0006\u0004\b!\u0010$J\u0010\u0010&\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020\u001aH\u0016J\u0017\u0010'\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u0001H\u0016¢\u0006\u0004\b'\u0010(J\u0010\u0010+\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)H\u0016J\u0010\u0010,\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)H\u0016J\u0010\u0010/\u001a\u00020.2\u0006\u0010-\u001a\u00020\u001aH\u0014J\u0019\u00100\u001a\u00028\u00002\b\b\u0001\u0010\u001f\u001a\u00020\u001aH\u0016¢\u0006\u0004\b0\u00101J\u001b\u00102\u001a\u0004\u0018\u00018\u00002\b\b\u0001\u0010\u001f\u001a\u00020\u001aH\u0016¢\u0006\u0004\b2\u00101J\u0019\u00103\u001a\u00020\u001a2\b\u0010\u0011\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b3\u00104J\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u001a05J\u0014\u00109\u001a\u00020\u00052\f\b\u0001\u00108\u001a\u000207\"\u00020\u001aJ\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u001a05J\u0014\u0010;\u001a\u00020\u00052\f\b\u0001\u00108\u001a\u000207\"\u00020\u001aJ\u001f\u0010=\u001a\u00020\u00052\u0006\u0010<\u001a\u00028\u00012\u0006\u0010\u001b\u001a\u00020\u001aH\u0014¢\u0006\u0004\b=\u0010\"J\u0018\u0010?\u001a\u00020\u00052\u0006\u0010>\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001aH\u0014J\u0018\u0010@\u001a\u00020.2\u0006\u0010>\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001aH\u0014J\u0018\u0010A\u001a\u00020\u00052\u0006\u0010>\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001aH\u0014J\u0018\u0010B\u001a\u00020.2\u0006\u0010>\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001aH\u0014J\u001f\u0010C\u001a\u00020\u00052\u0006\u0010<\u001a\u00028\u00012\u0006\u0010\u001b\u001a\u00020\u001aH\u0014¢\u0006\u0004\bC\u0010\"J\b\u0010D\u001a\u00020\u001aH\u0014J\u0010\u0010E\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001aH\u0014J\u001f\u0010F\u001a\u00028\u00012\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0014¢\u0006\u0004\bF\u0010\u001dJ!\u0010H\u001a\u00028\u00012\u0006\u0010\u0019\u001a\u00020\u00182\b\b\u0001\u0010G\u001a\u00020\u001aH\u0014¢\u0006\u0004\bH\u0010\u001dJ\u0017\u0010H\u001a\u00028\u00012\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\bH\u0010IJ\u0010\u0010J\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0014J\u001a\u0010L\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001f\u001a\u00020\u001a2\b\b\u0001\u0010K\u001a\u00020\u001aJ$\u0010O\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010M\u001a\u00020\u001a2\b\b\u0002\u0010N\u001a\u00020\u001aH\u0007J$\u0010P\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010M\u001a\u00020\u001a2\b\b\u0002\u0010N\u001a\u00020\u001aH\u0007J\u0006\u0010Q\u001a\u00020.J\u000e\u0010S\u001a\u00020\u00052\u0006\u0010R\u001a\u00020\nJ\u0006\u0010T\u001a\u00020\u0005J$\u0010U\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010M\u001a\u00020\u001a2\b\b\u0002\u0010N\u001a\u00020\u001aH\u0007J$\u0010V\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010M\u001a\u00020\u001a2\b\b\u0002\u0010N\u001a\u00020\u001aH\u0007J\u000e\u0010X\u001a\u00020\u00052\u0006\u0010W\u001a\u00020\nJ\u0006\u0010Y\u001a\u00020\u0005J\u0006\u0010Z\u001a\u00020.J\u000e\u0010\\\u001a\u00020\u00052\u0006\u0010[\u001a\u00020\nJ\u000e\u0010\\\u001a\u00020\u00052\u0006\u0010G\u001a\u00020\u001aJ\u0006\u0010]\u001a\u00020\u0005J\u0006\u0010^\u001a\u00020.J\u0018\u0010a\u001a\u00020\u00052\u0006\u0010`\u001a\u00020_2\u0006\u0010M\u001a\u00020\u001aH\u0014J\u000e\u0010d\u001a\u00020\u00052\u0006\u0010c\u001a\u00020bJ\u0018\u0010f\u001a\u00020\u00052\u000e\u0010e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010#H\u0017J\u0018\u0010h\u001a\u00020\u00052\u000e\u0010g\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010#H\u0016J\u0016\u0010k\u001a\u00020\u00052\f\u0010j\u001a\b\u0012\u0004\u0012\u00028\u00000iH\u0017J\u0018\u0010l\u001a\u00020\u00052\u000e\u0010g\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010iH\u0016J!\u0010m\u001a\u00020\u00052\b\b\u0001\u0010M\u001a\u00020\u001a2\u0006\u0010e\u001a\u00028\u0000H\u0016¢\u0006\u0004\bm\u0010nJ!\u0010o\u001a\u00020\u00052\b\b\u0001\u0010\u001f\u001a\u00020\u001a2\u0006\u0010e\u001a\u00028\u0000H\u0016¢\u0006\u0004\bo\u0010nJ\u0019\u0010o\u001a\u00020\u00052\b\b\u0001\u0010e\u001a\u00028\u0000H\u0016¢\u0006\u0004\bo\u0010pJ \u0010o\u001a\u00020\u00052\b\b\u0001\u0010\u001f\u001a\u00020\u001a2\f\u0010j\u001a\b\u0012\u0004\u0012\u00028\u00000iH\u0016J\u0018\u0010o\u001a\u00020\u00052\u000e\b\u0001\u0010j\u001a\b\u0012\u0004\u0012\u00028\u00000iH\u0016J\u0012\u0010q\u001a\u00020\u00052\b\b\u0001\u0010\u001f\u001a\u00020\u001aH\u0017J\u0012\u0010r\u001a\u00020\u00052\b\b\u0001\u0010\u001f\u001a\u00020\u001aH\u0016J\u0017\u0010q\u001a\u00020\u00052\u0006\u0010e\u001a\u00028\u0000H\u0016¢\u0006\u0004\bq\u0010pJ\u0010\u0010t\u001a\u00020\u00052\u0006\u0010s\u001a\u00020\u001aH\u0004J\u0014\u0010w\u001a\u00020\u00052\f\u0010v\u001a\b\u0012\u0004\u0012\u00028\u00000uJ\u0014\u0010z\u001a\u00020\u00052\f\u0010y\u001a\b\u0012\u0004\u0012\u00028\u00000xJ\u000e\u0010|\u001a\b\u0012\u0004\u0012\u00028\u00000{H\u0007J\f\u0010}\u001a\b\u0012\u0004\u0012\u00028\u00000{J%\u0010\u0080\u0001\u001a\u00020\u00052\u000e\u0010g\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010#2\n\b\u0002\u0010\u007f\u001a\u0004\u0018\u00010~H\u0017J#\u0010\u0080\u0001\u001a\u00020\u00052\n\b\u0001\u0010\u0082\u0001\u001a\u00030\u0081\u00012\f\u0010g\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016J\u0013\u0010\u0085\u0001\u001a\u00020\u00052\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0083\u0001J\u0013\u0010\u0088\u0001\u001a\u00020\u00052\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u0001J\u0013\u0010\u008a\u0001\u001a\u00020\u00052\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0089\u0001J\u0013\u0010\u008c\u0001\u001a\u00020\u00052\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u008b\u0001J\u0013\u0010\u008e\u0001\u001a\u00020\u00052\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u008d\u0001J\n\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0086\u0001J\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0089\u0001J\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008b\u0001J\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u008d\u0001R\u0015\u0010G\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bG\u0010\u0093\u0001R<\u0010e\u001a\b\u0012\u0004\u0012\u00028\u00000#2\r\u0010\u0094\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000#8\u0006@@X\u0086\u000e¢\u0006\u0017\n\u0005\be\u0010\u0095\u0001\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001\"\u0006\b\u0098\u0001\u0010\u0099\u0001R)\u0010\u009a\u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009a\u0001\u0010\u009b\u0001\u001a\u0006\b\u009c\u0001\u0010\u009d\u0001\"\u0006\b\u009e\u0001\u0010\u009f\u0001R)\u0010 \u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b \u0001\u0010\u009b\u0001\u001a\u0006\b¡\u0001\u0010\u009d\u0001\"\u0006\b¢\u0001\u0010\u009f\u0001R)\u0010£\u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b£\u0001\u0010\u009b\u0001\u001a\u0006\b£\u0001\u0010\u009d\u0001\"\u0006\b¤\u0001\u0010\u009f\u0001R)\u0010¥\u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¥\u0001\u0010\u009b\u0001\u001a\u0006\b¦\u0001\u0010\u009d\u0001\"\u0006\b§\u0001\u0010\u009f\u0001R)\u0010¨\u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¨\u0001\u0010\u009b\u0001\u001a\u0006\b©\u0001\u0010\u009d\u0001\"\u0006\bª\u0001\u0010\u009f\u0001R)\u0010«\u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b«\u0001\u0010\u009b\u0001\u001a\u0006\b¬\u0001\u0010\u009d\u0001\"\u0006\b\u00ad\u0001\u0010\u009f\u0001R)\u0010®\u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b®\u0001\u0010\u009b\u0001\u001a\u0006\b®\u0001\u0010\u009d\u0001\"\u0006\b¯\u0001\u0010\u009f\u0001R8\u0010²\u0001\u001a\u0005\u0018\u00010°\u00012\n\u0010±\u0001\u001a\u0005\u0018\u00010°\u00018\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b²\u0001\u0010³\u0001\u001a\u0006\b´\u0001\u0010µ\u0001\"\u0006\b¶\u0001\u0010·\u0001R!\u0010¸\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R\u001a\u0010»\u0001\u001a\u00030º\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b»\u0001\u0010¼\u0001R\u001a\u0010½\u0001\u001a\u00030º\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b½\u0001\u0010¼\u0001R\u001a\u0010¿\u0001\u001a\u00030¾\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¿\u0001\u0010À\u0001R\u0019\u0010Á\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010\u0093\u0001R\u001c\u0010Ã\u0001\u001a\u0005\u0018\u00010Â\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010Ä\u0001R\u001c\u0010Æ\u0001\u001a\u0005\u0018\u00010Å\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010Ç\u0001R,\u0010É\u0001\u001a\u0005\u0018\u00010È\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\bÉ\u0001\u0010Ê\u0001\u001a\u0006\bË\u0001\u0010Ì\u0001\"\u0006\bÍ\u0001\u0010Î\u0001R.\u0010Ï\u0001\u001a\u0004\u0018\u00010)2\t\u0010\u0094\u0001\u001a\u0004\u0018\u00010)8\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\bÏ\u0001\u0010Ð\u0001\u001a\u0006\bÑ\u0001\u0010Ò\u0001R\u001d\u0010Ó\u0001\u001a\b\u0012\u0004\u0012\u00020\u001a058\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÓ\u0001\u0010Ô\u0001R\u001d\u0010Õ\u0001\u001a\b\u0012\u0004\u0012\u00020\u001a058\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÕ\u0001\u0010Ô\u0001R\u0015\u0010×\u0001\u001a\u00030È\u00018F¢\u0006\b\u001a\u0006\bÖ\u0001\u0010Ì\u0001R\u0015\u0010Ú\u0001\u001a\u00030Â\u00018F¢\u0006\b\u001a\u0006\bØ\u0001\u0010Ù\u0001R\u0015\u0010Ý\u0001\u001a\u00030Å\u00018F¢\u0006\b\u001a\u0006\bÛ\u0001\u0010Ü\u0001R\u0013\u0010*\u001a\u00020)8F¢\u0006\b\u001a\u0006\bÞ\u0001\u0010Ò\u0001R\u0015\u0010â\u0001\u001a\u00030ß\u00018F¢\u0006\b\u001a\u0006\bà\u0001\u0010á\u0001R\u0014\u0010å\u0001\u001a\u00020\u001a8F¢\u0006\b\u001a\u0006\bã\u0001\u0010ä\u0001R\u0014\u0010ç\u0001\u001a\u00020\u001a8F¢\u0006\b\u001a\u0006\bæ\u0001\u0010ä\u0001R\u0017\u0010ê\u0001\u001a\u0005\u0018\u00010º\u00018F¢\u0006\b\u001a\u0006\bè\u0001\u0010é\u0001R\u0014\u0010ì\u0001\u001a\u00020\u001a8F¢\u0006\b\u001a\u0006\bë\u0001\u0010ä\u0001R\u0014\u0010î\u0001\u001a\u00020\u001a8F¢\u0006\b\u001a\u0006\bí\u0001\u0010ä\u0001R\u0017\u0010ð\u0001\u001a\u0005\u0018\u00010º\u00018F¢\u0006\b\u001a\u0006\bï\u0001\u0010é\u0001R\u0017\u0010ó\u0001\u001a\u0005\u0018\u00010¾\u00018F¢\u0006\b\u001a\u0006\bñ\u0001\u0010ò\u0001¨\u0006ø\u0001"}, d2 = {"Lcom/chad/library/adapter/base/BaseQuickAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "VH", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "", "checkModule", "Ljava/lang/Class;", "z", "getInstancedGenericKClass", "Landroid/view/View;", ViewHierarchyConstants.VIEW_KEY, "createBaseGenericKInstance", "(Ljava/lang/Class;Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "addAnimation", BaseConfig.ITEM, "convert", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V", "", "", "payloads", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "getItemCount", "position", "getItemViewType", "onBindViewHolder", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", "", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V", "", "getItemId", "onViewAttachedToWindow", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onAttachedToRecyclerView", "onDetachedFromRecyclerView", "type", "", "isFixedViewType", "getItem", "(I)Ljava/lang/Object;", "getItemOrNull", "getItemPosition", "(Ljava/lang/Object;)I", "Ljava/util/LinkedHashSet;", "getChildClickViewIds", "", "viewIds", "addChildClickViewIds", "getChildLongClickViewIds", "addChildLongClickViewIds", "viewHolder", "bindViewClickListener", NotifyType.VIBRATE, "setOnItemClick", "setOnItemLongClick", "setOnItemChildClick", "setOnItemChildLongClick", "onItemViewHolderCreated", "getDefItemCount", "getDefItemViewType", "onCreateDefViewHolder", "layoutResId", "createBaseViewHolder", "(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "setFullSpan", "viewId", "getViewByPosition", "index", AdUnitActivity.EXTRA_ORIENTATION, "addHeaderView", "setHeaderView", "hasHeaderLayout", "header", "removeHeaderView", "removeAllHeaderView", "addFooterView", "setFooterView", "footer", "removeFooterView", "removeAllFooterView", "hasFooterLayout", "emptyView", "setEmptyView", "removeEmptyView", "hasEmptyView", "Landroid/animation/Animator;", "anim", "startAnim", "Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;", "animationType", "setAnimationWithDefault", "data", "setNewData", "list", "setNewInstance", "", "newData", "replaceData", "setList", "setData", "(ILjava/lang/Object;)V", "addData", "(Ljava/lang/Object;)V", "remove", "removeAt", "size", "compatibilityDataSizeChanged", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "diffCallback", "setDiffCallback", "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;", "config", "setDiffConfig", "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;", "getDiffHelper", "getDiffer", "Ljava/lang/Runnable;", "commitCallback", "setDiffNewData", "Landroidx/recyclerview/widget/DiffUtil$DiffResult;", "diffResult", "Lx0/b;", "spanSizeLookup", "setGridSpanSizeLookup", "Lx0/f;", "listener", "setOnItemClickListener", "Lx0/h;", "setOnItemLongClickListener", "Lx0/d;", "setOnItemChildClickListener", "Lx0/e;", "setOnItemChildLongClickListener", "getOnItemClickListener", "getOnItemLongClickListener", "getOnItemChildClickListener", "getOnItemChildLongClickListener", "I", "<set-?>", "Ljava/util/List;", "getData", "()Ljava/util/List;", "setData$com_github_CymChad_brvah", "(Ljava/util/List;)V", "headerWithEmptyEnable", "Z", "getHeaderWithEmptyEnable", "()Z", "setHeaderWithEmptyEnable", "(Z)V", "footerWithEmptyEnable", "getFooterWithEmptyEnable", "setFooterWithEmptyEnable", "isUseEmpty", "setUseEmpty", "headerViewAsFlow", "getHeaderViewAsFlow", "setHeaderViewAsFlow", "footerViewAsFlow", "getFooterViewAsFlow", "setFooterViewAsFlow", "animationEnable", "getAnimationEnable", "setAnimationEnable", "isAnimationFirstOnly", "setAnimationFirstOnly", "Lcom/chad/library/adapter/base/animation/BaseAnimation;", "value", "adapterAnimation", "Lcom/chad/library/adapter/base/animation/BaseAnimation;", "getAdapterAnimation", "()Lcom/chad/library/adapter/base/animation/BaseAnimation;", "setAdapterAnimation", "(Lcom/chad/library/adapter/base/animation/BaseAnimation;)V", "mDiffHelper", "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;", "Landroid/widget/LinearLayout;", "mHeaderLayout", "Landroid/widget/LinearLayout;", "mFooterLayout", "Landroid/widget/FrameLayout;", "mEmptyLayout", "Landroid/widget/FrameLayout;", "mLastPosition", "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;", "mUpFetchModule", "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;", "Lcom/chad/library/adapter/base/module/BaseDraggableModule;", "mDraggableModule", "Lcom/chad/library/adapter/base/module/BaseDraggableModule;", "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;", "mLoadMoreModule", "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;", "getMLoadMoreModule$com_github_CymChad_brvah", "()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;", "setMLoadMoreModule$com_github_CymChad_brvah", "(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V", "recyclerViewOrNull", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerViewOrNull", "()Landroidx/recyclerview/widget/RecyclerView;", "childClickViewIds", "Ljava/util/LinkedHashSet;", "childLongClickViewIds", "getLoadMoreModule", "loadMoreModule", "getUpFetchModule", "()Lcom/chad/library/adapter/base/module/BaseUpFetchModule;", "upFetchModule", "getDraggableModule", "()Lcom/chad/library/adapter/base/module/BaseDraggableModule;", "draggableModule", "getRecyclerView", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "getHeaderViewPosition", "()I", "headerViewPosition", "getHeaderLayoutCount", "headerLayoutCount", "getHeaderLayout", "()Landroid/widget/LinearLayout;", "headerLayout", "getFooterViewPosition", "footerViewPosition", "getFooterLayoutCount", "footerLayoutCount", "getFooterLayout", "footerLayout", "getEmptyLayout", "()Landroid/widget/FrameLayout;", "emptyLayout", "<init>", "(ILjava/util/List;)V", "Companion", "AnimationType", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public abstract class BaseQuickAdapter<T, VH extends BaseViewHolder> extends RecyclerView.Adapter<VH> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int EMPTY_VIEW = 268436821;
    public static final int FOOTER_VIEW = 268436275;
    public static final int HEADER_VIEW = 268435729;
    public static final int LOAD_MORE_VIEW = 268436002;
    @Nullable
    private BaseAnimation adapterAnimation;
    private boolean animationEnable;
    @NotNull
    private final LinkedHashSet<Integer> childClickViewIds;
    @NotNull
    private final LinkedHashSet<Integer> childLongClickViewIds;
    @NotNull
    private List<T> data;
    private boolean footerViewAsFlow;
    private boolean footerWithEmptyEnable;
    private boolean headerViewAsFlow;
    private boolean headerWithEmptyEnable;
    private boolean isAnimationFirstOnly;
    private boolean isUseEmpty;
    private final int layoutResId;
    @Nullable
    private BrvahAsyncDiffer<T> mDiffHelper;
    @Nullable
    private BaseDraggableModule mDraggableModule;
    private FrameLayout mEmptyLayout;
    private LinearLayout mFooterLayout;
    private LinearLayout mHeaderLayout;
    private int mLastPosition;
    @Nullable
    private BaseLoadMoreModule mLoadMoreModule;
    @Nullable
    private x0.d mOnItemChildClickListener;
    @Nullable
    private x0.e mOnItemChildLongClickListener;
    @Nullable
    private x0.f mOnItemClickListener;
    @Nullable
    private x0.h mOnItemLongClickListener;
    @Nullable
    private x0.b mSpanSizeLookup;
    @Nullable
    private BaseUpFetchModule mUpFetchModule;
    @Nullable
    private RecyclerView recyclerViewOrNull;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;", "", "(Ljava/lang/String;I)V", "AlphaIn", "ScaleIn", "SlideInBottom", "SlideInLeft", "SlideInRight", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum AnimationType {
        AlphaIn,
        ScaleIn,
        SlideInBottom,
        SlideInLeft,
        SlideInRight
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/chad/library/adapter/base/BaseQuickAdapter$Companion;", "", "()V", "EMPTY_VIEW", "", "FOOTER_VIEW", "HEADER_VIEW", "LOAD_MORE_VIEW", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnimationType.values().length];
            iArr[AnimationType.AlphaIn.ordinal()] = 1;
            iArr[AnimationType.ScaleIn.ordinal()] = 2;
            iArr[AnimationType.SlideInBottom.ordinal()] = 3;
            iArr[AnimationType.SlideInLeft.ordinal()] = 4;
            iArr[AnimationType.SlideInRight.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @JvmOverloads
    public BaseQuickAdapter(@LayoutRes int i9) {
        this(i9, null, 2, null);
    }

    public /* synthetic */ BaseQuickAdapter(int i9, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : list);
    }

    private final void addAnimation(RecyclerView.ViewHolder viewHolder) {
        if (this.animationEnable) {
            if (!this.isAnimationFirstOnly || viewHolder.getLayoutPosition() > this.mLastPosition) {
                BaseAnimation baseAnimation = this.adapterAnimation;
                if (baseAnimation == null) {
                    baseAnimation = new AlphaInAnimation(0.0f, 1, null);
                }
                View view = viewHolder.itemView;
                Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
                for (Animator animator : baseAnimation.animators(view)) {
                    startAnim(animator, viewHolder.getLayoutPosition());
                }
                this.mLastPosition = viewHolder.getLayoutPosition();
            }
        }
    }

    public static /* synthetic */ int addFooterView$default(BaseQuickAdapter baseQuickAdapter, View view, int i9, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i9 = -1;
            }
            if ((i11 & 4) != 0) {
                i10 = 1;
            }
            return baseQuickAdapter.addFooterView(view, i9, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addFooterView");
    }

    public static /* synthetic */ int addHeaderView$default(BaseQuickAdapter baseQuickAdapter, View view, int i9, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i9 = -1;
            }
            if ((i11 & 4) != 0) {
                i10 = 1;
            }
            return baseQuickAdapter.addHeaderView(view, i9, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addHeaderView");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindViewClickListener$lambda-12$lambda-11$lambda-10  reason: not valid java name */
    public static final void m27bindViewClickListener$lambda12$lambda11$lambda10(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v10) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(v10, "v");
        this$0.setOnItemChildClick(v10, bindingAdapterPosition - this$0.getHeaderLayoutCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindViewClickListener$lambda-15$lambda-14$lambda-13  reason: not valid java name */
    public static final boolean m28bindViewClickListener$lambda15$lambda14$lambda13(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v10) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        Intrinsics.checkNotNullExpressionValue(v10, "v");
        return this$0.setOnItemChildLongClick(v10, bindingAdapterPosition - this$0.getHeaderLayoutCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindViewClickListener$lambda-7$lambda-6  reason: not valid java name */
    public static final void m29bindViewClickListener$lambda7$lambda6(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v10) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(v10, "v");
        this$0.setOnItemClick(v10, bindingAdapterPosition - this$0.getHeaderLayoutCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindViewClickListener$lambda-9$lambda-8  reason: not valid java name */
    public static final boolean m30bindViewClickListener$lambda9$lambda8(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v10) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        Intrinsics.checkNotNullExpressionValue(v10, "v");
        return this$0.setOnItemLongClick(v10, bindingAdapterPosition - this$0.getHeaderLayoutCount());
    }

    private final void checkModule() {
        if (this instanceof LoadMoreModule) {
            this.mLoadMoreModule = ((LoadMoreModule) this).addLoadMoreModule(this);
        }
        if (this instanceof UpFetchModule) {
            this.mUpFetchModule = ((UpFetchModule) this).addUpFetchModule(this);
        }
        if (this instanceof DraggableModule) {
            this.mDraggableModule = ((DraggableModule) this).addDraggableModule(this);
        }
    }

    private final VH createBaseGenericKInstance(Class<?> cls, View view) {
        try {
            if (cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
                Constructor<?> declaredConstructor = cls.getDeclaredConstructor(getClass(), View.class);
                Intrinsics.checkNotNullExpressionValue(declaredConstructor, "z.getDeclaredConstructor…aClass, View::class.java)");
                declaredConstructor.setAccessible(true);
                Object newInstance = declaredConstructor.newInstance(this, view);
                if (newInstance != null) {
                    return (VH) newInstance;
                }
                throw new NullPointerException("null cannot be cast to non-null type VH of com.chad.library.adapter.base.BaseQuickAdapter");
            }
            Constructor<?> declaredConstructor2 = cls.getDeclaredConstructor(View.class);
            Intrinsics.checkNotNullExpressionValue(declaredConstructor2, "z.getDeclaredConstructor(View::class.java)");
            declaredConstructor2.setAccessible(true);
            Object newInstance2 = declaredConstructor2.newInstance(view);
            if (newInstance2 != null) {
                return (VH) newInstance2;
            }
            throw new NullPointerException("null cannot be cast to non-null type VH of com.chad.library.adapter.base.BaseQuickAdapter");
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        } catch (NoSuchMethodException e12) {
            e12.printStackTrace();
            return null;
        } catch (InvocationTargetException e13) {
            e13.printStackTrace();
            return null;
        }
    }

    private final Class<?> getInstancedGenericKClass(Class<?> cls) {
        try {
            Type genericSuperclass = cls.getGenericSuperclass();
            if (genericSuperclass instanceof ParameterizedType) {
                Type[] types = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
                Intrinsics.checkNotNullExpressionValue(types, "types");
                int i9 = 0;
                int length = types.length;
                while (i9 < length) {
                    Type type = types[i9];
                    i9++;
                    if (type instanceof Class) {
                        if (BaseViewHolder.class.isAssignableFrom((Class) type)) {
                            return (Class) type;
                        }
                    } else if (type instanceof ParameterizedType) {
                        Type rawType = ((ParameterizedType) type).getRawType();
                        if ((rawType instanceof Class) && BaseViewHolder.class.isAssignableFrom((Class) rawType)) {
                            return (Class) rawType;
                        }
                    } else {
                        continue;
                    }
                }
                return null;
            }
            return null;
        } catch (TypeNotPresentException e10) {
            e10.printStackTrace();
            return null;
        } catch (GenericSignatureFormatError e11) {
            e11.printStackTrace();
            return null;
        } catch (MalformedParameterizedTypeException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public static /* synthetic */ void setDiffNewData$default(BaseQuickAdapter baseQuickAdapter, List list, Runnable runnable, int i9, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setDiffNewData");
        }
        if ((i9 & 2) != 0) {
            runnable = null;
        }
        baseQuickAdapter.setDiffNewData(list, runnable);
    }

    public static /* synthetic */ int setFooterView$default(BaseQuickAdapter baseQuickAdapter, View view, int i9, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i9 = 0;
            }
            if ((i11 & 4) != 0) {
                i10 = 1;
            }
            return baseQuickAdapter.setFooterView(view, i9, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setFooterView");
    }

    public static /* synthetic */ int setHeaderView$default(BaseQuickAdapter baseQuickAdapter, View view, int i9, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i9 = 0;
            }
            if ((i11 & 4) != 0) {
                i10 = 1;
            }
            return baseQuickAdapter.setHeaderView(view, i9, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setHeaderView");
    }

    public final void addChildClickViewIds(@IdRes @NotNull int... viewIds) {
        Intrinsics.checkNotNullParameter(viewIds, "viewIds");
        int length = viewIds.length;
        int i9 = 0;
        while (i9 < length) {
            int i10 = viewIds[i9];
            i9++;
            this.childClickViewIds.add(Integer.valueOf(i10));
        }
    }

    public final void addChildLongClickViewIds(@IdRes @NotNull int... viewIds) {
        Intrinsics.checkNotNullParameter(viewIds, "viewIds");
        int length = viewIds.length;
        int i9 = 0;
        while (i9 < length) {
            int i10 = viewIds[i9];
            i9++;
            this.childLongClickViewIds.add(Integer.valueOf(i10));
        }
    }

    public void addData(@IntRange(from = 0) int i9, T t10) {
        this.data.add(i9, t10);
        notifyItemInserted(i9 + getHeaderLayoutCount());
        compatibilityDataSizeChanged(1);
    }

    @JvmOverloads
    public final int addFooterView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return addFooterView$default(this, view, 0, 0, 6, null);
    }

    @JvmOverloads
    public final int addFooterView(@NotNull View view, int i9) {
        Intrinsics.checkNotNullParameter(view, "view");
        return addFooterView$default(this, view, i9, 0, 4, null);
    }

    @JvmOverloads
    public final int addFooterView(@NotNull View view, int i9, int i10) {
        int footerViewPosition;
        RecyclerView.LayoutParams layoutParams;
        Intrinsics.checkNotNullParameter(view, "view");
        LinearLayout linearLayout = null;
        if (this.mFooterLayout == null) {
            LinearLayout linearLayout2 = new LinearLayout(view.getContext());
            this.mFooterLayout = linearLayout2;
            linearLayout2.setOrientation(i10);
            LinearLayout linearLayout3 = this.mFooterLayout;
            if (linearLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                linearLayout3 = null;
            }
            if (i10 == 1) {
                layoutParams = new RecyclerView.LayoutParams(-1, -2);
            } else {
                layoutParams = new RecyclerView.LayoutParams(-2, -1);
            }
            linearLayout3.setLayoutParams(layoutParams);
        }
        LinearLayout linearLayout4 = this.mFooterLayout;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
            linearLayout4 = null;
        }
        int childCount = linearLayout4.getChildCount();
        if (i9 < 0 || i9 > childCount) {
            i9 = childCount;
        }
        LinearLayout linearLayout5 = this.mFooterLayout;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
            linearLayout5 = null;
        }
        linearLayout5.addView(view, i9);
        LinearLayout linearLayout6 = this.mFooterLayout;
        if (linearLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
        } else {
            linearLayout = linearLayout6;
        }
        if (linearLayout.getChildCount() == 1 && (footerViewPosition = getFooterViewPosition()) != -1) {
            notifyItemInserted(footerViewPosition);
        }
        return i9;
    }

    @JvmOverloads
    public final int addHeaderView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return addHeaderView$default(this, view, 0, 0, 6, null);
    }

    @JvmOverloads
    public final int addHeaderView(@NotNull View view, int i9) {
        Intrinsics.checkNotNullParameter(view, "view");
        return addHeaderView$default(this, view, i9, 0, 4, null);
    }

    @JvmOverloads
    public final int addHeaderView(@NotNull View view, int i9, int i10) {
        int headerViewPosition;
        RecyclerView.LayoutParams layoutParams;
        Intrinsics.checkNotNullParameter(view, "view");
        LinearLayout linearLayout = null;
        if (this.mHeaderLayout == null) {
            LinearLayout linearLayout2 = new LinearLayout(view.getContext());
            this.mHeaderLayout = linearLayout2;
            linearLayout2.setOrientation(i10);
            LinearLayout linearLayout3 = this.mHeaderLayout;
            if (linearLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                linearLayout3 = null;
            }
            if (i10 == 1) {
                layoutParams = new RecyclerView.LayoutParams(-1, -2);
            } else {
                layoutParams = new RecyclerView.LayoutParams(-2, -1);
            }
            linearLayout3.setLayoutParams(layoutParams);
        }
        LinearLayout linearLayout4 = this.mHeaderLayout;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
            linearLayout4 = null;
        }
        int childCount = linearLayout4.getChildCount();
        if (i9 < 0 || i9 > childCount) {
            i9 = childCount;
        }
        LinearLayout linearLayout5 = this.mHeaderLayout;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
            linearLayout5 = null;
        }
        linearLayout5.addView(view, i9);
        LinearLayout linearLayout6 = this.mHeaderLayout;
        if (linearLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
        } else {
            linearLayout = linearLayout6;
        }
        if (linearLayout.getChildCount() == 1 && (headerViewPosition = getHeaderViewPosition()) != -1) {
            notifyItemInserted(headerViewPosition);
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void bindViewClickListener(@NotNull final VH viewHolder, int i9) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (this.mOnItemClickListener != null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseQuickAdapter.m29bindViewClickListener$lambda7$lambda6(BaseViewHolder.this, this, view);
                }
            });
        }
        if (this.mOnItemLongClickListener != null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.k
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m30bindViewClickListener$lambda9$lambda8;
                    m30bindViewClickListener$lambda9$lambda8 = BaseQuickAdapter.m30bindViewClickListener$lambda9$lambda8(BaseViewHolder.this, this, view);
                    return m30bindViewClickListener$lambda9$lambda8;
                }
            });
        }
        if (this.mOnItemChildClickListener != null) {
            Iterator<Integer> it = getChildClickViewIds().iterator();
            while (it.hasNext()) {
                Integer id2 = it.next();
                View view = viewHolder.itemView;
                Intrinsics.checkNotNullExpressionValue(id2, "id");
                View findViewById = view.findViewById(id2.intValue());
                if (findViewById != null) {
                    if (!findViewById.isClickable()) {
                        findViewById.setClickable(true);
                    }
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.j
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            BaseQuickAdapter.m27bindViewClickListener$lambda12$lambda11$lambda10(BaseViewHolder.this, this, view2);
                        }
                    });
                }
            }
        }
        if (this.mOnItemChildLongClickListener == null) {
            return;
        }
        Iterator<Integer> it2 = getChildLongClickViewIds().iterator();
        while (it2.hasNext()) {
            Integer id3 = it2.next();
            View view2 = viewHolder.itemView;
            Intrinsics.checkNotNullExpressionValue(id3, "id");
            View findViewById2 = view2.findViewById(id3.intValue());
            if (findViewById2 != null) {
                if (!findViewById2.isLongClickable()) {
                    findViewById2.setLongClickable(true);
                }
                findViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.l
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view3) {
                        boolean m28bindViewClickListener$lambda15$lambda14$lambda13;
                        m28bindViewClickListener$lambda15$lambda14$lambda13 = BaseQuickAdapter.m28bindViewClickListener$lambda15$lambda14$lambda13(BaseViewHolder.this, this, view3);
                        return m28bindViewClickListener$lambda15$lambda14$lambda13;
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void compatibilityDataSizeChanged(int i9) {
        if (this.data.size() == i9) {
            notifyDataSetChanged();
        }
    }

    protected abstract void convert(@NotNull VH vh2, T t10);

    protected void convert(@NotNull VH holder, T t10, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public VH createBaseViewHolder(@NotNull ViewGroup parent, @LayoutRes int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return createBaseViewHolder(AdapterUtilsKt.getItemView(parent, i9));
    }

    @Nullable
    public final BaseAnimation getAdapterAnimation() {
        return this.adapterAnimation;
    }

    public final boolean getAnimationEnable() {
        return this.animationEnable;
    }

    @NotNull
    public final LinkedHashSet<Integer> getChildClickViewIds() {
        return this.childClickViewIds;
    }

    @NotNull
    public final LinkedHashSet<Integer> getChildLongClickViewIds() {
        return this.childLongClickViewIds;
    }

    @NotNull
    public final Context getContext() {
        Context context = getRecyclerView().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "recyclerView.context");
        return context;
    }

    @NotNull
    public final List<T> getData() {
        return this.data;
    }

    protected int getDefItemCount() {
        return this.data.size();
    }

    protected int getDefItemViewType(int i9) {
        return super.getItemViewType(i9);
    }

    @Deprecated(message = "User getDiffer()", replaceWith = @ReplaceWith(expression = "getDiffer()", imports = {}))
    @NotNull
    public final BrvahAsyncDiffer<T> getDiffHelper() {
        return getDiffer();
    }

    @NotNull
    public final BrvahAsyncDiffer<T> getDiffer() {
        BrvahAsyncDiffer<T> brvahAsyncDiffer = this.mDiffHelper;
        if (brvahAsyncDiffer != null) {
            Intrinsics.checkNotNull(brvahAsyncDiffer);
            return brvahAsyncDiffer;
        }
        throw new IllegalStateException("Please use setDiffCallback() or setDiffConfig() first!".toString());
    }

    @NotNull
    public final BaseDraggableModule getDraggableModule() {
        BaseDraggableModule baseDraggableModule = this.mDraggableModule;
        if (baseDraggableModule != null) {
            Intrinsics.checkNotNull(baseDraggableModule);
            return baseDraggableModule;
        }
        throw new IllegalStateException("Please first implements DraggableModule".toString());
    }

    @Nullable
    public final FrameLayout getEmptyLayout() {
        FrameLayout frameLayout = this.mEmptyLayout;
        if (frameLayout != null) {
            if (frameLayout != null) {
                return frameLayout;
            }
            Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
        }
        return null;
    }

    @Nullable
    public final LinearLayout getFooterLayout() {
        LinearLayout linearLayout = this.mFooterLayout;
        if (linearLayout != null) {
            if (linearLayout != null) {
                return linearLayout;
            }
            Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
        }
        return null;
    }

    public final int getFooterLayoutCount() {
        return hasFooterLayout() ? 1 : 0;
    }

    public final boolean getFooterViewAsFlow() {
        return this.footerViewAsFlow;
    }

    public final int getFooterViewPosition() {
        if (hasEmptyView()) {
            int i9 = 1;
            if (this.headerWithEmptyEnable && hasHeaderLayout()) {
                i9 = 2;
            }
            if (this.footerWithEmptyEnable) {
                return i9;
            }
            return -1;
        }
        return getHeaderLayoutCount() + this.data.size();
    }

    public final boolean getFooterWithEmptyEnable() {
        return this.footerWithEmptyEnable;
    }

    @Nullable
    public final LinearLayout getHeaderLayout() {
        LinearLayout linearLayout = this.mHeaderLayout;
        if (linearLayout != null) {
            if (linearLayout != null) {
                return linearLayout;
            }
            Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
        }
        return null;
    }

    public final int getHeaderLayoutCount() {
        return hasHeaderLayout() ? 1 : 0;
    }

    public final boolean getHeaderViewAsFlow() {
        return this.headerViewAsFlow;
    }

    public final int getHeaderViewPosition() {
        return (!hasEmptyView() || this.headerWithEmptyEnable) ? 0 : -1;
    }

    public final boolean getHeaderWithEmptyEnable() {
        return this.headerWithEmptyEnable;
    }

    public T getItem(@IntRange(from = 0) int i9) {
        return this.data.get(i9);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (hasEmptyView()) {
            if (this.headerWithEmptyEnable && hasHeaderLayout()) {
                r1 = 2;
            }
            return (this.footerWithEmptyEnable && hasFooterLayout()) ? r1 + 1 : r1;
        }
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        return getHeaderLayoutCount() + getDefItemCount() + getFooterLayoutCount() + ((baseLoadMoreModule == null || !baseLoadMoreModule.hasLoadMoreView()) ? 0 : 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i9) {
        return i9;
    }

    @Nullable
    public T getItemOrNull(@IntRange(from = 0) int i9) {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.data, i9);
        return (T) orNull;
    }

    public int getItemPosition(@Nullable T t10) {
        if (t10 == null || !(!this.data.isEmpty())) {
            return -1;
        }
        return this.data.indexOf(t10);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        if (hasEmptyView()) {
            boolean z10 = this.headerWithEmptyEnable && hasHeaderLayout();
            if (i9 != 0) {
                return i9 != 1 ? FOOTER_VIEW : FOOTER_VIEW;
            } else if (z10) {
                return HEADER_VIEW;
            }
            return EMPTY_VIEW;
        }
        boolean hasHeaderLayout = hasHeaderLayout();
        if (hasHeaderLayout && i9 == 0) {
            return HEADER_VIEW;
        }
        if (hasHeaderLayout) {
            i9--;
        }
        int size = this.data.size();
        if (i9 < size) {
            return getDefItemViewType(i9);
        }
        return i9 - size < hasFooterLayout() ? FOOTER_VIEW : LOAD_MORE_VIEW;
    }

    @NotNull
    public final BaseLoadMoreModule getLoadMoreModule() {
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule != null) {
            Intrinsics.checkNotNull(baseLoadMoreModule);
            return baseLoadMoreModule;
        }
        throw new IllegalStateException("Please first implements LoadMoreModule".toString());
    }

    @Nullable
    public final BaseLoadMoreModule getMLoadMoreModule$com_github_CymChad_brvah() {
        return this.mLoadMoreModule;
    }

    @Nullable
    public final x0.d getOnItemChildClickListener() {
        return this.mOnItemChildClickListener;
    }

    @Nullable
    public final x0.e getOnItemChildLongClickListener() {
        return this.mOnItemChildLongClickListener;
    }

    @Nullable
    public final x0.f getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    @Nullable
    public final x0.h getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerViewOrNull;
        if (recyclerView != null) {
            Intrinsics.checkNotNull(recyclerView);
            return recyclerView;
        }
        throw new IllegalStateException("Please get it after onAttachedToRecyclerView()".toString());
    }

    @Nullable
    public final RecyclerView getRecyclerViewOrNull() {
        return this.recyclerViewOrNull;
    }

    @NotNull
    public final BaseUpFetchModule getUpFetchModule() {
        BaseUpFetchModule baseUpFetchModule = this.mUpFetchModule;
        if (baseUpFetchModule != null) {
            Intrinsics.checkNotNull(baseUpFetchModule);
            return baseUpFetchModule;
        }
        throw new IllegalStateException("Please first implements UpFetchModule".toString());
    }

    @Nullable
    public final View getViewByPosition(int i9, @IdRes int i10) {
        BaseViewHolder baseViewHolder;
        RecyclerView recyclerView = this.recyclerViewOrNull;
        if (recyclerView == null || (baseViewHolder = (BaseViewHolder) recyclerView.findViewHolderForLayoutPosition(i9)) == null) {
            return null;
        }
        return baseViewHolder.getViewOrNull(i10);
    }

    public final boolean hasEmptyView() {
        FrameLayout frameLayout = this.mEmptyLayout;
        if (frameLayout != null) {
            if (frameLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                frameLayout = null;
            }
            if (frameLayout.getChildCount() != 0 && this.isUseEmpty) {
                return this.data.isEmpty();
            }
            return false;
        }
        return false;
    }

    public final boolean hasFooterLayout() {
        LinearLayout linearLayout = this.mFooterLayout;
        if (linearLayout != null) {
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                linearLayout = null;
            }
            return linearLayout.getChildCount() > 0;
        }
        return false;
    }

    public final boolean hasHeaderLayout() {
        LinearLayout linearLayout = this.mHeaderLayout;
        if (linearLayout != null) {
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                linearLayout = null;
            }
            return linearLayout.getChildCount() > 0;
        }
        return false;
    }

    public final boolean isAnimationFirstOnly() {
        return this.isAnimationFirstOnly;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isFixedViewType(int i9) {
        return i9 == 268436821 || i9 == 268435729 || i9 == 268436275 || i9 == 268436002;
    }

    public final boolean isUseEmpty() {
        return this.isUseEmpty;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        this.recyclerViewOrNull = recyclerView;
        BaseDraggableModule baseDraggableModule = this.mDraggableModule;
        if (baseDraggableModule != null) {
            baseDraggableModule.attachToRecyclerView(recyclerView);
        }
        final RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            final GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup(this) { // from class: com.chad.library.adapter.base.BaseQuickAdapter$onAttachedToRecyclerView$1
                final /* synthetic */ BaseQuickAdapter<T, VH> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.this$0 = this;
                }

                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i9) {
                    x0.b bVar;
                    x0.b bVar2;
                    int itemViewType = this.this$0.getItemViewType(i9);
                    if (itemViewType == 268435729 && this.this$0.getHeaderViewAsFlow()) {
                        return 1;
                    }
                    if (itemViewType == 268436275 && this.this$0.getFooterViewAsFlow()) {
                        return 1;
                    }
                    bVar = ((BaseQuickAdapter) this.this$0).mSpanSizeLookup;
                    if (bVar == null) {
                        return this.this$0.isFixedViewType(itemViewType) ? ((GridLayoutManager) layoutManager).getSpanCount() : spanSizeLookup.getSpanSize(i9);
                    } else if (this.this$0.isFixedViewType(itemViewType)) {
                        return ((GridLayoutManager) layoutManager).getSpanCount();
                    } else {
                        bVar2 = ((BaseQuickAdapter) this.this$0).mSpanSizeLookup;
                        Intrinsics.checkNotNull(bVar2);
                        return bVar2.a((GridLayoutManager) layoutManager, itemViewType, i9 - this.this$0.getHeaderLayoutCount());
                    }
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9) {
        onBindViewHolder((BaseQuickAdapter<T, VH>) ((BaseViewHolder) viewHolder), i9);
    }

    @NotNull
    protected VH onCreateDefViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return createBaseViewHolder(parent, this.layoutResId);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        this.recyclerViewOrNull = null;
    }

    protected void onItemViewHolderCreated(@NotNull VH viewHolder, int i9) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        onViewAttachedToWindow((BaseQuickAdapter<T, VH>) ((BaseViewHolder) viewHolder));
    }

    @Deprecated(message = "Please use removeAt()", replaceWith = @ReplaceWith(expression = "removeAt(position)", imports = {}))
    public void remove(@IntRange(from = 0) int i9) {
        removeAt(i9);
    }

    public final void removeAllFooterView() {
        if (hasFooterLayout()) {
            LinearLayout linearLayout = this.mFooterLayout;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                linearLayout = null;
            }
            linearLayout.removeAllViews();
            int footerViewPosition = getFooterViewPosition();
            if (footerViewPosition != -1) {
                notifyItemRemoved(footerViewPosition);
            }
        }
    }

    public final void removeAllHeaderView() {
        if (hasHeaderLayout()) {
            LinearLayout linearLayout = this.mHeaderLayout;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                linearLayout = null;
            }
            linearLayout.removeAllViews();
            int headerViewPosition = getHeaderViewPosition();
            if (headerViewPosition != -1) {
                notifyItemRemoved(headerViewPosition);
            }
        }
    }

    public void removeAt(@IntRange(from = 0) int i9) {
        if (i9 >= this.data.size()) {
            return;
        }
        this.data.remove(i9);
        int headerLayoutCount = i9 + getHeaderLayoutCount();
        notifyItemRemoved(headerLayoutCount);
        compatibilityDataSizeChanged(0);
        notifyItemRangeChanged(headerLayoutCount, this.data.size() - headerLayoutCount);
    }

    public final void removeEmptyView() {
        FrameLayout frameLayout = this.mEmptyLayout;
        if (frameLayout != null) {
            if (frameLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                frameLayout = null;
            }
            frameLayout.removeAllViews();
        }
    }

    public final void removeFooterView(@NotNull View footer) {
        int footerViewPosition;
        Intrinsics.checkNotNullParameter(footer, "footer");
        if (hasFooterLayout()) {
            LinearLayout linearLayout = this.mFooterLayout;
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                linearLayout = null;
            }
            linearLayout.removeView(footer);
            LinearLayout linearLayout3 = this.mFooterLayout;
            if (linearLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
            } else {
                linearLayout2 = linearLayout3;
            }
            if (linearLayout2.getChildCount() != 0 || (footerViewPosition = getFooterViewPosition()) == -1) {
                return;
            }
            notifyItemRemoved(footerViewPosition);
        }
    }

    public final void removeHeaderView(@NotNull View header) {
        int headerViewPosition;
        Intrinsics.checkNotNullParameter(header, "header");
        if (hasHeaderLayout()) {
            LinearLayout linearLayout = this.mHeaderLayout;
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                linearLayout = null;
            }
            linearLayout.removeView(header);
            LinearLayout linearLayout3 = this.mHeaderLayout;
            if (linearLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
            } else {
                linearLayout2 = linearLayout3;
            }
            if (linearLayout2.getChildCount() != 0 || (headerViewPosition = getHeaderViewPosition()) == -1) {
                return;
            }
            notifyItemRemoved(headerViewPosition);
        }
    }

    @Deprecated(message = "Please use setData()", replaceWith = @ReplaceWith(expression = "setList(newData)", imports = {}))
    public void replaceData(@NotNull Collection<? extends T> newData) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        setList(newData);
    }

    public final void setAdapterAnimation(@Nullable BaseAnimation baseAnimation) {
        this.animationEnable = true;
        this.adapterAnimation = baseAnimation;
    }

    public final void setAnimationEnable(boolean z10) {
        this.animationEnable = z10;
    }

    public final void setAnimationFirstOnly(boolean z10) {
        this.isAnimationFirstOnly = z10;
    }

    public final void setAnimationWithDefault(@NotNull AnimationType animationType) {
        BaseAnimation alphaInAnimation;
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        int i9 = WhenMappings.$EnumSwitchMapping$0[animationType.ordinal()];
        if (i9 == 1) {
            alphaInAnimation = new AlphaInAnimation(0.0f, 1, null);
        } else if (i9 == 2) {
            alphaInAnimation = new ScaleInAnimation(0.0f, 1, null);
        } else if (i9 == 3) {
            alphaInAnimation = new SlideInBottomAnimation();
        } else if (i9 == 4) {
            alphaInAnimation = new SlideInLeftAnimation();
        } else if (i9 != 5) {
            throw new NoWhenBranchMatchedException();
        } else {
            alphaInAnimation = new SlideInRightAnimation();
        }
        setAdapterAnimation(alphaInAnimation);
    }

    public void setData(@IntRange(from = 0) int i9, T t10) {
        if (i9 >= this.data.size()) {
            return;
        }
        this.data.set(i9, t10);
        notifyItemChanged(i9 + getHeaderLayoutCount());
    }

    public final void setData$com_github_CymChad_brvah(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.data = list;
    }

    public final void setDiffCallback(@NotNull DiffUtil.ItemCallback<T> diffCallback) {
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        setDiffConfig(new BrvahAsyncDifferConfig.Builder(diffCallback).build());
    }

    public final void setDiffConfig(@NotNull BrvahAsyncDifferConfig<T> config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.mDiffHelper = new BrvahAsyncDiffer<>(this, config);
    }

    @JvmOverloads
    public final void setDiffNewData(@Nullable List<T> list) {
        setDiffNewData$default(this, list, null, 2, null);
    }

    @JvmOverloads
    public void setDiffNewData(@Nullable List<T> list, @Nullable Runnable runnable) {
        if (hasEmptyView()) {
            setNewInstance(list);
            if (runnable == null) {
                return;
            }
            runnable.run();
            return;
        }
        BrvahAsyncDiffer<T> brvahAsyncDiffer = this.mDiffHelper;
        if (brvahAsyncDiffer == null) {
            return;
        }
        brvahAsyncDiffer.submitList(list, runnable);
    }

    public final void setEmptyView(@NotNull View emptyView) {
        boolean z10;
        Intrinsics.checkNotNullParameter(emptyView, "emptyView");
        int itemCount = getItemCount();
        int i9 = 0;
        FrameLayout frameLayout = null;
        if (this.mEmptyLayout == null) {
            FrameLayout frameLayout2 = new FrameLayout(emptyView.getContext());
            this.mEmptyLayout = frameLayout2;
            ViewGroup.LayoutParams layoutParams = emptyView.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = layoutParams == null ? null : new ViewGroup.LayoutParams(layoutParams.width, layoutParams.height);
            if (layoutParams2 == null) {
                layoutParams2 = new ViewGroup.LayoutParams(-1, -1);
            }
            frameLayout2.setLayoutParams(layoutParams2);
            z10 = true;
        } else {
            ViewGroup.LayoutParams layoutParams3 = emptyView.getLayoutParams();
            if (layoutParams3 != null) {
                FrameLayout frameLayout3 = this.mEmptyLayout;
                if (frameLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                    frameLayout3 = null;
                }
                ViewGroup.LayoutParams layoutParams4 = frameLayout3.getLayoutParams();
                layoutParams4.width = layoutParams3.width;
                layoutParams4.height = layoutParams3.height;
                FrameLayout frameLayout4 = this.mEmptyLayout;
                if (frameLayout4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                    frameLayout4 = null;
                }
                frameLayout4.setLayoutParams(layoutParams4);
            }
            z10 = false;
        }
        FrameLayout frameLayout5 = this.mEmptyLayout;
        if (frameLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
            frameLayout5 = null;
        }
        frameLayout5.removeAllViews();
        FrameLayout frameLayout6 = this.mEmptyLayout;
        if (frameLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
        } else {
            frameLayout = frameLayout6;
        }
        frameLayout.addView(emptyView);
        this.isUseEmpty = true;
        if (z10 && hasEmptyView()) {
            if (this.headerWithEmptyEnable && hasHeaderLayout()) {
                i9 = 1;
            }
            if (getItemCount() > itemCount) {
                notifyItemInserted(i9);
            } else {
                notifyDataSetChanged();
            }
        }
    }

    @JvmOverloads
    public final int setFooterView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return setFooterView$default(this, view, 0, 0, 6, null);
    }

    @JvmOverloads
    public final int setFooterView(@NotNull View view, int i9) {
        Intrinsics.checkNotNullParameter(view, "view");
        return setFooterView$default(this, view, i9, 0, 4, null);
    }

    @JvmOverloads
    public final int setFooterView(@NotNull View view, int i9, int i10) {
        Intrinsics.checkNotNullParameter(view, "view");
        LinearLayout linearLayout = this.mFooterLayout;
        if (linearLayout != null) {
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                linearLayout = null;
            }
            if (linearLayout.getChildCount() > i9) {
                LinearLayout linearLayout3 = this.mFooterLayout;
                if (linearLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                    linearLayout3 = null;
                }
                linearLayout3.removeViewAt(i9);
                LinearLayout linearLayout4 = this.mFooterLayout;
                if (linearLayout4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                } else {
                    linearLayout2 = linearLayout4;
                }
                linearLayout2.addView(view, i9);
                return i9;
            }
        }
        return addFooterView(view, i9, i10);
    }

    public final void setFooterViewAsFlow(boolean z10) {
        this.footerViewAsFlow = z10;
    }

    public final void setFooterWithEmptyEnable(boolean z10) {
        this.footerWithEmptyEnable = z10;
    }

    protected void setFullSpan(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
    }

    public final void setGridSpanSizeLookup(@Nullable x0.b bVar) {
        this.mSpanSizeLookup = bVar;
    }

    @JvmOverloads
    public final int setHeaderView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return setHeaderView$default(this, view, 0, 0, 6, null);
    }

    @JvmOverloads
    public final int setHeaderView(@NotNull View view, int i9) {
        Intrinsics.checkNotNullParameter(view, "view");
        return setHeaderView$default(this, view, i9, 0, 4, null);
    }

    @JvmOverloads
    public final int setHeaderView(@NotNull View view, int i9, int i10) {
        Intrinsics.checkNotNullParameter(view, "view");
        LinearLayout linearLayout = this.mHeaderLayout;
        if (linearLayout != null) {
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                linearLayout = null;
            }
            if (linearLayout.getChildCount() > i9) {
                LinearLayout linearLayout3 = this.mHeaderLayout;
                if (linearLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                    linearLayout3 = null;
                }
                linearLayout3.removeViewAt(i9);
                LinearLayout linearLayout4 = this.mHeaderLayout;
                if (linearLayout4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                } else {
                    linearLayout2 = linearLayout4;
                }
                linearLayout2.addView(view, i9);
                return i9;
            }
        }
        return addHeaderView(view, i9, i10);
    }

    public final void setHeaderViewAsFlow(boolean z10) {
        this.headerViewAsFlow = z10;
    }

    public final void setHeaderWithEmptyEnable(boolean z10) {
        this.headerWithEmptyEnable = z10;
    }

    public void setList(@Nullable Collection<? extends T> collection) {
        List<T> list = this.data;
        boolean z10 = false;
        if (collection != list) {
            list.clear();
            if (!((collection == null || collection.isEmpty()) ? true : true)) {
                this.data.addAll(collection);
            }
        } else {
            if (!((collection == null || collection.isEmpty()) ? true : true)) {
                ArrayList arrayList = new ArrayList(collection);
                this.data.clear();
                this.data.addAll(arrayList);
            } else {
                this.data.clear();
            }
        }
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule != null) {
            baseLoadMoreModule.reset$com_github_CymChad_brvah();
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
        BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
        if (baseLoadMoreModule2 == null) {
            return;
        }
        baseLoadMoreModule2.checkDisableLoadMoreIfNotFullPage();
    }

    public final void setMLoadMoreModule$com_github_CymChad_brvah(@Nullable BaseLoadMoreModule baseLoadMoreModule) {
        this.mLoadMoreModule = baseLoadMoreModule;
    }

    @Deprecated(message = "Please use setNewInstance(), This method will be removed in the next version", replaceWith = @ReplaceWith(expression = "setNewInstance(data)", imports = {}))
    public void setNewData(@Nullable List<T> list) {
        setNewInstance(list);
    }

    public void setNewInstance(@Nullable List<T> list) {
        if (list == this.data) {
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        this.data = list;
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule != null) {
            baseLoadMoreModule.reset$com_github_CymChad_brvah();
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
        BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
        if (baseLoadMoreModule2 == null) {
            return;
        }
        baseLoadMoreModule2.checkDisableLoadMoreIfNotFullPage();
    }

    protected void setOnItemChildClick(@NotNull View v10, int i9) {
        Intrinsics.checkNotNullParameter(v10, "v");
        x0.d dVar = this.mOnItemChildClickListener;
        if (dVar == null) {
            return;
        }
        dVar.a(this, v10, i9);
    }

    public final void setOnItemChildClickListener(@Nullable x0.d dVar) {
        this.mOnItemChildClickListener = dVar;
    }

    protected boolean setOnItemChildLongClick(@NotNull View v10, int i9) {
        Intrinsics.checkNotNullParameter(v10, "v");
        x0.e eVar = this.mOnItemChildLongClickListener;
        if (eVar == null) {
            return false;
        }
        return eVar.a(this, v10, i9);
    }

    public final void setOnItemChildLongClickListener(@Nullable x0.e eVar) {
        this.mOnItemChildLongClickListener = eVar;
    }

    protected void setOnItemClick(@NotNull View v10, int i9) {
        Intrinsics.checkNotNullParameter(v10, "v");
        x0.f fVar = this.mOnItemClickListener;
        if (fVar == null) {
            return;
        }
        fVar.onItemClick(this, v10, i9);
    }

    public final void setOnItemClickListener(@Nullable x0.f fVar) {
        this.mOnItemClickListener = fVar;
    }

    protected boolean setOnItemLongClick(@NotNull View v10, int i9) {
        Intrinsics.checkNotNullParameter(v10, "v");
        x0.h hVar = this.mOnItemLongClickListener;
        if (hVar == null) {
            return false;
        }
        return hVar.a(this, v10, i9);
    }

    public final void setOnItemLongClickListener(@Nullable x0.h hVar) {
        this.mOnItemLongClickListener = hVar;
    }

    public final void setUseEmpty(boolean z10) {
        this.isUseEmpty = z10;
    }

    protected void startAnim(@NotNull Animator anim, int i9) {
        Intrinsics.checkNotNullParameter(anim, "anim");
        anim.start();
    }

    @JvmOverloads
    public BaseQuickAdapter(@LayoutRes int i9, @Nullable List<T> list) {
        this.layoutResId = i9;
        this.data = list == null ? new ArrayList<>() : list;
        this.isUseEmpty = true;
        this.isAnimationFirstOnly = true;
        this.mLastPosition = -1;
        checkModule();
        this.childClickViewIds = new LinkedHashSet<>();
        this.childLongClickViewIds = new LinkedHashSet<>();
    }

    @NotNull
    protected VH createBaseViewHolder(@NotNull View view) {
        VH createBaseGenericKInstance;
        Intrinsics.checkNotNullParameter(view, "view");
        Class<?> cls = null;
        for (Class<?> cls2 = getClass(); cls == null && cls2 != null; cls2 = cls2.getSuperclass()) {
            cls = getInstancedGenericKClass(cls2);
        }
        if (cls == null) {
            createBaseGenericKInstance = (VH) new BaseViewHolder(view);
        } else {
            createBaseGenericKInstance = createBaseGenericKInstance(cls, view);
        }
        return createBaseGenericKInstance == null ? (VH) new BaseViewHolder(view) : createBaseGenericKInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9, List list) {
        onBindViewHolder((BaseQuickAdapter<T, VH>) ((BaseViewHolder) viewHolder), i9, (List<Object>) list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public VH onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        FrameLayout frameLayout = null;
        switch (i9) {
            case HEADER_VIEW /* 268435729 */:
                LinearLayout linearLayout = this.mHeaderLayout;
                if (linearLayout == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                    linearLayout = null;
                }
                ViewParent parent2 = linearLayout.getParent();
                if (parent2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent2;
                    LinearLayout linearLayout2 = this.mHeaderLayout;
                    if (linearLayout2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                        linearLayout2 = null;
                    }
                    viewGroup.removeView(linearLayout2);
                }
                LinearLayout linearLayout3 = this.mHeaderLayout;
                if (linearLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                } else {
                    frameLayout = linearLayout3;
                }
                return createBaseViewHolder(frameLayout);
            case LOAD_MORE_VIEW /* 268436002 */:
                BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
                Intrinsics.checkNotNull(baseLoadMoreModule);
                VH createBaseViewHolder = createBaseViewHolder(baseLoadMoreModule.getLoadMoreView().getRootView(parent));
                BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
                Intrinsics.checkNotNull(baseLoadMoreModule2);
                baseLoadMoreModule2.setupViewHolder$com_github_CymChad_brvah(createBaseViewHolder);
                return createBaseViewHolder;
            case FOOTER_VIEW /* 268436275 */:
                LinearLayout linearLayout4 = this.mFooterLayout;
                if (linearLayout4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                    linearLayout4 = null;
                }
                ViewParent parent3 = linearLayout4.getParent();
                if (parent3 instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) parent3;
                    LinearLayout linearLayout5 = this.mFooterLayout;
                    if (linearLayout5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                        linearLayout5 = null;
                    }
                    viewGroup2.removeView(linearLayout5);
                }
                LinearLayout linearLayout6 = this.mFooterLayout;
                if (linearLayout6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                } else {
                    frameLayout = linearLayout6;
                }
                return createBaseViewHolder(frameLayout);
            case EMPTY_VIEW /* 268436821 */:
                FrameLayout frameLayout2 = this.mEmptyLayout;
                if (frameLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                    frameLayout2 = null;
                }
                ViewParent parent4 = frameLayout2.getParent();
                if (parent4 instanceof ViewGroup) {
                    ViewGroup viewGroup3 = (ViewGroup) parent4;
                    FrameLayout frameLayout3 = this.mEmptyLayout;
                    if (frameLayout3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                        frameLayout3 = null;
                    }
                    viewGroup3.removeView(frameLayout3);
                }
                FrameLayout frameLayout4 = this.mEmptyLayout;
                if (frameLayout4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                } else {
                    frameLayout = frameLayout4;
                }
                return createBaseViewHolder(frameLayout);
            default:
                VH onCreateDefViewHolder = onCreateDefViewHolder(parent, i9);
                bindViewClickListener(onCreateDefViewHolder, i9);
                BaseDraggableModule baseDraggableModule = this.mDraggableModule;
                if (baseDraggableModule != null) {
                    baseDraggableModule.initView$com_github_CymChad_brvah(onCreateDefViewHolder);
                }
                onItemViewHolderCreated(onCreateDefViewHolder, i9);
                return onCreateDefViewHolder;
        }
    }

    public void onViewAttachedToWindow(@NotNull VH holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow((BaseQuickAdapter<T, VH>) holder);
        if (isFixedViewType(holder.getItemViewType())) {
            setFullSpan(holder);
        } else {
            addAnimation(holder);
        }
    }

    public void remove(T t10) {
        int indexOf = this.data.indexOf(t10);
        if (indexOf == -1) {
            return;
        }
        removeAt(indexOf);
    }

    public void onBindViewHolder(@NotNull VH holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        BaseUpFetchModule baseUpFetchModule = this.mUpFetchModule;
        if (baseUpFetchModule != null) {
            baseUpFetchModule.autoUpFetch$com_github_CymChad_brvah(i9);
        }
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule != null) {
            baseLoadMoreModule.autoLoadMore$com_github_CymChad_brvah(i9);
        }
        switch (holder.getItemViewType()) {
            case HEADER_VIEW /* 268435729 */:
            case FOOTER_VIEW /* 268436275 */:
            case EMPTY_VIEW /* 268436821 */:
                return;
            case LOAD_MORE_VIEW /* 268436002 */:
                BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
                if (baseLoadMoreModule2 == null) {
                    return;
                }
                baseLoadMoreModule2.getLoadMoreView().convert(holder, i9, baseLoadMoreModule2.getLoadMoreStatus());
                return;
            default:
                convert(holder, getItem(i9 - getHeaderLayoutCount()));
                return;
        }
    }

    public void addData(@NonNull T t10) {
        this.data.add(t10);
        notifyItemInserted(this.data.size() + getHeaderLayoutCount());
        compatibilityDataSizeChanged(1);
    }

    public void setDiffNewData(@NonNull @NotNull DiffUtil.DiffResult diffResult, @NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(diffResult, "diffResult");
        Intrinsics.checkNotNullParameter(list, "list");
        if (hasEmptyView()) {
            setNewInstance(list);
            return;
        }
        diffResult.dispatchUpdatesTo(new BrvahListUpdateCallback(this));
        this.data = list;
    }

    public void addData(@IntRange(from = 0) int i9, @NotNull Collection<? extends T> newData) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        this.data.addAll(i9, newData);
        notifyItemRangeInserted(i9 + getHeaderLayoutCount(), newData.size());
        compatibilityDataSizeChanged(newData.size());
    }

    public void onBindViewHolder(@NotNull VH holder, int i9, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder((BaseQuickAdapter<T, VH>) holder, i9);
            return;
        }
        BaseUpFetchModule baseUpFetchModule = this.mUpFetchModule;
        if (baseUpFetchModule != null) {
            baseUpFetchModule.autoUpFetch$com_github_CymChad_brvah(i9);
        }
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule != null) {
            baseLoadMoreModule.autoLoadMore$com_github_CymChad_brvah(i9);
        }
        switch (holder.getItemViewType()) {
            case HEADER_VIEW /* 268435729 */:
            case FOOTER_VIEW /* 268436275 */:
            case EMPTY_VIEW /* 268436821 */:
                return;
            case LOAD_MORE_VIEW /* 268436002 */:
                BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
                if (baseLoadMoreModule2 == null) {
                    return;
                }
                baseLoadMoreModule2.getLoadMoreView().convert(holder, i9, baseLoadMoreModule2.getLoadMoreStatus());
                return;
            default:
                convert(holder, getItem(i9 - getHeaderLayoutCount()), payloads);
                return;
        }
    }

    public void addData(@NonNull @NotNull Collection<? extends T> newData) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        this.data.addAll(newData);
        notifyItemRangeInserted((this.data.size() - newData.size()) + getHeaderLayoutCount(), newData.size());
        compatibilityDataSizeChanged(newData.size());
    }

    public final void setEmptyView(int i9) {
        RecyclerView recyclerView = this.recyclerViewOrNull;
        if (recyclerView == null) {
            return;
        }
        View view = LayoutInflater.from(recyclerView.getContext()).inflate(i9, (ViewGroup) recyclerView, false);
        Intrinsics.checkNotNullExpressionValue(view, "view");
        setEmptyView(view);
    }
}

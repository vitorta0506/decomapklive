package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Consumer;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FontRequestWorker {
    static final LruCache<String, Typeface> sTypefaceCache = new LruCache<>(16);
    private static final ExecutorService DEFAULT_EXECUTOR_SERVICE = RequestExecutor.createDefaultExecutor("fonts-androidx", 10, 10000);
    static final Object LOCK = new Object();
    @GuardedBy("LOCK")
    static final SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> PENDING_REPLIES = new SimpleArrayMap<>();

    private FontRequestWorker() {
    }

    private static String createCacheId(@NonNull FontRequest fontRequest, int i9) {
        return fontRequest.getId() + "-" + i9;
    }

    private static int getFontFamilyResultStatus(@NonNull FontsContractCompat.FontFamilyResult fontFamilyResult) {
        int i9 = 1;
        if (fontFamilyResult.getStatusCode() != 0) {
            return fontFamilyResult.getStatusCode() != 1 ? -3 : -2;
        }
        FontsContractCompat.FontInfo[] fonts = fontFamilyResult.getFonts();
        if (fonts != null && fonts.length != 0) {
            i9 = 0;
            for (FontsContractCompat.FontInfo fontInfo : fonts) {
                int resultCode = fontInfo.getResultCode();
                if (resultCode != 0) {
                    if (resultCode < 0) {
                        return -3;
                    }
                    return resultCode;
                }
            }
        }
        return i9;
    }

    @NonNull
    static TypefaceResult getFontSync(@NonNull String str, @NonNull Context context, @NonNull FontRequest fontRequest, int i9) {
        LruCache<String, Typeface> lruCache = sTypefaceCache;
        Typeface typeface = lruCache.get(str);
        if (typeface != null) {
            return new TypefaceResult(typeface);
        }
        try {
            FontsContractCompat.FontFamilyResult fontFamilyResult = FontProvider.getFontFamilyResult(context, fontRequest, null);
            int fontFamilyResultStatus = getFontFamilyResultStatus(fontFamilyResult);
            if (fontFamilyResultStatus != 0) {
                return new TypefaceResult(fontFamilyResultStatus);
            }
            Typeface createFromFontInfo = TypefaceCompat.createFromFontInfo(context, null, fontFamilyResult.getFonts(), i9);
            if (createFromFontInfo != null) {
                lruCache.put(str, createFromFontInfo);
                return new TypefaceResult(createFromFontInfo);
            }
            return new TypefaceResult(-3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new TypefaceResult(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Typeface requestFontAsync(@NonNull final Context context, @NonNull final FontRequest fontRequest, final int i9, @Nullable Executor executor, @NonNull final CallbackWithHandler callbackWithHandler) {
        final String createCacheId = createCacheId(fontRequest, i9);
        Typeface typeface = sTypefaceCache.get(createCacheId);
        if (typeface != null) {
            callbackWithHandler.onTypefaceResult(new TypefaceResult(typeface));
            return typeface;
        }
        Consumer<TypefaceResult> consumer = new Consumer<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.2
            @Override // androidx.core.util.Consumer
            public void accept(TypefaceResult typefaceResult) {
                if (typefaceResult == null) {
                    typefaceResult = new TypefaceResult(-3);
                }
                CallbackWithHandler.this.onTypefaceResult(typefaceResult);
            }
        };
        synchronized (LOCK) {
            SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> simpleArrayMap = PENDING_REPLIES;
            ArrayList<Consumer<TypefaceResult>> arrayList = simpleArrayMap.get(createCacheId);
            if (arrayList != null) {
                arrayList.add(consumer);
                return null;
            }
            ArrayList<Consumer<TypefaceResult>> arrayList2 = new ArrayList<>();
            arrayList2.add(consumer);
            simpleArrayMap.put(createCacheId, arrayList2);
            Callable<TypefaceResult> callable = new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public TypefaceResult call() {
                    try {
                        return FontRequestWorker.getFontSync(createCacheId, context, fontRequest, i9);
                    } catch (Throwable unused) {
                        return new TypefaceResult(-3);
                    }
                }
            };
            if (executor == null) {
                executor = DEFAULT_EXECUTOR_SERVICE;
            }
            RequestExecutor.execute(executor, callable, new Consumer<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.4
                @Override // androidx.core.util.Consumer
                public void accept(TypefaceResult typefaceResult) {
                    synchronized (FontRequestWorker.LOCK) {
                        SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> simpleArrayMap2 = FontRequestWorker.PENDING_REPLIES;
                        ArrayList<Consumer<TypefaceResult>> arrayList3 = simpleArrayMap2.get(createCacheId);
                        if (arrayList3 == null) {
                            return;
                        }
                        simpleArrayMap2.remove(createCacheId);
                        for (int i10 = 0; i10 < arrayList3.size(); i10++) {
                            arrayList3.get(i10).accept(typefaceResult);
                        }
                    }
                }
            });
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Typeface requestFontSync(@NonNull final Context context, @NonNull final FontRequest fontRequest, @NonNull CallbackWithHandler callbackWithHandler, final int i9, int i10) {
        final String createCacheId = createCacheId(fontRequest, i9);
        Typeface typeface = sTypefaceCache.get(createCacheId);
        if (typeface != null) {
            callbackWithHandler.onTypefaceResult(new TypefaceResult(typeface));
            return typeface;
        } else if (i10 == -1) {
            TypefaceResult fontSync = getFontSync(createCacheId, context, fontRequest, i9);
            callbackWithHandler.onTypefaceResult(fontSync);
            return fontSync.mTypeface;
        } else {
            try {
                TypefaceResult typefaceResult = (TypefaceResult) RequestExecutor.submit(DEFAULT_EXECUTOR_SERVICE, new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.concurrent.Callable
                    public TypefaceResult call() {
                        return FontRequestWorker.getFontSync(createCacheId, context, fontRequest, i9);
                    }
                }, i10);
                callbackWithHandler.onTypefaceResult(typefaceResult);
                return typefaceResult.mTypeface;
            } catch (InterruptedException unused) {
                callbackWithHandler.onTypefaceResult(new TypefaceResult(-3));
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void resetTypefaceCache() {
        sTypefaceCache.evictAll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class TypefaceResult {
        final int mResult;
        final Typeface mTypeface;

        TypefaceResult(int i9) {
            this.mTypeface = null;
            this.mResult = i9;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isSuccess() {
            return this.mResult == 0;
        }

        TypefaceResult(@NonNull Typeface typeface) {
            this.mTypeface = typeface;
            this.mResult = 0;
        }
    }
}

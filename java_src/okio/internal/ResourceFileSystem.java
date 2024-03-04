package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.utils.TCConstants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Path;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000 *2\u00020\u0001:\u0001*B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nH\u0016J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nH\u0002J\u0018\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0005H\u0016J\u0018\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u0018\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\n0\b2\u0006\u0010\u001b\u001a\u00020\nH\u0016J\u0018\u0010 \u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\b2\u0006\u0010\u001b\u001a\u00020\nH\u0016J\u0012\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0018\u001a\u00020\nH\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010\u0011\u001a\u00020\nH\u0016J \u0010%\u001a\u00020$2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020'2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\f\u0010(\u001a\u00020)*\u00020\nH\u0002R-\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\n0\t0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006+"}, d2 = {"Lokio/internal/ResourceFileSystem;", "Lokio/FileSystem;", "classLoader", "Ljava/lang/ClassLoader;", "indexEagerly", "", "(Ljava/lang/ClassLoader;Z)V", "roots", "", "Lkotlin/Pair;", "Lokio/Path;", "getRoots", "()Ljava/util/List;", "roots$delegate", "Lkotlin/Lazy;", "appendingSink", "Lokio/Sink;", ShareInternalUtility.STAGING_PARAM, "mustExist", "atomicMove", "", ShareConstants.FEED_SOURCE_PARAM, TypedValues.AttributesType.S_TARGET, "canonicalize", TCConstants.VIDEO_RECORD_VIDEPATH, "canonicalizeInternal", "createDirectory", "dir", "mustCreate", "createSymlink", "delete", "list", "listOrNull", "metadataOrNull", "Lokio/FileMetadata;", "openReadOnly", "Lokio/FileHandle;", "openReadWrite", "sink", "Lokio/Source;", "toRelativePath", "", "Companion", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class ResourceFileSystem extends FileSystem {
    @NotNull
    private static final Companion Companion = new Companion(null);
    @Deprecated
    @NotNull
    private static final Path ROOT = Path.Companion.get$default(Path.Companion, FileUtils.RES_PREFIX_STORAGE, false, 1, (Object) null);
    @NotNull
    private final Lazy roots$delegate;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004J\u001c\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e0\r*\u00020\u0010J\u0018\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e*\u00020\u0012J\u0018\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e*\u00020\u0012R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, d2 = {"Lokio/internal/ResourceFileSystem$Companion;", "", "()V", "ROOT", "Lokio/Path;", "getROOT", "()Lokio/Path;", "keepPath", "", TCConstants.VIDEO_RECORD_VIDEPATH, "removeBase", "base", "toClasspathRoots", "", "Lkotlin/Pair;", "Lokio/FileSystem;", "Ljava/lang/ClassLoader;", "toFileRoot", "Ljava/net/URL;", "toJarRoot", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean keepPath(Path path) {
            boolean endsWith;
            endsWith = StringsKt__StringsJVMKt.endsWith(path.name(), ".class", true);
            return !endsWith;
        }

        @NotNull
        public final Path getROOT() {
            return ResourceFileSystem.ROOT;
        }

        @NotNull
        public final Path removeBase(@NotNull Path path, @NotNull Path base) {
            String removePrefix;
            String replace$default;
            Intrinsics.checkNotNullParameter(path, "<this>");
            Intrinsics.checkNotNullParameter(base, "base");
            String path2 = base.toString();
            Path root = getROOT();
            removePrefix = StringsKt__StringsKt.removePrefix(path.toString(), (CharSequence) path2);
            replace$default = StringsKt__StringsJVMKt.replace$default(removePrefix, (char) IOUtils.DIR_SEPARATOR_WINDOWS, (char) IOUtils.DIR_SEPARATOR_UNIX, false, 4, (Object) null);
            return root.resolve(replace$default);
        }

        @NotNull
        public final List<Pair<FileSystem, Path>> toClasspathRoots(@NotNull ClassLoader classLoader) {
            List<Pair<FileSystem, Path>> plus;
            Intrinsics.checkNotNullParameter(classLoader, "<this>");
            Enumeration<URL> resources = classLoader.getResources("");
            Intrinsics.checkNotNullExpressionValue(resources, "getResources(\"\")");
            ArrayList<URL> list = Collections.list(resources);
            Intrinsics.checkNotNullExpressionValue(list, "java.util.Collections.list(this)");
            ArrayList arrayList = new ArrayList();
            for (URL it : list) {
                Companion companion = ResourceFileSystem.Companion;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Pair<FileSystem, Path> fileRoot = companion.toFileRoot(it);
                if (fileRoot != null) {
                    arrayList.add(fileRoot);
                }
            }
            Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
            Intrinsics.checkNotNullExpressionValue(resources2, "getResources(\"META-INF/MANIFEST.MF\")");
            ArrayList<URL> list2 = Collections.list(resources2);
            Intrinsics.checkNotNullExpressionValue(list2, "java.util.Collections.list(this)");
            ArrayList arrayList2 = new ArrayList();
            for (URL it2 : list2) {
                Companion companion2 = ResourceFileSystem.Companion;
                Intrinsics.checkNotNullExpressionValue(it2, "it");
                Pair<FileSystem, Path> jarRoot = companion2.toJarRoot(it2);
                if (jarRoot != null) {
                    arrayList2.add(jarRoot);
                }
            }
            plus = CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
            return plus;
        }

        @Nullable
        public final Pair<FileSystem, Path> toFileRoot(@NotNull URL url) {
            Intrinsics.checkNotNullParameter(url, "<this>");
            if (Intrinsics.areEqual(url.getProtocol(), ShareInternalUtility.STAGING_PARAM)) {
                return TuplesKt.to(FileSystem.SYSTEM, Path.Companion.get$default(Path.Companion, new File(url.toURI()), false, 1, (Object) null));
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
            r0 = kotlin.text.StringsKt__StringsKt.lastIndexOf$default((java.lang.CharSequence) r10, "!", 0, false, 6, (java.lang.Object) null);
         */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlin.Pair<okio.FileSystem, okio.Path> toJarRoot(@org.jetbrains.annotations.NotNull java.net.URL r10) {
            /*
                r9 = this;
                java.lang.String r0 = "<this>"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                java.lang.String r10 = r10.toString()
                java.lang.String r0 = "toString()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
                java.lang.String r0 = "jar:file:"
                r7 = 0
                r1 = 2
                r8 = 0
                boolean r0 = kotlin.text.StringsKt.startsWith$default(r10, r0, r7, r1, r8)
                if (r0 != 0) goto L1a
                return r8
            L1a:
                r3 = 0
                r4 = 0
                r5 = 6
                r6 = 0
                java.lang.String r2 = "!"
                r1 = r10
                int r0 = kotlin.text.StringsKt.lastIndexOf$default(r1, r2, r3, r4, r5, r6)
                r1 = -1
                if (r0 != r1) goto L29
                return r8
            L29:
                okio.Path$Companion r1 = okio.Path.Companion
                java.io.File r2 = new java.io.File
                r3 = 4
                java.lang.String r10 = r10.substring(r3, r0)
                java.lang.String r0 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
                java.net.URI r10 = java.net.URI.create(r10)
                r2.<init>(r10)
                r10 = 1
                okio.Path r10 = okio.Path.Companion.get$default(r1, r2, r7, r10, r8)
                okio.FileSystem r0 = okio.FileSystem.SYSTEM
                okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1 r1 = new kotlin.jvm.functions.Function1<okio.internal.ZipEntry, java.lang.Boolean>() { // from class: okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1
                    static {
                        /*
                            okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1 r0 = new okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1
                            r0.<init>()
                            
                            // error: 0x0005: SPUT  (r0 I:okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1) okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1.INSTANCE okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1.<clinit>():void");
                    }

                    {
                        /*
                            r1 = this;
                            r0 = 1
                            r1.<init>(r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1.<init>():void");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ java.lang.Boolean invoke(okio.internal.ZipEntry r1) {
                        /*
                            r0 = this;
                            okio.internal.ZipEntry r1 = (okio.internal.ZipEntry) r1
                            java.lang.Boolean r1 = r0.invoke(r1)
                            return r1
                        */
                        throw new UnsupportedOperationException("Method not decompiled: okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1.invoke(java.lang.Object):java.lang.Object");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @org.jetbrains.annotations.NotNull
                    public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull okio.internal.ZipEntry r2) {
                        /*
                            r1 = this;
                            java.lang.String r0 = "entry"
                            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                            okio.internal.ResourceFileSystem$Companion r0 = okio.internal.ResourceFileSystem.access$getCompanion$p()
                            okio.Path r2 = r2.getCanonicalPath()
                            boolean r2 = okio.internal.ResourceFileSystem.Companion.access$keepPath(r0, r2)
                            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                            return r2
                        */
                        throw new UnsupportedOperationException("Method not decompiled: okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1.invoke(okio.internal.ZipEntry):java.lang.Boolean");
                    }
                }
                okio.ZipFileSystem r10 = okio.internal.ZipKt.openZip(r10, r0, r1)
                okio.Path r0 = r9.getROOT()
                kotlin.Pair r10 = kotlin.TuplesKt.to(r10, r0)
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.internal.ResourceFileSystem.Companion.toJarRoot(java.net.URL):kotlin.Pair");
        }
    }

    public ResourceFileSystem(@NotNull final ClassLoader classLoader, boolean z10) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends Pair<? extends FileSystem, ? extends Path>>>() { // from class: okio.internal.ResourceFileSystem$roots$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends Pair<? extends FileSystem, ? extends Path>> invoke() {
                return ResourceFileSystem.Companion.toClasspathRoots(classLoader);
            }
        });
        this.roots$delegate = lazy;
        if (z10) {
            getRoots().size();
        }
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    private final List<Pair<FileSystem, Path>> getRoots() {
        return (List) this.roots$delegate.getValue();
    }

    private final String toRelativePath(Path path) {
        return canonicalizeInternal(path).relativeTo(ROOT).toString();
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean z10) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return canonicalizeInternal(path);
    }

    @Override // okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean z10) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void delete(@NotNull Path path, boolean z10) {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) {
        List<Path> list;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(dir, "dir");
        String relativePath = toRelativePath(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z10 = false;
        for (Pair<FileSystem, Path> pair : getRoots()) {
            FileSystem component1 = pair.component1();
            Path component2 = pair.component2();
            try {
                List<Path> list2 = component1.list(component2.resolve(relativePath));
                ArrayList<Path> arrayList = new ArrayList();
                for (Object obj : list2) {
                    if (Companion.keepPath((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                for (Path path : arrayList) {
                    arrayList2.add(Companion.removeBase(path, component2));
                }
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, arrayList2);
                z10 = true;
            } catch (IOException unused) {
            }
        }
        if (z10) {
            list = CollectionsKt___CollectionsKt.toList(linkedHashSet);
            return list;
        }
        throw new FileNotFoundException(Intrinsics.stringPlus("file not found: ", dir));
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        List<Path> list;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(dir, "dir");
        String relativePath = toRelativePath(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Pair<FileSystem, Path>> it = getRoots().iterator();
        boolean z10 = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            Pair<FileSystem, Path> next = it.next();
            Path component2 = next.component2();
            List<Path> listOrNull = next.component1().listOrNull(component2.resolve(relativePath));
            if (listOrNull != null) {
                ArrayList<Path> arrayList2 = new ArrayList();
                for (Object obj : listOrNull) {
                    if (Companion.keepPath((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                for (Path path : arrayList2) {
                    arrayList3.add(Companion.removeBase(path, component2));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, arrayList);
                z10 = true;
            }
        }
        if (z10) {
            list = CollectionsKt___CollectionsKt.toList(linkedHashSet);
            return list;
        }
        return null;
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (Companion.keepPath(path)) {
            String relativePath = toRelativePath(path);
            for (Pair<FileSystem, Path> pair : getRoots()) {
                FileMetadata metadataOrNull = pair.component1().metadataOrNull(pair.component2().resolve(relativePath));
                if (metadataOrNull != null) {
                    return metadataOrNull;
                }
            }
            return null;
        }
        return null;
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (Companion.keepPath(file)) {
            String relativePath = toRelativePath(file);
            for (Pair<FileSystem, Path> pair : getRoots()) {
                try {
                    return pair.component1().openReadOnly(pair.component2().resolve(relativePath));
                } catch (FileNotFoundException unused) {
                }
            }
            throw new FileNotFoundException(Intrinsics.stringPlus("file not found: ", file));
        }
        throw new FileNotFoundException(Intrinsics.stringPlus("file not found: ", file));
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("resources are not writable");
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean z10) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (Companion.keepPath(file)) {
            String relativePath = toRelativePath(file);
            for (Pair<FileSystem, Path> pair : getRoots()) {
                try {
                    return pair.component1().source(pair.component2().resolve(relativePath));
                } catch (FileNotFoundException unused) {
                }
            }
            throw new FileNotFoundException(Intrinsics.stringPlus("file not found: ", file));
        }
        throw new FileNotFoundException(Intrinsics.stringPlus("file not found: ", file));
    }
}

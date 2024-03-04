package com.opensource.svgaplayer;

import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Handler;
import android.os.Looper;
import com.opensource.svgaplayer.bitmap.SVGABitmapByteArrayDecoder;
import com.opensource.svgaplayer.bitmap.SVGABitmapFileDecoder;
import com.opensource.svgaplayer.entities.SVGAAudioEntity;
import com.opensource.svgaplayer.entities.SVGAVideoSpriteEntity;
import com.opensource.svgaplayer.proto.AudioEntity;
import com.opensource.svgaplayer.proto.MovieEntity;
import com.opensource.svgaplayer.proto.MovieParams;
import com.opensource.svgaplayer.proto.SpriteEntity;
import com.opensource.svgaplayer.utils.SVGARect;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B'\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nB\u0017\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\rB'\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\u000eJ\u0006\u0010C\u001a\u00020DJ\u001a\u0010E\u001a\u0004\u0018\u00010(2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020'H\u0002J\u0012\u0010E\u001a\u0004\u0018\u00010(2\u0006\u0010H\u001a\u00020'H\u0002J$\u0010I\u001a\u00020\u001b2\u0006\u0010J\u001a\u00020K2\u0012\u0010L\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00050&H\u0002J\u0018\u0010M\u001a\u00020\u00052\u0006\u0010N\u001a\u00020\u00052\u0006\u0010O\u001a\u00020GH\u0002J\u001c\u0010P\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00050&2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u001c\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020G0&2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0018\u0010R\u001a\u00020'2\u0006\u0010S\u001a\u00020'2\u0006\u0010T\u001a\u00020'H\u0002J\u0018\u0010U\u001a\n V*\u0004\u0018\u000106062\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010W\u001a\u00020D2\u0006\u0010X\u001a\u00020\fH\u0002J\u0010\u0010W\u001a\u00020D2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u001b\u0010Y\u001a\u00020D2\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020D0[H\u0000¢\u0006\u0002\b\\J\u0006\u0010]\u001a\u00020DJ\u0010\u0010^\u001a\u00020D2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010^\u001a\u00020D2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u001e\u0010_\u001a\u00020D2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010`\u001a\b\u0012\u0004\u0012\u00020D0[H\u0002J\u0010\u0010a\u001a\u00020D2\u0006\u0010b\u001a\u00020\u0003H\u0002J\u0010\u0010c\u001a\u00020D2\u0006\u0010d\u001a\u00020eH\u0002J\u001e\u0010f\u001a\u00020D2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010`\u001a\b\u0012\u0004\u0012\u00020D0[H\u0002R\u001e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0016\"\u0004\b\"\u0010\u0018R\u001e\u0010#\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0012R&\u0010%\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(0&X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u000e\u0010-\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u00100\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001c\u00105\u001a\u0004\u0018\u000106X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R \u0010;\u001a\b\u0012\u0004\u0012\u00020<0\u001aX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u001d\"\u0004\b>\u0010\u001fR\u001e\u0010@\u001a\u00020?2\u0006\u0010\u000f\u001a\u00020?@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bA\u0010B¨\u0006g"}, d2 = {"Lcom/opensource/svgaplayer/SVGAVideoEntity;", "", "json", "Lorg/json/JSONObject;", "cacheDir", "Ljava/io/File;", "(Lorg/json/JSONObject;Ljava/io/File;)V", "frameWidth", "", "frameHeight", "(Lorg/json/JSONObject;Ljava/io/File;II)V", "entity", "Lcom/opensource/svgaplayer/proto/MovieEntity;", "(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;)V", "(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V", "<set-?>", "FPS", "getFPS", "()I", "antiAlias", "", "getAntiAlias", "()Z", "setAntiAlias", "(Z)V", "audioList", "", "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;", "getAudioList$com_opensource_svgaplayer", "()Ljava/util/List;", "setAudioList$com_opensource_svgaplayer", "(Ljava/util/List;)V", "calledComplete", "getCalledComplete", "setCalledComplete", "frames", "getFrames", "imageMap", "Ljava/util/HashMap;", "", "Landroid/graphics/Bitmap;", "getImageMap$com_opensource_svgaplayer", "()Ljava/util/HashMap;", "setImageMap$com_opensource_svgaplayer", "(Ljava/util/HashMap;)V", "mCacheDir", "mFrameHeight", "mFrameWidth", "movieItem", "getMovieItem", "()Lcom/opensource/svgaplayer/proto/MovieEntity;", "setMovieItem", "(Lcom/opensource/svgaplayer/proto/MovieEntity;)V", "soundPool", "Landroid/media/SoundPool;", "getSoundPool$com_opensource_svgaplayer", "()Landroid/media/SoundPool;", "setSoundPool$com_opensource_svgaplayer", "(Landroid/media/SoundPool;)V", "spriteList", "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;", "getSpriteList$com_opensource_svgaplayer", "setSpriteList$com_opensource_svgaplayer", "Lcom/opensource/svgaplayer/utils/SVGARect;", "videoSize", "getVideoSize", "()Lcom/opensource/svgaplayer/utils/SVGARect;", "clear", "", "createBitmap", "byteArray", "", "filePath", "createSvgaAudioEntity", "audio", "Lcom/opensource/svgaplayer/proto/AudioEntity;", "audiosFileMap", "generateAudioFile", "audioCache", "value", "generateAudioFileMap", "generateAudioMap", "generateBitmapFilePath", "imgName", "imgKey", "generateSoundPool", "kotlin.jvm.PlatformType", "parserImages", "obj", "prepare", "callback", "Lkotlin/Function0;", "prepare$com_opensource_svgaplayer", "release", "resetSprites", "setupAudios", "completionBlock", "setupByJson", "movieObject", "setupByMovie", "movieParams", "Lcom/opensource/svgaplayer/proto/MovieParams;", "setupSoundPool", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGAVideoEntity {
    private int FPS;
    private boolean antiAlias;
    @NotNull
    private List<SVGAAudioEntity> audioList;
    private boolean calledComplete;
    private int frames;
    @NotNull
    private HashMap<String, Bitmap> imageMap;
    @NotNull
    private File mCacheDir;
    private int mFrameHeight;
    private int mFrameWidth;
    @Nullable
    private MovieEntity movieItem;
    @Nullable
    private SoundPool soundPool;
    @NotNull
    private List<SVGAVideoSpriteEntity> spriteList;
    @NotNull
    private SVGARect videoSize;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SVGAVideoEntity(@NotNull JSONObject json, @NotNull File cacheDir) {
        this(json, cacheDir, 0, 0);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(cacheDir, "cacheDir");
    }

    private final Bitmap createBitmap(String str) {
        return SVGABitmapFileDecoder.INSTANCE.decodeBitmapFrom(str, this.mFrameWidth, this.mFrameHeight);
    }

    private final SVGAAudioEntity createSvgaAudioEntity(AudioEntity audioEntity, HashMap<String, File> hashMap) {
        File file;
        SVGAAudioEntity sVGAAudioEntity = new SVGAAudioEntity(audioEntity);
        Integer num = audioEntity.startTime;
        double intValue = num == null ? 0 : num.intValue();
        Integer num2 = audioEntity.totalTime;
        double intValue2 = num2 != null ? num2.intValue() : 0;
        if (((int) intValue2) != 0 && (file = hashMap.get(audioEntity.audioKey)) != null) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                double available = fileInputStream.available();
                long j10 = (long) ((intValue / intValue2) * available);
                SoundPool soundPool$com_opensource_svgaplayer = getSoundPool$com_opensource_svgaplayer();
                sVGAAudioEntity.setSoundID(soundPool$com_opensource_svgaplayer == null ? null : Integer.valueOf(soundPool$com_opensource_svgaplayer.load(fileInputStream.getFD(), j10, (long) available, 1)));
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileInputStream, null);
            } finally {
            }
        }
        return sVGAAudioEntity;
    }

    private final File generateAudioFile(File file, byte[] bArr) {
        file.createNewFile();
        new FileOutputStream(file).write(bArr);
        return file;
    }

    private final HashMap<String, File> generateAudioFileMap(MovieEntity movieEntity) {
        HashMap<String, byte[]> generateAudioMap = generateAudioMap(movieEntity);
        HashMap<String, File> hashMap = new HashMap<>();
        if (generateAudioMap.size() > 0) {
            for (Map.Entry<String, byte[]> entry : generateAudioMap.entrySet()) {
                File buildAudioFile = SVGACache.INSTANCE.buildAudioFile(entry.getKey());
                String key = entry.getKey();
                File file = buildAudioFile.exists() ? buildAudioFile : null;
                if (file == null) {
                    file = generateAudioFile(buildAudioFile, entry.getValue());
                }
                hashMap.put(key, file);
            }
        }
        return hashMap;
    }

    private final HashMap<String, byte[]> generateAudioMap(MovieEntity movieEntity) {
        Set<Map.Entry<String, ByteString>> entrySet;
        List slice;
        HashMap<String, byte[]> hashMap = new HashMap<>();
        Map<String, ByteString> map = movieEntity.images;
        if (map != null && (entrySet = map.entrySet()) != null) {
            Iterator<T> it = entrySet.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String imageKey = (String) entry.getKey();
                byte[] byteArray = ((ByteString) entry.getValue()).toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "byteArray");
                if (byteArray.length >= 4) {
                    slice = ArraysKt___ArraysKt.slice(byteArray, new IntRange(0, 3));
                    if (((Number) slice.get(0)).byteValue() == 73 && ((Number) slice.get(1)).byteValue() == 68 && ((Number) slice.get(2)).byteValue() == 51) {
                        Intrinsics.checkNotNullExpressionValue(imageKey, "imageKey");
                        hashMap.put(imageKey, byteArray);
                    }
                }
            }
        }
        return hashMap;
    }

    private final String generateBitmapFilePath(String str, String str2) {
        String str3 = this.mCacheDir.getAbsolutePath() + IOUtils.DIR_SEPARATOR_UNIX + str;
        String stringPlus = Intrinsics.stringPlus(str3, FileUtils.PIC_POSTFIX_PNG);
        String str4 = this.mCacheDir.getAbsolutePath() + IOUtils.DIR_SEPARATOR_UNIX + str2 + FileUtils.PIC_POSTFIX_PNG;
        return new File(str3).exists() ? str3 : new File(stringPlus).exists() ? stringPlus : new File(str4).exists() ? str4 : "";
    }

    private final SoundPool generateSoundPool(MovieEntity movieEntity) {
        int coerceAtMost;
        SoundPool.Builder audioAttributes = new SoundPool.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(1).build());
        List<AudioEntity> list = movieEntity.audios;
        Intrinsics.checkNotNullExpressionValue(list, "entity.audios");
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(12, list.size());
        return audioAttributes.setMaxStreams(coerceAtMost).build();
    }

    private final void parserImages(JSONObject jSONObject) {
        String replace$default;
        JSONObject optJSONObject = jSONObject.optJSONObject("images");
        if (optJSONObject == null) {
            return;
        }
        Iterator<String> keys = optJSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(keys, "imgJson.keys()");
        while (keys.hasNext()) {
            String imgKey = keys.next();
            String obj = optJSONObject.get(imgKey).toString();
            Intrinsics.checkNotNullExpressionValue(imgKey, "imgKey");
            String generateBitmapFilePath = generateBitmapFilePath(obj, imgKey);
            if (generateBitmapFilePath.length() == 0) {
                return;
            }
            replace$default = StringsKt__StringsJVMKt.replace$default(imgKey, ".matte", "", false, 4, (Object) null);
            Bitmap createBitmap = createBitmap(generateBitmapFilePath);
            if (createBitmap != null) {
                getImageMap$com_opensource_svgaplayer().put(replace$default, createBitmap);
            }
        }
    }

    private final void resetSprites(JSONObject jSONObject) {
        List<SVGAVideoSpriteEntity> list;
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("sprites");
        if (optJSONArray != null) {
            int i9 = 0;
            int length = optJSONArray.length();
            if (length > 0) {
                while (true) {
                    int i10 = i9 + 1;
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i9);
                    if (optJSONObject != null) {
                        arrayList.add(new SVGAVideoSpriteEntity(optJSONObject));
                    }
                    if (i10 >= length) {
                        break;
                    }
                    i9 = i10;
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        this.spriteList = list;
    }

    private final void setupAudios(MovieEntity movieEntity, Function0<Unit> function0) {
        int collectionSizeOrDefault;
        List<AudioEntity> list = movieEntity.audios;
        if (list != null && !list.isEmpty()) {
            setupSoundPool(movieEntity, function0);
            HashMap<String, File> generateAudioFileMap = generateAudioFileMap(movieEntity);
            List<AudioEntity> list2 = movieEntity.audios;
            Intrinsics.checkNotNullExpressionValue(list2, "entity.audios");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (AudioEntity audio : list2) {
                Intrinsics.checkNotNullExpressionValue(audio, "audio");
                arrayList.add(createSvgaAudioEntity(audio, generateAudioFileMap));
            }
            this.audioList = arrayList;
            return;
        }
        function0.invoke();
    }

    private final void setupByJson(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("viewBox");
        if (optJSONObject != null) {
            this.videoSize = new SVGARect(0.0d, 0.0d, optJSONObject.optDouble("width", 0.0d), optJSONObject.optDouble("height", 0.0d));
        }
        this.FPS = jSONObject.optInt("fps", 20);
        this.frames = jSONObject.optInt("frames", 0);
    }

    private final void setupByMovie(MovieParams movieParams) {
        Float f10;
        Float f11 = movieParams.viewBoxWidth;
        this.videoSize = new SVGARect(0.0d, 0.0d, f11 == null ? 0.0f : f11.floatValue(), movieParams.viewBoxHeight != null ? f10.floatValue() : 0.0f);
        Integer num = movieParams.fps;
        this.FPS = num == null ? 20 : num.intValue();
        Integer num2 = movieParams.frames;
        this.frames = num2 == null ? 0 : num2.intValue();
    }

    private final void setupSoundPool(final MovieEntity movieEntity, final Function0<Unit> function0) {
        final Ref.IntRef intRef = new Ref.IntRef();
        SoundPool generateSoundPool = generateSoundPool(movieEntity);
        this.soundPool = generateSoundPool;
        if (generateSoundPool != null) {
            generateSoundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.opensource.svgaplayer.m
                @Override // android.media.SoundPool.OnLoadCompleteListener
                public final void onLoadComplete(SoundPool soundPool, int i9, int i10) {
                    SVGAVideoEntity.m826setupSoundPool$lambda13(Ref.IntRef.this, movieEntity, function0, soundPool, i9, i10);
                }
            });
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.opensource.svgaplayer.n
            @Override // java.lang.Runnable
            public final void run() {
                SVGAVideoEntity.m827setupSoundPool$lambda14(Function0.this);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupSoundPool$lambda-13  reason: not valid java name */
    public static final void m826setupSoundPool$lambda13(Ref.IntRef soundLoaded, MovieEntity entity, Function0 completionBlock, SoundPool soundPool, int i9, int i10) {
        Intrinsics.checkNotNullParameter(soundLoaded, "$soundLoaded");
        Intrinsics.checkNotNullParameter(entity, "$entity");
        Intrinsics.checkNotNullParameter(completionBlock, "$completionBlock");
        int i11 = soundLoaded.element + 1;
        soundLoaded.element = i11;
        List<AudioEntity> list = entity.audios;
        Intrinsics.checkNotNullExpressionValue(list, "entity.audios");
        if (i11 >= list.size()) {
            completionBlock.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupSoundPool$lambda-14  reason: not valid java name */
    public static final void m827setupSoundPool$lambda14(Function0 completionBlock) {
        Intrinsics.checkNotNullParameter(completionBlock, "$completionBlock");
        completionBlock.invoke();
    }

    public final void clear() {
        List<SVGAAudioEntity> emptyList;
        List<SVGAVideoSpriteEntity> emptyList2;
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            soundPool.release();
        }
        this.soundPool = null;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.audioList = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.spriteList = emptyList2;
        this.imageMap.clear();
    }

    public final boolean getAntiAlias() {
        return this.antiAlias;
    }

    @NotNull
    public final List<SVGAAudioEntity> getAudioList$com_opensource_svgaplayer() {
        return this.audioList;
    }

    public final boolean getCalledComplete() {
        return this.calledComplete;
    }

    public final int getFPS() {
        return this.FPS;
    }

    public final int getFrames() {
        return this.frames;
    }

    @NotNull
    public final HashMap<String, Bitmap> getImageMap$com_opensource_svgaplayer() {
        return this.imageMap;
    }

    @Nullable
    public final MovieEntity getMovieItem() {
        return this.movieItem;
    }

    @Nullable
    public final SoundPool getSoundPool$com_opensource_svgaplayer() {
        return this.soundPool;
    }

    @NotNull
    public final List<SVGAVideoSpriteEntity> getSpriteList$com_opensource_svgaplayer() {
        return this.spriteList;
    }

    @NotNull
    public final SVGARect getVideoSize() {
        return this.videoSize;
    }

    public final void prepare$com_opensource_svgaplayer(@NotNull final Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        MovieEntity movieEntity = this.movieItem;
        if (movieEntity == null) {
            callback.invoke();
            return;
        }
        Intrinsics.checkNotNull(movieEntity);
        setupAudios(movieEntity, new Function0<Unit>() { // from class: com.opensource.svgaplayer.SVGAVideoEntity$prepare$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.invoke();
            }
        });
    }

    public final void release() {
        List<SVGAAudioEntity> emptyList;
        List<SVGAVideoSpriteEntity> emptyList2;
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            soundPool.release();
        }
        this.soundPool = null;
        for (SVGAAudioEntity sVGAAudioEntity : this.audioList) {
            sVGAAudioEntity.release();
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.audioList = emptyList;
        for (SVGAVideoSpriteEntity sVGAVideoSpriteEntity : this.spriteList) {
            sVGAVideoSpriteEntity.release();
        }
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.spriteList = emptyList2;
        MovieEntity movieEntity = this.movieItem;
        if (movieEntity != null) {
            movieEntity.release();
        }
        Set<Map.Entry<String, Bitmap>> entrySet = this.imageMap.entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "this.imageMap.entries");
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            Intrinsics.checkNotNullExpressionValue(value, "it.value");
            ((Bitmap) value).recycle();
        }
        this.imageMap.clear();
    }

    public final void setAntiAlias(boolean z10) {
        this.antiAlias = z10;
    }

    public final void setAudioList$com_opensource_svgaplayer(@NotNull List<SVGAAudioEntity> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.audioList = list;
    }

    public final void setCalledComplete(boolean z10) {
        this.calledComplete = z10;
    }

    public final void setImageMap$com_opensource_svgaplayer(@NotNull HashMap<String, Bitmap> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.imageMap = hashMap;
    }

    public final void setMovieItem(@Nullable MovieEntity movieEntity) {
        this.movieItem = movieEntity;
    }

    public final void setSoundPool$com_opensource_svgaplayer(@Nullable SoundPool soundPool) {
        this.soundPool = soundPool;
    }

    public final void setSpriteList$com_opensource_svgaplayer(@NotNull List<SVGAVideoSpriteEntity> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.spriteList = list;
    }

    public SVGAVideoEntity(@NotNull JSONObject json, @NotNull File cacheDir, int i9, int i10) {
        List<SVGAVideoSpriteEntity> emptyList;
        List<SVGAAudioEntity> emptyList2;
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(cacheDir, "cacheDir");
        this.antiAlias = true;
        this.videoSize = new SVGARect(0.0d, 0.0d, 0.0d, 0.0d);
        this.FPS = 15;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.spriteList = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.audioList = emptyList2;
        this.imageMap = new HashMap<>();
        this.mFrameWidth = i9;
        this.mFrameHeight = i10;
        this.mCacheDir = cacheDir;
        JSONObject optJSONObject = json.optJSONObject("movie");
        if (optJSONObject == null) {
            return;
        }
        setupByJson(optJSONObject);
        try {
            parserImages(json);
        } catch (Exception e10) {
            e10.printStackTrace();
        } catch (OutOfMemoryError e11) {
            e11.printStackTrace();
        }
        resetSprites(json);
    }

    private final Bitmap createBitmap(byte[] bArr, String str) {
        Bitmap decodeBitmapFrom = SVGABitmapByteArrayDecoder.INSTANCE.decodeBitmapFrom(bArr, this.mFrameWidth, this.mFrameHeight);
        return decodeBitmapFrom == null ? createBitmap(str) : decodeBitmapFrom;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void resetSprites(MovieEntity movieEntity) {
        int collectionSizeOrDefault;
        List list;
        List<SpriteEntity> list2 = movieEntity.sprites;
        if (list2 == null) {
            list = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            List arrayList = new ArrayList(collectionSizeOrDefault);
            for (SpriteEntity it : list2) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                arrayList.add(new SVGAVideoSpriteEntity(it));
            }
            list = arrayList;
        }
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        this.spriteList = list;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    private final void parserImages(MovieEntity movieEntity) {
        Set<Map.Entry<String, ByteString>> entrySet;
        List slice;
        Map<String, ByteString> map = movieEntity.images;
        if (map == null || (entrySet = map.entrySet()) == null) {
            return;
        }
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            byte[] byteArray = ((ByteString) entry.getValue()).toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "byteArray");
            if (byteArray.length >= 4) {
                slice = ArraysKt___ArraysKt.slice(byteArray, new IntRange(0, 3));
                if (((Number) slice.get(0)).byteValue() != 73 || ((Number) slice.get(1)).byteValue() != 68 || ((Number) slice.get(2)).byteValue() != 51) {
                    String utf8 = ((ByteString) entry.getValue()).utf8();
                    Intrinsics.checkNotNullExpressionValue(utf8, "entry.value.utf8()");
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    Bitmap createBitmap = createBitmap(byteArray, generateBitmapFilePath(utf8, (String) key));
                    if (createBitmap != null) {
                        HashMap<String, Bitmap> imageMap$com_opensource_svgaplayer = getImageMap$com_opensource_svgaplayer();
                        ?? key2 = entry.getKey();
                        Intrinsics.checkNotNullExpressionValue(key2, "entry.key");
                        imageMap$com_opensource_svgaplayer.put(key2, createBitmap);
                    }
                }
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SVGAVideoEntity(@NotNull MovieEntity entity, @NotNull File cacheDir) {
        this(entity, cacheDir, 0, 0);
        Intrinsics.checkNotNullParameter(entity, "entity");
        Intrinsics.checkNotNullParameter(cacheDir, "cacheDir");
    }

    public SVGAVideoEntity(@NotNull MovieEntity entity, @NotNull File cacheDir, int i9, int i10) {
        List<SVGAVideoSpriteEntity> emptyList;
        List<SVGAAudioEntity> emptyList2;
        Intrinsics.checkNotNullParameter(entity, "entity");
        Intrinsics.checkNotNullParameter(cacheDir, "cacheDir");
        this.antiAlias = true;
        this.videoSize = new SVGARect(0.0d, 0.0d, 0.0d, 0.0d);
        this.FPS = 15;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.spriteList = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.audioList = emptyList2;
        this.imageMap = new HashMap<>();
        this.mFrameWidth = i9;
        this.mFrameHeight = i10;
        this.mCacheDir = cacheDir;
        this.movieItem = entity;
        MovieParams movieParams = entity.params;
        if (movieParams != null) {
            setupByMovie(movieParams);
        }
        try {
            parserImages(entity);
        } catch (Exception e10) {
            e10.printStackTrace();
        } catch (OutOfMemoryError e11) {
            e11.printStackTrace();
        }
        resetSprites(entity);
    }
}
